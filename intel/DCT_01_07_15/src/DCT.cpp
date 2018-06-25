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

#include <cstdio>
#include <cstdlib>
#include <cmath>

#ifdef __INTEL_COMPILER
#include <cilk/cilk.h>
#endif

#ifdef _WIN32
#include <intrin.h>
#define ALIGN __declspec(align(ALIGNMENT))
#else
#define ALIGN __attribute__((aligned(ALIGNMENT)))
#endif

#include "DCT.h"
#include "matrix.h"
#include "timer.h"

//API for creating 8x8 DCT matrix
// #if defined(__INTEL_COMPILER)
// void create_DCT_AN(matrix_AN &x){
// 	int size = x.row_size;
// 	float temp[size];
// 	for(int i = 0; i < size; i++)
// 		temp[i] = i;
// 	for(int i = 0; i < size; i++)
// 	{
// 		if(i == 0)
// 			x.ptr[(i * size):size] = (1/sqrt((float)size));
// 		else
// 			x.ptr[(i * size):size] = sqrt((float)2/size) * cosf((((2*temp[:]) + 1)*i*3.14)/(2*size));
// 	}
// 	return;
// }
// #endif
void create_DCT_serial(matrix_serial &x){
	int size = x.row_size;
	int temp[8];
	for(int i = 0; i < size; i++)
		temp[i] = i;
	for(int i = 0; i < size; i++)
	{
		for(int j = 0; j < size; j++)
		{
			if(i == 0)
				x.ptr[(i * size) + j] = (1/sqrt((float)size));
			else
				x.ptr[(i * size) + j] = sqrt((float)2/size) * cosf(((((float)2*temp[j]) + 1)*i*3.14f)/(2*size));
		}
	}
	return;
}


//Processing API is having one Array Notation versions and another one in else block which is the plain AOS version

