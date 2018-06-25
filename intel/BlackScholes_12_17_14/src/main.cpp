//==============================================================
//
// SAMPLE SOURCE CODE - SUBJECT TO THE TERMS OF SAMPLE CODE LICENSE AGREEMENT,
// http://software.intel.com/en-us/articles/intel-sample-source-code-license-agreement/
//
// Copyright 2012-2013 Intel Corporation
//
// THIS FILE IS PROVIDED "AS IS" WITH NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT
// NOT LIMITED TO ANY IMPLIED WARRANTY OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
// PURPOSE, NON-INFRINGEMENT OF INTELLECTUAL PROPERTY RIGHTS.
//
// ===============================================================
// This sample is derived from code published by Bernt Arne Odegaard,
// http://finance.bi.no/~bernt/gcc_prog/recipes/recipes/

#include "black_scholes.h"
#include "timer.h"
#include <cstdio>
#include <cstdlib>
#include <cilk/cilk.h>
#include <xmmintrin.h>

// Print helper function
void print_average(float *CallResult, float *PutResult, double time);

int main(int argc, char* argv[])
{
	float *CallResult = (float *)_mm_malloc(c_num_options*sizeof(float), 32);
	float *PutResult  = (float *)_mm_malloc(c_num_options*sizeof(float), 32);
	float *StockPrice    = (float *)_mm_malloc(c_num_options*sizeof(float), 32);
	float *OptionStrike  = (float *)_mm_malloc(c_num_options*sizeof(float), 32);
	float *OptionYears   = (float *)_mm_malloc(c_num_options*sizeof(float), 32);

	// Randomly initialize variables within specified bounds
	srand(5); 
	for(int i = 0; i<c_num_options; ++i) {
		CallResult[i] = 0.0f;
		PutResult[i]  = -1.0f;
		StockPrice[i]    = RandFloat(5.0f, 30.0f);
		OptionStrike[i]  = RandFloat(1.0f, 100.0f);
		OptionYears[i]   = RandFloat(0.25f, 10.0f);
	}

	int option = 3;
	// If PERF_NUM is defined, then no options taken...run all tests

	CUtilTimer timer;
	double serial_time, cilk_time;

	// Load up the Intel(R) Cilk(TM) Plus runtime to to get accurate performance numbers
	double g = 2.0;
	cilk_for (int i = 0; i < 100; i++) {
		g /= sin(g);
	}

		timer.start();
		black_scholes_cilk(StockPrice, OptionStrike, OptionYears, CallResult, PutResult);
		timer.stop();
		print_average(CallResult, PutResult, timer.get_time());
	
	_mm_free(CallResult);
	_mm_free(PutResult);
	_mm_free(StockPrice);
	_mm_free(OptionStrike);
	_mm_free(OptionYears);
	
#ifdef _WIN32
    system("PAUSE");
#endif
    return 0; 
}

// Prints avg call and put + time taken
void print_average(float *CallResult, float *PutResult, double time) {
	float sum_call=0.f, sum_put=0.f;
	for(int i=0; i<c_num_options; ++i) {
		sum_call += CallResult[i];
		sum_put += PutResult[i];
	}
	printf("%f\n", time);
}

// Returns uniformly distributed random float between [low, high]
inline float RandFloat(float low, float high){
    float t = (float)rand() / (float)RAND_MAX;
    return (1.0f - t) * low + t * high;
}
