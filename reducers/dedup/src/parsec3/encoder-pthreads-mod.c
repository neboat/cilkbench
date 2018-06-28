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
 * Fragment->FragmentRefine->Deduplicate->Compress->Reorder
 * Each stage has basically three steps:
 * 1. fetch a group of items from the queue
 * 2. process the items
 * 3. put them in the queue for the next stage
 */

/*
 * ANGE: The only difference between this version and the original 
 *       parsec version is that, this version merges Compress and Deduplicate
 *       stages into one. 
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
#include "util/mbuffer.h"
#include "util/rabin.h"

// XXX Things only the pthreads version needs
#include <pthread.h>
#include "util/binheap.h"
#include "util/tree.h"
#include "util/queue.h"


#define TIMING 1
#if TIMING
#define WHEN_TIMING(...) __VA_ARGS__ 
#else
#define WHEN_TIMING(...)
#endif


#ifndef ENABLE_PTHREADS
#error Must pass -DENABLE_PTHREADS to enable this version 
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

#define INITIAL_SEARCH_TREE_SIZE 4096

WHEN_TIMING(static uint64_t actual_write = 0;)
WHEN_TIMING(static __thread uint64_t actual_comp = 0;)


// The configuration block defined in main
config_t * conf;

// Hash table data structure & utility functions
struct hashtable *cache;

static unsigned int hash_from_key_fn( void *k ) {
    //NOTE: sha1 sum is integer-aligned
    return ((unsigned int *)k)[0];
}

static int keys_equal_fn ( void *key1, void *key2 ) {
    return (memcmp(key1, key2, SHA1_LEN) == 0);
}


// XXX Things only the pthreads version needs
// The queues between the pipeline stages
queue_t *deduplicate_que, *refine_que, *reorder_que;

// Arguments to pass to each thread
struct thread_args {
    //thread id, unique within a thread pool (i.e. unique for a pipeline stage)
    int tid;
    //number of queues available, first and last pipeline stage only
    int nqueues;
    //src file descriptor, first pipeline stage only
    int fd_in;
    //output file descriptor
    int fd_out;
    //input file buffer, first pipeline stage & preloading only
    struct {
        void *buffer;
        size_t size;
    } input_file;

    WHEN_TIMING( uint64_t proc_time; ) 
    WHEN_TIMING( uint64_t actual_proc_time; ) 
    WHEN_TIMING( uint64_t actual_comp_proc_time; ) 
};

// Simple write utility function
static int write_file(int fd, u_char type, u_long len, u_char * content) {
    WHEN_TIMING( clockmark_t begin, end; )
    WHEN_TIMING( begin = ktiming_getmark(); )

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
    WHEN_TIMING({
        end = ktiming_getmark(); 
        actual_write += ktiming_diff_usec(&begin, &end);
    })

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

    // Create output file
    fd = open(outfile, O_CREAT | O_TRUNC | O_WRONLY|O_TRUNC, 
                       S_IRGRP | S_IWUSR | S_IRUSR | S_IROTH);
    if (fd < 0) {
        EXIT_TRACE("Cannot open output file.");
    }
    // Write header
    if (write_header(fd, conf->compress_type)) {
        EXIT_TRACE("Cannot write output file header.\n");
    }

    return fd;
} */



// XXX This version is designed for pthreads 
/*
 * Helper function that writes a chunk to an output file depending on
 * its state. The function will write the SHA1 sum if the chunk has
 * already been written before, or it will write the compressed data
 * of the chunk if it has not been written yet.
 *
 * This function will block if the compressed data is not available yet.
 * This function might update the state of the chunk if there are any changes.
 */
// NOTE: The parallel version checks the state of each chunk to make sure the
//       relevant data is available. If it is not then the function waits.
static void write_chunk_to_file(int fd, chunk_t *chunk) {
    assert(chunk!=NULL);

    // Find original chunk
    if(chunk->header.isDuplicate) chunk = chunk->compressed_data_ref;

    pthread_mutex_lock(&chunk->header.lock);
    while(chunk->header.state == CHUNK_STATE_UNCOMPRESSED) {
        pthread_cond_wait(&chunk->header.update, &chunk->header.lock);
    }

    // state is now guaranteed to be either COMPRESSED or FLUSHED
    if(chunk->header.state == CHUNK_STATE_COMPRESSED) {
        // Chunk data has not been written yet, do so now
        write_file(fd, TYPE_COMPRESS, chunk->compressed_data.n, 
                   chunk->compressed_data.ptr);
        mbuffer_free(&chunk->compressed_data);
        chunk->header.state = CHUNK_STATE_FLUSHED;
    } else {
        // Chunk data has been written to file before, just write SHA1
        write_file(fd, TYPE_FINGERPRINT, SHA1_LEN, 
                   (unsigned char *)(chunk->sha1));
    }
    pthread_mutex_unlock(&chunk->header.lock);
}


