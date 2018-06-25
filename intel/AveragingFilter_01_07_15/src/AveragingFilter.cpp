//=======================================================================================
//
// SAMPLE SOURCE CODE - SUBJECT TO THE TERMS OF SAMPLE CODE LICENSE AGREEMENT,
// http://software.intel.com/en-us/articles/intel-sample-source-code-license-agreement/
//
// Copyright 2013 Intel Corporation
//
// THIS FILE IS PROVIDED "AS IS" WITH NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT
// NOT LIMITED TO ANY IMPLIED WARRANTY OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
// PURPOSE, NON-INFRINGEMENT OF INTELLECTUAL PROPERTY RIGHTS.
//
// ======================================================================================
#include<iostream>
#include<stdio.h>
#include<stdlib.h>
#include"timer.h"
#include"AveragingFilter.h"
#ifdef __INTEL_COMPILER
#ifdef _WIN32
#include<cilk\cilk.h>
#else
#include<cilk/cilk.h>
#endif
// #define ALIGN __declspec(align(ALIGNMENT))
// #elif defined(__GNU__)
// #define ALIGN __attribute__((aligned(ALIGNMENT)))
// #else
#define ALIGN __attribute__((align_value(ALIGNMENT)))
#endif
#include<string.h>
#include<xmmintrin.h>
#define ALIGNMENT 32 //Set to 16 bytes for SSE architectures and 32 bytes for Intel(R) AVX architectures
using namespace std;


/*ALIGN*/ void process_image_serial(rgb *indataset, rgb *outdataset, int w, int h){
	int extra = 1;
// #ifdef __INTEL_COMPILER
// 	__assume_aligned(indataset, ALIGNMENT);
// 	__assume_aligned(outdataset, ALIGNMENT);
// #endif
	int resized_width = w + 2;
	int resized_height = h + 2;
	int filter_row_size = 3;
    ALIGN rgb *__restrict resized_indataset, *__restrict resized_outdataset;
	resized_indataset = (rgb *)_mm_malloc((sizeof(rgb)*resized_width*resized_height), ALIGNMENT);
    // resized_indataset = (rgb *)aligned_alloc(ALIGNMENT, (sizeof(rgb)*resized_width*resized_height));
	memset(resized_indataset, 0, (sizeof(rgb)*resized_width*resized_height));
	resized_outdataset = (rgb *)_mm_malloc((sizeof(rgb)*resized_width*resized_height), ALIGNMENT);
	// resized_outdataset = (rgb *)aligned_alloc(ALIGNMENT, (sizeof(rgb)*resized_width*resized_height));
	memset(resized_outdataset, 0, (sizeof(rgb)*resized_width*resized_height));
	for(int i = 0; i < h; i++)
		memcpy((&resized_indataset[((i+1)*resized_width)+1].blue), &indataset[i*w].blue, (w*sizeof(rgb)));
	unsigned char *in = (unsigned char *)resized_indataset;
	unsigned char *out = (unsigned char *)resized_outdataset;
	for(int i = 1; i < (h+1); i++)
	{
		int x = ((resized_width * i) + 1);
		for(int j = x; j < (x + w); j++)
		{
			unsigned int red = 0, green = 0, blue = 0;
			for(int k1 = (-1); k1 <= 1; k1++)
			{
				int pos = j + (k1 * resized_width);
				for(int k2 = (-1); k2 <= 1; k2++)
				{
					red += resized_indataset[(pos + k2)].red;
					green += resized_indataset[(pos + k2)].green;
					blue += resized_indataset[(pos + k2)].blue;
				}
			}
			resized_outdataset[j].red = red/9;
			resized_outdataset[j].green = green/9;
			resized_outdataset[j].blue = blue/9;
		}
	}
	for(int i = 0; i < h; i++)
			memcpy(&outdataset[i*w].blue, (&resized_outdataset[((i+1)*resized_width)+1].blue), (w*sizeof(rgb)));

	_mm_free(resized_outdataset);
	_mm_free(resized_indataset);
	// free(resized_outdataset);
	// free(resized_indataset);
    return;
}

