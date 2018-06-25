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

template <class HASH, class intT>
void runDict(int* A, int* B, intT nIn, intT nDel, intT nSe, HASH hashF) {
  Table<HASH,intT> T(nIn, hashF);
  {parallel_for(intT i = 0; i < nIn; i++) { 
      T.insert(A[i]);}}
  {parallel_for(intT i = 0; i < nDel; i++) { 
      T.deleteVal(hashF.getKey(A[i+nIn]));
    }}
  {parallel_for(intT i = 0; i < nSe; i++) { 
      B[i] = T.find(hashF.getKey(A[i + nIn + nDel]));}}
}

template <class ET, class HASH, class intT>
void runDict(ET* A, ET* B, intT nIn, intT nDel, intT nSe, HASH hashF) {
  Table<HASH,intT> T(nIn, hashF);
  {parallel_for(intT i = 0; i < nIn; i++) { 
      T.insert(A[i]);}}
  {parallel_for(intT i = 0; i < nDel; i++) { 
      T.deleteVal(hashF.getKey(A[i+nIn]));}}
  {parallel_for(intT i = 0; i < nSe; i++) { 
      B[i] = T.find(hashF.getKey(A[i + nIn + nDel]));}}
}

template <class ET, class HASH, class intT>
_seq<ET> timedict(ET* A, intT n, HASH hashF, int rounds) {
  intT nIn = n/3;
  intT nDel = n/3;
  intT nSe = n - nIn - nDel;
  ET* B = newA(ET,nSe);
  bool* F = newA(bool,nSe);
  for (int j=0; j < rounds; j++) {
    startTime();
    runDict(A, B, nIn, nDel, nSe, hashF);
    nextTimeN();
  }
  cout << endl;
  parallel_for(intT i=0; i < nSe; i++)
    F[i] = B[i] != hashF.empty();
  _seq<ET> R = sequence::pack(B, F, nSe);
  free(B);
  free(F);
  return R;
}

int parallel_main(int argc, char* argv[]) {
  commandLine P(argc,argv,"[-o <outFile>] [-r <rounds>] <inFile>");
  char* iFile = P.getArgument(0);
  char* oFile = P.getOptionValue("-o");
  int rounds = P.getOptionIntValue("-r",1);
  seqData D = readSequenceFromFile(iFile);
  int dt = D.dt;

  switch (dt) {
  case intType: {
    intT* A = (intT*) D.A;
    _seq<intT> R = timedict(A, D.n, hashInt<intT>(), rounds);
    if (oFile != NULL) writeSequenceToFile(R.A, R.n, oFile);
    delete A;}
    break;

   case stringT: {
     char** A = (char**) D.A;
     _seq<char*> R = timedict(A, D.n, hashStr(), rounds);
     if (oFile != NULL) writeSequenceToFile(R.A, R.n, oFile);}
     break;

   case stringIntPairT: {
     stringIntPair* AA = (stringIntPair*) D.A;
     stringIntPair** A = new stringIntPair*[D.n];
     parallel_for (intT i=0; i < D.n; i++) A[i] = AA+i;
     _seq<stringIntPair*> R = timedict(A, D.n, hashPair<hashStr,intT>(hashStr()),
 				      rounds);
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
