/*
 * Heat diffusion (Jacobi-type iteration)
 *
 * Usage: see function usage();
 * 
 * Volker Strumpen, Boston                                 August 1996
 *
 * Copyright (c) 1996 Massachusetts Institute of Technology
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
 */

#include <cilk/cilk.h>

#include <stdlib.h>
#include <stdio.h>
#include <fcntl.h>
#include <math.h>
#include <errno.h>
#include <sys/time.h>

#include "getoptions.h"

extern int errno;

#if CILKSAN
#include "cilksan.h"
#endif

/* Define ERROR_SUMMARY if you want to check your numerical results */
#undef ERROR_SUMMARY

unsigned long long todval (struct timeval *tp) {
    return tp->tv_sec * 1000 * 1000 + tp->tv_usec;
}

#define f(x,y)     (sin(x)*sin(y))
#define randa(x,t) (0.0)
#define randb(x,t) (exp(-2*(t))*sin(x))
#define randc(y,t) (0.0)
#define randd(y,t) (exp(-2*(t))*sin(y))
#define solu(x,y,t) (exp(-2*(t))*sin(x)*sin(y))

/* apparently register storage specifier is deprecated */
#define register

int nx, ny, nt;
double xu, xo, yu, yo, tu, to;
double dx, dy, dt;

double dtdxsq, dtdysq;
double t;

int leafmaxcol;


/*****************   Allocation of grid partition  ********************/

void allcgrid(double **neww, double **old, int lb, int ub) {

  int j;
  double **rne, **rol;

  for (j=lb, rol=old+lb, rne=neww+lb; j < ub; j++, rol++, rne++) {
    *rol = (double *) malloc(ny * sizeof(double));
    *rne = (double *) malloc(ny * sizeof(double));
  }
}

/*****************   Initialization of grid partition  ********************/

void initgrid(double **old, int lb, int ub) {

  int a, b, llb, lub;

  llb = (lb == 0) ? 1 : lb;
  lub = (ub == nx) ? nx - 1 : ub;

  for (a=llb, b=0; a < lub; a++)		/* boundary nodes */
    old[a][b] = randa(xu + a * dx, 0);

  for (a=llb, b=ny-1; a < lub; a++)
    old[a][b] = randb(xu + a * dx, 0);

  if (lb == 0) {
    for (a=0, b=0; b < ny; b++)
      old[a][b] = randc(yu + b * dy, 0);
  }
  if (ub == nx) {
    for (a=nx-1, b=0; b < ny; b++)
      old[a][b] = randd(yu + b * dy, 0);
  }
  for (a=llb; a < lub; a++) {	/* inner nodes */
    for (b=1; b < ny-1; b++) {
      old[a][b] = f(xu + a * dx, yu + b * dy);
    }
  }
}


/***************** Five-Point-Stencil Computation ********************/

void compstripe(register double **neww, register double **old, int lb, int ub) {

  register int a, b, llb, lub;

  llb = (lb == 0) ? 1 : lb;
  lub = (ub == nx) ? nx - 1 : ub;

  for (a=llb; a < lub; a++) {
    for (b=1; b < ny-1; b++) {
      neww[a][b] =   dtdxsq * (old[a+1][b] - 2 * old[a][b] + old[a-1][b])
        + dtdysq * (old[a][b+1] - 2 * old[a][b] + old[a][b-1])
        + old[a][b];
    }
  }

  for (a=llb, b=ny-1; a < lub; a++)
    neww[a][b] = randb(xu + a * dx, t);

  for (a=llb, b=0; a < lub; a++)
    neww[a][b] = randa(xu + a * dx, t);

  if (lb == 0) {
    for (a=0, b=0; b < ny; b++)
      neww[a][b] = randc(yu + b * dy, t);
  }
  if (ub == nx) {
    for (a=nx-1, b=0; b < ny; b++)
      neww[a][b] = randd(yu + b * dy, t);
  }
}


/***************** Decomposition of 2D grids in stripes ********************/

#define ALLC       0
#define INIT       1
#define COMP       2

