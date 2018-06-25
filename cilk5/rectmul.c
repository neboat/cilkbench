/* 
 * Program to multiply two rectangualar matrizes A(n,m) * B(m,n), where
 * (n < m) and (n mod 16 = 0) and (m mod n = 0). (Otherwise fill with 0s 
 * to fit the shape.)
 *
 * written by Harald Prokop (prokop@mit.edu) Fall 97.
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

#include <stdlib.h>
#include <stdio.h>
#include <sys/time.h>

#include "getoptions.h"

#if CILKSAN
#include "cilksan.h"
#endif

unsigned long long todval (struct timeval *tp) {
    return tp->tv_sec * 1000 * 1000 + tp->tv_usec;
}

#define BLOCK_EDGE 16
#define BLOCK_SIZE (BLOCK_EDGE*BLOCK_EDGE)

typedef double DTYPE;

typedef DTYPE block[BLOCK_SIZE];
typedef block *pblock;

// apparently register storage specifier is deprecated
#define register

/*
double min;
double max;
int count;
double sum;
*/

/* compute R = R+AB, where R,A,B are BLOCK_EDGE x BLOCK_EDGE matricies 
 */
long long mult_add_block(block *A, block *B, block *R) {

  int i, j;
  long long flops = 0LL;

  for (j = 0; j < 16; j += 2) {	/* 2 columns at a time */
    DTYPE *bp = &((DTYPE *) B)[j];
    for (i = 0; i < 16; i += 2) {		/* 2 rows at a time */
      DTYPE *ap = &((DTYPE *) A)[i * 16];
      DTYPE *rp = &((DTYPE *) R)[j + i * 16];
      register DTYPE s0_0, s0_1;
      register DTYPE s1_0, s1_1;
      s0_0 = rp[0];
      s0_1 = rp[1];
      s1_0 = rp[16];
      s1_1 = rp[17];
      s0_0 += ap[0] * bp[0];
      s0_1 += ap[0] * bp[1];
      s1_0 += ap[16] * bp[0];
      s1_1 += ap[16] * bp[1];
      s0_0 += ap[1] * bp[16];
      s0_1 += ap[1] * bp[17];
      s1_0 += ap[17] * bp[16];
      s1_1 += ap[17] * bp[17];
      s0_0 += ap[2] * bp[32];
      s0_1 += ap[2] * bp[33];
      s1_0 += ap[18] * bp[32];
      s1_1 += ap[18] * bp[33];
      s0_0 += ap[3] * bp[48];
      s0_1 += ap[3] * bp[49];
      s1_0 += ap[19] * bp[48];
      s1_1 += ap[19] * bp[49];
      s0_0 += ap[4] * bp[64];
      s0_1 += ap[4] * bp[65];
      s1_0 += ap[20] * bp[64];
      s1_1 += ap[20] * bp[65];
      s0_0 += ap[5] * bp[80];
      s0_1 += ap[5] * bp[81];
      s1_0 += ap[21] * bp[80];
      s1_1 += ap[21] * bp[81];
      s0_0 += ap[6] * bp[96];
      s0_1 += ap[6] * bp[97];
      s1_0 += ap[22] * bp[96];
      s1_1 += ap[22] * bp[97];
      s0_0 += ap[7] * bp[112];
      s0_1 += ap[7] * bp[113];
      s1_0 += ap[23] * bp[112];
      s1_1 += ap[23] * bp[113];
      s0_0 += ap[8] * bp[128];
      s0_1 += ap[8] * bp[129];
      s1_0 += ap[24] * bp[128];
      s1_1 += ap[24] * bp[129];
      s0_0 += ap[9] * bp[144];
      s0_1 += ap[9] * bp[145];
      s1_0 += ap[25] * bp[144];
      s1_1 += ap[25] * bp[145];
      s0_0 += ap[10] * bp[160];
      s0_1 += ap[10] * bp[161];
      s1_0 += ap[26] * bp[160];
      s1_1 += ap[26] * bp[161];
      s0_0 += ap[11] * bp[176];
      s0_1 += ap[11] * bp[177];
      s1_0 += ap[27] * bp[176];
      s1_1 += ap[27] * bp[177];
      s0_0 += ap[12] * bp[192];
      s0_1 += ap[12] * bp[193];
      s1_0 += ap[28] * bp[192];
      s1_1 += ap[28] * bp[193];
      s0_0 += ap[13] * bp[208];
      s0_1 += ap[13] * bp[209];
      s1_0 += ap[29] * bp[208];
      s1_1 += ap[29] * bp[209];
      s0_0 += ap[14] * bp[224];
      s0_1 += ap[14] * bp[225];
      s1_0 += ap[30] * bp[224];
      s1_1 += ap[30] * bp[225];
      s0_0 += ap[15] * bp[240];
      s0_1 += ap[15] * bp[241];
      s1_0 += ap[31] * bp[240];
      s1_1 += ap[31] * bp[241];
      rp[0] = s0_0;
      rp[1] = s0_1;
      rp[16] = s1_0;
      rp[17] = s1_1;
      flops += 128;
    }
  }

  return flops;
}


