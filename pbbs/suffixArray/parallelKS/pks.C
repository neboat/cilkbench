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

// This is a parallel version of the algorithm described in
//  Juha Karkkainen and Peter Sanders.
//  Simple linear work suffix array construction.
//  Proc. ICALP 2003.  pp 943
// It includes code for finding the LCP
//   Written by Guy Blelloch and Julian Shun

#include <iostream>
#include "sequence.h"
#include "blockRadixSort.h"
#include "parallel.h"
#include "gettime.h"
#include "merge.h"
#include "sampleSort.h"
#include "utils.h"
#include "rangeMin.h"
using namespace std;

typedef pair<uintT,uintT> uintPair;
typedef unsigned __int128 longInt;

// Radix sort a pair of integers based on first element
void radixSortPair(uintPair *A, long n, long m) {
  intSort::iSort(A, n, m, utils::firstF<uintT,uintT>());
}

inline bool leq(uintT a1, uintT a2,   uintT b1, uintT b2) {
  return(a1 < b1 || (a1 == b1 && a2 <= b2)); 
}                                                  

inline bool leq(uintT a1, uintT a2, uintT a3, uintT b1, uintT b2, uintT b3) {
  return(a1 < b1 || (a1 == b1 && leq(a2, a3, b2, b3))); 
}


struct compS {
  uintT* _s;
  uintT* _s12;
  compS(uintT* s, uintT* s12) : _s(s), _s12(s12) {}
  bool operator () (long i, long j) {
    if (i%3 == 1 || j%3 == 1) 
      return leq(_s[i],_s12[i+1], _s[j],_s12[j+1]);
    else
      return leq(_s[i],_s[i+1],_s12[i+2], _s[j],_s[j+1],_s12[j+2]);
  }
};

struct mod3is1 { bool operator() (long i) {return i%3 == 1;}};

inline long computeLCP(uintT* LCP12, uintT* rank, myRMQ & RMQ, 
		      long j, long k, uintT* s, long n){

 
  long rank_j=rank[j]-2;
  long rank_k=rank[k]-2;
  if(rank_j > rank_k) {swap(rank_j,rank_k);} //swap for RMQ query

  long l = ((rank_j == rank_k-1) ? LCP12[rank_j] 
	   : LCP12[RMQ.query(rank_j,rank_k-1)]);

  long lll = 3*l;
  if (s[j+lll] == s[k+lll]) {
    if (s[j+lll+1] == s[k+lll+1]) return lll + 2;
    else return lll + 1;
  } 
  return lll;
}

timer radixTime;
timer copyTime;
timer mergeTime;
timer LCPtime;

