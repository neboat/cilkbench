/* 
 * Rectangular matrix multiplication.
 *
 * See the paper ``Cache-Oblivious Algorithms'', by
 * Matteo Frigo, Charles E. Leiserson, Harald Prokop, and 
 * Sridhar Ramachandran, FOCS 1999, for an explanation of
 * why this algorithm is good for caches.
 *
 * Author: Matteo Frigo
 */

/*
 * Copyright (c) 2003 Massachusetts Institute of Technology
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 */

#include <cilk/cilk.h>

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <sys/time.h>
#include "getoptions.h"

unsigned long long todval (struct timeval *tp) {
    return tp->tv_sec * 1000 * 1000 + tp->tv_usec;
}


#ifndef RAND_MAX
#define RAND_MAX 32767
#endif

#define REAL float

unsigned long rand_nxt = 0;

int cilk_rand(void) {
  int result;
  rand_nxt = rand_nxt * 1103515245 + 12345;
  result = (rand_nxt >> 16) % ((unsigned int) RAND_MAX + 1);
  return result;
}


void zero_vec(REAL *V, int n) {

  int i;

  for(i = 0; i < n; i++) {
    V[i] = (REAL) 0.0;
  }
}

void init_vec(REAL *V, int n) {

  int i;

  for(i = 0; i < n; i++) {
    V[i] = (REAL) cilk_rand();
  }
}

double maxerror_vec(REAL *V1, REAL *V2, int n) {
  int i; 
  double err = 0.0, diff;

  for(i = 0; i < n; i++) {
    diff = (V1[i] - V2[i]) / V1[i];
    if(diff < 0) 
      diff = -diff;
    if(diff > err) {
      err = diff; 
    }
  }

  return err;
}

double sum_diff_vec(REAL *V1, REAL *V2, int n) {
  int i; 
  double err = 0.0, diff;

  for(i = 0; i < n; i++) {
    diff = (V1[i] - V2[i]) / V1[i];
    if(diff < 0) 
      diff = -diff;
    err += diff; 
  }

  return err;
}

void print_vec(REAL *V, int n) {
  int i;

  for(i = 0; i < n; i++) {
    printf("%f  ", V[i]);
  }    
}

void print_matrix(REAL *A, int n, int ld) {
  int i, j;

  for(i = 0; i < n; i++) {
    for(j = 0; j < n; j++) {
      printf("%f  ", A[i*ld + j]);
    }
    printf("\n");
  }    
}

void zero(REAL *A, int n) {

  int i, j;

  for (i = 0; i < n; i++) {
    for (j = 0; j < n; j++) {
      A[i * n + j] = 0.0;
    }
  }
}

void init(REAL *A, int n) {

  int i, j;

  for (i = 0; i < n; i++) {
    for (j = 0; j < n; j++) {
      A[i * n + j] = (double)cilk_rand();
    }
  }
}

double maxerror(REAL *A, REAL *B, int n) {

  int i, j;
  double error = 0.0;

  for (i = 0; i < n; i++) {
    for (j = 0; j < n; j++) {
      double diff = (A[i * n + j] - B[i * n + j]) / A[i * n + j];
      if (diff < 0)
        diff = -diff;
      if (diff > error)
        error = diff;
    }
  }

  return error;
}

void iter_matmul(REAL *A, REAL *B, REAL *C, int n) {

  int i, j, k;

  for (i = 0; i < n; i++)
    for (k = 0; k < n; k++) {
      REAL c = 0.0;
      for (j = 0; j < n; j++)
        c += A[i * n + j] * B[j * n + k];
      C[i * n + k] = c;
    }
}

/*
 * A \in M(m, n)
 * B \in M(n, p)
 * C \in M(m, p)
 */
void rec_matmulAdd(REAL *A, REAL *B, REAL *C, 
    int m, int n, int p, int ld) {

  if ((m + n + p) <= 64) {
    int i, j, k;
    /* base case */
      for (i = 0; i < m; i++)
        for (k = 0; k < p; k++) {
          REAL c = 0.0;
          for (j = 0; j < n; j++)
            c += A[i * ld + j] * B[j * ld + k];
          C[i * ld + k] += c;
        }
    return;
  } 

  if (n >= p) {
    if (m >= n) {
      int m1 = m >> 1;

      cilk_spawn rec_matmulAdd(A, B, C, m1, n, p, ld);
      rec_matmulAdd(A + m1 * ld, B, C + m1 * ld, m - m1, n, p, ld);
      return;
    } else {
      int n1 = n >> 1;
      rec_matmulAdd(A, B, C, m, n1, p, ld);
      rec_matmulAdd(A + n1, B + n1 * ld, C, m, n - n1, p, ld);
      return;
    }
  } else {
    int p1 = p >> 1;
    cilk_spawn rec_matmulAdd(A, B, C, m, n, p1, ld);
    rec_matmulAdd(A, B + p1, C + p1, m, n, p - p1, ld);
    return;
  }
}

