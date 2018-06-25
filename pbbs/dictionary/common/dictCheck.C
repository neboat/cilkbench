// This code is part of the Problem Based Benchmark Suite (PBBS)
// Copyright (c) 2010 Guy Blelloch and the PBBS team
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
#include <algorithm>
#include "parallel.h"
#include "sequence.h"
#include "serialHash.h"
#include "sequenceIO.h"
#include "parseCommandLine.h"
#include "quickSort.h"
using namespace std;
using namespace benchIO;

bool strless (char* s1c, char* s2c) {
  char* s1 = s1c, *s2 = s2c;
  while (*s1 && *s1==*s2) {s1++; s2++;};
  return (*s1 < *s2);
}

struct strLess {
  bool operator() (char* s1c, char* s2c) {return strless(s1c, s2c);}
};

struct strIntLess {
  bool operator() (stringIntPair* a, stringIntPair* b) {
    if (strless(a->first,b->first)) return true;
    else if (strless(b->first,a->first)) return false;
    else return (a->second < b->second);
  }
};

template <class ET, class HASH, class intT>
void runDict(ET* A, ET* B, intT nIn, intT nDel, intT nSe, HASH hashF) {
  Table<HASH,intT> T(nIn, hashF);
  for(intT i = 0; i < nIn; i++) 
    T.insert(A[i]);
  for(intT i = 0; i < nDel; i++) 
    T.deleteVal(hashF.getKey(A[i+nIn]));
  for(intT i = 0; i < nSe; i++) 
    B[i] = T.find(hashF.getKey(A[i + nIn + nDel]));
}

template <class T, class F, class HASH>
void checkDict(T* A, intT an, T* B, intT bn, HASH hashF, F less) {
  intT nIn = an/3;
  intT nDel = an/3;
  intT nSe = an - nIn - nDel;
  T* C = newA(T,nSe);
  bool* Flags = newA(bool,nSe);
  runDict(A, C, nIn, nDel, nSe, hashF);
  parallel_for(intT i=0; i < nSe; i++)
    Flags[i] = C[i] != hashF.empty();
  _seq<T> R = sequence::pack(C, Flags, nSe);
  free(C);
  free(Flags);
  if (R.n != bn) {
    cout << "dictionaryCheck: check failed length test" << endl;
    cout << "result length = " << bn << " expected length = " << R.n << endl;
    abort();
  }
  
  for(intT i=0; i < R.n; i++) {
    if (less(B[i],R.A[i]) || less(R.A[i],B[i])) {
      cout << "dictionaryCheck: check failed equality test at i=" 
	   << i <<endl;
      abort();
    }
  }
  R.del();
}

int parallel_main(int argc, char* argv[]) {
  commandLine P(argc,argv,"<inFile> <outFile>");
  pair<char*,char*> fnames = P.IOFileNames();
  seqData In = readSequenceFromFile(fnames.first);
  seqData Out = readSequenceFromFile(fnames.second);
  elementType dt = In.dt;
  if (dt != Out.dt) {
    cout << "dictionaryCheck: types don't match" << endl;
    return(1);
  }

  if (dt == intType) {
    checkDict((intT*) In.A, In.n, (intT*) Out.A, Out.n, hashInt<intT>(), less<intT>()); 
    In.del();
    Out.del();
  } else if (dt == stringT) {
    checkDict((char**) In.A, In.n, (char**) Out.A, Out.n, hashStr(), strLess()); 
    In.del();
    Out.del();
  } else if (dt == stringIntPairT) {
    stringIntPair* AA = (stringIntPair*) In.A;
    stringIntPair** A = new stringIntPair*[In.n];
    parallel_for (intT i=0; i < In.n; i++) A[i] = AA+i;
    stringIntPair* BB = (stringIntPair*) Out.A;
    stringIntPair** B = new stringIntPair*[In.n];
    parallel_for (intT i=0; i < Out.n; i++) B[i] = BB+i;
    checkDict(A, In.n, B, Out.n, hashPair<hashStr,intT>(hashStr()), strIntLess());
    In.del();
    Out.del();
    delete[] A;
  } else {
    cout << "dictionaryCheck: input files not of right type" << endl;
    return(1);
  }
}
