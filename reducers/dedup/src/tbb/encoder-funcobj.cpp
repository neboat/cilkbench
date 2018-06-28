#include "util.h"
#include "dedupdef.h"
#include "encoder.h"
#include "debug.h"
#include "hashtable.h"
#include "config.h"
#include "hashtable_private.h"
#include "rabin.h"
#include "queue.h"
#include "binheap.h"
#include "tree.h"
#include "ktiming.h"

#include <vector>

#include <pthread.h>
#include "tbb/pipeline.h"
#include "tbb/task_scheduler_init.h"


#define INT64(x) ((unsigned long long)(x))
#define MSB64 INT64(0x8000000000000000ULL)

#define INITIAL_SIZE 4096

#define PIPE_DEPTH_MULT 4
// #define OUTER_PIPELINE_NUM_TOKENS 1024 
// #define INNER_PIPELINE_NUM_TOKENS 1024


extern config * conf;

int filecount = 0;

typedef struct {
	u_char *start; // anchor sring pointer
	u_long len; // anchor length
} block_of_fingerprints;

typedef struct {
	u_char *start; // anchor string pointer
	u_long len; // anchor length
} one_fingerprint;

typedef struct {
	u_char type; // flag for chunk is fingerprint | chunk is compressed data
	u_char *str;
	u_char *content; // data
	u_char *sha1; // SHA-1
} one_processed_fingerprint;

typedef struct {
	u_int32 fid; // file id
	u_long len;
} one_processed_fingerprint_body;

static int write_file( int fd, u_char type, int seq_count, u_long len, u_char *content ) {
	if ( xwrite( fd, &type, sizeof(type) ) < 0 ) {
		perror( "xwrite:" );
		EXIT_TRACE( "xwrite type fails\n" );
		return -1;
	}
	if ( xwrite( fd, &seq_count, sizeof(seq_count) ) < 0 ) {
		EXIT_TRACE( "xwrite content fails\n" );
	}
	if ( xwrite( fd, &len, sizeof(len) ) < 0 ) {
		EXIT_TRACE( "xwrite content fails\n" );
	}
	if ( xwrite( fd, content, len ) < 0 ) {
		EXIT_TRACE( "xwrite content fails\n" );
	}
	return 0;
}

/* THE OUTER PIPELINE CLASSES */
class ReadBlocksFromInput : public tbb::filter {
private:
	int fd; // file descriptor of input file
	u_char src_chunk[ MAXBUF * 2 ], left_overs[ MAXBUF ], new_chunk[ MAXBUF ];
	int src_bytes, left_bytes, src_loc;
	u_char *anchor_start, *anchor_end;
	char more;
	u32int rabintab[256], rabinwintab[256];
	int rf_win_dataprocess, n;

	// returns NULL if no new blocks
	block_of_fingerprints* getNextBlock() {
		if ( src_loc < src_bytes ) {
			anchor_start = src_chunk + src_loc;
			anchor_end = anchor_start + ANCHOR_JUMP;
			if ( src_loc + ANCHOR_JUMP >= src_bytes ) {
				if ( !more ) {
					anchor_end = src_chunk + src_bytes;
				} else {
					n = MAX_RABIN_CHUNK_SIZE;
					memcpy( left_overs, src_chunk + src_loc, (src_bytes - src_loc) * sizeof(u_char) );
					left_bytes = src_bytes - src_loc;
					return NULL;
				}
			} else {
				if ( src_bytes - src_loc < n )
					n = src_bytes - src_loc;
				anchor_end += rabinseg( anchor_end, n, rf_win_dataprocess, rabintab, rabinwintab );
			}

			int anchor_len = anchor_end - anchor_start;
			block_of_fingerprints* item = new block_of_fingerprints;
			item->start = new u_char[ anchor_len + 1 ];
			item->len = anchor_len;
			memcpy( item->start, anchor_start, anchor_len );
			item->start[ anchor_len ] = 0;

			src_loc += anchor_len;

			return item;
		} else {
			return NULL;
		}
	};

public:
	ReadBlocksFromInput( int _fd ) :
	//	tbb::filter( tbb::filter::serial_in_order ),
		tbb::filter( true ),
		fd(_fd),
		src_bytes(0),
		left_bytes(0),
		src_loc(0),
		anchor_start(NULL),
		anchor_end(NULL),
		more(0),
		rf_win_dataprocess(0),
		n(MAX_RABIN_CHUNK_SIZE)
	{
		rabininit( rf_win_dataprocess, rabintab, rabinwintab );
	};

