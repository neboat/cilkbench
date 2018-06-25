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
#include "sequence.h"
#include "graph.h"
#include "parallel.h"
using namespace std;

// **************************************************************
//    MAXIMAL INDEPENDENT SET
// **************************************************************

// Flags[v] = 0 means undecided, Flags[v] = 1 means vertex is in MIS,
// and Flags[v] = 2 means vertex is not in MIS

void maxIndSetNonDeterministic(intT n, vertex<intT>* G, char volatile* Flags){
  bool* V = newA(bool,n);
  parallel_for(intT i=0;i<n;i++) V[i]=false;
  
  parallel_for(intT i=0;i<n;i++){
    intT v = i;
    while(1){
      //drop out if already in or out of MIS
      if(Flags[v]) break;
      //try to lock self and neighbors
      if(utils::CAS(&V[v], false, true)) {
	intT k = 0;
	for(intT j=0; j<G[v].degree; j++){
	  intT ngh = G[v].Neighbors[j];
	  //if ngh is not in MIS or we successfully 
	  //acquire lock, increment k
	  if(Flags[ngh] == 2 || utils::CAS(&V[ngh], false, true)) k++;
	  else break;
	}
	if(k == G[v].degree){ 
	  //win on self and neighbors so fill flags
	  Flags[v] = 1;
	  for(intT j=0;j<G[v].degree;j++){
	    intT ngh = G[v].Neighbors[j]; 
	    if(Flags[ngh] != 2) Flags[ngh] = 2;
	  }
	} else { 
	  //lose so reset V values up to point
	  //where it lost
	  V[v] = false;
	  for(intT j = 0; j < k; j++){
	    intT ngh = G[v].Neighbors[j];
	    if(Flags[ngh] != 2) V[ngh] = false;
	  }
	}
      }
    }
  }
  free(V);
}

char volatile* maximalIndependentSet(graph<intT> G) {
  intT n = G.n;
  char volatile* Flags = newA(char,n);
  parallel_for (intT i=0; i < n; i++) Flags[i] = 0;
  maxIndSetNonDeterministic(n, G.V, Flags);
  return Flags;
}