int rf_win;
int rf_win_dataprocess;

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

    // XXX Things only the pthreads version needs
    pthread_mutex_lock(&chunk->header.lock);
    assert(chunk->header.state == CHUNK_STATE_UNCOMPRESSED);

    WHEN_TIMING( clockmark_t begin, end; )
    WHEN_TIMING( begin = ktiming_getmark(); )

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
            // source buffer plus 12 bytes
            n = chunk->uncompressed_data.n + 
                (chunk->uncompressed_data.n >> 9) + 12;
            r = mbuffer_create(&chunk->compressed_data, n);
            if(r != 0) {
                EXIT_TRACE("Creation of compression buffer failed.\n");
            }
            // compress the block
            r = compress(chunk->compressed_data.ptr, &n, 
                         chunk->uncompressed_data.ptr, 
                         chunk->uncompressed_data.n);
            if (r != Z_OK) {
                EXIT_TRACE("Compression failed\n");
            }
            // Shrink buffer to actual size
            if(n < chunk->compressed_data.n) {
                r = mbuffer_realloc(&chunk->compressed_data, n);
                assert(r == 0);
            }
            break;
            #endif  // ENABLE_GZIP_COMPRESSION

        #ifdef ENABLE_BZIP2_COMPRESSION
        case COMPRESS_BZIP2:
            // Bzip compression buffer must be at least 1% larger than 
            // source buffer plus 600 bytes
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
        #endif  // ENABLE_BZIP2_COMPRESSION

        default:
            EXIT_TRACE("Compression type not implemented.\n");
            break;
    }
    mbuffer_free(&chunk->uncompressed_data);

    WHEN_TIMING( end = ktiming_getmark(); )
    WHEN_TIMING( actual_comp += ktiming_diff_usec(&begin, &end); )

    // XXX Things only the pthreads version needs
    chunk->header.state = CHUNK_STATE_COMPRESSED;
    pthread_cond_broadcast(&chunk->header.update);
    pthread_mutex_unlock(&chunk->header.lock);

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
    // XXX Things that only the pthreads version needs
    pthread_mutex_t *ht_lock = hashtable_getlock(cache, (void *)(chunk->sha1));
    pthread_mutex_lock(ht_lock);

    entry = (chunk_t *)hashtable_search(cache, (void *)(chunk->sha1));
    isDuplicate = (entry != NULL);
    chunk->header.isDuplicate = isDuplicate;
    if (!isDuplicate) {
        // Miss: compress and insert into cache
        // XXX Things that only the pthreads version needs
        pthread_mutex_init(&chunk->header.lock, NULL);
        pthread_cond_init(&chunk->header.update, NULL);
        if(hashtable_insert(cache, (void *)(chunk->sha1), (void *)chunk) == 0) {
            EXIT_TRACE("hashtable_insert failed");
        }
    } else {
        // Hit: Skipping compression stage
        chunk->compressed_data_ref = entry;
        mbuffer_free(&chunk->uncompressed_data);
    }
    // XXX Things that only the pthreads version needs
    pthread_mutex_unlock(ht_lock);

    return isDuplicate;
}

/*
 * Pipeline stage function of deduplication stage
 *
 * Actions performed:
 *  - Take input data from fragmentation stages
 *  - Execute deduplication kernel for each data chunk
 *  - Route resulting package either to compression stage or to 
 *      reorder stage, depending on deduplication status
 */
// XXX The pthreads version 
void * Deduplicate(void * targs) {

    WHEN_TIMING( clockmark_t first, last; )
    WHEN_TIMING( clockmark_t begin, end; )
    WHEN_TIMING( first = ktiming_getmark(); )

    struct thread_args *args = (struct thread_args *)targs;
    const int qid = args->tid / MAX_THREADS_PER_QUEUE;
    chunk_t *chunk;
    int r;
    int recv_limit = MIN(conf->throttle, CHUNK_ANCHOR_PER_FETCH);
    int send_limit = MIN(conf->throttle, ITEM_PER_INSERT);

    ringbuffer_t recv_buf, send_buf_reorder;

#ifdef ENABLE_STATISTICS
    stats_t *thread_stats = malloc(sizeof(stats_t));
    if(thread_stats == NULL) {
        EXIT_TRACE("Memory allocation failed.\n");
    }
    init_stats(thread_stats);
#endif // ENABLE_STATISTICS

    r=0;
    r += ringbuffer_init(&recv_buf, recv_limit);
    r += ringbuffer_init(&send_buf_reorder, send_limit); 
    assert(r==0);

    while (1) {
        // if no items available, fetch a group of items from the queue
        if (ringbuffer_isEmpty(&recv_buf)) {
            r = queue_dequeue(&deduplicate_que[qid], &recv_buf, recv_limit);
            if (r < 0) break;
        }

        // get one chunk
        chunk = (chunk_t *)ringbuffer_remove(&recv_buf);
        assert(chunk!=NULL);

        // Do the processing
        WHEN_TIMING( begin = ktiming_getmark(); )
        int isDuplicate = sub_Deduplicate(chunk);
        WHEN_TIMING({
            end = ktiming_getmark();
            args->actual_proc_time += ktiming_diff_usec(&begin, &end);
        })

#ifdef ENABLE_STATISTICS
        if(isDuplicate) {
            thread_stats->nDuplicates++;
        } else {
            thread_stats->total_dedup += chunk->uncompressed_data.n;
        }
#endif // ENABLE_STATISTICS

        // Enqueue chunk either into compression queue or into send queue
        if(!isDuplicate) {
            sub_Compress(chunk);

#ifdef ENABLE_STATISTICS
            thread_stats->total_compressed += chunk->compressed_data.n;
#endif // ENABLE_STATISTICS
        }

        r = ringbuffer_insert(&send_buf_reorder, chunk);
        assert(r==0);

        // put the item in the next queue for the write thread
        if (ringbuffer_isFull(&send_buf_reorder)) {
            r = queue_enqueue(&reorder_que[qid], 
                    &send_buf_reorder, send_limit);
            assert(r>=1);
        }
    }
    while(!ringbuffer_isEmpty(&send_buf_reorder)) {
        r = queue_enqueue(&reorder_que[qid], &send_buf_reorder, send_limit);
        assert(r>=1);
    }

    ringbuffer_destroy(&recv_buf);
    ringbuffer_destroy(&send_buf_reorder);

    // shutdown
    queue_terminate(&reorder_que[qid]);

    WHEN_TIMING({
        last = ktiming_getmark();
        args->proc_time = ktiming_diff_usec(&first, &last);
        args->actual_comp_proc_time = actual_comp; 
    })

#ifdef ENABLE_STATISTICS
    return thread_stats;
#else
    return NULL;
#endif // ENABLE_STATISTICS
}


