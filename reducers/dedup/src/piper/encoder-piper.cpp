/*
 * Decoder for dedup files
 *
 * Copyright 2010 Princeton University.
 * All rights reserved.
 *
 * Originally written by Minlan Yu.
 * Largely rewritten by Christian Bienia.
 */

/*
 * The pipeline model for Encode is 
 *      Fragment->FragmentRefine->Deduplicate->Compress->Reorder
 * Each stage has basically three steps:
 * 1. fetch a group of items from the queue
 * 2. process the items
 * 3. put them in the queue for the next stage
 */

#include <assert.h>
#include <strings.h>
#include <math.h>
#include <limits.h>
#include <fcntl.h>
#include <errno.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>

#include "cilkpub_report_time.h"

#ifdef USE_TBB
#    include "tbb/task_scheduler_init.h"
#    include "tbb/pipeline.h"
#endif

#include <cilk/cilk_api.h>
#include <cilk/piper.h>

extern "C" {
#include "config.h"
#include "debug.h"
#include "dedupdef.h"
#include "encoder.h"
#include "util/ktiming.h"
#include "util/util.h"
#include "util/hashtable.h"
#include "util/rabin.h"

#ifdef ENABLE_GZIP_COMPRESSION
#include <zlib.h>
#endif //ENABLE_GZIP_COMPRESSION

#ifdef ENABLE_BZIP2_COMPRESSION
#include <bzlib.h>
#endif //ENABLE_BZIP2_COMPRESSION

#ifdef ENABLE_STATISTICS
#include "util/stats.h"
    //variable with global statistics
    stats_t stats;
#endif

    // The configuration block defined in main
    static config_t * global_conf;
    
    // Hash table data structure & utility functions
    static struct hashtable *global_cache;

    // Pipeline throttling limit.
    static int PIPELINE_BUFFER_WIDTH;

    static unsigned int hash_from_key_fn( void *k ) {
	// NOTE: sha1 sum is integer-aligned
	return ((unsigned int *)k)[0];
    }

    static int keys_equal_fn( void *key1, void *key2 ) {
	return (memcmp(key1, key2, SHA1_LEN) == 0);
    }

    // Arguments 
    typedef struct file_info {
        // file descriptor for input file, first pipeline stage only
        int fd_in;
        // file descriptor for output file
        int fd_out;
	// input file buffer, first pipeline stage & preloading only
	unsigned char *buffer; // holds the content from input file
	size_t buf_seek;  // where we are reading in the buffer
	// meaningful content left in the buffer after buf_seek
	size_t bytes_left;
	int next_offset;  // the next offset returned by rabinseg after buf_seek
    } file_info_t;

    // Simple write utility function
    static int write_file(int fd, u_char type, size_t len, u_char * content) {
	if (xwrite(fd, &type, sizeof(type)) < 0){
	    perror("xwrite:");
	    EXIT_TRACE("xwrite type fails\n");
	    return -1;
	}
	if (xwrite(fd, &len, sizeof(len)) < 0){
	    EXIT_TRACE("xwrite content fails\n");
	}
	if (xwrite(fd, content, len) < 0){
	    EXIT_TRACE("xwrite content fails\n");
	}
	return 0;
    }

    /*
     * Helper function that creates and initializes the output file
     * Takes the file name to use as input and returns the file handle
     * The output file can be used to write chunks without any further steps
     */
    // REMOVED.
    // static int create_output_file(char *outfile) {
    //     int fd;

    //     //Create output file
    //     fd = open(outfile, O_CREAT | O_TRUNC | O_WRONLY | O_TRUNC, 
    //     	  S_IRGRP | S_IWUSR | S_IRUSR | S_IROTH);
    //     if (fd < 0) {
    //         EXIT_TRACE("Cannot open output file.");
    //     }

    //     //Write header
    //     if (write_header(fd, conf->compress_type)) {
    //         EXIT_TRACE("Cannot write output file header.\n");
    //     }

    //     return fd;
    // }

    /*
     * Helper function that writes a chunk to an output file depending on
     * its state. The function will write the SHA1 sum if the chunk has
     * already been written before, or it will write the compressed data
     * of the chunk if it has not been written yet.
     *
     * This function will block if the compressed data is not available yet.
     * This function might update the state of the chunk if there are any changes.
     */
    // NOTE: The serial version relies on the fact that chunks are processed 
    // in-order, which means if it reaches the function it is guaranteed all 
    // data is ready.
    static void write_chunk_to_file(int fd, chunk_t *chunk) {
	assert(chunk!=NULL);

	if(!chunk->isDuplicate) {
	    // Unique chunk, data has not been written yet, do so now
	    write_file(fd, TYPE_COMPRESS, chunk->len, chunk->data);
	} else {
	    // Duplicate chunk, data has been written to file; just write SHA1
	    write_file( fd, TYPE_FINGERPRINT, SHA1_LEN, 
			(unsigned char *)(chunk->sha1) );
	}
    }


    /*
     * Computational kernel of compression stage
     *
     * Actions performed:
     *  - Compress a data chunk
     */
    static void sub_Compress(chunk_t *const chunk) {

	assert(chunk!=NULL);
	// compress the item and add it to the database
	switch (global_conf->compress_type) {
        case COMPRESS_NONE:
            break;  // nothing to do 

#ifdef ENABLE_GZIP_COMPRESSION
        case COMPRESS_GZIP: {
            // Gzip compression buffer must be at least 0.1% larger than 
            // the source buffer plus 12 bytes
            size_t len = chunk->len + (chunk->len >> 9) + 12;
            Bytef *comp_data = (Bytef*)malloc(len); 
            if(comp_data == NULL) {
                EXIT_TRACE("Malloc for space of compression data failed.\n");
            }
            size_t old_len = len;
            // compress the block
            int r = compress(comp_data, &len, chunk->data, chunk->len);
            if (r != Z_OK) {
                EXIT_TRACE("Compression failed\n");
            }
            if(len < old_len) { // Shrink buffer to actual size
                Bytef *new_mem = (Bytef*)realloc(comp_data, len);
                assert(new_mem != NULL);
                comp_data = new_mem;
            }
            // no need to free the old data, because those are just pointer 
            // pointing into the buffer that stores the data read from the 
            // input file
            chunk->data = comp_data;
            chunk->len = len;
            break;
        }
#endif // ENABLE_GZIP_COMPRESSION

#ifdef ENABLE_BZIP2_COMPRESSION
        case COMPRESS_BZIP2: {
            // Bzip compression buffer must be at least 1% larger than 
            // the source buffer plus 600 bytes
            size_t len = chunk->len + (chunk->len >> 6) + 600;
            void *comp_data = malloc(len); 
            if(comp_data == NULL) {
                EXIT_TRACE("Malloc for space of compression data failed.\n");
            }
            size_t old_len = len;
            // compress the block
            int ret = BZ2_bzBuffToBuffCompress(comp_data, &len, chunk->data, 
                                               chunk->len, 9, 0, 30);
            if (r != BZ_OK) {
                EXIT_TRACE("Compression failed\n");
            }
            // Shrink buffer to actual size
            if(len < old_len) {
                void *new_mem = realloc(comp_data, len);
                assert(new_mem != NULL);
                comp_data = new_mem;
            }
            // no need to free the old data, because those are just pointer
            // pointing into the buffer that stores data read from input file
            chunk->data = comp_data;
            chunk->len = len;
            break;
        }
#endif // ENABLE_BZIP2_COMPRESSION

        default:
            EXIT_TRACE("Compression type not implemented.\n");
            break;
	}
#ifdef ENABLE_STATISTICS
	stats.total_compressed += chunk->len;
#endif

	return;
    }


    /*
     * Computational kernel of deduplication stage
     *
     * Actions performed:
     *  - Calculate SHA1 signature for each incoming data chunk
     *  - Perform database lookup to determine chunk redundancy status
     *  - On miss add chunk to database
     *  - Returns chunk redundancy status
     */
    static int sub_Deduplicate(chunk_t *const chunk) {
	assert(chunk != NULL);
	assert(chunk->data != NULL);

	SHA1_Digest(chunk->data, chunk->len, (unsigned char *)(chunk->sha1));

	// Query database to determine whether we've seen the data chunk before
	int found = hashtable_search_key(global_cache,
                                         (void *)(chunk->sha1));
	chunk->isDuplicate = found;
	if(found == 0) {
	    // Miss: Create entry in hashtable and forward data to compression stage
	    // Insert the key into the hashtable so the later iterations know that
	    // this particular data has been seen by earlier iteration 
	    if(hashtable_insert(global_cache,
                                (void *)(chunk->sha1), chunk) == 0) {
		EXIT_TRACE("hashtable_insert_key failed");
	    }
	}
	// There is nothing to do if it's a hit

#ifdef ENABLE_STATISTICS
	if(found) {
	    stats.nDuplicates++;
	} else {
	    stats.total_dedup += chunk->len;
	}
#endif 

	return found;
    }

    // practically a define.  Never changes
    static const int rf_win_dataprocess = 0;

    // Read 'bytes_to_read' into buffer and returns actual bytes read
    // Would like to use xread but can't --- it returns 0 if the file hits EOF
    // before bytes_to_read number of bytes are read
    static inline size_t
    read_next_chunk(int fd, unsigned char *buffer, size_t bytes_to_read) {
	size_t ret;
	size_t bytes_read = 0;
	while(bytes_read < bytes_to_read) {
	    ret = read(fd, buffer, bytes_to_read - bytes_read);
	    if(ret < 0) {
		perror("I/O error:");
		EXIT_TRACE("file read fails\n");
	    } else if(ret == 0) { // done reading the file
		break;
	    }
	    bytes_read += ret;
	}

	return bytes_read;
    }

    static inline void
    setup_initial_buffer(file_info_t *const args, 
			 u32int *const rabintab, u32int *const rabinwintab) {

	if (global_conf->preloading == 0) {
	    assert(args->buffer != NULL);
	    size_t bytes_read = read_next_chunk(args->fd_in, args->buffer, MAXBUF);
	    if(bytes_read == 0) EXIT_TRACE("Input file empty.");
	    args->bytes_left = bytes_read;
	}
	args->next_offset = rabinseg(args->buffer, args->bytes_left, 
				     rf_win_dataprocess, rabintab, rabinwintab);
	assert((size_t)args->next_offset <= args->bytes_left);
    }

    // get the next chunk and setup the file buffer, buffer seek, and next offset
    // for the next chunk.  If we hit the end of the file, the next offset will 
    // be set to 0 after the last chunk is retrieved.  Each malloced-buffer that
    // holds the input file content will be freed when the last chunk pointing
    // to it has been written out to the output file, except for the very last
    // buffer, which is freed in Encode when the pipeline ends.
    static chunk_t*
    get_next_chunk(file_info_t *const args,
		   u32int *const rabintab,
                   u32int *const rabinwintab) {

	// static local variable to preserve the values between invocations
	size_t buf_seek = args->buf_seek;
	size_t bytes_left = args->bytes_left;
	unsigned char *const buffer = args->buffer;
	size_t next_offset = args->next_offset;


        // XXX: this differs from the encode-serial version.
        // we need a chunk per active iteration, since they can go in parallel
        // also, we want to use the return value of this function as an indication
        // of when we should stop the pipe iter, so it ends up being more
        // convenient to malloc chunk in here --- would be nice to always
        // detach after first stage; then we can do this in the iter body.
        chunk_t *chunk = NULL;
        if (next_offset > 0) {

            chunk = (chunk_t *) malloc(sizeof(chunk_t));
            if (chunk == NULL) EXIT_TRACE("Memory allocation failed.\n");
            chunk->buffer_to_free = (unsigned char *) NULL;

            chunk->data = buffer + buf_seek;
            chunk->len = next_offset;
            bytes_left -= next_offset;
            buf_seek += next_offset;
            assert(bytes_left >= 0);
    
            if (bytes_left != 0) {
                // find the next chunk to split off 
                next_offset = rabinseg(buffer + buf_seek, bytes_left, 
                                       rf_win_dataprocess, rabintab, rabinwintab);
                if ( (global_conf->preloading == 0) && (next_offset == bytes_left) ) {
                    // this will be the last chunk pointing to the old buffer
                    unsigned char *new_buf = (unsigned char *) malloc(MAXBUF);
                    size_t bytes_read = read_next_chunk(args->fd_in,
                                                        new_buf+bytes_left ,
                                                        MAXBUF-bytes_left); 

                    if (bytes_read > 0) { // there is actually more input
                        memcpy(new_buf, buffer + buf_seek, bytes_left); // get left over
                        args->buffer = new_buf; // replace the old buffer with the new
                        chunk->buffer_to_free = buffer; // be sure we free the old one
                        buf_seek = 0; // reset the seek index 
                        bytes_left += bytes_read; // reset the other stuff 
                        next_offset = rabinseg(args->buffer, bytes_left, 
                                               rf_win_dataprocess, rabintab, rabinwintab);

                    } else {
                        // otherwise we have hit the end of the file, and there is 
                        // no point moving data into new buf; we will realize we are 
                        // done the next time this function is invoked, via the fact 
                        // that bytes_left will be 0 
                        free(new_buf);
                    }
                }
                assert(next_offset <= bytes_left && next_offset >= 0); 

            } else {  // we are indeed done after this chunk returns
                next_offset = 0;
            }

            args->next_offset = next_offset;
            args->buf_seek = buf_seek;
            args->bytes_left = bytes_left;
        }

        return chunk;
    }
    
}; // extern "C"