void rec_matmul(REAL *A, REAL *B, REAL *C, 
    int m, int n, int p, int ld) {

  if ((m + n + p) <= 64) {
    int i, j, k;
      for (i = 0; i < m; i++)
        for (k = 0; k < p; k++) {
          REAL c = 0.0;
          for (j = 0; j < n; j++)
            c += A[i * ld + j] * B[j * ld + k];
          C[i * ld + k] = c;
        }
    return;
  } 

  if (n >= p) {
    if (m >= n) {
      int m1 = m >> 1;
      cilk_spawn rec_matmul(A, B, C, m1, n, p, ld);
      rec_matmul(A + m1 * ld, B, C + m1 * ld, m - m1, n, p, ld);
      return;
    } else {
      int n1 = n >> 1;
      rec_matmul(A, B, C, m, n1, p, ld);
      rec_matmulAdd(A + n1, B + n1 * ld, C, m, n - n1, p, ld);
      return;
    }
  } else {
    int p1 = p >> 1;
    cilk_spawn rec_matmul(A, B, C, m, n, p1, ld);
    rec_matmul(A, B + p1, C + p1, m, n, p - p1, ld);
    return;
  }
}

/* 
 * ANGE:
 * recursively mutliply A (matrix) and R (vector)
 * A = matrix, in M(m, n) (size m x n)
 * R = input column vector, size n
 * P = output column vector, size n
 * ld = size of each row in A
 * add = add the result in if set 
 */
void mat_vec_mul(REAL *A, REAL *R, REAL *P, int m, int n, int ld, int add) {

  if((m + n) <= 64) { // base case 
    int i, j;

    if(add) {
      for(i = 0; i < m; i++) {
        REAL c = 0;
        for(j = 0; j < n; j++) {
          c += A[i * ld + j] * R[j];
        }
        P[i] += c;
      }
    } else {
      for(i = 0; i < m; i++) {
        REAL c = 0;
        for(j = 0; j < n; j++) {
          c += A[i * ld + j] * R[j];
        }
        P[i] = c;
      }
    }

  } else if( m >= n ) { // cut m dimension 
    int m1 = m >> 1;
    mat_vec_mul(A, R, P, m1, n, ld, add);        
    mat_vec_mul(A + m1*ld, R, P + m1, m - m1, n, ld, add);        

  } else { // cut n dimension 
    int n1 = n >> 1;
    mat_vec_mul(A, R, P, m, n1, ld, add);        
    // sync here if parallelized 
    mat_vec_mul(A + n1, R + n1, P, m, n - n1, ld, 1);        
  }
}

const char *specifiers[] = {"-n", "-c", "-rc", "-h", 0};
int opt_types[] = {INTARG, BOOLARG, BOOLARG, BOOLARG, 0};

int main(int argc, char *argv[]) { 

  int n = 1024; // default input size 
  int check = 0, rand_check = 0, help = 0; // default options

  REAL *A, *B, *C;
  REAL *R, *P1, *P2;
  REAL *C2;
  double err;

  get_options(argc, argv, specifiers, opt_types, 
              &n, &check, &rand_check, &help);

  if(help) {
    fprintf(stderr, 
        "Usage: matmul [-n size] [-c] [-rc] [-h] [<cilk options>]\n");
    fprintf(stderr, "if -c is set, "
        "check result against iterative matrix multiply O(n^3).\n");
    fprintf(stderr, "if -rc is set, check "
        "result against randomlized algo. due to Freivalds O(n^2).\n");
    exit(1);
  }

  A = (REAL *) malloc(n * n * sizeof(REAL));
  B = (REAL *) malloc(n * n * sizeof(REAL));
  C = (REAL *) malloc(n * n * sizeof(REAL));

  if(rand_check) {
    R = (REAL *) malloc(n * sizeof(REAL));
    P1 = (REAL *) malloc(n * sizeof(REAL));
    P2 = (REAL *) malloc(n * sizeof(REAL));
    init_vec(R, n); // randomly select real values from [0-99]

  } else if(check) { // let's not do the check if rand_check is set
    C2 = (REAL *) malloc(n * n * sizeof(REAL));
    zero(C2, n);
  }

  init(A, n);
  init(B, n);

  fprintf(stderr, "\nCalculate using recursive method ... (timing start here)\n");

  /* initialization and reset */
  zero(C, n); 

    struct timeval t1, t2;
    gettimeofday(&t1,0);
  rec_matmul(A, B, C, n, n, n, n); 
    gettimeofday(&t2,0);
    unsigned long long runtime_ms = (todval(&t2)-todval(&t1))/1000;
    printf("%f\n", runtime_ms/1000.0);



  if(rand_check) {
    mat_vec_mul(B, R, P1, n, n, n, 0);
    mat_vec_mul(A, P1, P2, n, n, n, 0);
    // zero_vec(P1, n);
    mat_vec_mul(C, R, P1, n, n, n, 0);
    err = maxerror_vec(P1, P2, n);

    fprintf(stderr, "Max error     = %g\n", err);

  } else if(check) {
    iter_matmul(A, B, C2, n);
    err = maxerror(C, C2, n);

    fprintf(stderr, "Max error     = %g\n", err);
  }

  fprintf(stderr, "\nCilk Example: matmul\n");
  fprintf(stderr, "Options: size = %d\n", n);

  free(C);
  free(B);
  free(A);

  if(rand_check) {
    free(R);
    free(P1);
    free(P2);
  } else if( check) {
    free(C2);
  }

  return 0;
}