/*
 * Pipeline stage function and computational kernel of refinement stage
 *
 * Actions performed:
 *  - Take coarse chunks from fragmentation stage
 *  - Partition data block into smaller chunks with Rabin rolling fingerprints
 *  - Send resulting data chunks to deduplication stage
 *
 * Notes:
 *  - Allocates mbuffers for fine-granular chunks
 */
// XXX The pthreads version 
/* ANGE: Read input from queue filled w/ anchors processed by Fragment stage,
         and futher breaks them down into smaller chunks; it sets the 
         chunks sequence.l2num  */
void *FragmentRefine(void * targs) {

    WHEN_TIMING( clockmark_t begin, end; )
    WHEN_TIMING( begin = ktiming_getmark(); )

    struct thread_args *args = (struct thread_args *)targs;
    const int qid = args->tid / MAX_THREADS_PER_QUEUE;
    ringbuffer_t recv_buf, send_buf;
    int r;
    int recv_limit = MIN(conf->throttle, MAX_PER_FETCH);
    int send_limit = MIN(conf->throttle, CHUNK_ANCHOR_PER_INSERT);

    chunk_t *temp;
    chunk_t *chunk;
    u32int * rabintab = malloc(256*sizeof rabintab[0]);
    u32int * rabinwintab = malloc(256*sizeof rabintab[0]);
    if(rabintab == NULL || rabinwintab == NULL) {
        EXIT_TRACE("Memory allocation failed.\n");
    }

    r=0;
    r += ringbuffer_init(&recv_buf, recv_limit);
    r += ringbuffer_init(&send_buf, send_limit);
    assert(r==0);

#ifdef ENABLE_STATISTICS
    stats_t *thread_stats = malloc(sizeof(stats_t));
    if(thread_stats == NULL) {
        EXIT_TRACE("Memory allocation failed.\n");
    }
    init_stats(thread_stats);
#endif // ENABLE_STATISTICS

    while (TRUE) {
        // if no item for process, get a group of items from the pipeline
        if (ringbuffer_isEmpty(&recv_buf)) {
            r = queue_dequeue(&refine_que[qid], &recv_buf, recv_limit);
            if (r < 0) {
                break;
            }
        }

        // get one item
        chunk = (chunk_t *)ringbuffer_remove(&recv_buf);
        assert(chunk!=NULL);

        rabininit(rf_win, rabintab, rabinwintab);

        int split;
        sequence_number_t chcount = 0;
        do {
            // Find next anchor with Rabin fingerprint
            int offset = rabinseg(chunk->uncompressed_data.ptr, 
                                  chunk->uncompressed_data.n, rf_win, 
                                  rabintab, rabinwintab);
            // Can we split the buffer?
            if(offset < chunk->uncompressed_data.n) {
                // Allocate a new chunk and create a new memory buffer
                temp = (chunk_t *)malloc(sizeof(chunk_t));
                if(temp==NULL) EXIT_TRACE("Memory allocation failed.\n");
                temp->header.state = chunk->header.state;
                temp->sequence.l1num = chunk->sequence.l1num;

                // split it into two pieces
                r = mbuffer_split(&chunk->uncompressed_data, 
                                  &temp->uncompressed_data, offset);
                if(r!=0) EXIT_TRACE("Unable to split memory buffer.\n");

                // Set correct state and sequence numbers
                chunk->sequence.l2num = chcount;
                chunk->isLastL2Chunk = FALSE;
                chcount++;

#ifdef ENABLE_STATISTICS
                // update statistics
                thread_stats->nChunks[CHUNK_SIZE_TO_SLOT(chunk->uncompressed_data.n)]++;
#endif 

                // put it into send buffer
                r = ringbuffer_insert(&send_buf, chunk);
                assert(r==0);
                if (ringbuffer_isFull(&send_buf)) {
                    r = queue_enqueue(&deduplicate_que[qid], 
                                      &send_buf, send_limit);
                    assert(r>=1);
                }
                // prepare for next iteration
                chunk = temp;
                split = 1;
            } else {
                // End of buffer reached, don't split but simply enqueue it
                // Set correct state and sequence numbers
                chunk->sequence.l2num = chcount;
                chunk->isLastL2Chunk = TRUE;
                chcount++;

#ifdef ENABLE_STATISTICS
                // update statistics
                thread_stats->nChunks[CHUNK_SIZE_TO_SLOT(chunk->uncompressed_data.n)]++;
#endif

                // put it into send buffer
                r = ringbuffer_insert(&send_buf, chunk);
                assert(r==0);
                if (ringbuffer_isFull(&send_buf)) {
                    r = queue_enqueue(&deduplicate_que[qid], 
                                &send_buf, send_limit);
                    assert(r>=1);
                }
                // prepare for next iteration
                chunk = NULL;
                split = 0;
            }
        } while(split);
    }

    // drain buffer
    while(!ringbuffer_isEmpty(&send_buf)) {
        r = queue_enqueue(&deduplicate_que[qid], &send_buf, send_limit);
        assert(r>=1);
    }

    free(rabintab);
    free(rabinwintab);
    ringbuffer_destroy(&recv_buf);
    ringbuffer_destroy(&send_buf);

    // shutdown
    queue_terminate(&deduplicate_que[qid]);

    WHEN_TIMING({
        end = ktiming_getmark();
        args->proc_time = ktiming_diff_usec(&begin, &end);
    })

#ifdef ENABLE_STATISTICS
    return thread_stats;
#else
    return NULL;
#endif // ENABLE_STATISTICS
}