// The main code that is actually C++.

/* 
 * Integrate all computationally intensive pipeline
 * stages to improve cache efficiency.
 * 
 * Ange: The file is read in and chopped into chunks.
 * Each chunk is then furhter segmented into smaller segments using Rabin 
 * finger printing (and each segment is variable size --- Rabin finger 
 * printing finds a good place to split the chunk so that even if the file 
 * changes, where the segments split stays roughly the same).
 *
 * Each segment goes through the stage of 
 * -- check duplicates (compute SHA1 key)
 * -- compress the segment if this is first time it's seen
 * -- write the segment (or SHA1) to file, depending on whether it is a 
 *    duplicate or not
 */
void *SerialIntegratedPipeline(file_info_t *const args) {
    // XXX: Write header
    if (write_header(args->fd_out,
                     global_conf->compress_type)) {
        EXIT_TRACE("Cannot write output file header.\n");
    }

    u32int *const rabintab = (u32int *) malloc(256*sizeof rabintab[0]);
    u32int *const rabinwintab = (u32int *) malloc(256*sizeof rabintab[0]);

    if(rabintab == NULL || rabinwintab == NULL) {
	EXIT_TRACE("Memory allocation failed.\n");
    }
    rabininit(rf_win_dataprocess, rabintab, rabinwintab);

    setup_initial_buffer(args, rabintab, rabinwintab);

#ifndef USE_TBB
    bool done = false;
    PIPELINE_BUFFER_WIDTH = global_conf->nthreads * global_conf->iters_per_thread;

    CILK_PIPE_WHILE_BEGIN_THROTTLED(!done, PIPELINE_BUFFER_WIDTH) {
	chunk_t *chunk = get_next_chunk(args,
					rabintab,
					rabinwintab);
	if (chunk) {
	    // Stage 2 [Serial]: check_for_dup
	    CILK_STAGE_WAIT(2);
	    {
		assert(chunk);
		assert(chunk->len > 0);
		// keep of the stats on the sizes of the uncompressed chunks seen
#ifdef ENABLE_STATISTICS
		// update statistics
		stats.nChunks[CHUNK_SIZE_TO_SLOT(chunk->len)]++;
#endif
		// Deduplicate: check if in the hashtable; if so, get the
		// pointer to the chunk that contains the compressed data
		//
		// The answer of whether this is a duplicate is stored
		// into chunk->isDuplicate.
		sub_Deduplicate(chunk);
	    }

	    // Stage 3 [Parallel]: Compress the chunk (if necessary).
	    CILK_STAGE(3);
	    {
		assert(chunk);
		// If chunk is unique compress & archive it.
		if(!chunk->isDuplicate) {
		    sub_Compress(chunk); // compress the entire chunk
		    // chunk.data will point to a newly-malloc-ed memory
		}
	    }

	    // Stage 4 [Serial]: Write the chunk to output file.
	    CILK_STAGE_WAIT(4);
	    {
		assert(chunk);
		write_chunk_to_file(args->fd_out, chunk);
	    }

	    // Stage 5 [Parallel]: Write the chunk to output file.
	    CILK_STAGE(5);
	    {
		assert(chunk);
		// since we have written out the chunk, now we can free the buffer
		// if this was the last chunk pointing into the buffer
		if(chunk->buffer_to_free) {
		    free(chunk->buffer_to_free);
		    chunk->buffer_to_free = (unsigned char *) NULL;
		}
		// the SHA1 is in the hashtable, so we can't free the chunk yet
		if(chunk->isDuplicate == 0) {
		    // the compressed data has been written out, so we can free it
		    free(chunk->data);
		} else {  // otherwise, we can free it
		    free(chunk);
		}
	    }
	}
	else {
	    done = true;
	}
    }  CILK_PIPE_WHILE_END();  // End of pipeline loop.
    
#else // Original TBB code.
    // Stage 1 [Serial]: Read in one chunk at a time from the file.
    auto get_next_chunk_f = [&]( tbb::flow_control& fc ) -> chunk_t* {
        chunk_t* chunk = get_next_chunk(args,
                                        rabintab,
                                        rabinwintab);
        if (chunk == NULL) {
            fc.stop();
        }
        return chunk;
    };

    // Stage 2 [Serial]: Check for duplicates in the hash table.
    auto check_for_dup_f = [&] ( chunk_t* chunk ) -> chunk_t* {
        assert(chunk);
        assert(chunk->len > 0);


       // keep of the stats on the sizes of the uncompressed chunks seen
#ifdef ENABLE_STATISTICS
        // update statistics
        stats.nChunks[CHUNK_SIZE_TO_SLOT(chunk->len)]++;
#endif
        // Deduplicate: check if in the hashtable; if so, get the
        // pointer to the chunk that contains the compressed data
        //
        // The answer of whether this is a duplicate is stored
        // into chunk->isDuplicate.
        sub_Deduplicate(chunk);
        return chunk;
    };

    // Stage 3 [Parallel]: Compress the chunk (if necessary).
    auto compress_f = [&](chunk_t* chunk) -> chunk_t* {
        assert(chunk);
	// If chunk is unique compress & archive it.
	if(!chunk->isDuplicate) {
            sub_Compress(chunk); // compress the entire chunk
	    // chunk.data will point to a newly-malloc-ed memory
	}
        return chunk;
    };
    
    // Stage 4 [Serial]: Write the chunk to output file.
    auto write_to_file_f = [&](chunk_t* chunk) -> chunk_t* {
        assert(chunk);
	write_chunk_to_file(args->fd_out, chunk);
        return chunk;
    };

    // Stage 5 [Parallel]: Write the chunk to output file.
    auto cleanup_f = [&](chunk_t* chunk) -> void {
        assert(chunk);
	// since we have written out the chunk, now we can free the buffer
	// if this was the last chunk pointing into the buffer
	if(chunk->buffer_to_free) {
	    free(chunk->buffer_to_free);
	    chunk->buffer_to_free = (unsigned char *) NULL;
	}
	// the SHA1 is in the hashtable, so we can't free the chunk yet
	if(chunk->isDuplicate == 0) {
	    // the compressed data has been written out, so we can free it
	    free(chunk->data);
	} else {  // otherwise, we can free it
            free(chunk);
        }
    };
    
    PIPELINE_BUFFER_WIDTH = global_conf->nthreads * global_conf->iters_per_thread;

    // Execute the pipeline.
    tbb::parallel_pipeline( PIPELINE_BUFFER_WIDTH,
                            tbb::make_filter< void, chunk_t* >(     tbb::filter::serial_in_order,
                                                                    get_next_chunk_f) &
                            tbb::make_filter< chunk_t*, chunk_t* >( tbb::filter::serial_in_order,
                                                                    check_for_dup_f) &
                            tbb::make_filter< chunk_t*, chunk_t* >( tbb::filter::parallel,
                                                                    compress_f) &
                            tbb::make_filter< chunk_t*, chunk_t* >( tbb::filter::serial_in_order,
                                                                    write_to_file_f) &
                            tbb::make_filter< chunk_t*, void >(     tbb::filter::parallel,
                                                                    cleanup_f) );
#endif
    
    free(rabintab);
    free(rabinwintab);

    // XXX
    // close(fd_out);

    return NULL;
}


