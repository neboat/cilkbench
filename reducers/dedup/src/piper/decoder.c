/*
 * Decoder for dedup files
 *
 * Copyright 2010 Princeton University.
 * All rights reserved.
 *
 * Written by Christian Bienia.
 */

#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>

#include "config.h"
#include "decoder.h"
#include "dedupdef.h"
#include "debug.h"
#include "util/util.h"
#include "util/hashtable.h"

#ifdef ENABLE_GZIP_COMPRESSION
#include <zlib.h>
#endif //ENABLE_GZIP_COMPRESSION

#ifdef ENABLE_BZIP2_COMPRESSION
#include <bzlib.h>
#endif //ENABLE_BZIP2_COMPRESSION


// The configuration block defined in main
static config_t * conf;
// Hash table data structure & utility functions
static struct hashtable *cache;

static unsigned int hash_from_key_fn( void *k ) {
    //NOTE: sha1 sum is integer-aligned
    return ((unsigned int *)k)[0];
}

static int keys_equal_fn ( void *key1, void *key2 ) {
    return (memcmp(key1, key2, SHA1_LEN) == 0);
}



/*
 * Helper function which reads the next chunk from the input file
 *
 * Returns the size of the data read
 */
static int read_chunk(int fd, chunk_t *chunk) {
    int ret;

    assert(chunk!=NULL);
    assert(fd>=0);

    u_char type;
    ret = xread(fd, &type, sizeof(type));
    if(ret < 0) EXIT_TRACE("xread type fails\n")
    else if(ret == 0) return 0;

    size_t len;
    ret = xread(fd, &len, sizeof(len));
    if(ret < 0) EXIT_TRACE("xread length fails\n")
    else if(ret == 0) EXIT_TRACE("incomplete chunk\n");

    switch(type) {
        case TYPE_FINGERPRINT:
            if(len != SHA1_LEN) EXIT_TRACE("incorrect size of SHA1 sum\n");
            ret = xread(fd, (unsigned char *)(chunk->sha1), SHA1_LEN);
            if(ret < 0) EXIT_TRACE("xread SHA1 sum fails\n")
            else if(ret == 0) EXIT_TRACE("incomplete chunk\n");
            chunk->isDuplicate = TRUE;
            break;
        case TYPE_COMPRESS:
            if(len <= 0) EXIT_TRACE("illegal size of data chunk\n");
            chunk->data = malloc(len);
            if(chunk->data == 0) EXIT_TRACE("malloc failed.\n");
            ret = xread(fd, chunk->data, len);
            if(ret < 0) EXIT_TRACE("xread data chunk fails\n")
            else if(ret == 0) EXIT_TRACE("incomplete chunk\n");
            chunk->isDuplicate = FALSE;
            chunk->len = len;
            break;
        default:
            EXIT_TRACE("unknown chunk type\n");
    }

    return len;
}

/* Helper function which uncompresses a data chunk
 *
 * Returns the size of the uncompressed data
 */
static int uncompress_chunk(chunk_t *chunk) {
    assert(chunk!=NULL);
    assert(!chunk->isDuplicate);

    //uncompress the item
    switch (conf->compress_type) {
    case COMPRESS_NONE: 
        break;  // nothing to do

    case COMPRESS_GZIP: {
    #ifdef ENABLE_GZIP_COMPRESSION
        size_t len_64 = UNCOMPRESS_BOUND;
        void *uncomp_data = malloc(len_64);
        if(uncomp_data == 0) EXIT_TRACE("malloc failed.\n");
        int ret = uncompress(uncomp_data, &len_64, chunk->data, chunk->len); 
        // TODO: Automatically enlarge buffer if return value is Z_BUF_ERROR
        if(ret != Z_OK) EXIT_TRACE("error uncompressing chunk data\n");
        if(len_64 < UNCOMPRESS_BOUND) { // Shrink buffer to actual size
            void *new_mem = realloc(uncomp_data, len_64);
            assert(new_mem != 0);
            uncomp_data = new_mem; 
        }
        free(chunk->data);
        chunk->data = uncomp_data;
        chunk->len = len_64;
        break;
    #else
        EXIT_TRACE("Gzip compression used by input file not supported.\n");
        break;
    #endif //ENABLE_GZIP_COMPRESSION
    }

    case COMPRESS_BZIP2: {
    #ifdef ENABLE_BZIP2_COMPRESSION
        size_t len_32 = UNCOMPRESS_BOUND;
        void *uncomp_data = malloc(len_32);
        if(uncomp_data == 0) EXIT_TRACE("malloc failed.\n");
        int ret = BZ2_bzBuffToBuffDecompress(chunk->uncompressed_data.ptr, 
                            &len_32, chunk->compressed_data.ptr, 
                            chunk->compressed_data.n, 0, 0);
        // TODO: Automatically enlarge buffer if return value is BZ_OUTBUFF_FULL
        if(ret != BZ_OK) EXIT_TRACE("error uncompressing chunk data\n");
        if(len_32 < UNCOMPRESS_BOUND) { // Shrink buffer to actual size
            void *new_mem = realloc(uncomp_data, len_64);
            assert(new_mem != 0);
            uncomp_data = new_mem; 
        }
        free(chunk->data);
        chunk->data = uncomp_data;
        chunk->len = len_32;
        break;
    #else
        EXIT_TRACE("Bzip2 compression used by input file not supported.\n");
        break;
    #endif //ENABLE_BZIP2_COMPRESSION
    }
    default: 
        EXIT_TRACE("unknown compression type\n");
        break;
    }

    return chunk->len;
}