/*
 * Ange: Only a single thread is created to execute this stage.
 * 
 * Pipeline stage function of fragmentation stage
 *
 * Actions performed:
 *  - Read data from file (or preloading buffer)
 *  - Perform coarse-grained chunking
 *  - Send coarse chunks to refinement stages for further processing
 *  - Each chunk is at least ANCHOR_JUMP bytes large (but still uses 
 *    rabinseg to find the break point.
 *  - The resulting chunks are inserted into 4 refine_que (nqueues of them)
 *    whenever the send_buf is full, in a round robin fashion
 *
 * Notes:
 * This pipeline stage is a bottleneck because it is inherently serial. We
 * therefore perform only coarse chunking and pass on the data block as fast
 * as possible so that there are no delays that might decrease scalability.
 * With very large numbers of threads this stage will not be able to keep up
 * which will eventually limit scalability. A solution to this is to increase
 * the size of coarse-grained chunks with a comparable increase in total
 * input size.
 */
// XXX The pthreads version
/* ANGE: Read input from file or preload buffer and breaks them into "anchors"
         i.e., a coarse grain chunk; it sets the chunks sequence.l1num  */
void *Fragment(void * targs) {

    WHEN_TIMING( clockmark_t begin, end; )
    WHEN_TIMING( begin = ktiming_getmark(); )

    struct thread_args *args = (struct thread_args *)targs;
    size_t preloading_buffer_seek = 0;
    int qid = 0;
    int fd = args->fd_in;
    int i;

    ringbuffer_t send_buf; //  "thread-local" buffer for storing fragments
    sequence_number_t anchorcount = 0;
    int r;
    int send_limit = MIN(conf->throttle, ANCHOR_DATA_PER_INSERT);

    chunk_t *temp = NULL;
    chunk_t *chunk = NULL;
    u32int * rabintab = malloc(256*sizeof rabintab[0]);
    u32int * rabinwintab = malloc(256*sizeof rabintab[0]);
    if(rabintab == NULL || rabinwintab == NULL) {
        EXIT_TRACE("Memory allocation failed.\n");
    }

    r = ringbuffer_init(&send_buf, send_limit);
    assert(r==0);

    rf_win_dataprocess = 0;
    rabininit(rf_win_dataprocess, rabintab, rabinwintab);

    // Sanity check
    if(MAXBUF < 8 * ANCHOR_JUMP) {
        printf(
            "WARNING: I/O buffer size is very small. Performance degraded.\n");
        fflush(NULL);
    }

    // read from input file / buffer
    while (1) {
        // amount of data left over in last_mbuffer from previous iteration
        size_t bytes_left; 

        // Check how much data left over from previous iteration 
        // resp. create an initial chunk
        if(temp != NULL) {
            bytes_left = temp->uncompressed_data.n;
        } else {
            bytes_left = 0;
        }

        // Make sure that system supports new buffer size
        if(MAXBUF+bytes_left > SSIZE_MAX) {
            EXIT_TRACE("Input buffer size exceeds system maximum.\n");
        }
        // Allocate a new chunk and create a new memory buffer
        chunk = (chunk_t *)malloc(sizeof(chunk_t));
        if(chunk==NULL) EXIT_TRACE("Memory allocation failed.\n");
        r = mbuffer_create(&chunk->uncompressed_data, MAXBUF+bytes_left);
        if(r!=0) {
            EXIT_TRACE("Unable to initialize memory buffer.\n");
        }
        if(bytes_left > 0) {
            // FIXME: Short-circuit this if no more data available

            // "Extension" of existing buffer, copy sequence number and 
            // left over data to beginning of new buffer
            chunk->header.state = CHUNK_STATE_UNCOMPRESSED;
            chunk->sequence.l1num = temp->sequence.l1num;

            // NOTE: We cannot safely extend the current memory region 
            // because it has already been given to another thread
            memcpy(chunk->uncompressed_data.ptr, 
                   temp->uncompressed_data.ptr, temp->uncompressed_data.n);
            mbuffer_free(&temp->uncompressed_data);
            free(temp);
            temp = NULL;
        } else {
            // brand new mbuffer, increment sequence number
            chunk->header.state = CHUNK_STATE_UNCOMPRESSED;
            chunk->sequence.l1num = anchorcount;
            anchorcount++;
        }
        // Read data until buffer full
        size_t bytes_read=0;
        if(conf->preloading) {
            size_t max_read = 
                MIN(MAXBUF, args->input_file.size-preloading_buffer_seek);
            memcpy(chunk->uncompressed_data.ptr+bytes_left, 
                   args->input_file.buffer+preloading_buffer_seek, max_read);
            bytes_read = max_read;
            preloading_buffer_seek += max_read;
        } else {
            while(bytes_read < MAXBUF) {
                r = read(fd, chunk->uncompressed_data.ptr+bytes_left+bytes_read,
                         MAXBUF-bytes_read);
                if(r<0) {
                    perror("I/O error:");
                    EXIT_TRACE("file read fails\n");
                } else if(r==0) {
                    break;
                }
                bytes_read += r;
            }
        }

        //  No data left over from last iteration and also nothing new read in, 
        //  simply clean up and quit
        if(bytes_left + bytes_read == 0) {
            mbuffer_free(&chunk->uncompressed_data);
            free(chunk);
            chunk = NULL;
            break;
        }
        // Shrink buffer to actual size
        if(bytes_left+bytes_read < chunk->uncompressed_data.n) {
            r = mbuffer_realloc(&chunk->uncompressed_data, 
                                bytes_left+bytes_read);
            assert(r == 0);
        }

        // Check whether any new data was read in, enqueue last chunk if not
        if(bytes_read == 0) {
            //  put it into send buffer
            r = ringbuffer_insert(&send_buf, chunk);
            assert(r==0);
            // NOTE: No need to empty a full send_buf, we will break now 
            // and pass everything on to the queue
            break;
        }

        // partition input block into large, coarse-granular chunks
        int split;
        do {
            split = 0;
            // Try to split the buffer at least ANCHOR_JUMP bytes away 
            // from its beginning
            if(ANCHOR_JUMP < chunk->uncompressed_data.n) {
                int offset = 
                    rabinseg(chunk->uncompressed_data.ptr + ANCHOR_JUMP, 
                             chunk->uncompressed_data.n - ANCHOR_JUMP, 
                             rf_win_dataprocess, rabintab, rabinwintab);

                // Split found at the very beginning of the buffer 
                // (should never happen due to technical limitations)
                assert(offset != 0);

                // Did we find a split location?
                if(offset + ANCHOR_JUMP < chunk->uncompressed_data.n) {
                    // Split found somewhere in the middle of the buffer
                    // Allocate a new chunk and create a new memory buffer
                    temp = (chunk_t *)malloc(sizeof(chunk_t));
                    if(temp==NULL) EXIT_TRACE("Memory allocation failed.\n");

                    // split it into two pieces
                    r = mbuffer_split(&chunk->uncompressed_data, 
                                &temp->uncompressed_data, offset + ANCHOR_JUMP);
                    if(r!=0) EXIT_TRACE("Unable to split memory buffer.\n");
                    temp->header.state = CHUNK_STATE_UNCOMPRESSED;
                    temp->sequence.l1num = anchorcount;
                    anchorcount++;

                    // put it into send buffer
                    r = ringbuffer_insert(&send_buf, chunk);
                    assert(r==0);

                    // send a group of items into the next queue in round-robin 
                    if(ringbuffer_isFull(&send_buf)) {
                        r = queue_enqueue(&refine_que[qid],
                                          &send_buf, send_limit);
                        assert(r>=1);
                        qid = (qid+1) % args->nqueues;
                    }
                    // prepare for next iteration
                    chunk = temp;
                    temp = NULL;
                    split = 1;

                } else {
                    // Due to technical limitations we can't distinguish 
                    // the cases "no split" and "split at end of buffer"
                    // This will result in some unnecessary (and unlikely) 
                    // work but yields the correct result eventually.
                    temp = chunk;
                    chunk = NULL;
                    split = 0;
                }

            } else {
                // NOTE: We don't process the stub, instead we try to read 
                // in more data so we might be able to find a proper split.
                // Only once the end of the file is reached do we get a genuine 
                // stub which will be enqueued right after the read operation.
                temp = chunk;
                chunk = NULL;
                split = 0;
            }
        } while(split);
    }

    // drain buffer
    while(!ringbuffer_isEmpty(&send_buf)) {
        r = queue_enqueue(&refine_que[qid], &send_buf, send_limit);
        assert(r>=1);
        qid = (qid+1) % args->nqueues;
    }

    free(rabintab);
    free(rabinwintab);
    ringbuffer_destroy(&send_buf);

    // shutdown
    for(i=0; i<args->nqueues; i++) {
        queue_terminate(&refine_que[i]);
    }

    WHEN_TIMING({
        end = ktiming_getmark();
        args->proc_time = ktiming_diff_usec(&begin, &end);
    })

    return NULL;
}