#ifdef __INTEL_COMPILER

// __declspec(noinline) void process_image_AN(rgb *indataset, rgb *outdataset, int w, int h){
// 	int extra = 1;
// 	__assume_aligned(indataset, ALIGNMENT);
// 	__assume_aligned(outdataset, ALIGNMENT);
// 	int resized_width = w + 2;
// 	int resized_height = h + 2;
// 	int filter_row_size = 3;
// 	int temp[24];
// 	__declspec(align(ALIGNMENT)) rgb *restrict filter_interim_sum_rgb;
//     __declspec(align(ALIGNMENT)) rgb *restrict resized_indataset, *restrict resized_outdataset;
// 	resized_indataset = (rgb *)_mm_malloc((sizeof(rgb)*resized_width*resized_height), ALIGNMENT);
// 	memset(resized_indataset, 0, (sizeof(rgb)*resized_width*resized_height));
// 	resized_outdataset = (rgb *)_mm_malloc((sizeof(rgb)*resized_width*resized_height), ALIGNMENT);
// 	memset(resized_outdataset, 0, (sizeof(rgb)*resized_width*resized_height));
// 	for(int i = 0; i < h; i++)
// 		memcpy((&resized_indataset[((i+1)*resized_width)+1].blue), &indataset[i*w].blue, (w*sizeof(rgb)));
// 	unsigned char *in = (unsigned char *)resized_indataset;
// 	unsigned char *out = (unsigned char *)resized_outdataset;
// 	for(int i = 1; i < (h+1); i++)
// 	{
// 		int x = ((resized_width * i) + 1);
// 		for(int j = x; j < (x + w); j+=8)
// 		{
// 			int row2index = 3*j - 3;
// 			int jump = (resized_width * 3);
// 			int row1index = row2index - jump;
// 			int row3index = row2index + jump;
// 			out[(row2index + 3):24] = (in[row1index:24] + in[row1index+3:24] + in[row1index+6:24] + in[row2index:24] + in[row2index+3:24] + in[row2index+6:24] + in[row3index:24] + in[row3index+3:24] + in[row3index+6:24])/9;
// 		}
// 	}
// 	for(int i = 0; i < h; i++)
// 			memcpy(&outdataset[i*w].blue, (&resized_outdataset[((i+1)*resized_width)+1].blue), (w*sizeof(rgb)));

// 	_mm_free(resized_outdataset);
// 	_mm_free(resized_indataset);
//     return;
// }


void process_image_cilk_for(rgb *indataset ALIGN, rgb *outdataset ALIGN, int w, int h){
	int extra = 1;
	// __assume_aligned(indataset, ALIGNMENT);
	// __assume_aligned(outdataset, ALIGNMENT);
	int resized_width = w + 2;
	int resized_height = h + 2;
	int filter_row_size = 3;
	rgb *__restrict filter_interim_sum_rgb ALIGN;
	rgb *__restrict resized_indataset ALIGN, *__restrict resized_outdataset ALIGN;
	resized_indataset = (rgb *)_mm_malloc((sizeof(rgb)*resized_width*resized_height), ALIGNMENT);
	// resized_indataset = (rgb *)aligned_alloc(ALIGNMENT, (sizeof(rgb)*resized_width*resized_height));
	memset(resized_indataset, 0, (sizeof(rgb)*resized_width*resized_height));
	resized_outdataset = (rgb *)_mm_malloc((sizeof(rgb)*resized_width*resized_height), ALIGNMENT);
	// resized_outdataset = (rgb *)aligned_alloc(ALIGNMENT, (sizeof(rgb)*resized_width*resized_height));
	memset(resized_outdataset, 0, (sizeof(rgb)*resized_width*resized_height));
	for(int i = 0; i < h; i++)
		memcpy((&resized_indataset[((i+1)*resized_width)+1].blue), &indataset[i*w].blue, (w*sizeof(rgb)));
	unsigned char *in = (unsigned char *)resized_indataset;
	unsigned char *out = (unsigned char *)resized_outdataset;
	cilk_for(int i = 1; i < (h+1); i++)
	{
		int x = ((resized_width * i) + 1);
		for(int j = x; j < (x + w); j++)
		{
			unsigned int red = 0, green = 0, blue = 0;
			for(int k1 = (-1); k1 <= 1; k1++)
			{
				int pos = j + (k1 * resized_width);
				for(int k2 = (-1); k2 <= 1; k2++)
				{
					red += resized_indataset[(pos + k2)].red;
					green += resized_indataset[(pos + k2)].green;
					blue += resized_indataset[(pos + k2)].blue;
				}
			}
			resized_outdataset[j].red = red/9;
			resized_outdataset[j].green = green/9;
			resized_outdataset[j].blue = blue/9;
		}
	}
	for(int i = 0; i < h; i++)
			memcpy(&outdataset[i*w].blue, (&resized_outdataset[((i+1)*resized_width)+1].blue), (w*sizeof(rgb)));

	_mm_free(resized_outdataset);
	_mm_free(resized_indataset);
	// free(resized_outdataset);
	// free(resized_indataset);
    return;
}

