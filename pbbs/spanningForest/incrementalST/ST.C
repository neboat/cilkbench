// This code is part of the Problem Based Benchmark Suite (PBBS)
// Copyright (c) 2011 Guy Blelloch and the PBBS team
//
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the
// "Software"), to deal in the Software without restriction, including
// without limitation the rights (to use, copy, modify, merge, publish,
// distribute, sublicense, and/or sell copies of the Software, and to
// permit persons to whom the Software is furnished to do so, subject to
// the following conditions:
//
// The above copyright notice and this permission notice shall be included
// in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
// OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
// LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
// OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
// WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#include <iostream>
#include <limits.h>
#include "sequence.h"
#include "parallel.h"
#include "graph.h"
#include "ST.h"
#include "speculative_for.h"
#include "unionFind.h"

template <class intT>
struct unionFindStep {
  intT u;  intT v;  
  edge<intT> *E;  reservation *R;  unionFind UF;
  unionFindStep(edge<intT>* _E, unionFind _UF, reservation* _R)
    : E(_E), R(_R), UF(_UF) {} 

  bool reserve(intT i) {
    u = UF.find(E[i].u);
    v = UF.find(E[i].v);
    if (u > v) {intT tmp = u; u = v; v = tmp;}
    if (u != v) {
      R[v].reserve(i);
      return 1;
    } else return 0;
  }

  bool commit(intT i) {
    if (R[v].check(i)) { UF.link(v, u); return 1; }
    else return 0;
  }
};

struct notMax { bool operator() (intT i) {return i < INT_T_MAX;}};

pair<intT*,intT> st(edgeArray<intT> G){
  intT m = G.nonZeros;
  intT n = G.numRows;
  unionFind UF(n);
  reservation *R = newA(reservation,n);
  parallel_for (size_t i = 0; i < n; i++) {
    new ((void*) (R+i)) reservation;}
  //reservation *R = new reservation[n];
  unionFindStep<intT> UFStep(G.E, UF, R); 
  speculative_for(UFStep, 0, m, 50);
  _seq<intT> stIdx = sequence::filter((intT*) R, n, notMax());
  cout << "Tree size = " << stIdx.n << endl;
  UF.del(); free(R);
  return pair<intT*,intT>(stIdx.A, stIdx.n);
}