/* compute R = AB, where R,A,B are BLOCK_EDGE x BLOCK_EDGE matricies 
 */
long long multiply_block(block *A, block *B, block *R) {

  int i, j;
  long long flops = 0LL;

  for (j = 0; j < 16; j += 2) {	/* 2 columns at a time */
    DTYPE *bp = &((DTYPE *) B)[j];
    for (i = 0; i < 16; i += 2) {		/* 2 rows at a time */
      DTYPE *ap = &((DTYPE *) A)[i * 16];
      DTYPE *rp = &((DTYPE *) R)[j + i * 16];
      register DTYPE s0_0, s0_1;
      register DTYPE s1_0, s1_1;
      s0_0 = ap[0] * bp[0];
      s0_1 = ap[0] * bp[1];
      s1_0 = ap[16] * bp[0];
      s1_1 = ap[16] * bp[1];
      s0_0 += ap[1] * bp[16];
      s0_1 += ap[1] * bp[17];
      s1_0 += ap[17] * bp[16];
      s1_1 += ap[17] * bp[17];
      s0_0 += ap[2] * bp[32];
      s0_1 += ap[2] * bp[33];
      s1_0 += ap[18] * bp[32];
      s1_1 += ap[18] * bp[33];
      s0_0 += ap[3] * bp[48];
      s0_1 += ap[3] * bp[49];
      s1_0 += ap[19] * bp[48];
      s1_1 += ap[19] * bp[49];
      s0_0 += ap[4] * bp[64];
      s0_1 += ap[4] * bp[65];
      s1_0 += ap[20] * bp[64];
      s1_1 += ap[20] * bp[65];
      s0_0 += ap[5] * bp[80];
      s0_1 += ap[5] * bp[81];
      s1_0 += ap[21] * bp[80];
      s1_1 += ap[21] * bp[81];
      s0_0 += ap[6] * bp[96];
      s0_1 += ap[6] * bp[97];
      s1_0 += ap[22] * bp[96];
      s1_1 += ap[22] * bp[97];
      s0_0 += ap[7] * bp[112];
      s0_1 += ap[7] * bp[113];
      s1_0 += ap[23] * bp[112];
      s1_1 += ap[23] * bp[113];
      s0_0 += ap[8] * bp[128];
      s0_1 += ap[8] * bp[129];
      s1_0 += ap[24] * bp[128];
      s1_1 += ap[24] * bp[129];
      s0_0 += ap[9] * bp[144];
      s0_1 += ap[9] * bp[145];
      s1_0 += ap[25] * bp[144];
      s1_1 += ap[25] * bp[145];
      s0_0 += ap[10] * bp[160];
      s0_1 += ap[10] * bp[161];
      s1_0 += ap[26] * bp[160];
      s1_1 += ap[26] * bp[161];
      s0_0 += ap[11] * bp[176];
      s0_1 += ap[11] * bp[177];
      s1_0 += ap[27] * bp[176];
      s1_1 += ap[27] * bp[177];
      s0_0 += ap[12] * bp[192];
      s0_1 += ap[12] * bp[193];
      s1_0 += ap[28] * bp[192];
      s1_1 += ap[28] * bp[193];
      s0_0 += ap[13] * bp[208];
      s0_1 += ap[13] * bp[209];
      s1_0 += ap[29] * bp[208];
      s1_1 += ap[29] * bp[209];
      s0_0 += ap[14] * bp[224];
      s0_1 += ap[14] * bp[225];
      s1_0 += ap[30] * bp[224];
      s1_1 += ap[30] * bp[225];
      s0_0 += ap[15] * bp[240];
      s0_1 += ap[15] * bp[241];
      s1_0 += ap[31] * bp[240];
      s1_1 += ap[31] * bp[241];
      rp[0] = s0_0;
      rp[1] = s0_1;
      rp[16] = s1_0;
      rp[17] = s1_1;
      flops += 124;
    }
  }

  return flops;
}