// __declspec(noinline) void process_image_cilk_for(rgb *indataset, rgb *outdataset, int w, int h){
// 	int extra = 1;
// 	__assume_aligned(indataset, ALIGNMENT);
// 	__assume_aligned(outdataset, ALIGNMENT);
// 	int resized_width = w + 2;
// 	int resized_height = h + 2;
// 	int filter_row_size = 3;
// 	__declspec(align(ALIGNMENT)) rgb *restrict filter_interim_sum_rgb;
//     __declspec(align(ALIGNMENT)) rgb *restrict resized_indataset, *restrict resized_outdataset;
// 	resized_indataset = (rgb *)_mm_malloc((sizeof(rgb)*resized_width*resized_height), ALIGNMENT);
// 	memset(resized_indataset, 0, (sizeof(rgb)*resized_width*resized_height));
// 	resized_outdataset = (rgb *)_mm_malloc((sizeof(rgb)*resized_width*resized_height), ALIGNMENT);
// 	memset(resized_outdataset, 0, (sizeof(rgb)*resized_width*resized_height));
// 	for(int i = 0; i < h; i++)
// 		memcpy((&resized_indataset[((i+1)*resized_width)+1].blue), &indataset[i*w].blue, (w*sizeof(rgb)));
// 	unsigned char *in = (unsigned char *)resized_indataset;
// 	unsigned char *out = (unsigned char *)resized_outdataset;
// 	cilk_for(int i = 1; i < (h+1); i++)
// 	{
// 		int x = ((resized_width * i) + 1);
// 		for(int j = x; j < (x + w); j++)
// 		{
// 			unsigned int red = 0, green = 0, blue = 0;
// 			for(int k1 = (-1); k1 <= 1; k1++)
// 			{
// 				int pos = j + (k1 * resized_width);
// 				for(int k2 = (-1); k2 <= 1; k2++)
// 				{
// 					red += resized_indataset[(pos + k2)].red;
// 					green += resized_indataset[(pos + k2)].green;
// 					blue += resized_indataset[(pos + k2)].blue;
// 				}
// 			}
// 			resized_outdataset[j].red = red/9;
// 			resized_outdataset[j].green = green/9;
// 			resized_outdataset[j].blue = blue/9;
// 		}
// 	}
// 	for(int i = 0; i < h; i++)
// 			memcpy(&outdataset[i*w].blue, (&resized_outdataset[((i+1)*resized_width)+1].blue), (w*sizeof(rgb)));

// 	_mm_free(resized_outdataset);
// 	_mm_free(resized_indataset);
//     return;
// }


