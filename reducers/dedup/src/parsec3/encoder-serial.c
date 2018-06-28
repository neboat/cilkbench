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
#include <sys/stat.h>

#include "config.h"
#include "debug.h"
#include "dedupdef.h"
#include "encoder.h"
#include "util/ktiming.h"
#include "util/util.h"
#include "util/hashtable.h"
#include "util/rabin.h"
#include "util/mbuffer.h"

#define TIMING 0
#if TIMING
#define WHEN_TIMING(...) __VA_ARGS__ 
#else
#define WHEN_TIMING(...)
#endif

#ifdef ENABLE_GZIP_COMPRESSION
#include <zlib.h>
#endif //ENABLE_GZIP_COMPRESSION

#ifdef ENABLE_BZIP2_COMPRESSION
#include <bzlib.h>
#endif //ENABLE_BZIP2_COMPRESSION

// #define ENABLE_STATISTICS
#ifdef ENABLE_STATISTICS
#include "util/stats.h"
//variable with global statistics
stats_t stats;
#endif


//The configuration block defined in main
config_t * conf;

//Hash table data structure & utility functions
struct hashtable *cache;

static unsigned int hash_from_key_fn( void *k ) {
    //NOTE: sha1 sum is integer-aligned
    return ((unsigned int *)k)[0];
}

static int keys_equal_fn( void *key1, void *key2 ) {
    return (memcmp(key1, key2, SHA1_LEN) == 0);
}

// Arguments 
typedef struct input_args {
    //src file descriptor, first pipeline stage only
    int fd_in;
    //output file descriptor, first pipeline stage only
    int fd_out;
    //input file buffer, first pipeline stage & preloading only
    struct {
        void *buffer;
        size_t size;
    } input_file;
} input_args_t;