int divide(int lb, int ub, double **neww, 
           double **old, int mode, int timestep){

  if (ub - lb > leafmaxcol) {
    int _tmp;
    int l = 0, r;
    l = cilk_spawn divide(lb, (ub + lb) / 2, neww, old, mode, timestep);
    r = divide((ub + lb) / 2, ub, neww, old, mode, timestep);
    cilk_sync;

    _tmp = l + r;
    return _tmp;

  } else {
    switch (mode) {
      case COMP:
        if (timestep % 2)
          compstripe(neww, old, lb, ub);
        else
          compstripe(old, neww, lb, ub);
        return 1;

      case ALLC:
        allcgrid(neww, old, lb, ub);
        return 1;

      case INIT:
        initgrid(old, lb, ub);
        return 1;
    }

    return 0;
  }
}

int heat(void) {

  double **old, **neww;
  int  c, l;

#ifdef ERROR_SUMMARY  
    double tmp, **mat;
  double mae = 0.0;
  double mre = 0.0;
  double me = 0.0;
  int a, b;
#endif

  /* Memory Allocation */
  old = (double **) malloc(nx * sizeof(double *));
  neww = (double **) malloc(nx * sizeof(double *));

  l = divide(0, nx, neww, old, ALLC, 0);
  /* 
   * Sequential allocation might be faster than parallel!
   * Substitute the following call for the preceding divide:
   *
   * allcgrid(new, old, 0, nx);
   */

  /* Initialization */
  // l = divide(0, nx, new, old, INIT, 0);

  /* Jacobi Iteration (divide x-dimension of 2D grid into stripes) */

  l = divide(0, nx, neww, old, INIT, 0);

  for (c = 1; c <= nt; c++) {
    t = tu + c * dt;
    l = divide(0, nx, neww, old, COMP, c);
  }

#ifdef ERROR_SUMMARY  
  /* Error summary computation: Not parallelized! */
  mat = (c % 2) ? old : neww;
  printf("\n Error summary of last time frame comparing with exact solution:");
  for (a=0; a<nx; a++)
    for (b=0; b<ny; b++) {
      tmp = fabs(mat[a][b] - solu(xu + a * dx, yu + b * dy, to));
      if (tmp > mae)
        mae = tmp;
    }

  printf("\n   Local maximal absolute error  %10e ", mae);

  for (a=0; a<nx; a++)
    for (b=0; b<ny; b++) {
      tmp = fabs(mat[a][b] - solu(xu + a * dx, yu + b * dy, to));
      if (mat[a][b] != 0.0)
        tmp = tmp / mat[a][b];
      if (tmp > mre)
        mre = tmp;
    }

  printf("\n   Local maximal relative error  %10e %s ", mre * 100, "%");

  me = 0.0;
  for (a=0; a<nx; a++)
    for (b=0; b<ny; b++) {
      me += fabs(mat[a][b] - solu(xu + a * dx, yu + b * dy, to));
    }

  me = me / (nx * ny);
  printf("\n   Global Mean absolute error    %10e\n\n", me);
#endif

  return 0;
}

int usage(void) {

  fprintf(stderr, "\nUsage: heat [<cilk-options>] [<options>}\n\n");
  fprintf(stderr, "This program uses a Jacobi-type iteration to "
      "solve a finite-difference\n");
  fprintf(stderr, "approximation of parabolic partial differential "
      "equations that models\n");
  fprintf(stderr, "for example the heat diffusion problem.\n\n");
  fprintf(stderr, "Optional parameter: \n");
  fprintf(stderr, "   -g #     "
      "granularity (columns per partition)  default: 10\n");   
  fprintf(stderr, "   -nx #    "
      "total number of columns              default: 4096\n");
  fprintf(stderr, "   -ny #    "
      "total number of rows                 default: 512\n");
  fprintf(stderr, "   -nt #    "
      "total time steps                     default: 100\n");
  fprintf(stderr, "   -f filename    parameter file for nx, ny, ...\n");
  fprintf(stderr, "   -benchmark short/medium/long\n");
  /*
     fprintf(stderr, "   -xu #    lower x coordinate default: 0.0\n");
     fprintf(stderr, "   -xo #    upper x coordinate default: 1.570796326794896558\n");
     fprintf(stderr, "   -yu #    lower y coordinate default: 0.0\n");
     fprintf(stderr, "   -yo #    upper y coordinate default: 1.570796326794896558\n");
     fprintf(stderr, "   -tu #    start time         default: 0.0\n");
     fprintf(stderr, "   -to #    end time           default: 0.0000001\n");
     */
  return 1;
}

