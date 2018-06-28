#ifndef _DEDUPDEF_H_
#define _DEDUPDEF_H_

#include <sys/types.h>
#include <stdint.h>
#include <assert.h>

#include "config.h"
#include "util/sha.h"


#define CHECKBIT 123456



/*-----------------------------------------------------------------------*/
/* type definition */
/*-----------------------------------------------------------------------*/

typedef uint8_t  u_char;
typedef uint64_t u_long;
typedef uint64_t ulong;
typedef uint32_t u_int;

typedef uint8_t  byte;
typedef byte     u_int8;
typedef uint16_t u_int16;
typedef uint32_t u_int32;
typedef uint64_t u_int64;

typedef uint64_t u64int;
typedef uint32_t u32int;
typedef uint8_t  uchar;
typedef uint16_t u16int;

typedef int8_t   int8;
typedef int16_t  int16;
typedef int32_t  int32;
typedef int64_t  int64;

/*-----------------------------------------------------------------------*/
/* useful macros */
/*-----------------------------------------------------------------------*/
#ifndef NELEM
#define NELEM(x) (sizeof(x)/sizeof(x[0]))
#endif

#ifndef MAX
#define MAX(x, y) (x ^ ((x ^ y) & -(x < y)))
#endif

#ifndef MIN
#define MIN(x, y) (y ^ ((x ^ y) & -(x < y)))
#endif

#ifndef TRUE
#define TRUE  1
#endif

#ifndef FALSE
#define FALSE 0
#endif

#ifndef O_LARGEFILE
#define O_LARGEFILE  0100000
#endif

#define EXT       ".ddp"           /* extension */ 
#define EXT_LEN   (sizeof(EXT)-1)  /* extention length */


/*----------------------------------------------------------------------*/

// The data type of a chunk, the basic work unit of dedup
// A chunk will flow through all the pipeline stages 
typedef struct _chunk_t {
    int isDuplicate; // whether this is an original chunk or a duplicate
    // The SHA1 sum of the chunk, computed by SHA1/Routing stage from the 
    // uncompressed chunk data
    // NOTE: Force integer-alignment for hashtable, SHA1_LEN must be 
    // multiple of unsigned int
    unsigned int sha1[SHA1_LEN/sizeof(unsigned int)]; 
    unsigned char *data; // ptr to the data (can be compressed or uncompressed)
    size_t len; // size of the data
    // this value is initialized to a buffer if this is the last chunk pointing 
    // into the buffer; so when we done processing this chunk, free the buffer
    unsigned char *buffer_to_free;  
} chunk_t;


#define LEN_FILENAME 256

#define TYPE_FINGERPRINT 0
#define TYPE_COMPRESS 1
#define TYPE_ORIGINAL 2

#define MAXBUF (128*1024*1024)     /* 128 MB for buffers */
#define ANCHOR_JUMP (2*1024*1024)  // best for all 2*1024*1024

typedef struct {
    char infile[LEN_FILENAME];
    char outfile[LEN_FILENAME];
    int compress_type;
    int preloading;
    int verbose;
    int nthreads;
} config_t;

#define COMPRESS_GZIP 0
#define COMPRESS_BZIP2 1
#define COMPRESS_NONE 2

#define UNCOMPRESS_BOUND 10000000

#endif //_DEDUPDEF_H_