// Simple write utility function
static int write_file(int fd, u_char type, u_long len, u_char * content) {
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
/* XXX
static int create_output_file(char *outfile) {
    int fd;

    //Create output file
    fd = open(outfile, O_CREAT | O_TRUNC | O_WRONLY | O_TRUNC, 
                       S_IRGRP | S_IWUSR | S_IRUSR | S_IROTH);
    if (fd < 0) {
        EXIT_TRACE("Cannot open output file.");
    }

    //Write header
    if (write_header(fd, conf->compress_type)) {
        EXIT_TRACE("Cannot write output file header.\n");
    }

    return fd;
} */

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

    if(!chunk->header.isDuplicate) {
        //Unique chunk, data has not been written yet, do so now
        write_file(fd, TYPE_COMPRESS, 
                   chunk->compressed_data.n, chunk->compressed_data.ptr);
        mbuffer_free(&chunk->compressed_data);
    } else {
        //Duplicate chunk, data has been written to file before, just write SHA1
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
void sub_Compress(chunk_t *chunk) {
    size_t n;
    int r;

    assert(chunk!=NULL);
    // compress the item and add it to the database
    switch (conf->compress_type) {
        case COMPRESS_NONE:
            // Simply duplicate the data
            n = chunk->uncompressed_data.n;
            r = mbuffer_create(&chunk->compressed_data, n);
            if(r != 0) {
                EXIT_TRACE("Creation of compression buffer failed.\n");
            }
            // copy the block
            memcpy(chunk->compressed_data.ptr, 
                   chunk->uncompressed_data.ptr, chunk->uncompressed_data.n);
            break;
        #ifdef ENABLE_GZIP_COMPRESSION
        case COMPRESS_GZIP:
            // Gzip compression buffer must be at least 0.1% larger than 
            // the source buffer plus 12 bytes
            n = chunk->uncompressed_data.n + 
                    (chunk->uncompressed_data.n >> 9) + 12;
            r = mbuffer_create(&chunk->compressed_data, n);
            if(r != 0) {
                EXIT_TRACE("Creation of compression buffer failed.\n");
            }
            // compress the block
            r = compress(chunk->compressed_data.ptr, &n, 
                    chunk->uncompressed_data.ptr, chunk->uncompressed_data.n);
            if (r != Z_OK) {
                EXIT_TRACE("Compression failed\n");
            }
            // Shrink buffer to actual size
            if(n < chunk->compressed_data.n) {
                r = mbuffer_realloc(&chunk->compressed_data, n);
                assert(r == 0);
            }
            break;
            #endif // ENABLE_GZIP_COMPRESSION

        #ifdef ENABLE_BZIP2_COMPRESSION
        case COMPRESS_BZIP2:
            // Bzip compression buffer must be at least 1% larger than 
            // the source buffer plus 600 bytes
            n = chunk->uncompressed_data.n + 
                    (chunk->uncompressed_data.n >> 6) + 600;
            r = mbuffer_create(&chunk->compressed_data, n);
            if(r != 0) {
                EXIT_TRACE("Creation of compression buffer failed.\n");
            }
            // compress the block
            unsigned int int_n = n;
            r = BZ2_bzBuffToBuffCompress(chunk->compressed_data.ptr, &int_n, 
                                         chunk->uncompressed_data.ptr, 
                                         chunk->uncompressed_data.n, 9, 0, 30);
            n = int_n;
            if (r != BZ_OK) {
                EXIT_TRACE("Compression failed\n");
            }
            // Shrink buffer to actual size
            if(n < chunk->compressed_data.n) {
                r = mbuffer_realloc(&chunk->compressed_data, n);
                assert(r == 0);
            }
            break;
        #endif // ENABLE_BZIP2_COMPRESSION
        default:
            EXIT_TRACE("Compression type not implemented.\n");
            break;
    }
    mbuffer_free(&chunk->uncompressed_data);

#ifdef ENABLE_STATISTICS
    stats.total_compressed += chunk->compressed_data.n;
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
int sub_Deduplicate(chunk_t *chunk) {
    int isDuplicate;
    chunk_t *entry;

    assert(chunk!=NULL);
    assert(chunk->uncompressed_data.ptr!=NULL);

    SHA1_Digest(chunk->uncompressed_data.ptr, 
                chunk->uncompressed_data.n, (unsigned char *)(chunk->sha1));

    // Query database to determine whether we've seen the data chunk before
    entry = (chunk_t *)hashtable_search(cache, (void *)(chunk->sha1));
    isDuplicate = (entry != NULL);
    chunk->header.isDuplicate = isDuplicate;
    if(!isDuplicate) {
        // Miss: Create entry in hashtable and forward data to compression stage
        // NOTE: chunk->compressed_data.buffer will be computed in 
        // compression stage
        if(hashtable_insert(cache, (void *)(chunk->sha1), (void *)chunk) == 0) {
            EXIT_TRACE("hashtable_insert failed");
        }
    } else {
        // Hit: Skipping compression stage
        chunk->compressed_data_ref = entry;
        mbuffer_free(&chunk->uncompressed_data);
    }

#ifdef ENABLE_STATISTICS
    if(isDuplicate) {
        stats.nDuplicates++;
    } else {
        stats.total_dedup += chunk->uncompressed_data.n;
    }
#endif 

    return isDuplicate;
}


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
void *SerialIntegratedPipeline(input_args_t* args) {

    WHEN_TIMING( uint64_t write_time = 0, dedup_time = 0; )
    WHEN_TIMING( uint64_t comp_time = 0, preproc_time = 0; )
    WHEN_TIMING( uint64_t read_time = 0, total_time = 0; )
    WHEN_TIMING( clockmark_t first, last; )
    WHEN_TIMING( clockmark_t begin, end; )

    WHEN_TIMING( first = begin = ktiming_getmark(); )

    size_t preloading_buffer_seek = 0;
    int fd = args->fd_in;
    int fd_out = args->fd_out;
    int rf_win_dataprocess=0;
    int ret;

    // Write header
    // XXX was originally in create_output_file
    if (write_header(fd_out, conf->compress_type)) {
        EXIT_TRACE("Cannot write output file header.\n");
    }
    WHEN_TIMING({
        end = ktiming_getmark();
        preproc_time = ktiming_diff_usec(&begin, &end);
    })

    chunk_t *temp = NULL;
    chunk_t *chunk = NULL;
    u32int * rabintab = malloc(256*sizeof rabintab[0]);
    u32int * rabinwintab = malloc(256*sizeof rabintab[0]);
    if(rabintab == NULL || rabinwintab == NULL) {
        EXIT_TRACE("Memory allocation failed.\n");
    }

    rf_win_dataprocess = 0;
    rabininit(rf_win_dataprocess, rabintab, rabinwintab);

    // Sanity check
    if(MAXBUF < 8 * ANCHOR_JUMP) {
        printf("WARNING: I/O buffer size is small. Performance degraded.\n");
        fflush(NULL);
    }

    // read from input file / buffer
    while (1) {
        // amount of data left over in last_mbuffer from previous iteration
        size_t bytes_left = 0; 

        // Check how much data left over from previous iteration 
        // resp. create an initial chunk
        if(temp != NULL) {
            bytes_left = temp->uncompressed_data.n;
        }
        // Make sure that system supports new buffer size
        if(MAXBUF+bytes_left > SSIZE_MAX) {
            EXIT_TRACE("Input buffer size exceeds system maximum.\n");
        }

        // Allocate a new chunk and create a new memory buffer
        chunk = (chunk_t *)malloc(sizeof(chunk_t));
        if(chunk==NULL) {
            EXIT_TRACE("Memory allocation failed.\n");
        }
        ret = mbuffer_create(&chunk->uncompressed_data, MAXBUF+bytes_left);
        if(ret!=0) {
            EXIT_TRACE("Unable to initialize memory buffer.\n");
        }
        chunk->header.state = CHUNK_STATE_UNCOMPRESSED;
        if(bytes_left > 0) {
            // FIXME: Short-circuit this if no more data available

            // "Extension" of existing buffer, copy sequence number and 
            // left-over data to beginning of new buffer
            // NOTE: We cannot safely extend the current memory region 
            // because it has already been given to another thread??  
            // this is serial. this comment is probably for pthreads version
            memcpy(chunk->uncompressed_data.ptr, 
                   temp->uncompressed_data.ptr, temp->uncompressed_data.n);
            mbuffer_free(&temp->uncompressed_data);
            free(temp);
            temp = NULL;
        }

        // Read data until buffer full
        size_t bytes_read=0;
        if(conf->preloading) {
            WHEN_TIMING( begin = ktiming_getmark(); )
            size_t max_read = MIN(MAXBUF, 
                                  args->input_file.size-preloading_buffer_seek);
            memcpy(chunk->uncompressed_data.ptr+bytes_left, 
                   args->input_file.buffer+preloading_buffer_seek, max_read);
            bytes_read = max_read;
            preloading_buffer_seek += max_read;
            WHEN_TIMING({
                end = ktiming_getmark();
                read_time += ktiming_diff_usec(&begin, &end);
            })
        } else {
            WHEN_TIMING( begin = ktiming_getmark(); )
            while(bytes_read < MAXBUF) {
                ret = read(fd, 
                        chunk->uncompressed_data.ptr + bytes_left + bytes_read,
                        MAXBUF-bytes_read);
                if(ret < 0) {
                    perror("I/O error:");
                    EXIT_TRACE("file read fails\n");
                } else if(ret == 0) {
                    break;
                }
                bytes_read += ret;
            }
            WHEN_TIMING({
                end = ktiming_getmark();
                read_time += ktiming_diff_usec(&begin, &end);
            })
        }

        // No data left over from last iteration and also nothing new read in, 
        // simply clean up and quit
        if(bytes_left + bytes_read == 0) {
            mbuffer_free(&chunk->uncompressed_data);
            free(chunk);
            chunk = NULL;
            break;
        }
        // Shrink buffer to actual size
        if(bytes_left+bytes_read < chunk->uncompressed_data.n) {
            ret = mbuffer_realloc( &chunk->uncompressed_data,
                                 bytes_left+bytes_read );
            assert(ret == 0);
        }

        // Check whether any new data was read in, process last chunk if not
        if(bytes_read == 0) {
            #ifdef ENABLE_STATISTICS
            // update statistics
            stats.nChunks[CHUNK_SIZE_TO_SLOT(chunk->uncompressed_data.n)]++;
            #endif 

            WHEN_TIMING( begin = ktiming_getmark(); )
            // Deduplicate: check if in the hashtable; if so, get the 
            // pointer to the chunk that contains the compressed data
            int isDuplicate = sub_Deduplicate(chunk);
            // If chunk is unique compress & archive it.
            WHEN_TIMING({
                end = ktiming_getmark();
                dedup_time += ktiming_diff_usec(&begin, &end);
                begin = end;
            })
            if(!isDuplicate) {
                sub_Compress(chunk); // compress the entire chunk
            }
            WHEN_TIMING({
                end = ktiming_getmark();
                comp_time += ktiming_diff_usec(&begin, &end);
                begin = end;
            })
            write_chunk_to_file(fd_out, chunk);
            WHEN_TIMING({
                end = ktiming_getmark();
                write_time += ktiming_diff_usec(&begin, &end);
                begin = end;
            })
            if(chunk->header.isDuplicate) {
                free(chunk);
                chunk=NULL;
            }

            // stop fetching from input buffer, terminate processing
            break;
        }

        // partition input block into fine-granular chunks
        int split;
        do {
            split = 0;
            // Try to split the buffer
            //  offset = size of first segment to process
            int offset = rabinseg(chunk->uncompressed_data.ptr, 
                                  chunk->uncompressed_data.n, 
                                  rf_win_dataprocess, rabintab, rabinwintab);
            // Split found at the very beginning of the buffer 
            // (should never happen due to technical limitations)
            assert(offset != 0);

            // Did we find a split location?
            if(offset < chunk->uncompressed_data.n) {
                // Split found somewhere in the middle of the buffer
                // Allocate a new chunk and create a new memory buffer
                temp = (chunk_t *)malloc(sizeof(chunk_t));
                if(temp==NULL) {
                    EXIT_TRACE("Memory allocation failed.\n");
                }

                // split it into two pieces
                // when return, both will point to the same block of memory, 
                // but chunk will point to the first part with n = split
                // and temp will point to the rest
                ret = mbuffer_split(&chunk->uncompressed_data, 
                                  &temp->uncompressed_data, offset);
                if(ret != 0) {
                    EXIT_TRACE("Unable to split memory buffer.\n");
                }
                temp->header.state = CHUNK_STATE_UNCOMPRESSED;

                #ifdef ENABLE_STATISTICS
                stats.nChunks[CHUNK_SIZE_TO_SLOT(chunk->uncompressed_data.n)]++;
                #endif

                WHEN_TIMING( begin = ktiming_getmark(); )
                int isDuplicate = sub_Deduplicate(chunk);
                WHEN_TIMING({
                    end = ktiming_getmark();
                    dedup_time += ktiming_diff_usec(&begin, &end);
                    begin = end;
                })
                // If chunk is unique compress & archive it.
                if(!isDuplicate) {
                    sub_Compress(chunk);
                }
                WHEN_TIMING({
                    end = ktiming_getmark();
                    comp_time += ktiming_diff_usec(&begin, &end);
                    begin = end;
                })
                write_chunk_to_file(fd_out, chunk);
                WHEN_TIMING({
                    end = ktiming_getmark();
                    write_time += ktiming_diff_usec(&begin, &end);
                })
                if(chunk->header.isDuplicate){
                    free(chunk);
                    chunk=NULL;
                }
                // prepare for next iteration
                chunk = temp;
                temp = NULL;
                split = 1;

            } else {
                // Due to technical limitations we can't distinguish the 
                // cases "no split" and "split at end of buffer"
                // This will result in some unnecessary (and unlikely) work 
                // but yields the correct result eventually.
                temp = chunk;
                chunk = NULL;
                split = 0;
            }
        } while(split);
    }

    free(rabintab);
    free(rabinwintab);

    WHEN_TIMING({
        last = ktiming_getmark();
        total_time = ktiming_diff_usec(&first, &last);
    })

    WHEN_TIMING({
        printf("Preproc time   = %.4f seconds\n", (double)preproc_time*1.0e-9);
        printf("Reading time   = %.4f seconds\n", (double)read_time*1.0e-9);
        printf("Dedup   time   = %.4f seconds\n", (double)dedup_time*1.0e-9);
        printf("Compress time  = %.4f seconds\n", (double)comp_time*1.0e-9);
        printf("Writing time   = %.4f seconds\n", (double)write_time*1.0e-9);
        printf("Mist. time     = %.4f seconds\n",
               (double)(total_time - preproc_time - read_time 
                        - dedup_time - comp_time - write_time)*1.0e-9);
    })

    // XXX
    // close(fd_out);

    return NULL;
}


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
    uint64_t preload_time = 0;
    uint64_t process_time = 0;
    clockmark_t begin, end, preload_end; 


    conf = _conf;

#ifdef ENABLE_STATISTICS
    init_stats(&stats);
#endif

    // Create chunk cache
    cache = hashtable_create(65536, hash_from_key_fn, keys_equal_fn, FALSE);
    if(cache == NULL) {
        printf("ERROR: Out of memory\n");
        exit(1);
    }

    input_args_t args;

    /* src file stat */
    if (stat(conf->infile, &filestat) < 0) {
        EXIT_TRACE("stat() %s failed: %s\n", conf->infile, strerror(errno));
    }

    if (!S_ISREG(filestat.st_mode)) 
        EXIT_TRACE("not a normal file: %s\n", conf->infile);
#ifdef ENABLE_STATISTICS
    stats.total_input = filestat.st_size;
#endif

    /* src file open */
    if((args.fd_in = open(conf->infile, O_RDONLY | O_LARGEFILE)) < 0) {
        EXIT_TRACE("%s file open error %s\n", conf->infile, strerror(errno));
    }
    /* output file open */
    if((args.fd_out = open(conf->outfile,
                           O_CREAT | O_TRUNC | O_WRONLY | O_TRUNC,
                           S_IRGRP | S_IWUSR | S_IRUSR | S_IROTH)) < 0) {
        EXIT_TRACE("%s output file open error %s\n", conf->outfile,
                   strerror(errno));
    }

    // Load entire file into memory if requested by user
    void *preloading_buffer = NULL;

    begin = ktiming_getmark();
    if(conf->preloading) {

        size_t bytes_read=0;
        int r;

        preloading_buffer = malloc(filestat.st_size);
        if(preloading_buffer == NULL)
            EXIT_TRACE("Error allocating memory for input buffer.\n");

        // Read data until buffer full
        while(bytes_read < filestat.st_size) {
            r = read(args.fd_in, preloading_buffer+bytes_read, 
                     filestat.st_size-bytes_read);
            if(r<0) {
                perror("I/O error: ");
            } else if(r==0) {
                break;
            }
            bytes_read += r;
        }

        args.input_file.size = filestat.st_size;
        args.input_file.buffer = preloading_buffer;

        preload_end = ktiming_getmark();
        preload_time = ktiming_diff_usec(&begin, &preload_end);
    }

    // XXX This is where the old ROI timing begin

    // Do the processing
    SerialIntegratedPipeline(&args);

    // XXX This is where the old ROI timing end 
    end = ktiming_getmark();
    process_time = ktiming_diff_usec(&begin, &end);

    // clean up after preloading
    if(conf->preloading) {
        free(preloading_buffer);
    }

    /* clean up with the src file */
    if(conf->infile != NULL)
        close(args.fd_in);
    close(args.fd_out);

    hashtable_destroy(cache, TRUE);

    if(preload_time) {
        printf("Preloading time = %.4f seconds\n", (double)preload_time*1.0e-9);
    }
    printf("Processing time = %.4f seconds\n", (double)process_time*1.0e-9);

#ifdef ENABLE_STATISTICS
    /* dest file stat */
    if (stat(conf->outfile, &filestat) < 0) 
        EXIT_TRACE("stat() %s failed: %s\n", conf->outfile, strerror(errno));
    stats.total_output = filestat.st_size;
    // Analyze and print statistics
    if(conf->verbose) print_stats(&stats);
#endif 
}

