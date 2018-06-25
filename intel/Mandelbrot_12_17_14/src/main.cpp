//==============================================================
//
// SAMPLE SOURCE CODE - SUBJECT TO THE TERMS OF SAMPLE CODE LICENSE AGREEMENT,
// http://software.intel.com/en-us/articles/intel-sample-source-code-license-agreement/
//
// Copyright 2010-2013 Intel Corporation
//
// THIS FILE IS PROVIDED "AS IS" WITH NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT
// NOT LIMITED TO ANY IMPLIED WARRANTY OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
// PURPOSE, NON-INFRINGEMENT OF INTELLECTUAL PROPERTY RIGHTS.
//
// ===============================================================

// Initial conditions: rectangle (for image) = { (-2.5, -0.875), (1, 0.875) }
//                     height = 1024
//                     width = 2048
//                     max_depth = 100
//
// Finds the mandelbrot set given initial conditions, and saves results to a bmp image.
// The real portion of the complex number is the x-axis, and the imaginary portion is the y-axis
//
// You can optionally compile with GCC and MSC, but just the linear, scalar version will compile
// and it will not have all optimizations

#include <cmath>
#include <complex>
#include <cilk/cilk.h>
#include "mandelbrot.h"
#include "bmp_image.h"
#include "timer.h"

#include <stdio.h>
#include <stdlib.h>
#include <emmintrin.h>

int main(int argc, char* argv[]) {
	double x0 = -2.5;
	double y0 = -0.875;
	double x1 = 1;
	double y1 = 0.875;
	int height = 10240;
	// Width should be a multiple of 8
	int width = 20480;
	assert(width%8==0);
	int max_depth = 100;

	int option = 3;

	CUtilTimer timer;
	double serial_time, vec_time, cilk_time, cilk_vec_time;

	// Load up the Intel(R) Cilk(TM) Plus runtime to to get accurate performance numbers
	double g = 2.0;
	cilk_for (int i = 0; i < 100; i++) {
		g /= sin(g);
	}

	io::BMPImage image(width, height, 8);
	unsigned char* output;
    //    printf("\nStarting cilk_for Mandelbrot...\n");
		timer.start();
		output = cilk_mandelbrot(x0, y0, x1, y1, width, height, max_depth);
		timer.stop();
		printf("%f\n", timer.get_time());
		//printf("Saving image...\n");
		image.from_gray(output);
		image.save("mandelbrot_cilk.bmp");
		image.valsig("mandelbrot_cilk.valsig");
		_mm_free(output);

    return 0;
}