// __declspec(noinline) void process_image_AN_cilk_for(rgb *indataset, rgb *outdataset, int w, int h){
// 	int extra = 1;
// 	__assume_aligned(indataset, ALIGNMENT);
// 	__assume_aligned(outdataset, ALIGNMENT);
// 	int resized_width = w + 2;
// 	int resized_height = h + 2;
// 	int filter_row_size = 3;
// 	__declspec(align(ALIGNMENT)) rgb *restrict filter_interim_sum_rgb;
//     __declspec(align(ALIGNMENT)) rgb *restrict resized_indataset, *restrict resized_outdataset;
// 	resized_indataset = (rgb *)_mm_malloc((sizeof(rgb)*resized_width*resized_height), ALIGNMENT);
// 	memset(resized_indataset, 0, (sizeof(rgb)*resized_width*resized_height));
// 	resized_outdataset = (rgb *)_mm_malloc((sizeof(rgb)*resized_width*resized_height), ALIGNMENT);
// 	memset(resized_outdataset, 0, (sizeof(rgb)*resized_width*resized_height));
// 	for(int i = 0; i < h; i++)
// 		memcpy((&resized_indataset[((i+1)*resized_width)+1].blue), &indataset[i*w].blue, (w*sizeof(rgb)));
// 	unsigned char *in = (unsigned char *)resized_indataset;
// 	unsigned char *out = (unsigned char *)resized_outdataset;
// 	cilk_for(int i = 1; i < (h+1); i++)
// 	{
// 		int x = ((resized_width * i) + 1);
// 		for(int j = x; j < (x + w); j+=8)
// 		{
// 			int row2index = 3*j - 3;
// 			int jump = (resized_width * 3);
// 			int row1index = row2index - jump;
// 			int row3index = row2index + jump;
// 			out[(row2index + 3):24] = (in[row1index:24] + in[row1index+3:24] + in[row1index+6:24] + in[row2index:24] + in[row2index+3:24] + in[row2index+6:24] + in[row3index:24] + in[row3index+3:24] + in[row3index+6:24])/9;
// 		}
// 	}
// 	for(int i = 0; i < h; i++)
// 			memcpy(&outdataset[i*w].blue, (&resized_outdataset[((i+1)*resized_width)+1].blue), (w*sizeof(rgb)));

// 	_mm_free(resized_outdataset);
// 	_mm_free(resized_indataset);
//     return;
// }

#endif