void read_heatparams(char *filefn) {

  FILE *f;
  int l;

  if ((f = fopen(filefn, "r")) == NULL) {
    printf("\n Can't open %s\n", filefn);
    exit(0);
  }
  l = fscanf(f, "%d %d %d %lf %lf %lf %lf %lf %lf",
      &nx, &ny, &nt, &xu, &xo, &yu, &yo, &tu, &to);
  if (l != 9)
    printf("\n Warning: fscanf errno %d", errno);
  fclose(f);

}

const char *specifiers[] = { "-g", "-nx", "-ny", "-nt", "-xu", "-xo", "-yu", "-yo", "-tu", "-to", "-f", "-benchmark", "-h", 0};
int opt_types[] = {INTARG, INTARG, INTARG, INTARG, DOUBLEARG, DOUBLEARG, DOUBLEARG, DOUBLEARG, DOUBLEARG, DOUBLEARG, STRINGARG, BENCHMARK, BOOLARG, 0 };

int main(int argc, char *argv[]) { 

  int ret, benchmark, help;
  char filename[100];

  nx = 512;
  ny = 512;
  nt = 100;
  xu = 0.0;
  xo = 1.570796326794896558;
  yu = 0.0;
  yo = 1.570796326794896558;
  tu = 0.0;
  to = 0.0000001;
  leafmaxcol = 10;
  filename[0]=0;

  // use the math related function before parallel region;
  // there is some benigh race in initalization code for the math functions.
  fprintf(stderr, "Testing exp: %f\n", randb(nx, nt)); 

  get_options(argc, argv, specifiers, opt_types, &leafmaxcol, 
              &nx, &ny, &nt, &xu, &xo, &yu, &yo, &tu, &to, 
              filename, &benchmark, &help);

  if (help) return usage();

  if (benchmark) {
    switch (benchmark) {
      case 1:      /* short benchmark options -- a little work*/
        nx = 512;
        ny = 512;
        nt = 1;
        xu = 0.0;
        xo = 1.570796326794896558;
        yu = 0.0;
        yo = 1.570796326794896558;
        tu = 0.0;
        to = 0.0000001;
        leafmaxcol = 10;
        filename[0]=0;
        break;
      case 2:      /* standard benchmark options*/
        nx = 4096;
        ny = 512;
        nt = 40;
        xu = 0.0;
        xo = 1.570796326794896558;
        yu = 0.0;
        yo = 1.570796326794896558;
        tu = 0.0;
        to = 0.0000001;
        leafmaxcol = 10;
        filename[0]=0;
        break;
      case 3:      /* long benchmark options -- a lot of work*/
        nx = 4096;
        ny = 1024;
        nt = 100;
        xu = 0.0;
        xo = 1.570796326794896558;
        yu = 0.0;
        yo = 1.570796326794896558;
        tu = 0.0;
        to = 0.0000001;
        leafmaxcol = 1;
        filename[0]=0;
        break;
    }
  }

  if (filename[0]) read_heatparams(filename);

  dx = (xo - xu) / (nx - 1);
  dy = (yo - yu) / (ny - 1);
  dt = (to - tu) / nt;	/* nt effective time steps! */

  dtdxsq = dt / (dx * dx);
  dtdysq = dt / (dy * dy);

  struct timeval t1, t2;
  gettimeofday(&t1,0);

  ret = heat();

  gettimeofday(&t2,0);
  unsigned long long runtime_ms = (todval(&t2)-todval(&t1))/1000;
  printf("%f\n", runtime_ms/1000.0);

  fprintf(stderr, "\nCilk Example: heat\n");
  fprintf(stderr, "\n   dx = %f", dx);
  fprintf(stderr, "\n   dy = %f", dy);
  fprintf(stderr, "\n   dt = %f", dt);

  fprintf(stderr, "\n\n Stability Value for explicit method must be > 0:  %f\n\n",
      0.5 - (dt / (dx * dx) + dt / (dy * dy)));
  fprintf(stderr, "Options: granularity = %d\n", leafmaxcol);
  fprintf(stderr, "         nx          = %d\n", nx);
  fprintf(stderr, "         ny          = %d\n", ny);
  fprintf(stderr, "         nt          = %d\n", nt);

  return 0;
}