extern "C" {
    
    /*--------------------------------------------------------------------------*/
    /* Encode
     * Compress an input stream
     *
     * Arguments:
     *   conf:    Configuration parameters
     *
     */
    void Encode(config_t * _conf) {

	struct stat filestat;

	// timing stuff
	float preload_time = 0.0f;
	float process_time = 0.0f;
	clockmark_t begin, end, preload_end; 

	global_conf = _conf;

#ifdef ENABLE_STATISTICS
	init_stats(&stats);
#endif

	// Create chunk cache
	global_cache = hashtable_create(65536,
                                        hash_from_key_fn,
                                        keys_equal_fn,
                                        FALSE);
	if(global_cache == NULL) {
	    printf("ERROR: Out of memory\n");
	    exit(1);
	}


#ifdef USE_TBB
        tbb::task_scheduler_init init(global_conf->nthreads);  // Automatic number of threads
#else
	// Set number of worker threads.
	char nworkers_string[100];
	snprintf(nworkers_string, 100, "%d", global_conf->nthreads);
	int code = __cilkrts_set_param("nworkers", nworkers_string);
	assert(0 == code);
#endif        
	file_info_t args;
	// Clear this struct to avoid uninitialized value errors.
	memset(&args, 0, sizeof(args));

	/* src file stat */
	if (stat(global_conf->infile, &filestat) < 0) 
	    EXIT_TRACE("stat() %s failed: %s\n",
                       global_conf->infile, strerror(errno));

	if (!S_ISREG(filestat.st_mode)) 
	    EXIT_TRACE("not a normal file: %s\n",
                       global_conf->infile);
#ifdef ENABLE_STATISTICS
	stats.total_input = filestat.st_size;
#endif


        /* src file open */
        if((args.fd_in = open(global_conf->infile, O_RDONLY | O_LARGEFILE)) < 0) {
            EXIT_TRACE("%s file open error %s\n",
                       global_conf->infile,
                       strerror(errno));
        }
        /* output file open */
        if((args.fd_out = open(global_conf->outfile,
                               O_CREAT | O_TRUNC | O_WRONLY | O_TRUNC,
                               S_IRGRP | S_IWUSR | S_IRUSR | S_IROTH)) < 0) {
            EXIT_TRACE("%s output file open error %s\n",
                       global_conf->outfile,
                       strerror(errno));
        }
        
	begin = ktiming_getmark();

	// Sanity check
	if(MAXBUF < 8 * ANCHOR_JUMP) {
	    printf("WARNING: I/O buffer size is small. Performance degraded.\n");
	    fflush(NULL);
	}

	if(global_conf->preloading) {
	    // Load entire file into memory if requested by user
	    unsigned char *file_buffer = (unsigned char *) malloc(filestat.st_size);
	    if(file_buffer == NULL)
		EXIT_TRACE("Error allocating memory for input buffer.\n");

	    size_t bytes_read=0;

	    // Read data until buffer full
	    while(bytes_read < (size_t)filestat.st_size) {
		size_t r = read(args.fd_in, file_buffer + bytes_read,
				filestat.st_size - bytes_read);
		if(r < 0) {
		    perror("I/O error: ");
		} else if(r == 0) {
		    break;
		}
		bytes_read += r;
	    }
	    args.bytes_left = filestat.st_size;
	    args.buffer = file_buffer;

	    preload_end = ktiming_getmark();
	    preload_time = ktiming_diff_usec(&begin, &preload_end);
    
	} else {
	    args.buffer = (unsigned char *) malloc(MAXBUF);
	} 
	args.buf_seek = 0;

	// XXX This is where the old ROI timing begin

	// Do the processing
	SerialIntegratedPipeline(&args);

	// XXX This is where the old ROI timing end 
	end = ktiming_getmark();
	process_time = ktiming_diff_sec(&begin, &end);

	// clean up 
	free(args.buffer);

    /* clean up with the src file */
    if(global_conf->infile != NULL)
        close(args.fd_in);

    close(args.fd_out);

    hashtable_destroy(global_cache, TRUE);

    if(preload_time) 
        printf("Preloading time = %.4f seconds\n", preload_time);
    printf("Processing time = %.4f seconds\n", process_time);

    char throttle_string[100];
    snprintf(throttle_string, 100, "K=%d", PIPELINE_BUFFER_WIDTH);

    cilkpub_report_time(stdout,
			"dedup-piper-process",
			global_conf->nthreads,
			process_time,
			global_conf->infile,
			throttle_string);

#ifdef ENABLE_STATISTICS
        fprintf(stderr, "Printing out stats.\n");
        // dest file stat
        if (stat(conf->outfile, &filestat) < 0) 
            EXIT_TRACE("stat() %s failed: %s\n", conf->outfile, strerror(errno));
        stats.total_output = filestat.st_size;
        // Analyze and print statistics
        // if(conf->verbose) 
        print_stats(&stats);
#endif 
    }

};

