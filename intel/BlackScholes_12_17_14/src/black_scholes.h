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

#ifndef BLACK_SCHOLES_H
#define BLACK_SCHOLES_H

#define _USE_MATH_DEFINES
#include <cmath>

const int c_num_options = 1024*1024;
const int  c_num_iterations = 1024;

const float c_riskfree = 0.02f;
const float c_volatility = 0.30f;
const float c_half = 0.5f;
const float SQRT1_2 = static_cast<float>(M_SQRT1_2);

const double A1 = 0.31938153;
const double A2 = -0.356563782;
const double A3 = 1.781477937;
const double A4 = -1.821255978;
const double A5 = 1.330274429;
const double RSQRT2PI = 0.39894228040143267793994605993438;


// function prototypes

// Returns uniformly distributed random float between [low, high]
inline float RandFloat(float low, float high);

// Calculates the call and put options using the Black-Scholes-Merton Formula
void black_scholes_serial(float *StockPrice, float *OptionStrike, float *OptionYears, float *CallResult, float *PutResult);

// Calculates the call and put options using the Black-Scholes-Merton Formula
// Each option and iteration of options parallelized with cilk_for
void black_scholes_cilk(float *StockPrice, float *OptionStrike, float *OptionYears, float *CallResult, float *PutResult);

// Estimation of a Cumulative Normal Distribution
// Fast calculation utilizes erff which is not available on Windows, therefore this slower method is necessary for cross-platform compatibility
float CND(float d);

#endif // BLACK_SCHOLES_H