	~ReadBlocksFromInput() {
		close( fd );
	};

	// argument is ignored
	void* operator()( void* ) {
		block_of_fingerprints* item;
		if ( (item = getNextBlock()) != NULL ) {
			return item;
		} else {
			// we need to read more in first
			src_bytes = read( fd, new_chunk, MAXBUF );
			if ( src_bytes )
				more = 1;
			else {
				if ( !more )
					return NULL;
				more = 0;
			}

			memset( src_chunk, 0, sizeof(u_char) * MAXBUF );

			if ( left_bytes > 0 ) {
				memcpy( src_chunk, left_overs, left_bytes * sizeof(u_char) );
				memcpy( src_chunk + left_bytes, new_chunk, src_bytes * sizeof(u_char) );
				src_bytes += left_bytes;
				left_bytes = 0;
			} else {
				memcpy( src_chunk, new_chunk, src_bytes * sizeof(u_char) );
			}
			src_loc = 0;
			anchor_end = src_chunk;

			if ( (item = getNextBlock()) != NULL ) {
				return item;
			} else {
				return NULL;
			}
		}
	};
};

class ProcessBlocks : public tbb::filter {
private: 
    int nthreads;
public:
	ProcessBlocks(int _nthreads) :
		//tbb::filter( tbb::parallel )
		tbb::filter( false )
	{ nthreads = _nthreads; };
	void* operator()( void* vitem ) {
		block_of_fingerprints* item = (block_of_fingerprints*) vitem;
		std::vector<one_processed_fingerprint*> *out_item = new std::vector<one_processed_fingerprint*>();

		tbb::pipeline 		pipeline;

		BreakUpBlocks 		filter1( item );
		CheckHash 		filter2;
		Compress 		filter3;
		ReassembleBlocks	filter4( out_item );

		pipeline.add_filter( filter1 );
		pipeline.add_filter( filter2 );
		pipeline.add_filter( filter3 );
		pipeline.add_filter( filter4 );

		pipeline.run( this->nthreads * PIPE_DEPTH_MULT );
		pipeline.clear();

		return (void*) out_item;
	};
protected:
	/* THE INNER PIPELINE CLASSES */
	class BreakUpBlocks : public tbb::filter {
	private:
		block_of_fingerprints *input;
		u_char *anchor_start, *anchor_end;
		int n, rf_win;
		u32int rabintab[256], rabinwintab[256];
	public:
		BreakUpBlocks( block_of_fingerprints *_input ) :
			//filter( serial_in_order ),
			filter( true ),
			input(_input),
			n(MAX_RABIN_CHUNK_SIZE),
			rf_win(0)
		{
			rabininit( rf_win, rabintab, rabinwintab );
			anchor_start = input->start;
			anchor_end = input->start;
		};

		virtual ~BreakUpBlocks() {
			delete[] input->start;
			delete input;
		};
		// argument is ignored
		void* operator()( void* ) {
			one_fingerprint *item;
			if ( anchor_end < input->start + input->len ) {
				if ( input->len + input->start - anchor_end < n ) {
					n = input->len + input->start - anchor_end;
				}
				anchor_end += rabinseg( anchor_end, n, rf_win, rabintab, rabinwintab );
				item = new one_fingerprint;
				int anchor_len = anchor_end - anchor_start;
				item->start = new u_char[ anchor_len + 1 ];
				item->len = anchor_len;
				memcpy( item->start, anchor_start, anchor_len );
				item->start[ anchor_len ] = 0;
				anchor_start = anchor_end;
				return item;
			} /* else if ( item->start + item->len - anchor_start > 0 ) {
				item = new one_fingerprint;
				int anchor_len = input->start + input->len - anchor_start;
				item->start = new u_char[ anchor_len + 1 ];
				item->len = anchor_len;
				memcpy( item->start, anchor_start, anchor_len );
				item->start[ anchor_len ] = 0;
				return item;
			} */
			return NULL;
		};
	};