/* Checks if each A[i,j] of a martix A of size nb x nb blocks has value v 
 */
int check_block (block *R, DTYPE v) {

  int i;
  int error = 0;

  // fprintf(stderr, "R: %lx.\n", R);
  for (i = 0; i < BLOCK_SIZE; i++) 
    if (((DTYPE *) R)[i] != v) {
      if( i == 0 ) 
        fprintf(stderr, "R[%d]: %lf != %lf.\n", i, ((DTYPE *)R)[i], v);
      //return 1;
      error++;
    }

  return error;
}

int compare_block (block *R, block *B) {

  int i;
  int error = 0;

  // fprintf(stderr, "R: %lx.\n", R);
  for (i = 0; i < BLOCK_SIZE; i++) 
    if (((DTYPE *) R)[i] != ((DTYPE *) B)[i] ) {
      if( i == 0 ) 
        fprintf(stderr, "(R[%d]) %lf != %lf (B[%d]).\n", 
            i, ((DTYPE *)R)[i], ((DTYPE *)B)[i], i);
      //return 1;
      error++;
    }

  return error;
}

int check_matrix(block *R, long x, long y, long o, DTYPE v) {

  int a = 0, b = 0;

  if ((x*y) == 1) {
    int tmp = check_block(R, v);
    return tmp;
  } 

  if (x>y) {
    a = cilk_spawn check_matrix(R,x/2,y,o,v);
    b = check_matrix(R+(x/2)*o,(x+1)/2,y,o,v);
    cilk_sync;

  } else {
    a = cilk_spawn check_matrix(R,x,y/2,o,v);
    b = check_matrix(R+(y/2),x,(y+1)/2,o,v);
    cilk_sync;
  }

  int _tmp3 = a + b;

  return (_tmp3);
}

long long add_block(block *T, block *R) {

  long i;

  for (i = 0; i < BLOCK_SIZE; i += 4) {
    ((DTYPE *) R)[i] += ((DTYPE *) T)[i];
    ((DTYPE *) R)[i + 1] += ((DTYPE *) T)[i + 1];
    ((DTYPE *) R)[i + 2] += ((DTYPE *) T)[i + 2];
    ((DTYPE *) R)[i + 3] += ((DTYPE *) T)[i + 3];
  }

  return BLOCK_SIZE;
}

/* 
 * Add matrix T into matrix R, where T and R are bl blocks in size 
 */
static long long add_matrix(block *T, long ot, block *R, long orr, long x, long y) {

  long long flops = 0LL;

  if ((x+y)==2) {
    flops = add_block(T,R);
    return flops;
  } 

  long long _tmp1 = 0LL, _tmp2 = 0LL;

  if (x > y) {
    _tmp1 = cilk_spawn add_matrix(T,ot,R,orr,x/2,y);
    _tmp2 = add_matrix(T+(x/2)*ot,ot,R+(x/2)*orr,orr,(x+1)/2,y);

  } else {
    _tmp1 = cilk_spawn add_matrix(T,ot,R,orr,x,y/2);
    _tmp2 = add_matrix(T+(y/2),ot,R+(y/2),orr,x,(y+1)/2);
  }
  cilk_sync;

  flops = _tmp1 + _tmp2;
  return flops;
}

void init_block(block* R, DTYPE v) {

  int i;

  for (i = 0; i < BLOCK_SIZE; i++)
    ((DTYPE *) R)[i] = v;
}

void init_matrix(block *R, long x, long y, long o, DTYPE v) {

  if ((x+y)==2) {
    init_block(R,v);
    return;
  } 

  if (x>y) {
    cilk_spawn init_matrix(R,x/2,y,o,v);
    init_matrix(R+(x/2)*o,(x+1)/2,y,o,v);

  } else {
    cilk_spawn init_matrix(R,x,y/2,o,v);
    init_matrix(R+(y/2),x,(y+1)/2,o,v);
  }
  cilk_sync;

  return;
}