// #ifdef __INTEL_COMPILER
// __declspec(noinline)void process_image_AN(rgb *__restrict indataset, rgb *__restrict outdataset, int startindex){
//   float size = 8.f;
//   	int size_of_array = size * size;
//   	matrix_AN dct(size), dctinv(size), interim(size), interim1(size), product(size), redinput(size), blueinput(size), greeninput(size), quant(size);
//   	float temp[64];
//   	//Quantization matrix which does 50%, 90% and 10% quantization
//   	float quant50[64] = {16.f, 11.f, 10.f, 16.f, 24.f, 40.f, 51.f, 61.f, 12.f, 12.f, 14.f, 19.f, 26.f, 58.f, 60.f, 55.f, 14.f, 13.f, 16.f, 24.f, 40.f, 57.f, 69.f, 56.f, 14.f, 17.f, 22.f, 29.f, 51.f, 87.f, 80.f, 62.f, 18.f, 22.f, 37.f, 56.f, 68.f, 109.f, 103.f, 77.f, 24.f, 35.f, 55.f, 64.f, 81.f, 104.f, 113.f, 92.f, 49.f, 64.f, 78.f, 87.f, 103.f, 121.f, 120.f, 101.f, 72.f, 92.f, 95.f, 98.f, 112.f, 100.f, 103.f, 99.f};
//   	float quant90[64] = {3.f, 2.f, 2.f, 3.f, 5.f, 8.f, 10.f, 12.f, 2.f, 2.f, 3.f, 4.f, 5.f, 12.f, 12.f, 11.f, 3.f, 3.f, 3.f, 5.f, 8.f, 11.f, 14.f, 11.f, 3.f, 3.f, 4.f, 6.f, 10.f, 17.f, 16.f, 12.f, 4.f, 4.f, 7.f, 11.f, 14.f, 22.f, 21.f, 15.f, 5.f, 7.f, 11.f, 13.f, 16.f, 12.f, 23.f, 18.f, 10.f, 13.f, 16.f, 17.f, 21.f, 24.f, 24.f, 21.f, 14.f, 18.f, 19.f, 20.f, 22.f, 20.f, 20.f, 20.f};
//   	float quant10[64] = {80.f, 60.f, 50.f, 80.f, 120.f, 200.f, 255.f, 255.f, 55.f, 60.f, 70.f, 95.f, 130.f, 255.f, 255.f, 255.f, 70.f, 65.f, 80.f, 120.f, 200.f, 255.f, 255.f, 255.f, 70.f, 85.f, 110.f, 145.f, 255.f, 255.f, 255.f, 255.f, 90.f, 110.f, 185.f, 255.f, 255.f, 255.f, 255.f, 255.f, 120.f, 175.f, 255.f, 255.f, 255.f, 255.f, 255.f, 255.f, 245.f, 255.f, 255.f, 255.f, 255.f, 255.f, 255.f, 255.f, 255.f, 255.f, 255.f, 255.f, 255.f, 255.f, 255.f, 255.f};
//   	//memcpy(quant.ptr, quant50, sizeof(float)*64);
//   	//memcpy(quant.ptr, quant90, sizeof(float)*64);
//   	memcpy(quant.ptr, quant90, sizeof(float)*64);
//   	//Creating the 8x8 DCT matrix
//   	create_DCT_AN(dct);
//   	//Creating a transpose of DCT matrix
//   	dct.transpose(dctinv);
//   	//Translating the pixels values from 0 - 255 range to -128 to 127 range
//   	redinput.ptr[0:64] = indataset[startindex:size_of_array].red - 128;
//   	//Computation of the discrete cosine transform of the image section of size 8x8 for red values
//   	interim = dct * redinput *dctinv;
//   	//Computation of quantization phase using the quantization matrix
//   	interim1.ptr[0:64] = (interim.ptr[0:64]/quant.ptr[0:64]);
//   	interim.ptr[0:64] = floor(interim1.ptr[0:64] + 0.5f);
//   	//Computation of dequantizing phase using the same above quantization matrix
//   	interim1.ptr[0:64] = (interim.ptr[0:64]*quant.ptr[0:64]);
//   	interim.ptr[0:64] = floor(interim1.ptr[0:64] + 0.5f);
//   	//Computation of Inverse Discrete Cosine Transform (IDCT)
//   	product = dctinv * interim * dct; 
//   	temp[:] = (product.ptr[0:64] + 128);
//   	outdataset[startindex:size_of_array].red = (temp[:] > 255.f)?255:temp[:];
//   	///////////////////////////
//   	//Translating the pixels values from 0 - 255 range to -128 to 127 range
//   	blueinput.ptr[0:64] = indataset[startindex:size_of_array].blue - 128;
//   	//Computation of the discrete cosine transform of the image section of size 8x8 for blue values
//   	interim = dct * blueinput *dctinv;
//   	//Computation of quantization phase using the quantization matrix
//   	interim1.ptr[0:64] = (interim.ptr[0:64]/quant.ptr[0:64]);
//   	interim.ptr[0:64] = floorf(interim1.ptr[0:64] + 0.5f);
//   	//Computation of dequantizing phase using the same above quantization matrix
//   	interim1.ptr[0:64] = (interim.ptr[0:64]*quant.ptr[0:64]);
//   	interim.ptr[0:64] = ceilf(interim1.ptr[0:64] - 0.5f);
//   	//Computation of Inverse Discrete Cosine Transform (IDCT)
//   	product = dctinv * interim * dct;
//   	temp[:] = (product.ptr[0:64] + 128);
//   	outdataset[startindex:size_of_array].blue = (temp[:] > 255.f)?255:temp[:];
//   	////////////////////////////
//   	//Translating the pixels values from 0 - 255 range to -128 to 127 range
//   	greeninput.ptr[0:64] = indataset[startindex:size_of_array].green - 128;
//   	//Computation of the discrete cosine transform of the image section of size 8x8 for green values
//   	interim = dct * greeninput *dctinv;
//   	//Computation of quantization phase using the quantization matrix
//   	interim1.ptr[0:64] = (interim.ptr[0:64]/quant.ptr[0:64]);
//   	interim.ptr[0:64] = floorf(interim1.ptr[0:64] + 0.5f);
//   	//Computation of dequantizing phase using the same above quantization matrix
//   	interim1.ptr[0:64] = (interim.ptr[0:64]*quant.ptr[0:64]);
//   	interim.ptr[0:64] = ceilf(interim1.ptr[0:64] - 0.5f);
//   	//Computation of Inverse Discrete Cosine Transform (IDCT)
//   	product = dctinv * interim * dct;
//   	temp[:] = (product.ptr[0:64] + 128);
//   	outdataset[startindex:size_of_array].green = (temp[:] > 255.f)?255:temp[:];
//   	return;
// }
// #endif
ALIGN void process_image_serial(rgb *indataset, rgb *outdataset, int startindex){
	int size = 8;
	int size_of_array = size * size;
	matrix_serial dct(size), dctinv(size), interim(size), interim1(size), product(size), redinput(size), blueinput(size), greeninput(size), quant(size);
	//Quantization matrix which does 50%, 90% and 10% quantization
	float quant50[64] = {16.f, 11.f, 10.f, 16.f, 24.f, 40.f, 51.f, 61.f, 12.f, 12.f, 14.f, 19.f, 26.f, 58.f, 60.f, 55.f, 14.f, 13.f, 16.f, 24.f, 40.f, 57.f, 69.f, 56.f, 14.f, 17.f, 22.f, 29.f, 51.f, 87.f, 80.f, 62.f, 18.f, 22.f, 37.f, 56.f, 68.f, 109.f, 103.f, 77.f, 24.f, 35.f, 55.f, 64.f, 81.f, 104.f, 113.f, 92.f, 49.f, 64.f, 78.f, 87.f, 103.f, 121.f, 120.f, 101.f, 72.f, 92.f, 95.f, 98.f, 112.f, 100.f, 103.f, 99.f};
	float quant90[64] = {3, 2, 2, 3, 5, 8, 10, 12, 2, 2, 3, 4, 5, 12, 12, 11, 3, 3, 3, 5, 8, 11, 14, 11, 3, 3, 4, 6, 10, 17, 16, 12, 4, 4, 7, 11, 14, 22, 21, 15, 5, 7, 11, 13, 16, 12, 23, 18, 10, 13, 16, 17, 21, 24, 24, 21, 14, 18, 19, 20, 22, 20, 20, 20};
	float quant10[64] = {80, 60, 50, 80, 120, 200, 255, 255, 55, 60, 70, 95, 130, 255, 255, 255, 70, 65, 80, 120, 200, 255, 255, 255, 70, 85, 110, 145, 255, 255, 255, 255, 90, 110, 185, 255, 255, 255, 255, 255, 120, 175, 255, 255, 255, 255, 255, 255, 245, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255};
	//memcpy(quant.ptr, quant50, sizeof(float)*64);
	//memcpy(quant.ptr, quant90, sizeof(float)*64);
	memcpy(quant.ptr, quant90, sizeof(float)*64);
	//Creation of 8x8 DCT matrix
	create_DCT_serial(dct);
	//Creating a transpose of DCT matrix
	dct.transpose(dctinv);
	//Translating the pixels values from 0 - 255 range to -128 to 127 range
	for(int i = 0; i < 64; i++)
	{
		redinput.ptr[i] = indataset[startindex+i].red;
		redinput.ptr[i] -= 128;
	}
	//Computation of the discrete cosine transform of the image section of size 8x8 for red values
	interim = dct * redinput *dctinv;
	//Computation of quantization phase using the quantization matrix
	for(int i = 0; i < 64; i++)
		interim.ptr[i] = floor((interim.ptr[i]/quant.ptr[i]) + 0.5f);
	//Computation of dequantizing phase using the same above quantization matrix
	for(int i = 0; i < 64; i++)
		interim.ptr[i] = floor((interim.ptr[i]*quant.ptr[i]) + 0.5f);
	//Computation of Inverse Discrete Cosine Transform (IDCT)
	product = dctinv * interim * dct;
	for(int i = 0; i < 64; i++)
	{
		float temp = (product.ptr[i] + 128);
		outdataset[startindex+i].red = (temp > 255.f)?255:(unsigned char)temp;
	}
	///////////////////////////
	//Translating the pixels values from 0 - 255 range to -128 to 127 range
	for(int i = 0; i < 64; i++)
	{
		blueinput.ptr[i] = indataset[startindex+i].blue;
		blueinput.ptr[i] -= 128;
	}
	//Computation of the discrete cosine transform of the image section of size 8x8 for blue values
	interim = dct * blueinput *dctinv;
	//Computation of quantization phase using the quantization matrix
	for(int i = 0; i < 64; i++)
		interim.ptr[i] = floor((interim.ptr[i]/quant.ptr[i]) + 0.5f);
	//Computation of dequantizing phase using the same above quantization matrix
	for(int i = 0; i < 64; i++)
		interim.ptr[i] = floor((interim.ptr[i]*quant.ptr[i]) + 0.5f);
	//Computation of Inverse Discrete Cosine Transform (IDCT)
	product = dctinv * interim * dct;
	for(int i = 0; i < 64; i++)
	{
		float temp = product.ptr[i] + 128;
		outdataset[startindex+i].blue = (temp > 255.f)?255:(unsigned char)temp;
	}
	////////////////////////////
	//Translating the pixels values from 0 - 255 range to -128 to 127 range
	for(int i = 0; i < 64; i++)
	{
		greeninput.ptr[i] = indataset[startindex+i].green;
		greeninput.ptr[i] -= 128;
	}
	//Computation of the discrete cosine transform of the image section of size 8x8 for green values
	interim = dct * greeninput *dctinv;
	//Computation of quantization phase using the quantization matrix
	for(int i = 0; i < 64; i++)
		interim.ptr[i] = floor((interim.ptr[i]/quant.ptr[i]) + 0.5f);
	//Computation of dequantizing phase using the same above quantization matrix
	for(int i = 0; i < 64; i++)
		interim.ptr[i] = floor((interim.ptr[i]*quant.ptr[i]) + 0.5f);
	//Computation of Inverse Discrete Cosine Transform (IDCT)
	product = dctinv * interim * dct;
	for(int i = 0; i < 64; i++)
	{
		float temp = product.ptr[i] + 128;
		outdataset[startindex+i].green = (temp > 255.f)?255:(unsigned char)temp;
	}
	return;
}


