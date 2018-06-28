#ifndef _STATS_H
#define _STATS_H

// Keep track of block granularity with 2^CHUNK_GRANULARITY_POW 
// resolution (for statistics)
#define CHUNK_GRANULARITY_POW (7)
// Number of blocks to distinguish, CHUNK_MAX_NUM * 2^CHUNK_GRANULARITY_POW 
// is biggest block being recognized (for statistics)
#define CHUNK_MAX_NUM (8*32)
// Map a chunk size to a statistics array slot
#define CHUNK_SIZE_TO_SLOT(s) \
    ( ((s)>>(CHUNK_GRANULARITY_POW)) >= (CHUNK_MAX_NUM) ? \
    (CHUNK_MAX_NUM)-1 : ((s)>>(CHUNK_GRANULARITY_POW)) )
// Get the average size of a chunk from a statistics array slot
#define SLOT_TO_CHUNK_SIZE(s) \
    ( (s)*(1<<(CHUNK_GRANULARITY_POW)) + (1<<((CHUNK_GRANULARITY_POW)-1)) )

// Deduplication statistics (only used if ENABLE_STATISTICS is defined)
typedef struct {
    /* Cumulative sizes */
    size_t total_input; // Total size of input in bytes
    size_t total_dedup; // Total size of input without duplicate blocks 
                        // (after global compression) in bytes
    // Total size of input stream after local compression in bytes
    size_t total_compressed; 
    // Total size of output in bytes (with overhead) in bytes
    size_t total_output; 
    /* Size distribution & other properties */
    // Coarse-granular size distribution of data chunks
    unsigned int nChunks[CHUNK_MAX_NUM]; 
    unsigned int nDuplicates; // Total number of duplicate blocks
} stats_t;

// Initialize a statistics record
static void init_stats(stats_t *s) {
    int i;

    assert(s!=NULL);
    s->total_input = 0;
    s->total_dedup = 0;
    s->total_compressed = 0;
    s->total_output = 0;

    for(i=0; i<CHUNK_MAX_NUM; i++) {
        s->nChunks[i] = 0;
    }
    s->nDuplicates = 0;
}

// Print statistics
static void print_stats(stats_t *s) {
    const unsigned int unit_str_size = 7; //elements in unit_str array
    const char *unit_str[] = {"Bytes", "KB", "MB", "GB", "TB", "PB", "EB"};
    unsigned int unit_idx = 0;
    size_t unit_div = 1;

    assert(s!=NULL);

    //determine most suitable unit to use
    for(unit_idx=0; unit_idx<unit_str_size; unit_idx++) {
        unsigned int unit_div_next = unit_div * 1024;

        if(s->total_input / unit_div_next <= 0) break;
        if(s->total_dedup / unit_div_next <= 0) break;
        if(s->total_compressed / unit_div_next <= 0) break;
        if(s->total_output / unit_div_next <= 0) break;

        unit_div = unit_div_next;
    }

    printf("Total input size:              %14.2f %s\n", 
           (float)(s->total_input)/(float)(unit_div), unit_str[unit_idx]);
    printf("Total output size:             %14.2f %s\n", 
           (float)(s->total_output)/(float)(unit_div), unit_str[unit_idx]);
    printf("Effective compression factor:  %14.2fx\n", 
           (float)(s->total_input)/(float)(s->total_output));
    printf("\n");

    //Total number of chunks
    unsigned int i;
    unsigned int nTotalChunks=0;
    for(i=0; i<CHUNK_MAX_NUM; i++) nTotalChunks+= s->nChunks[i];

    //Average size of chunks
    float mean_size = 0.0;
    for(i=0; i<CHUNK_MAX_NUM; i++) 
        mean_size += (float)(SLOT_TO_CHUNK_SIZE(i)) * (float)(s->nChunks[i]);
    mean_size = mean_size / (float)nTotalChunks;

    //Variance of chunk size
    float var_size = 0.0;
    for(i=0; i<CHUNK_MAX_NUM; i++) 
        var_size += (mean_size - (float)(SLOT_TO_CHUNK_SIZE(i))) *
                        (mean_size - (float)(SLOT_TO_CHUNK_SIZE(i))) *
                        (float)(s->nChunks[i]);

    printf("Mean data chunk size:          %14.2f %s (stddev: %.2f %s)\n", 
           mean_size / 1024.0, "KB", sqrtf(var_size) / 1024.0, "KB");
    printf("Amount of duplicate chunks:    %14.2f%%\n", 
           100.0*(float)(s->nDuplicates)/(float)(nTotalChunks));
    printf("Data size after deduplication: %14.2f %s (compression factor: %.2fx)\n", 
        (float)(s->total_dedup)/(float)(unit_div), unit_str[unit_idx], 
        (float)(s->total_input)/(float)(s->total_dedup));
    printf("Data size after compression:   %14.2f %s (compression factor: %.2fx)\n", 
        (float)(s->total_compressed)/(float)(unit_div), unit_str[unit_idx], 
        (float)(s->total_dedup)/(float)(s->total_compressed));
    printf("Output overhead:               %14.2f%%\n", 
           100.0*(float)(s->total_output-s->total_compressed)/
                 (float)(s->total_output));
}
#endif  // _STATS_H
