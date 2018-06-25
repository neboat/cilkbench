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
#include <cilk/cilk.h>

// Calculates the call and put options using the Black-Scholes-Merton Formula
// Calculates for all options, and also simulates manipulation for c_num_iterations
// Code is written serially, but is vectorized with the autovectorizer
void black_scholes_serial(float *StockPrice, float *OptionStrike, float *OptionYears, float *CallResult, float *PutResult) {
	for(int i = 0; i < c_num_iterations; i++) {
		// needs dummy command to prevent the compiler from completely optimizing out the c_num_iterations loop
		CallResult[0] = 0;
	    for(int option = 0; option < c_num_options; ++option) {
			float T = OptionYears[option];
			float X = OptionStrike[option];
			float S = StockPrice[option];
			float sqrtT = sqrtf(T);
			float d1 = (logf(S / X) + (c_riskfree + c_half * c_volatility * c_volatility) * T) / (c_volatility * sqrtT);
			float d2 = d1 - c_volatility * sqrtT;
#ifdef _WIN32
			float CNDD1 = CND(d1);
			float CNDD2 = CND(d2);
#else			
			float CNDD1 = c_half + c_half*erff(SQRT1_2*d1);
			float CNDD2 = c_half + c_half*erff(SQRT1_2*d2);
#endif
			float expRT = expf(-c_riskfree * T);
			
			CallResult[option] = S * CNDD1 - X * expRT * CNDD2;
			PutResult[option] = CallResult[option]  +  expRT - S;
		}
	}
}

// Calculates the call and put options using the Black-Scholes-Merton Formula
// Calculates for all options, and also simulates manipulation for c_num_iterations
// Code is parallelized with cilk_for and is vectorized with the autovectorizer
void black_scholes_cilk(float *StockPrice, float *OptionStrike, float *OptionYears, float *CallResult, float *PutResult) {
	cilk_for(int i = 0; i < c_num_iterations; i++) {
		// needs dummy command to prevent the compiler from completely optimizing out the c_num_iterations loop
		CallResult[0] = 0;
	    cilk_for(int option = 0; option < c_num_options; ++option) {
			float T = OptionYears[option];
			float X = OptionStrike[option];
			float S = StockPrice[option];
			float sqrtT = sqrtf(T);
			float d1 = (logf(S / X) + (c_riskfree + c_half * c_volatility * c_volatility) * T) / (c_volatility * sqrtT);
			float d2 = d1 - c_volatility * sqrtT;
#ifdef _WIN32
			float CNDD1 = CND(d1);
			float CNDD2 = CND(d2);
#else			
			float CNDD1 = c_half + c_half*erff(SQRT1_2*d1);
			float CNDD2 = c_half + c_half*erff(SQRT1_2*d2);
#endif
			float expRT = expf(-c_riskfree * T);

			CallResult[option] = S * CNDD1 - X * expRT * CNDD2;
			PutResult[option] = CallResult[option]  +  expRT - S;
		}
	}
}

// Polynomial approximation of cumulative normal distribution function
//__declspec(vector)
float CND(float d){
    float K = 1.0 / (1.0 + 0.2316419 * fabs(d));
    float cnd = RSQRT2PI * exp(- 0.5 * d * d) * (K * (A1 + K * (A2 + K * (A3 + K * (A4 + K * A5)))));

    if(d > 0)
        cnd = 1.0 - cnd;
    return cnd;
}
