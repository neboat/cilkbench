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

#include "gettime.h"
#include "parallel.h"
#include "sequenceIO.h"
#include "parseCommandLine.h"
#include "sequence.h"
#include <algorithm>
using namespace std;
using namespace benchIO;

template <class T>
_seq<T> timeRemDups(T* A, intT n, int rounds) {
  T* B = new T[n];
  parallel_for (intT i=0; i < n; i++) B[i] = A[i];
  _seq<T> R = removeDuplicates(_seq<T>(B, n)); //run one to "warm things up"
  for (int j=0; j < rounds; j++) {
    R.del();
    parallel_for (intT i=0; i < n; i++) B[i] = A[i];
    startTime();
    R = removeDuplicates(_seq<T>(A, n));
    nextTimeN();
  }
  cout << endl;
  delete[] B; 
  return R;
}

typedef pair<intT,intT> pairInt;

int parallel_main(int argc, char* argv[]) {
  commandLine P(argc,argv,"[-o <outFile>] [-r <rounds>] <inFile>");
  char* iFile = P.getArgument(0);
  char* oFile = P.getOptionValue("-o");
  int rounds = P.getOptionIntValue("-r",1);
  seqData D = readSequenceFromFile(iFile);
  intT dt = D.dt;

  switch (dt) {
  case intType: {
    intT* A = (intT*) D.A;
    _seq<intT> R = timeRemDups(A, D.n, rounds);
    if (oFile != NULL) writeSequenceToFile(R.A, R.n, oFile);
    delete A;}
    break;

  case intPairT: {
    pair<intT,intT>* A = (pair<intT,intT>*) D.A;
    _seq<pairInt> R = timeRemDups(A, D.n, rounds);   
    if (oFile != NULL) writeSequenceToFile(R.A, R.n, oFile);
  }
    break;

  case stringT: {
    char** A = (char**) D.A;
    _seq<char*> R = timeRemDups(A, D.n, rounds);
    if (oFile != NULL) writeSequenceToFile(R.A, R.n, oFile);}
    break;

  case stringIntPairT: {
    stringIntPair* AA = (stringIntPair*) D.A;
    stringIntPair** A = new stringIntPair*[D.n];
    parallel_for (intT i=0; i < D.n; i++) A[i] = AA+i;
    _seq<stringIntPair*> R = timeRemDups(A, D.n, rounds);
    delete[] A;
    // need to fix delete on AA
    if (oFile != NULL) {
      stringIntPair* B = new stringIntPair[R.n];
      parallel_for (intT i=0; i < R.n; i++) B[i] = *R.A[i];
      writeSequenceToFile(B, R.n, oFile);
      delete[] B;
    }}
    break;

  default:
    cout << "removeDuplicates: input file not of right type" << endl;
    return(1);
  }
}