static void cleanup_chunk(void *c) {
    chunk_t *chunk = (chunk_t *)c;
    free(chunk->data);    
    free(chunk);
}

void Decode(config_t * _conf) {
    int fd_in;
    int fd_out;
    int ret;
    chunk_t *chunk = NULL;

    conf = _conf;

    // Create chunk cache
    cache = hashtable_create(65536, hash_from_key_fn, keys_equal_fn, FALSE);
    if(cache == NULL) {
        printf("ERROR: Out of memory\n");
        exit(1);
    }

    // Open input & output files
    fd_in = open(conf->infile, O_RDONLY|O_LARGEFILE);
    if (fd_in < 0) {
        perror("infile open");
        exit(1);
    }
    byte compress_type;
    if (read_header(fd_in, &compress_type)) {
        EXIT_TRACE("Cannot read input file header.\n");
    }
    // Ignore any compression settings given at the command line, 
    // use type used during encoding
    conf->compress_type = compress_type;
    fd_out = open(conf->outfile, O_CREAT | O_WRONLY | O_TRUNC, 
                  ~(S_ISUID | S_ISGID |S_IXGRP | S_IXUSR | S_IXOTH));
    if(fd_out < 0) {
        perror("outfile open");
        close(fd_in);
        exit(1);
    }

    chunk = (chunk_t *) malloc(sizeof(chunk_t));
    if(chunk == NULL) EXIT_TRACE("Memory allocation failed.\n");

    // XXX This is where the old ROI timing begin
    while( read_chunk(fd_in, chunk) > 0 ) {

        // process input data & assing chunk with corresponding uncompresse 
        // data to 'entry' variable
        chunk_t *entry;
        if( chunk->isDuplicate == 0 ) {
            // We got the compressed data, use it to get original data back
            ret = uncompress_chunk(chunk);
            if(ret <= 0) EXIT_TRACE("error uncompressing data")
            // Compute SHA1 sum and add chunk with uncompressed data to cache
            SHA1_Digest( chunk->data, chunk->len, 
                         (unsigned char *)(chunk->sha1) );
            if(!hashtable_insert(cache, (void *)(chunk->sha1), (void *)chunk)) {
                EXIT_TRACE("hashtable_insert failed");
            }
            entry = chunk;

            // chunks are 'consumed' if they are added to the hash table
            // only duplicate chunks can get reused, so malloc a new one
            chunk = (chunk_t *) malloc( sizeof(chunk_t) );
            if(chunk == NULL) EXIT_TRACE("Memory allocation failed.\n");

        } else {
            // We got a SHA1 key, use it to retrieve unique counterpart with
            // uncompressed data
            entry = (chunk_t *)hashtable_search(cache, (void *)(chunk->sha1));
            if(entry == NULL) {
                TRACE("Encountered a duplicate chunk in input file, \n");
                EXIT_TRACE("but not its unique counterpart.\n");
            }
        }
        // We now have the uncompressed data in 'entry', write uncompressed 
        // data to output file
        ret = xwrite(fd_out, entry->data, entry->len); 
        if( ret < entry->len ) EXIT_TRACE("error writing to output file");
    }

    // XXX This is where the old ROI timing ends 
    close(fd_in);
    close(fd_out);

    free(chunk);
    // TODO: Need to iterate through hashtable and free chunk->data before
    // freeing chunk.
    hashtable_map_and_destroy(cache, cleanup_chunk);
}