	class CheckHash : public tbb::filter {
	public:
		CheckHash() :
			//tbb::filter( tbb::parallel )
			tbb::filter( false )
		{};
		void* operator()( void* vitem ) {
			one_fingerprint *item = (one_fingerprint*) vitem;
			one_processed_fingerprint *out_item;
			one_processed_fingerprint_body *out_body;

			u_char *key = new u_char[SHA1_LEN];
			Calc_SHA1Sig( item->start, item->len, key );

			struct hash_entry *entry;

			pthread_mutex_t *ht_lock = hashtable_getlock( cache, (void*) key );
			pthread_mutex_lock( ht_lock );

			if ( (entry = hashtable_search( cache, (void*) key )) == NULL ) {
				struct pContent *value = new struct pContent;
				value->len = 0;
				value->count = 1;
				value->content = NULL;
				value->tag = TAG_OCCUPY;
				if ( hashtable_insert( cache, key, value ) == 0 ) {
					EXIT_TRACE("hashtable_insert failed");
				}
				pthread_cond_init( &value->empty, NULL );

				out_item = new one_processed_fingerprint;
				out_body = new one_processed_fingerprint_body;
				out_body->fid = filecount;
				out_body->len = item->len;
				out_item->content = new u_char[ out_body->len + 1 ];
				memcpy( out_item->content, item->start, out_body->len );
				out_item->content[ out_body->len ] = 0;
				out_item->sha1 = new u_char[ SHA1_LEN ];
				memcpy( out_item->sha1, key, sizeof(u_char) * SHA1_LEN );
				out_item->type = TYPE_COMPRESS;
				out_item->str = (u_char*) out_body;
			} else {
				struct pContent *value = ( (struct pContent*) entry->v );
				value->count += 1;
				hashtable_change( entry, (void*) value );
				
				out_item = new one_processed_fingerprint;
				out_body = new one_processed_fingerprint_body;
				out_body->fid = filecount;
				out_body->len = SHA1_LEN;
				out_item->content = key;
				out_item->sha1 = NULL;
				
				out_item->type = TYPE_FINGERPRINT;
				out_item->str = (u_char*) out_body;
			}

			pthread_mutex_unlock( ht_lock );

			delete[] item->start;
			delete item;

			return out_item;
		};
	};

	class Compress : public tbb::filter {
	public:
		Compress() :
			//tbb::filter( tbb::parallel )
			tbb::filter( false )
		{};
		void* operator()( void* vitem ) {
			one_processed_fingerprint *item = (one_processed_fingerprint*) vitem;
			if ( item->type != TYPE_COMPRESS )
				return item; // skip the compression stage

			one_processed_fingerprint_body *body = (one_processed_fingerprint_body*) item->str;
			u_long len;
			byte *pstr = NULL;

			if ( compress_way == COMPRESS_GZIP ) {
				unsigned long len_32;
				len = body->len + ( body->len >> 12 ) + ( body->len >> 14 ) + 11;
				if ( len >> 32 ) {
					perror("compress");
					EXIT_TRACE("compress() failed\n");
				}
				len_32 = len & 0xFFFFFFFF;
				pstr = new byte[len];
				if ( compress( pstr, &len_32, item->content, body->len ) != Z_OK ) {
					perror("compress");
					EXIT_TRACE("compress() failed\n");
				}
				len = len_32;

				u_char *key = new u_char[SHA1_LEN];
				memcpy( key, item->sha1, sizeof(u_char) * SHA1_LEN );
				struct hash_entry *entry;
				
				pthread_mutex_t *ht_lock = hashtable_getlock( cache, (void*) key );
				pthread_mutex_lock( ht_lock );

				if ( (entry = hashtable_search( cache, (void*) key) ) == NULL ) {
					printf("Error: Compress hash error\n");
					exit(1);
				} else {
					item->sha1 = NULL;
					struct pContent *value = ( (struct pContent*) entry->v );
					value->len = len;
					value->content = pstr;
					value->tag = TAG_DATAREADY;

					hashtable_change( entry, (void*) value );

					pthread_cond_signal( &value->empty );
				}

				pthread_mutex_unlock( ht_lock );

				body->len = SHA1_LEN;
				delete[] item->content;		
				item->content = key;
			}

			return item;
		};
	};

	class ReassembleBlocks : public tbb::filter {
	private:
		std::vector<one_processed_fingerprint*> *buf;
	public:
		ReassembleBlocks( std::vector<one_processed_fingerprint*> *_buf ) :
			//tbb::filter( tbb::serial_in_order ),
			tbb::filter( true ),
			buf(_buf)
		{};
		// return value is ignored
		void* operator()( void* vitem ) {
			one_processed_fingerprint *item = (one_processed_fingerprint*) vitem;
			buf->push_back( item );
			return NULL;
		};
	};
};

