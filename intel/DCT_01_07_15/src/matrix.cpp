#include"matrix.h"

#ifdef __INTEL_COMPILER
	matrix_AN::matrix_AN(int size) {
		ptr = (float *)_mm_malloc(sizeof(float)*size*size, ALIGNMENT);
		memset(ptr, 0, sizeof(float)*size*size);
		row_size = size;
	}
	matrix_AN::~matrix_AN(){
		_mm_free(ptr);
	}
	matrix_AN::matrix_AN(matrix_AN &m) {
		ptr = (float *)_mm_malloc(sizeof(float)*m.row_size*m.row_size, ALIGNMENT);
		memcpy(ptr, m.ptr, sizeof(float)*m.row_size*m.row_size);
		row_size = m.row_size;
	}	
	 void matrix_AN::create_identity(){
		int size = row_size * row_size;
		for(int i = 0; i < row_size; i++)
		{
			*(ptr + (i * row_size) + i) = 1;
		}
		return;
		// int size = row_size * row_size;
		// ptr[0:row_size:(row_size + 1)] = 1;
		// return;
	}
	 matrix_AN matrix_AN::operator*(matrix_AN &y){
		int size = y.row_size;
		matrix_AN temp(size);
		for(int i = 0; i < size; i++)
		{
			for(int j = 0; j < size; j++)
			{
				temp.ptr[(i * size) + j] = 0;
				for(int k = 0; k < size; k++)
					temp.ptr[(i * size) + j] += (ptr[(i * size) + k] * y.ptr[(k * size) + j]);
			}
		}
		return temp;
		// int size = row_size;
		// matrix_AN temp(size);
		// for(int i = 0; i < size; i++)
		// {
		// 	temp.ptr[(i * size):size] = 0;
		// 	for(int j = 0; j < size; j++)
		// 	{
		// 		temp.ptr[(i * size):size] = temp.ptr[(i * size):size] + (ptr[(i * size) + j] * y.ptr[(j * size):size]);
		// 	}
		// }
		// return temp;
	}

	 matrix_AN &matrix_AN::operator=(const matrix_AN &temp){
		int row_stride = temp.row_size;
		int size = (row_stride * row_stride);
		for(int i = 0; i < row_stride; i++)
		{
			for(int j = 0; j < row_stride; j++)
				ptr[(i * row_stride) + j] = temp.ptr[(i * row_stride) + j];
		}
		return *this;
		// int row_stride = temp.row_size;
		// int size = row_stride * row_stride;
		// ptr[0:size] = temp.ptr[0:size];
		// return *this;
	}
	 matrix_AN matrix_AN::operator-(int num){
		matrix_AN temp(row_size);
		int size = (row_size * row_size);
		for (int i = 0; i < size; i++)
			temp.ptr[i] -= num;
		return temp;
		// matrix_AN temp(row_size);
		// int size = (row_size * row_size);
		// temp.ptr[0:size] -= num;
		// return temp;
	}
	 void matrix_AN::transpose(matrix_AN &output){
		int size = row_size;
		for(int i = 0; i < size; i++)
		{
			for(int j = 0; j < size; j++)
				output.ptr[(j * size) + i] = ptr[(i * size) + j];
		}
		return;
		// int size = row_size;
		// for(int i = 0; i < size; i++)
		// {
		// 	output.ptr[i:size:size] = ptr[(i * size):size];
		// }
		// return;
	}

/*	 ostream& operator<<(ostream &out, matrix_AN &x){
	for(int i = 0; i < x.row_size; i++)
	{
		for(int j = 0; j < x.row_size; j++)
			out<<x.ptr[(i * x.row_size) + j]<<"\t";
		out<<"\n";
	}
	return out;
	}*/
#endif

	matrix_serial::matrix_serial(int size) {
		ptr = (float *)_mm_malloc(sizeof(float)*size*size, ALIGNMENT);
		memset(ptr, 0, sizeof(float)*size*size);
		row_size = size;
	}
	matrix_serial::~matrix_serial(){
		_mm_free(ptr);
	}

	 void matrix_serial::create_identity(){
		int size = row_size * row_size;
		for(int i = 0; i < row_size; i++)
		{
			*(ptr + (i * row_size) + i) = 1;
		}
		return;
	}

	 matrix_serial::matrix_serial(matrix_serial &m) {
		ptr = (float *)_mm_malloc(sizeof(float)*m.row_size*m.row_size, ALIGNMENT);
		memcpy(ptr, m.ptr, sizeof(float)*m.row_size*m.row_size);
		row_size = m.row_size;
	}	

	 matrix_serial matrix_serial::operator*(matrix_serial &y){
		int size = y.row_size;
		matrix_serial temp(size);
		for(int i = 0; i < size; i++)
		{
			for(int j = 0; j < size; j++)
			{
				temp.ptr[(i * size) + j] = 0;
				for(int k = 0; k < size; k++)
					temp.ptr[(i * size) + j] += (ptr[(i * size) + k] * y.ptr[(k * size) + j]);
			}
		}
		return temp;
	}
	 matrix_serial &matrix_serial::operator=(const matrix_serial &temp){
		int row_stride = temp.row_size;
		int size = (row_stride * row_stride);
		for(int i = 0; i < row_stride; i++)
		{
			for(int j = 0; j < row_stride; j++)
				ptr[(i * row_stride) + j] = temp.ptr[(i * row_stride) + j];
		}
		return *this;
	}
	 matrix_serial matrix_serial::operator-(int num){
		matrix_serial temp(row_size);
		int size = (row_size * row_size);
		for (int i = 0; i < size; i++)
			temp.ptr[i] -= num;
		return temp;
	}
	 void matrix_serial::transpose(matrix_serial &output){
		int size = row_size;
		for(int i = 0; i < size; i++)
		{
			for(int j = 0; j < size; j++)
				output.ptr[(j * size) + i] = ptr[(i * size) + j];
		}
		return;
	}


/*	 ostream& operator<<(ostream &out, matrix_serial &x){
		for(int i = 0; i < x.row_size; i++)
		{
			for(int j = 0; j < x.row_size; j++)
				out<<x.ptr[(i * x.row_size) + j]<<"\t";
			out<<"\n";
		}
	return out;
}*/