//This API does the reading and writing from/to the .bmp file. Also invokes the image processing API from here
/*ALIGN*/ int read_process_write(char* input, char *output, int choice) {

    FILE *fp,*out;
    bitmap_header* hp;
    int n;
    CUtilTimer t;
#ifdef PERF_NUM
	long long avg_ticks = 0;
	double avg_time = 0.0;
#endif
    // Making sure the AOS alignes to an address which is multiple of 16 to support vectorization 
    ALIGN rgb *indata, *outdata;

    //Instantiating a file handle to open a input BMP file in binary mode
    fp = fopen(input, "rb");
    if(fp==NULL){
        cout<<"The file could not be opened. Program will be exiting\n";
	return 0;
    }


    //Allocating memory for storing the bitmap header information which will be retrived from input image file
    hp=(bitmap_header*)malloc(sizeof(bitmap_header));
    if(hp==NULL)
    {
	cout<<"Unable to allocate the memory for bitmap header\n";
        return 0;
    }

    //Reading from input file the bitmap header information which is inturn stored in memory allocated in the previous step
    n=fread(hp, sizeof(bitmap_header), 1, fp);
        if(n<1){
            cout<<"Read error from the file. No bytes were read from the file. Program exiting \n";
            return 0;        
        }

    if(hp->bitsperpixel != 24){
        cout<<"This is not a RGB image\n";
        return 0;
    }


    //Allocate memory for loading the bitmap data of the input image
    indata = (rgb *)_mm_malloc((sizeof(rgb)*(hp->width * hp->height)), ALIGNMENT);
    if(indata==NULL){
        cout<<"Unable to allocate the memory for bitmap date\n";
        return 0;
    }

    // Setting the File descriptor to the starting point in the input file where the bitmap data(payload) starts
    fseek(fp,sizeof(char)*hp->fileheader.dataoffset,SEEK_SET);

    // Reading the bitmap data from the input bmp file to the memory allocated in the previous step
    n=fread(indata, sizeof(rgb), (hp->width * hp->height), fp);
    if(n<1){
        cout<<"Read error from the file. No bytes were read from the file. Program exiting \n";
        return 0;
    }
	int size_of_image = hp->width * hp->height;

	//Allocate memory for storing the bitmap data of the processed image
    outdata = (rgb *)_mm_malloc((sizeof(rgb)*(size_of_image)), ALIGNMENT);
    if(outdata==NULL){
        cout<<"Unable to allocate the memory for bitmap date\n";
        return 0;
    }
    // Involing the image processing API which does some manipulation on the bitmap data read from the input .bmp file
#ifdef PERF_NUM
for(int i = 0; i < 5; i++)
{
#endif
	switch(choice){
	case 1:	t.start();
			process_image_serial(indata, outdata, hp->width, hp->height);
			t.stop();
			break;
#ifdef __INTEL_COMPILER
	// case 2: t.start();
	// 		process_image_AN(indata, outdata, hp->width, hp->height);
	// 		t.stop();
	// 		break;
	case 3: t.start();
			process_image_cilk_for(indata, outdata, hp->width, hp->height);
			t.stop();
			break;
	// case 4: t.start();
	// 		process_image_AN_cilk_for(indata, outdata, hp->width, hp->height);
	// 		t.stop();
	// 		break;
#endif
	default: cout<<"Wrong choice\n";
			break;
	}
#ifdef PERF_NUM
	// avg_ticks += t.get_ticks();
	avg_time += t.get_time();
}
// avg_ticks /= 5;
// avg_time /= 5;
#endif
    // Opening an output file to which the processed result will be written
    out = fopen(output, "wb");
    if(out==NULL){
        cout<<"The file could not be opened. Program will be exiting\n";
        return 0;
    }

    // Writing the bitmap header which we copied from the input file to the output file. We need not make any changes because we haven't made any change to the image size or compression type.
    n=fwrite(hp,sizeof(char),sizeof(bitmap_header),out);
    if(n<1){
        cout<<"Write error to the file. No bytes were wrtten to the file. Program exiting \n";
        return 0;
    }

    //Setting the file descriptor to point to the location where the bitmap data is to be written 
    fseek(out,sizeof(char)*hp->fileheader.dataoffset,SEEK_SET);

    // Writing the bitmap data of the processed image to the output file
    n=fwrite(outdata,sizeof(rgb),(size_of_image),out);
    if(n<1){
        cout<<"Write error to the file. No bytes were wrtten to the file. Program exiting \n";
        return 0;
    }

    //cout<<"The time taken in number of ticks is "<<(endtime - starttime)<<"\n";
#ifdef PERF_NUM
	// cout<<"The time taken in number of ticks is "<<avg_ticks<<"\n";
    cout<<avg_time<<"\n";
#else
	cout<<"The time taken in number of ticks is "<<t.get_ticks()<<"\n";
#endif
    // Closing all file handles and also freeing all the dynamically allocated memory
    fclose(fp);
    fclose(out);
    free(hp);
    _mm_free(indata);
    _mm_free(outdata);
    return 0;
}
int main(int argc, char *argv[]){
        if(argc < 3){
                cout<<"Program usage is <modified_program> <inputfile.bmp> <outputfile.bmp>\n";
                return 0;
        }
		int choice = 3;
// 		cout<<"Please enter the version you want to execute:\n";
// 		cout<<"1) Serial version\n";
// #ifdef __INTEL_COMPILER
// 		// cout<<"2) Array Notation Version\n";
// 		cout<<"3) Serial + cilk_for version\n";
// 		// cout<<"4) Array Notation + cilk_for version\n";
// #endif
// 		cin>>choice;
        read_process_write(argv[1], argv[2], choice);
        return 0;
}