class WriteBlocksToOutput : public tbb::filter {
private:
	int fd; // the output file descriptor
	int seq_count;
public:
	WriteBlocksToOutput( int fd_, send_head *head_ ) :
		//tbb::filter( tbb::serial_in_order ),
		tbb::filter( true ),
		fd(fd_),
		seq_count(0)
	{
		u_char x = TYPE_HEAD;
		//xwrite( fd, &head_->type, sizeof( head_->type ) );
		xwrite( fd, &x, sizeof( x ) );
		int checkbit = CHECKBIT;
		xwrite( fd, &checkbit, sizeof( int ) );
		xwrite( fd, head_, sizeof( send_head ) );
	};

	~WriteBlocksToOutput() {
		u_char type = TYPE_FINISH;
		xwrite( fd, &type, sizeof(type) );
		close( fd );
	};

	// return value is ignored
	void* operator()( void* vitem ) {
		std::vector<one_processed_fingerprint*> *item_vec = (std::vector<one_processed_fingerprint*>*) vitem;

		for( int i = 0; i < item_vec->size(); i++ ) {
			one_processed_fingerprint* item = (*item_vec)[i];
			switch ( item->type ) {
				case TYPE_FINGERPRINT:
				case TYPE_COMPRESS: {
						one_processed_fingerprint_body* body = (one_processed_fingerprint_body*) item->str;				
						pthread_mutex_t *ht_lock = hashtable_getlock( cache, (void*) item->content );
						pthread_mutex_lock( ht_lock );
						struct hash_entry *entry;
						if ( (entry = hashtable_search( cache, (void*) item->content )) != NULL ) {
							struct pContent *value = ( (struct pContent*) entry->v );
							if ( value->tag == TAG_WRITTEN ) {
								pthread_mutex_unlock( ht_lock );
								write_file( fd, TYPE_FINGERPRINT, seq_count, body->len, item->content );
							} else {
								while ( value->tag == TAG_OCCUPY ) {
									pthread_cond_wait( &value->empty, ht_lock );
								}
								if ( value->tag == TAG_DATAREADY ) {
									write_file( fd, TYPE_COMPRESS, seq_count, value->len, value->content );
									value->len = seq_count;
									value->tag = TAG_WRITTEN;
									hashtable_change( entry, (void*) value );
								} else {
									printf( "Error: Illegal tag\n" );
								}
								pthread_mutex_unlock( ht_lock );
							}
						} else {
							printf( "Error: Cannot find entry\n" );
							pthread_mutex_unlock( ht_lock );
						}
						delete body;
						seq_count++;
					}
					break;
				case TYPE_HEAD:
					break;
				case TYPE_FINISH:
					break;
			}
			delete item;
		}

		delete item_vec;

		return NULL;
	};
};

// compress an input stream
void Encode( config *conf ) {

	tbb::task_scheduler_init( conf->nthreads );

printf("setting threads to %d.\n", conf->nthreads);
	// create the header for the outfile
	send_head *head = new send_head;
	strcpy( head->filename, conf->infile );
	filecount++;
	head->fid = filecount;
	// open in and out file (they will be closed when the pipeline is destroyed
	int infd = open( conf->infile, O_RDONLY | O_LARGEFILE );
	int outfd = open( conf->outfile, O_CREAT | O_TRUNC | O_WRONLY | O_TRUNC, S_IRGRP | S_IWUSR | S_IRUSR | S_IROTH );

    clockmark_t begin, end;

    begin = ktiming_getmark();

	// set up the pipeline
	tbb::pipeline pipeline;

	ReadBlocksFromInput *infilter = new ReadBlocksFromInput( infd );
	ProcessBlocks *midfilter = new ProcessBlocks(conf->nthreads);
	WriteBlocksToOutput *outfilter = new WriteBlocksToOutput( outfd, head );

	pipeline.add_filter( *infilter );
	pipeline.add_filter( *midfilter );
	pipeline.add_filter( *outfilter );

	// run the pipeline
	pipeline.run( conf->nthreads * PIPE_DEPTH_MULT );
	// destroy the pipeline
	pipeline.clear();

    end = ktiming_getmark();
    float process_time = ktiming_diff_sec(&begin, &end);

    printf("Running time = %.4f seconds\n", process_time);

	delete infilter;
	delete midfilter;
	delete outfilter;

	return;
};
