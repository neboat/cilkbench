#include <unistd.h>
#include <string.h>

#include "debug.h"
#include "dedupdef.h"
#include "encoder.h"
#include "decoder.h"
#include "config.h"

#include "util/queue.h"
#include "util/util.h"

#ifdef ENABLE_DMALLOC
#include <dmalloc.h>
#endif //ENABLE_DMALLOC

#ifdef ENABLE_PTHREADS
#include <pthread.h>
#endif //ENABLE_PTHREADS


config_t * conf;



/*--------------------------------------------------------------------------*/
static void
usage(char* prog) {
    printf("usage: %s [-cusfvh] [-w gzip/bzip2/none] [-i file] [-o file] [-t number_of_threads] [-q throttle_limit]\n",prog);
    printf("-c \t\t\tcompress\n");
    printf("-u \t\t\tuncompress\n");
    printf("-p \t\t\tpreloading (for benchmarking purposes)\n");
    printf("-w \t\t\tcompression type: gzip/bzip2/none\n");
    printf("-i file\t\t\tthe input file\n");
    printf("-o file\t\t\tthe output file\n");
    printf("-t \t\t\tnumber of threads per stage \n");
    printf("-q \t\t\tthrottling limist (i.e., outstanding number of elements per stage \n");
    printf("-v \t\t\tverbose output\n");
    printf("-h \t\t\thelp\n");
}

/*--------------------------------------------------------------------------*/
int main(int argc, char** argv) {

    int32 compress = TRUE;

    // We force the sha1 sum to be integer-aligned, check that the length 
    // of a sha1 sum is a multiple of unsigned int
    assert(SHA1_LEN % sizeof(unsigned int) == 0);

    conf = (config_t *) malloc(sizeof(config_t));
    if (conf == NULL) {
        EXIT_TRACE("Memory allocation failed\n");
    }

    strcpy(conf->outfile, "");
    conf->compress_type = COMPRESS_GZIP;
    conf->preloading = 0;
    conf->verbose = 0;
#ifdef ENABLE_PTHREADS
    conf->nthreads = 1;
    conf->throttle = -1;
#endif

    //parse the args
    int ch;
    opterr = 0;
    optind = 1;
    while (-1 != (ch = getopt(argc, argv, "cupvo:i:w:t:h:q:"))) {
        switch (ch) {
            case 'c':
                compress = TRUE;
                strcpy(conf->infile, "test.txt");
                strcpy(conf->outfile, "out.ddp");
                break;
            case 'u':
                compress = FALSE;
                strcpy(conf->infile, "out.ddp");
                strcpy(conf->outfile, "new.txt");
                break;
            case 'w':
                if (strcmp(optarg, "gzip") == 0)
                    conf->compress_type = COMPRESS_GZIP;
                else if (strcmp(optarg, "bzip2") == 0) 
                    conf->compress_type = COMPRESS_BZIP2;
                else if (strcmp(optarg, "none") == 0)
                    conf->compress_type = COMPRESS_NONE;
                else {
                    fprintf(stdout, "Unknown compression type `%s'.\n", optarg);
                    usage(argv[0]);
                    return -1;
                }
                break;
            case 'o':
                strcpy(conf->outfile, optarg);
                break;
            case 'i':
                strcpy(conf->infile, optarg);
                break;
            case 'h':
                usage(argv[0]);
                return -1;
            case 'p':
                conf->preloading = TRUE;
                break;
            case 't':
                #ifdef ENABLE_PTHREADS
                conf->nthreads = atoi(optarg);
                #else
                fprintf(stderr, 
                        "This is a serial version; nthread is set to 1.\n");
                #endif
                break;
        
            case 'q':
                #ifdef ENABLE_PTHREADS
                conf->throttle = atoi(optarg);
                #else
                fprintf(stderr, 
                    "This is a serial version; throttle limit is set to 1.\n");
                #endif
                break;
        
            case 'v':
                conf->verbose = TRUE;
                break;
            case '?':
                fprintf(stdout, "Unknown option `-%c'.\n", optopt);
                usage(argv[0]);
                return -1;
        }
    }

#ifndef ENABLE_BZIP2_COMPRESSION
    if (conf->compress_type == COMPRESS_BZIP2){
        printf("Bzip2 compression not supported\n");
        exit(1);
    }
#endif

#ifndef ENABLE_GZIP_COMPRESSION
    if (conf->compress_type == COMPRESS_GZIP){
        printf("Gzip compression not supported\n");
        exit(1);
    }
#endif

    if (compress) {
        Encode(conf);
    } else {
        Decode(conf);
    }
    free(conf);

    return 0;
}