// This recursive version requires s[n]=s[n+1]=s[n+2] = 0
// K is the maximum value of any element in s
pair<uintT*,uintT*> suffixArrayRec(uintT* s, long n, long K, bool findLCPs) {
  cout << K << endl;
  n = n+1;
  long n0=(n+2)/3, n1=(n+1)/3, n12=n-n0;
  startTime();
  uintT* name12;
  uintT* sorted12;

  size_t bits = utils::log2Up(K);

  if (3*bits <= 8*sizeof(uintT)) {
    // if 3 chars fit into a uintT then just do one radix sort
    uintPair *C = (uintPair *) malloc(n12*sizeof(uintPair));
    parallel_for (long i=0; i < n12; i++) {
      long j = 1+(3*i)/2;
      C[i].first = (((uintT) s[j]) << 2*bits) + (((uintT) s[j+1]) << bits) + s[j+2];
      C[i].second = j;}
    nextTime("copy 1");

    radixTime.start();
    radixSortPair(C, n12, ((long) 1) << 3*bits);
    nextTime("radix 1");
    radixTime.stop();

    // copy sorted results into sorted12
    sorted12 = newA(uintT,n12); 
    name12 = newA(uintT,n12);
    parallel_for (long i=1; i < n12; i++) {
      sorted12[i] = C[i].second;
      name12[i] = (C[i].first != C[i-1].first);
    }
    name12[0] = 1;
    sorted12[0] = C[0].second;
    nextTime("copy and names");
    free(C);

  } else {
    // otherwise do a comparison sort on 128 bit integers
    // with three characters and index packed in
    longInt *C = (longInt *) malloc(n12*sizeof(longInt));
    parallel_for (long i=0; i < n12; i++) {
      long j = 1+(3*i)/2;
      C[i] = (((longInt) s[j]) << 2*bits) + (((size_t) s[j+1]) << bits) + s[j+2];
      C[i] = (C[i] << 32) + j;}
    nextTime("copy 1");

    radixTime.start();
    sampleSort(C, n12, std::less<longInt>());
    nextTime("radix 1");
    radixTime.stop();

    // copy sorted results into sorted12
    sorted12 = newA(uintT,n12); 
    name12 = newA(uintT,n12);
    longInt mask = ((((longInt) 1) << 32)-1);
    parallel_for (long i=1; i < n12; i++) {
      sorted12[i] = C[i] & mask;
      name12[i] = (C[i] >> 32) != (C[i-1] >> 32);
    }
    name12[0] = 1;
    sorted12[0] = C[0] & mask;
    nextTime("copy and names");
    free(C);
  }

  long num_names = sequence::scanI(name12, name12, n12, 
				   utils::addF<uintT>(), (uintT)0);
  nextTime("scan");
  
  pair<uintT*,uintT*> SA12_LCP;
  uintT* SA12;
  uintT* LCP12 = NULL;
  // recurse if names are not yet unique
  if (num_names < n12) {
    uintT* s12  = newA(uintT, n12 + 3);  
    s12[n12] = s12[n12+1] = s12[n12+2] = 0;

    // move mod 1 suffixes to bottom half and and mod 2 suffixes to top
    parallel_for (long i= 0; i < n12; i++) {
      uintT div3 = sorted12[i]/3;
      if (sorted12[i]-3*div3 == 1) s12[div3] = name12[i];
      else s12[div3+n1] = name12[i];
    }
    free(name12);  free(sorted12);
    nextTime("before rec");

    SA12_LCP = suffixArrayRec(s12, n12, num_names+1, findLCPs); 
    SA12 = SA12_LCP.first;
    LCP12 = SA12_LCP.second;
    free(s12);

    // restore proper indices into original array
    parallel_for (long i = 0;  i < n12;  i++) {
      long l = SA12[i]; 
      SA12[i] = (l<n1) ? 3*l+1 : 3*(l-n1)+2;
    }
    nextTime("after rec");
  } else {
    free(name12); // names not needed if we don't recurse
    SA12 = sorted12; // suffix array is sorted array
    if (findLCPs) {
      LCP12 = newA(uintT, n12+3);
      parallel_for(long i=0; i<n12+3; i++) 
	LCP12[i] = 0; //LCP's are all 0 if not recursing
    }
    nextTime("no rec");
  }

  // place ranks for the mod12 elements in full length array
  // mod0 locations of rank will contain garbage
  uintT* rank  = newA(uintT, n + 2);  
  rank[n]=1; rank[n+1] = 0;
  parallel_for (long i = 0;  i < n12;  i++) {rank[SA12[i]] = i+2;}
    nextTime("copy back");
  
  // stably sort the mod 0 suffixes 
  // uses the fact that we already have the tails sorted in SA12
  uintT* s0  = newA(uintT, n0);
  long x = sequence::filter(SA12, s0, n12, mod3is1());
  nextTime("filter");
  uintPair *D = (uintPair *) malloc(n0*sizeof(uintPair));
  D[0].first = s[n-1]; D[0].second = n-1;
  parallel_for (long i=0; i < x; i++) {
    D[i+n0-x].first = s[s0[i]-1]; 
    D[i+n0-x].second = s0[i]-1;}
  nextTime("copy after");
  radixTime.start();
  radixSortPair(D,n0, K);
  nextTime("radix after");
  radixTime.stop();
  uintT* SA0  = s0; // reuse memory since not overlapping
  parallel_for (long i=0; i < n0; i++) SA0[i] = D[i].second;
  nextTime("one more copy");
  free(D);

  compS comp(s,rank);
  uint o = (n%3 == 1) ? 1 : 0;
  uintT *SA = newA(uintT,n); 
  mergeTime.start();
  merge(SA0+o, n0-o, SA12+1-o, n12+o-1, SA, comp);
  nextTime("merge");
  mergeTime.stop();
  free(SA0); free(SA12);
  uintT* LCP = NULL;


  //get LCP from LCP12
  if(findLCPs){
    LCP = newA(uintT, n);  
    LCP[n-1] = LCP[n-2] = 0; 
    LCPtime.start();
    myRMQ RMQ(LCP12, n12+3); //simple rmq
    parallel_for(long i=0;i<n-2;i++){ 
      long j = SA[i];
      long k = SA[i+1];
      uint CLEN = 16;
      long ii;
      for (ii=0; ii < CLEN; ii++) 
	if (s[j+ii] != s[k+ii]) break;
      if (ii != CLEN) LCP[i] = ii;
      else {
      	if (j%3 != 0 && k%3 != 0)  
	  LCP[i] = computeLCP(LCP12, rank, RMQ, j, k, s, n); 
	else if (j%3 != 2 && k%3 != 2)
	  LCP[i] = 1 + computeLCP(LCP12, rank, RMQ, j+1, k+1, s, n);
	else 
	  LCP[i] = 2 + computeLCP(LCP12, rank, RMQ, j+2, k+2, s, n);
	  }
    }
    LCPtime.stop();
    free(LCP12);
  }
  free(rank);
  return make_pair(SA, LCP);
}

pair<uintT*,uintT*> suffixArray(unsigned char* s, long n, bool findLCPs) {
  uintT *ss = newA(uintT, n+3); 
  ss[n] = ss[n+1] = ss[n+2] = 0;
  parallel_for (long i=0; i < n; i++) ss[i] = ((uintT) s[i])+1;
  long k = 1 + sequence::reduce(ss, n, utils::maxF<uintT>());

  radixTime.clear();
  mergeTime.clear();
  LCPtime.clear();
  pair<uintT*,uintT*> SA_LCP = suffixArrayRec(ss, n, k, findLCPs);
  // cout << "Radix sort time: " << radixTime.total() << endl;
  // cout << "Merge time: " << mergeTime.total() << endl;
  // cout << "LCP time: " << LCPtime.total() << endl;
  free(ss);
  return SA_LCP;
}

uintT* suffixArray(unsigned char* s, long n) { 
  return suffixArray(s, n, false).first;}