/*
 * Pipeline stage function of reorder stage
 *
 * Actions performed:
 *  - Receive chunks from compression and deduplication stage
 *  - Check sequence number of each chunk to determine correct order
 *  - Cache chunks that arrive out-of-order until predecessors are available
 *  - Write chunks in-order to file (or preloading buffer)
 *
 * Notes:
 *  - This function blocks if the compression stage has not finished supplying
 *    the compressed data for a duplicate chunk.
 */
// XXX The pthread version
/* ANGE: it takes the chunks after the Compress stage; sort them, and write 
         them to files */
void *Reorder(void * targs) {

    WHEN_TIMING( clockmark_t begin, end; )
    WHEN_TIMING( begin = ktiming_getmark(); )

    struct thread_args *args = (struct thread_args *)targs;
    int qid = 0;
    int fd = args->fd_out;

    ringbuffer_t recv_buf;
    chunk_t *chunk;

    SearchTree T;
    T = TreeMakeEmpty(NULL);
    Position pos = NULL;
    struct tree_element tele;

    sequence_t next;
    sequence_reset(&next);

    // We perform global anchoring in the first stage and refine the anchoring
    // in the second stage. This array keeps track of the number of chunks in
    // a coarse chunk.
    /* ANGE: chunks_per_anchor keeps tracks of how many chunks is in an 
             anchor, so it knows to wrap around the next sequence number
             when we reach the end of an anchor */
    sequence_number_t *chunks_per_anchor;
    unsigned int chunks_per_anchor_max = 1024;
    chunks_per_anchor = 
            malloc(chunks_per_anchor_max * sizeof(sequence_number_t));
    if(chunks_per_anchor == NULL) EXIT_TRACE("Error allocating memory\n");
    memset(chunks_per_anchor, 0, 
           chunks_per_anchor_max * sizeof(sequence_number_t));
    int r;
    int i;

    r = ringbuffer_init(&recv_buf, MIN(conf->throttle, ITEM_PER_FETCH));
    assert(r==0);

    // XXX
    // fd = create_output_file(conf->outfile);
    if (write_header(fd, conf->compress_type)) {
        EXIT_TRACE("Cannot write output file header.\n");
    }

    while(1) {
        // get a group of items
        if (ringbuffer_isEmpty(&recv_buf)) {
            // process queues in round-robin fashion
            for(i=0,r=0; r<=0 && i<args->nqueues; i++) {
                r = queue_dequeue(&reorder_que[qid], &recv_buf, ITEM_PER_FETCH);
                qid = (qid+1) % args->nqueues;
            }
            if(r<0) break;
        }
        chunk = (chunk_t *)ringbuffer_remove(&recv_buf);
        if (chunk == NULL) break;

        // Double size of sequence number array if necessary
        if(chunk->sequence.l1num >= chunks_per_anchor_max) {
            chunks_per_anchor = realloc(chunks_per_anchor, 
                    2 * chunks_per_anchor_max * sizeof(sequence_number_t));
            if(chunks_per_anchor == NULL) 
                EXIT_TRACE("Error allocating memory\n");
            memset(&chunks_per_anchor[chunks_per_anchor_max], 0, 
                   chunks_per_anchor_max * sizeof(sequence_number_t));
            chunks_per_anchor_max *= 2;
        }
        // Update expected L2 sequence number
        if(chunk->isLastL2Chunk) {
            assert(chunks_per_anchor[chunk->sequence.l1num] == 0);
            chunks_per_anchor[chunk->sequence.l1num] = chunk->sequence.l2num+1;
        }

        // Put chunk into local cache if it's not next in the sequence 
        if(!sequence_eq(chunk->sequence, next)) {
            pos = TreeFind(chunk->sequence.l1num, T);
            if (pos == NULL) {
                // FIXME: Rename "INITIAL_SEARCH_TREE_SIZE" to
                //  something more accurate
                tele.l1num = chunk->sequence.l1num;
                tele.queue = Initialize(INITIAL_SEARCH_TREE_SIZE);
                /* ANGE: queue is a PriorityQueue */
                Insert(chunk, tele.queue);
                T = TreeInsert(tele, T);
            } else {
                Insert(chunk, pos->Element.queue);
            }
            continue;
        }

        /* ANGE: Control only fall through and gets here if the chun->sequence
                 is the next sequence to write */
        // write as many chunks as possible, current chunk is next in sequence
        /* ANGE: The Tree keeps a set of PriorityQueues, and each 
                 PriorityQueue stores chunks from a given anchor */
        pos = TreeFindMin(T);
        do {
            write_chunk_to_file(fd, chunk);
            if(chunk->header.isDuplicate) {
                free(chunk);
                chunk=NULL;
            }
            sequence_inc_l2(&next);
            if(chunks_per_anchor[next.l1num]!=0 && 
               next.l2num==chunks_per_anchor[next.l1num]) {
                sequence_inc_l1(&next);
            }

            // Check whether we can write more chunks from cache
            if(pos != NULL && (pos->Element.l1num == next.l1num)) {
                chunk = FindMin(pos->Element.queue);
                if(sequence_eq(chunk->sequence, next)) {
                    // Remove chunk from cache, update position for next iter
                    DeleteMin(pos->Element.queue);
                    if(IsEmpty(pos->Element.queue)) {
                        Destroy(pos->Element.queue);
                        T = TreeDelete(pos->Element, T);
                        pos = TreeFindMin(T);
                    }
                } else {
                    // level 2 sequence number does not match
                    chunk = NULL;
                }
            } else {
                // level 1 sequence number does not match or 
                // no chunks left in cache
                chunk = NULL;
            }
        } while(chunk != NULL);
    }

    // flush the blocks left in the cache to file
    pos = TreeFindMin(T);
    while(pos !=NULL) {
        if(pos->Element.l1num == next.l1num) {
            chunk = FindMin(pos->Element.queue);
            if(sequence_eq(chunk->sequence, next)) {
                // Remove chunk from cache, update position for next iteration
                DeleteMin(pos->Element.queue);
                if(IsEmpty(pos->Element.queue)) {
                    Destroy(pos->Element.queue);
                    T = TreeDelete(pos->Element, T);
                    pos = TreeFindMin(T);
                }
            } else {
                // level 2 sequence number does not match
                EXIT_TRACE("L2 sequence number mismatch.\n");
            }
        } else {
            // level 1 sequence number does not match
            EXIT_TRACE("L1 sequence number mismatch.\n");
        }
        write_chunk_to_file(fd, chunk);
        if(chunk->header.isDuplicate) {
            free(chunk);
            chunk=NULL;
        }
        sequence_inc_l2(&next);
        if(chunks_per_anchor[next.l1num]!=0 && 
           next.l2num==chunks_per_anchor[next.l1num]) {
            sequence_inc_l1(&next);
        }
    }
    // XXX
    // close(fd);

    ringbuffer_destroy(&recv_buf);
    free(chunks_per_anchor);

    WHEN_TIMING({
        end = ktiming_getmark();
        args->proc_time = ktiming_diff_usec(&begin, &end);
    })

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
    int32 fd_in, fd_out;

    // timing stuff
    uint64_t preload_time = 0.0f;
    uint64_t process_time = 0.0f;
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

    /* src file stat */
    if(stat(conf->infile, &filestat) < 0) 
        EXIT_TRACE("stat() %s failed: %s\n", conf->infile, strerror(errno));

    if(!S_ISREG(filestat.st_mode)) 
        EXIT_TRACE("not a normal file: %s\n", conf->infile);
#ifdef ENABLE_STATISTICS
    stats.total_input = filestat.st_size;
#endif // ENABLE_STATISTICS

    /* src file open */
    if((fd_in = open(conf->infile, O_RDONLY | O_LARGEFILE)) < 0) {
        EXIT_TRACE("%s file open error %s\n", conf->infile, strerror(errno));
    }
    if((fd_out = open(conf->outfile, 
                           O_CREAT | O_TRUNC | O_WRONLY | O_TRUNC, 
                           S_IRGRP | S_IWUSR | S_IRUSR | S_IROTH)) < 0) {
        EXIT_TRACE("%s output file open error %s\n", conf->outfile, 
                   strerror(errno));
    }
 
    begin = ktiming_getmark();

    // XXX Only things that the pthreads version needs
    struct thread_args data_process_args;
    int i;

    // queue allocation & initialization
    // Ange; create nqueues for each stage, where each queue is shared 
    // by at most MAX_THREADS_PER_QUEUE
    const int nqueues = (conf->nthreads / MAX_THREADS_PER_QUEUE) +
        ((conf->nthreads % MAX_THREADS_PER_QUEUE != 0) ? 1 : 0);

    deduplicate_que = malloc(sizeof(queue_t) * nqueues);
    refine_que = malloc(sizeof(queue_t) * nqueues);
    reorder_que = malloc(sizeof(queue_t) * nqueues);
    // compress_que = malloc(sizeof(queue_t) * nqueues);
    if( (deduplicate_que == NULL) || (refine_que == NULL) || 
        (reorder_que == NULL) ) {
        printf("Out of memory\n");
        exit(1);
    }

    // Ange: only first and last stage (File I/O involved) use single thread;
    // The first thread for the first stage (Fragment) will insert into 
    // nqueue number of refine_ques in round-robin fashion.  In later stages,
    // there are be multiple threads per stage, where MAX_THREADS_PER_QUEUE
    // are working on a single queue.  The pipeline is formed where each 
    // queue is connected between stages, but there can be total of nqueue
    // number of queues connecting two stages.  Also, multiple threads can 
    // insert into a single queue, so everything is out of order between the 
    // middle stages,  Finally, the "iterations" per stage may differ.  For
    // example, the Fragment has smaller iterations than the FragmentRefine.
    int threads_per_queue;
    int throttle = QUEUE_SIZE;
    if( conf->throttle != -1 ) {
        throttle = (int)(ceil(conf->throttle / nqueues));
    }
    conf->throttle = throttle;

    for(i=0; i<nqueues; i++) {
        if (i < nqueues -1 || conf->nthreads %MAX_THREADS_PER_QUEUE == 0) {
            // Ange: all but last queue, except in the case where nthread is 
            //  is divisible by MAX_THREADS_PER_QUEUE
            threads_per_queue = MAX_THREADS_PER_QUEUE;
        } else {
            // remaining threads work on last queue
            threads_per_queue = conf->nthreads %MAX_THREADS_PER_QUEUE;
        }

        // call queue_init with threads_per_queue
        queue_init(&deduplicate_que[i], throttle, threads_per_queue);
        queue_init(&refine_que[i], throttle, 1);
        // queue_init(&compress_que[i], throttle, threads_per_queue);
        /* ANGE: don't throttle reorder_queue, or it may deadlock ---
            dedup stage gets stuck on trying to insert reorder queue
            and fail to make progress on the later items, which 
            prevent it from buffer up enough items to send to compress; 
            at the same time, the reorder stage is stuck waiting on the 
            earlier items (which need to be compressed) and fail to empty
            its own receive queue to allow dedup to make progress. */
        queue_init(&reorder_que[i], QUEUE_SIZE, threads_per_queue);
    }
    int ret = mbuffer_system_init();    
    assert(ret == 0);

    // Load entire file into memory if requested by user
    void *preloading_buffer = NULL;
    if(conf->preloading) {
        size_t bytes_read=0;
        int r;

        preloading_buffer = malloc(filestat.st_size);
        if(preloading_buffer == NULL)
            EXIT_TRACE("Error allocating memory for input buffer.\n");

        // Read data until buffer full
        while(bytes_read < filestat.st_size) {
            r = read(fd_in, preloading_buffer+bytes_read, 
                     filestat.st_size-bytes_read);
            if(r<0) {
                perror("I/O errors: ");
                EXIT_TRACE("file read fails\n");
            } else if(r==0) {
                break;
            }
            bytes_read += r;
        }
        // XXX Things that the pthreads version needs    
        data_process_args.input_file.size = filestat.st_size;
        data_process_args.input_file.buffer = preloading_buffer;

        preload_end = ktiming_getmark();
        preload_time = ktiming_diff_usec(&begin, &preload_end);
    }

    // XXX Things that the pthreads version needs    
    /* Variables for 3 thread pools and 2 pipeline stage threads.
     * The first and the last stage are serial (mostly I/O).
     */
    pthread_t threads_anchor[MAX_THREADS],
              threads_chunk[MAX_THREADS],
              threads_send, threads_process;

    data_process_args.tid = 0;
    data_process_args.nqueues = nqueues;
    data_process_args.fd_in = fd_in;

    // XXX This is where the old ROI timing begins

    // thread for first pipeline stage (input)
    pthread_create(&threads_process, NULL, Fragment, &data_process_args);

    // Create 3 thread pools for the intermediate pipeline stages
    struct thread_args anchor_thread_args[conf->nthreads];
    for (i = 0; i < conf->nthreads; i ++) {
        anchor_thread_args[i].tid = i;
        pthread_create(&threads_anchor[i], NULL, FragmentRefine, 
                       &anchor_thread_args[i]);
    }

    struct thread_args chunk_thread_args[conf->nthreads];
    for (i = 0; i < conf->nthreads; i ++) {
        chunk_thread_args[i].tid = i;
        WHEN_TIMING( chunk_thread_args[i].actual_proc_time = 0; )
        WHEN_TIMING( chunk_thread_args[i].actual_comp_proc_time = 0; )
        pthread_create(&threads_chunk[i], NULL, Deduplicate, 
                       &chunk_thread_args[i]);
    }

    // thread for last pipeline stage (output)
    struct thread_args send_block_args;
    send_block_args.tid = 0;
    send_block_args.nqueues = nqueues;
    send_block_args.fd_out = fd_out;
    pthread_create(&threads_send, NULL, Reorder, &send_block_args);

    /*** parallel phase ***/

#ifdef ENABLE_STATISTICS
    // Return values of threads
    stats_t *threads_anchor_rv[conf->nthreads];
    stats_t *threads_chunk_rv[conf->nthreads];
    stats_t *threads_compress_rv[conf->nthreads];

    // join all threads 
    pthread_join(threads_process, NULL);
    for (i = 0; i < conf->nthreads; i ++)
        pthread_join(threads_anchor[i], (void **)&threads_anchor_rv[i]);
    for (i = 0; i < conf->nthreads; i ++)
        pthread_join(threads_chunk[i], (void **)&threads_chunk_rv[i]);
    for (i = 0; i < conf->nthreads; i ++)
        pthread_join(threads_compress[i], (void **)&threads_compress_rv[i]);
    pthread_join(threads_send, NULL);
#else 
    pthread_join(threads_process, NULL);
    for (i = 0; i < conf->nthreads; i ++)
        pthread_join(threads_anchor[i], NULL);
    for (i = 0; i < conf->nthreads; i ++)
        pthread_join(threads_chunk[i], NULL);
    pthread_join(threads_send, NULL);
#endif
    // XXX This is where the old ROI timing ends 

    /* free queues */
    for(i=0; i<nqueues; i++) {
        queue_destroy(&deduplicate_que[i]);
        queue_destroy(&refine_que[i]);
        queue_destroy(&reorder_que[i]);
        // queue_destroy(&compress_que[i]);
    }
    free(deduplicate_que);
    free(refine_que);
    free(reorder_que);
    // free(compress_que);

    end = ktiming_getmark();
    process_time = ktiming_diff_usec(&begin, &end);

    WHEN_TIMING({
        uint64_t fragref_time = 0, dedup_time = 0;
        uint64_t act_dedup_time = 0, act_comp_time = 0;
        printf("Fragment time        = %.4f seconds\n", 
               (double)data_process_args.proc_time * 1.0e-9);
        for (i=0; i < conf->nthreads; i++) {
            if( anchor_thread_args[i].proc_time > fragref_time )
                fragref_time = anchor_thread_args[i].proc_time;
            if( chunk_thread_args[i].proc_time > dedup_time )
                dedup_time   += chunk_thread_args[i].proc_time;
            act_dedup_time   += chunk_thread_args[i].actual_proc_time;
            act_comp_time    += chunk_thread_args[i].actual_comp_proc_time;
        }
        printf("Max Frag Refine time = %.4f seconds\n", 
               (double)fragref_time * 1.0e-9);
        printf("Max Dedup time       = %.4f seconds\n", 
               (double)dedup_time * 1.0e-9);
        printf("Actual Dedup time    = %.4f seconds\n", 
               (double)act_dedup_time * 1.0e-9);
        printf("Actual Compress time = %.4f seconds\n", 
               (double)act_comp_time * 1.0e-9);
        printf("Reorder & Write time = %.4f seconds\n", 
               (double)send_block_args.proc_time * 1.0e-9);
        printf("Actual Write time    = %.4f seconds\n", 
               (double)actual_write * 1.0e-9);
        /*
        printf("Misc. time           = %.4f seconds\n", 
               (double)(preload_time + process_time - 
                        (double)data_process_args.proc_time - 
                        fragref_time - dedup_time - 
                        (double)send_block_args.proc_time) * 1.0e-9); 
        */
    })
    
    if(preload_time) 
        printf("Preloading time = %.4f seconds\n", (double)preload_time*1.0e-9);
    printf("Processing time = %.4f seconds\n", (double)process_time*1.0e-9);

#ifdef ENABLE_STATISTICS
    // Merge everything into global `stats' structure
    for(i=0; i<conf->nthreads; i++) {
        merge_stats(&stats, threads_anchor_rv[i]);
        free(threads_anchor_rv[i]);
    }
    for(i=0; i<conf->nthreads; i++) {
        merge_stats(&stats, threads_chunk_rv[i]);
        free(threads_chunk_rv[i]);
    }
    for(i=0; i<conf->nthreads; i++) {
        merge_stats(&stats, threads_compress_rv[i]);
        free(threads_compress_rv[i]);
    }
#endif // ENABLE_STATISTICS

    // clean up after preloading
    if(conf->preloading) {
        free(preloading_buffer);
    }
    /* clean up with the src file */
    if(conf->infile != NULL)
        close(fd_in);
    close(fd_out);

    ret = mbuffer_system_destroy();
    assert(ret == 0);
    hashtable_destroy(cache, TRUE);

#ifdef ENABLE_STATISTICS
    printf("Now print statistics.\n");
    /* dest file stat */
    if (stat(conf->outfile, &filestat) < 0) 
        EXIT_TRACE("stat() %s failed: %s\n", conf->outfile, strerror(errno));
    stats.total_output = filestat.st_size;

    // Analyze and print statistics
    if(conf->verbose) print_stats(&stats);
#endif // ENABLE_STATISTICS
}