//This API does the reading and writing from/to the .bmp file. Also invokes the image processing API from here
int read_process_write(char* input, char *output, int choice) {

    FILE *fp,*out;
    bitmap_header* hp;
    size_t n;
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
        cout<<"The input file could not be opened. Program will be exiting\n";
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

	//Size of the image in terms of number of pixels
	int size_of_image = hp->width * hp->height;
    //Allocate memory for loading the bitmap data of the input image
    indata = (rgb *)_mm_malloc((sizeof(rgb)*(size_of_image)), ALIGNMENT);
    if(indata==NULL){
        cout<<"Unable to allocate the memory for bitmap date\n";
        return 0;
    }

    // Setting the File descriptor to the starting point in the input file where the bitmap data(payload) starts
    fseek(fp,sizeof(char)*hp->fileheader.dataoffset,SEEK_SET);

    // Reading the bitmap data from the input bmp file to the memory allocated in the previous step
    n=fread(indata, sizeof(rgb), (size_of_image), fp);
    if(n<1){
        cout<<"Read error from the file. No bytes were read from the file. Program exiting \n";
        return 0;
    }
	
	//Allocate memory for storing the bitmap data of the processed image
    outdata = (rgb *)_mm_malloc((sizeof(rgb)*(size_of_image)), ALIGNMENT);
    if(outdata==NULL){
        cout<<"Unable to allocate the memory for bitmap date\n";
        return 0;
    }
    // Invoking the DCT/Quantization API which does some manipulation on the bitmap data read from the input .bmp file
#ifdef PERF_NUM
	for(int j = 0; j < 5; j++)
	{
#endif
	switch(choice){
		case 1:	t.start();
			int startindex;
			for(int i = 0; i < (size_of_image)/64; i++)
			{
				startindex = (i * 64);
				process_image_serial(indata, outdata, startindex);
			}
			t.stop();
			break;
#ifdef __INTEL_COMPILER
		case 2: t.start();
			
			for(int i = 0; i < (size_of_image)/64; i++)
			{
				startindex = (i * 64);
				// process_image_AN(indata, outdata, startindex);
				process_image_serial(indata, outdata, startindex);
			}
			t.stop();
			break;
		case 3: t.start();
			
			cilk_for(int i = 0; i < (size_of_image)/64; i++)
			{
				startindex = (i * 64);
				process_image_serial(indata, outdata, startindex);
			}
			t.stop();
			break;
		case 4: t.start();
			
			cilk_for(int i = 0; i < (size_of_image)/64; i++)
			{
				startindex = (i * 64);
				process_image_serial(indata, outdata, startindex);
				// process_image_AN(indata, outdata, startindex);
			}
			t.stop();
			break;
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

#ifdef PERF_NUM
	// cout<<avg_ticks<<"\n";
	cout<<avg_time<<"\n";
#else
	cout<<t.get_ticks()<<"\n";
#endif
    // Closing all file handles and also freeing all the dynamically allocated memory
    fclose(fp);
    fclose(out);
    free(hp);
    _mm_free(indata);
    _mm_free(outdata);
    return 0;
}

int main(int argc, char *argv[]) {
    if(argc < 3){
        cout<<"Program usage is <modified_program> <inputfile.bmp> <outputfile.bmp>\n";
        return 0;
    }
	int choice = 3;
//	cout<<"Please enter the version you want to execute:\n";
//	cout<<"1) Serial version\n";
//#ifdef __INTEL_COMPILER
//	cout<<"2) Array Notation Version\n";
//	cout<<"3) Serial + cilk_for version\n";
//	cout<<"4) Array Notation + cilk_for version\n";
//#endif
//	cin>>choice;
    read_process_write(argv[1], argv[2], choice);
#ifdef _WIN32
	system("PAUSE");
#endif
    return 0;
}





