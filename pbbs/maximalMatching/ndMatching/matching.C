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
#include "parallel.h"
#include "sequence.h"
#include "graph.h"
#include "utils.h"
using namespace std;

void maxMatchNonDeterministic(edge<intT>* E, bool* matched, intT* vertices, intT m) {
  parallel_for (intT i = 0; i < m; i++) {
    intT v = E[i].v;
    intT u = E[i].u;
    intT j =0;
    if (u != v) {
      while (1) {
	if (matched[v] || matched[u]) break;
	if (utils::CAS(&vertices[v], (intT)-1, (intT)-2)) {
	  if (utils::CAS(&vertices[u], (intT)-1, (intT)-2)) {
	    matched[v] = matched[u] = 1;
	    vertices[u] = i;
	    break;
	  } else vertices[v] = -1;
	}
      }
    }
  }
}

void initVertices(bool* matched, intT* vertices, intT n){
  parallel_for(intT i=0;i<n;i++) {
    vertices[i] = -1;
    matched[i] = 0;
  }
}

struct nonNegative { bool operator() (intT i) {return i >= 0;}};

// Finds a maximal matching of the graph
// Returns cross pointers between vertices, or -1 if unmatched
pair<intT*,intT> maximalMatching(edgeArray<intT> EA) {
  intT m = EA.nonZeros;
  intT n = EA.numRows;

  intT* R = newA(intT,n);
  bool* matched = newA(bool,n);
  initVertices(matched, R, n);

  maxMatchNonDeterministic(EA.E, matched, R, m);

  intT* Out = newA(intT,n);
  intT nMatches = sequence::filter(R, Out, n, nonNegative());
  free(matched); free(R);

  cout << "number of matches = " << nMatches << endl;
  return pair<intT*,intT>(Out,nMatches);
}  

