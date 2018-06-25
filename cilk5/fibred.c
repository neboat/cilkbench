/*
 * Copyright (c) 1994-2003 Massachusetts Institute of Technology
 * Copyright (c) 2003 Bradley C. Kuszmaul
 * Copyright (c) 2013 I-Ting Angelina Lee and Tao B. Schardl 
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
#include <cilk/reducer_opadd.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/time.h>

unsigned long long todval (struct timeval *tp) {
    return tp->tv_sec * 1000 * 1000 + tp->tv_usec;
}

void fib(int n, cilk::reducer<cilk::op_add<int> > &total) {
    if (n < 2) { 
//      __c11_atomic_fetch_add(&total, n, __ATOMIC_RELAXED);
       *total += n;
    } else {
       cilk_spawn fib(n - 1, total);
       fib(n - 2, total);
    }
}

int main(int argc, char *argv[]) {

    int n, result;

    if (argc != 2) {
        fprintf(stderr, "Usage: fib [<cilk options>] <n>\n");
        exit(1); 
    }

    n = atoi(argv[1]);
    struct timeval t1, t2;
    gettimeofday(&t1,0);

    cilk::reducer<cilk::op_add<int> > total;
    fib(n, total);
    result = total.get_value();
    gettimeofday(&t2,0);
    unsigned long long runtime_ms = (todval(&t2)-todval(&t1))/1000;
    printf("%f\n", runtime_ms/1000.0);

    fprintf(stderr, "Result: %d\n", result);
    return 0;
}