static long long multiply_matrix(block *A, long oa, block *B, long ob, long x, 
                          long y, long z, block *R, long orr, int add) {

  if ((x+y+z) == 3) {
    long long _tmp = 0LL;
    if (add)
      _tmp = mult_add_block(A, B, R);
    else
      _tmp = multiply_block(A, B, R);

    return _tmp;
  } 

  long long flops = 0LL;
  long long _tmp1=0LL, _tmp2=0LL;

  if( (x>=y) && (x>=z) ) {
    _tmp1 = cilk_spawn multiply_matrix(A, oa, B, ob, x/2, y, z, R, orr, add);
    _tmp2 = multiply_matrix(A+(x/2)*oa, oa, B, ob, 
                            (x+1)/2, y, z, R+(x/2)*orr, orr, add);
  } else {

    if( (y>x) && (y>z) ) {
      _tmp1 = multiply_matrix(A+(y/2), oa,
                              B+(y/2)*ob, ob, x, (y+1)/2, z, R, orr, add);
      _tmp2 = multiply_matrix(A,oa,B,ob,x,y/2,z,R,orr,1);

    } else {
      _tmp1 = cilk_spawn multiply_matrix(A, oa, B, ob, x, y, z/2, R, orr, add);
      _tmp2 = multiply_matrix(A, oa, B+(z/2), ob, x, y, (z+1)/2, 
                              (R+(z/2)), orr, add);
    }
  }
  cilk_sync;

  flops = _tmp1 + _tmp2;
  return flops;
} 

int run(long x, long y, long z, int check) {

  block *A, *B, *R;
  long long flops;

  A = (block *) malloc(x*y * sizeof(block));
  B = (block *) malloc(y*z * sizeof(block));
  R = (block *) malloc(x*z * sizeof(block));

  cilk_spawn init_matrix(A, x, y, y, 1.0);
  cilk_spawn init_matrix(B, y, z, z, 1.0); 
  init_matrix(R, x, z, z, 0.0);
  cilk_sync;

  struct timeval t1, t2;
  gettimeofday(&t1,0);

  flops = multiply_matrix(A,y,B,z,x,y,z,R,z,0);

  gettimeofday(&t2,0);
  unsigned long long runtime_ms = (todval(&t2)-todval(&t1))/1000;
  printf("%f\n", runtime_ms/1000.0);

  if(check) {
    printf("Now check result ... \n");
    check = check_matrix(R, x, z, z, y*16);
  }

  if (check) {
    printf("WRONG RESULT!\n");
    printf("check: %d\n", check);

  } else {	
    fprintf(stderr, "\nCilk Example: rectmul\n");
    fprintf(stderr, "Options: x = %ld\n", BLOCK_EDGE*x);
    fprintf(stderr, "         y = %ld\n", BLOCK_EDGE*y);
    fprintf(stderr, "         z = %ld\n\n", BLOCK_EDGE*z);
    //fprintf(stderr, "flops      = %lld\n", flops);
    // printf("Mflops     = %4f \n", f);

  }

  free(A);
  free(B);
  free(R);

  return 0;
}

int usage(void) {
  fprintf(stderr, "Program to multiply two rectangualar matrizes "
      "A(n,m) * B(m,n), where \n");
  fprintf(stderr, "(n < m) and (n mod 16 = 0) and (m mod n = 0). "
      "(Otherwise fill with 0s \n to fit the shape.)\n");
  fprintf(stderr, "Usage: rectmul [<cilk-options>] [<options>]\n\n");
  fprintf(stderr, "Options:\n");
  fprintf(stderr, "  -c   : Check result.\n");
  fprintf(stderr, "-benchmark short / medium / long.\n");
  fprintf(stderr, "Default benchmark size: medium (512 * 512).\n\n");

  return 1;
}

const char *specifiers[] = { "-x", "-y", "-z", "-c", "-benchmark", "-h", 0};
int opt_types[] = {INTARG, INTARG, INTARG, BOOLARG, BENCHMARK, BOOLARG, 0 };


int main(int argc, char *argv[]) {

  int x, y, z, benchmark, help, t, check;

  /* standard benchmark options */
  x = 128;
  y = 128;
  z = 128;
  check = 0;

  get_options(argc, argv, specifiers, opt_types, 
              &x, &y, &z, &check, &benchmark, &help);

  if (help) return usage();

  if (benchmark) {
    switch (benchmark) {
      case 1:      /* short benchmark options -- a little work*/
        x = 512;
        y = 512;
        z = 512;
        break;
      case 2:      /* standard benchmark options*/
        x = 2048;
        y = 2048;
        z = 2048;
        break;
      case 3:      /* long benchmark options -- a lot of work*/
        x = 4096;
        y = 4096;
        z = 4096;
        break;
    }
  }

  x = x/BLOCK_EDGE;
  y = y/BLOCK_EDGE;
  z = z/BLOCK_EDGE;

  if (x<1) x=1;
  if (y<1) y=1;
  if (z<1) z=1;

  t = run(x,y,z,check);

  return t; 
}


