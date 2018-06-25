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

#ifndef A_HASH_INCLUDED
#define A_HASH_INCLUDED
#include "utils.h"
#include "sequence.h"
#include "parallel.h"
using namespace std;

template <class HASH, class intT>
class Table {
 private:
  typedef typename HASH::eType eType;
  typedef typename HASH::kType kType;
  intT m;
  intT mask;
  eType empty;
  HASH hashStruct;
  eType* TA;
  intT* compactL;

  // needs to be in separate routine due to Cilk bugs
  static void clearA(eType* A, intT n, eType v) {
    for (intT i=0; i < n; i++) A[i] = v;
  }

  uintT hashToRange(intT h) {return h & mask;}
  intT firstIndex(kType v) {return hashToRange(hashStruct.hash(v));}
  intT incrementIndex(intT h) {return hashToRange(h+1);}
  bool lessIndex(intT a, intT b) {return 2 * hashToRange(a - b) > m;}

 public:
  // Size is the maximum number of values the hash table will hold.
  // Overfilling the table could put it into an infinite loop.
  Table(intT size, HASH hashF) :
    m(1 << utils::log2Up(2*size)), 
    mask(m-1),
    empty(hashF.empty()),
    hashStruct(hashF), 
    TA(newA(eType,m)),
    compactL(NULL) 
      { clearA(TA,m,empty); }

  // Deletes the allocated arrays
  void del() {
    free(TA); 
    if (compactL != NULL) free(compactL);
  }

  // prioritized linear probing
  //   a new key will bump an existing key up if it has a higher priority
  //   an equal key will replace an old key if replaceQ(new,old) is true
  // returns 0 if not inserted (i.e. equal and replaceQ false) and 1 otherwise
  bool insert(eType v) {
    kType vkey = hashStruct.getKey(v);
    intT h = firstIndex(vkey);
    while (1) {
      int cmp;
      eType c = TA[h];
      if (c == empty) {
	TA[h] = v;
	return 1;
      } else {
	cmp = hashStruct.cmp(vkey,hashStruct.getKey(c));
	if (cmp == 1) {  // replace and push current value to another bucket
	  TA[h] = v;
	  v = c;
	  vkey = hashStruct.getKey(v);
	} else if (cmp == 0) { // equal (quit or replace)
	  if (hashStruct.replaceQ(v,c)) {
	    TA[h] = v;
	    return 1;
	  } else return 0; 
	}
      }
      // move to next bucket
      h = incrementIndex(h);
    }
    return 0; // should never get here
  }

  bool deleteVal(kType v) {
    intT i = firstIndex(v);
    int cmp;

    // find element to delete
    eType c = TA[i];
    while (c != empty && (cmp = hashStruct.cmp(v,hashStruct.getKey(c))) < 0) {
      i = incrementIndex(i);
      c = TA[i];
    }
    if (cmp != 0) return false; // does not appear
    intT j = i;

    // shift elements after deleted element down to fill hole
    while (c != empty) {
      do {
	j = incrementIndex(j);
	c = TA[j];
      } while (c != empty && lessIndex(i,firstIndex(hashStruct.getKey(c))));
      TA[i] = c;
      i = j;
    }
    return true;
  }

  // Returns the value if an equal value is found in the table
  // otherwise returns the "empty" element.
  // due to prioritization, can quit early if v is greater than cell
  eType find(kType v) {
    intT h = firstIndex(v);
    eType c = TA[h]; 
    while (1) {
      if (c == empty) return empty;
      int cmp = hashStruct.cmp(v,hashStruct.getKey(c));
      if (cmp >= 0)
	if (cmp == 1) return empty;
	else return c;
      h = incrementIndex(h);
      c = TA[h];
    }
  }

  // returns the number of entries
  intT count() {
    intT m = 0;
    for (intT i=0; i < m; i++)
      if (TA[i] != empty) m++;
    return m;
  }

  // returns all the current entries compacted into a sequence
  _seq<eType> entries() {
    eType *R = newA(eType,m);
    intT k = 0;
    for (intT i=0; i < m; i++)
      if (TA[i] != empty) R[k++] = TA[i];
    return _seq<eType>(R,k);
  }

  // prints the current entries along with the index they are stored at
  void print() {
    cout << "vals = ";
    for (intT i=0; i < m; i++) 
      if (TA[i] != empty)
	cout << i << ":" << TA[i] << ",";
    cout << endl;
  }
};

template <class HASH, class ET, class intT>
_seq<ET> removeDuplicates(_seq<ET> S, intT m, HASH hashF) {
  Table<HASH,intT> T(m,hashF);
  ET* A = S.A;
  for (long i = 0; i < S.n; i++) 
    T.insert(A[i]);
  _seq<ET> R = T.entries();
  T.del(); 
  return R;
}

template <class HASH, class ET>
_seq<ET> removeDuplicates(_seq<ET> S, HASH hashF) {
  return removeDuplicates(S, S.n, hashF);
}

template <class intT>
struct hashInt {
  typedef intT eType;
  typedef intT kType;
  eType empty() {return -1;}
  kType getKey(eType v) {return v;}
  uintT hash(kType v) {return utils::hash(v);}
  int cmp(kType v, kType b) {return (v > b) ? 1 : ((v == b) ? 0 : -1);}
  bool replaceQ(eType v, eType b) {return 0;}
};

// works for non-negative integers (uses -1 to mark cell as empty)
template <class intT>
static _seq<intT> removeDuplicates(_seq<intT> A) {
  return removeDuplicates(A,hashInt<intT>());
}

template <class intT>
static Table<hashInt<intT>,intT> makeIntTable(intT m) {
  return Table<hashInt<intT>,intT>(m,hashInt<intT>());}

struct hashStr {
  typedef char* eType;
  typedef char* kType;

  eType empty() {return NULL;}
  kType getKey(eType v) {return v;}

  uintT hash(kType s) {
    uintT hash = 0;
    while (*s) hash = *s++ + (hash << 6) + (hash << 16) - hash;
    return hash;
  }

  int cmp(kType s, kType s2) {
    while (*s && *s==*s2) {s++; s2++;};
    return (*s > *s2) ? 1 : ((*s == *s2) ? 0 : -1);
  }

  bool replaceQ(eType s, eType s2) {return 0;}
};

static _seq<char*> removeDuplicates(_seq<char*> S) {
  return removeDuplicates(S,hashStr());}

template <class intT>
static Table<hashStr,intT> makeStrTable(intT m) {
  return Table<hashStr,intT>(m,hashStr());}

template <class KEYHASH, class DTYPE>
struct hashPair {
  KEYHASH keyHash;
  typedef typename KEYHASH::kType kType;
  typedef pair<kType,DTYPE>* eType;
  eType empty() {return NULL;}

  hashPair(KEYHASH _k) : keyHash(_k) {}

  kType getKey(eType v) { return v->first; }

  uintT hash(kType s) { return keyHash.hash(s);}
  int cmp(kType s, kType s2) { return keyHash.cmp(s, s2);}

  bool replaceQ(eType s, eType s2) {
    return s->second > s2->second;}
};

static _seq<pair<char*,intT>*> removeDuplicates(_seq<pair<char*,intT>*> S) {
  return removeDuplicates(S,hashPair<hashStr,intT>(hashStr()));}

#endif // _A_HASH_INCLUDED
