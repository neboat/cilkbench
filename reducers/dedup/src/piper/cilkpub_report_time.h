#ifndef __CILKPUB_REPORT_TIME_H_
#define __CILKPUB_REPORT_TIME_H_

#include <stdio.h>
#include <stdlib.h>


static const char* CILKPUB_REPORT_STRING = "CILKPUB_DATA_POINT";

/**
 * @brief Print out the time for a benchmark in a standard format that
 * Cilkpub scripts expect.
 *
 * @param f            File to output results to.
 * @param bench_desc   Name of benchmark being run
 * @param P            Number of processors used to run benchmark
 * @param time         Running time
 * @param input_params List of input parameters, as a string
 * @param output_data  List of output data, as a string
 */
static void cilkpub_report_time(FILE* f,
                                const char* benchmark_desc,
                                int P,
                                double time,
                                const char* input_params,
                                const char* output_data) {

    fprintf(f, "%s, %f, %d, %s, [%s], [%s]\n",
            CILKPUB_REPORT_STRING, 
            time,
            P,
            benchmark_desc ? benchmark_desc : "unknown_bench",
            input_params ? input_params : "",
            output_data ? output_data : "");
}



#endif // !defined(CILKPUB_REPORT_TIME)
