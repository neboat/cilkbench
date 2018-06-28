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

#include <vector>

#include <pthread.h>
#include "tbb/pipeline.h"

#define INT64(x) ((unsigned long long)(x))
#define MSB64 INT64(0x8000000000000000ULL)

#define INITIAL_SIZE 4096

#define OUTER_PIPELINE_NUM_TOKENS 1024 
#define INNER_PIPELINE_NUM_TOKENS 1024

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

// compress an input stream
void Encode( config *conf ) {
	// create the header for the outfile
	send_head *head = new send_head;
	strcpy( head->filename, conf->infile );
	filecount++;
	head->fid = filecount;
	// open in and out file (they will be closed when the pipeline is destroyed
	int infd = open( conf->infile, O_RDONLY | O_LARGEFILE );
	int outfd = open( conf->outfile, O_CREAT | O_TRUNC | O_WRONLY | O_TRUNC, S_IRGRP | S_IWUSR | S_IRUSR | S_IROTH );
	// set up the pipeline

	// state for the read stage
	u_char src_chunk[ MAXBUF * 2 ], left_overs[ MAXBUF ], new_chunk[ MAXBUF ];
	int src_bytes, left_bytes, src_loc;
	u_char *anchor_start, *anchor_end;
	char more;
	u32int rabintab[256], rabinwintab[256];
	int rf_win_dataprocess, n;

	src_bytes = left_bytes = src_loc = more = rf_win_dataprocess = 0;
	anchor_start = anchor_end = NULL;
	n = MAX_RABIN_CHUNK_SIZE;

	rabininit( rf_win_dataprocess, rabintab, rabinwintab );

	auto getNextBlock = [&]() -> block_of_fingerprints* {
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

	auto read_f = [&]( tbb::flow_control& fc ) -> block_of_fingerprints* {
		block_of_fingerprints* item;
		if ( (item = getNextBlock()) != NULL ) {
			return item;
		} else {
			// we need to read more in first
			src_bytes = read( infd, new_chunk, MAXBUF );
			if ( src_bytes )
				more = 1;
			else {
				if ( !more ) {
					fc.stop();
					return NULL;
				}
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
				fc.stop();
				return NULL;
			}
		}
	};

	auto process_f = [&]( block_of_fingerprints *input ) -> std::vector< one_processed_fingerprint* >* {
		std::vector<one_processed_fingerprint*> *out_item = new std::vector<one_processed_fingerprint*>();

		// state for the break up stage
		u_char 	*anchor_start 	= input->start;
		u_char 	*anchor_end	= input->start;
		int 	n		= MAX_RABIN_CHUNK_SIZE;
		int 	rf_win		= 0;
		u32int	rabintab[256];
		u32int 	rabinwintab[256];

		rabininit( rf_win, rabintab, rabinwintab );

		auto break_up_f = [&]( tbb::flow_control& fc ) -> one_fingerprint* {
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
			fc.stop();
			return NULL;
		};

		auto check_hash_f = [&]( one_fingerprint *item ) -> one_processed_fingerprint* {
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

		auto compress_f = [&]( one_processed_fingerprint *item ) -> one_processed_fingerprint* {
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

		auto reassemble_f = [&]( one_processed_fingerprint *item ) -> void {
			out_item->push_back( item );
			return;
		};

		tbb::parallel_pipeline( INNER_PIPELINE_NUM_TOKENS,
					tbb::make_filter< void, one_fingerprint* >( tbb::filter::serial_in_order, break_up_f ) &
					tbb::make_filter< one_fingerprint*, one_processed_fingerprint* >( tbb::filter::parallel, check_hash_f ) &
					tbb::make_filter< one_processed_fingerprint*, one_processed_fingerprint* >( tbb::filter::parallel, compress_f ) &
					tbb::make_filter< one_processed_fingerprint*, void >( tbb::filter::serial_in_order, reassemble_f ) );

		// cleanup for the break up stage
		delete[] input->start;
		delete input;

		return out_item;
	};

	// state for write stage
	int seq_count = 0;

	auto write_f = [&]( std::vector< one_processed_fingerprint* > *item_vec ) -> void {
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
								write_file( outfd, TYPE_FINGERPRINT, seq_count, body->len, item->content );
							} else {
								while ( value->tag == TAG_OCCUPY ) {
									pthread_cond_wait( &value->empty, ht_lock );
								}
								if ( value->tag == TAG_DATAREADY ) {
									write_file( outfd, TYPE_COMPRESS, seq_count, value->len, value->content );
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

		return;
	};

	tbb::parallel_pipeline( OUTER_PIPELINE_NUM_TOKENS,
				tbb::make_filter< void, block_of_fingerprints* >( tbb::filter::serial_in_order, read_f ) &
				tbb::make_filter< block_of_fingerprints*, std::vector< one_processed_fingerprint* >* >( tbb::filter::parallel, process_f ) &
				tbb::make_filter< std::vector< one_processed_fingerprint* >*, void >( tbb::filter::serial_in_order, write_f ) );

	// cleanup of write stage
	u_char type = TYPE_FINISH;
	xwrite( outfd, &type, sizeof( type ) );

	close( infd );
	close( outfd );

	return;
};
