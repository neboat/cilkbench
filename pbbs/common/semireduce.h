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

#ifndef A_SEMIREDUCE_INCLUDED
#define A_SEMIREDUCE_INCLUDED

#include <assert.h>
#include <algorithm>
#include <vector>
#include <unordered_map>

#include "blockRadixSort.h"
//#include "quickSort.h"
#include "sampleSort.h"
#include "gettime.h"
#include "utils.h"
#include "math.h"
#include "sequence.h"
#include "parallel.h"
using namespace std;

typedef unsigned int uint;

#define SAMPLE_RATE_1 16
#define SAMPLE_RATE_2 16
#define HIGH_BITS 16

/*
  Three impls in this file: the first is semireduce(...) which
  is very much based on yan's spaa submission. It gets good 
  speedup (2x faster than the semisort), but only on big instances.

  the second is bucket(...). Instead of producing an array of results, it 
  writeAdds directly to a destination array and produces an array of 
  indices that were modified. 

  the last implementation is naive_bucket(...) which doesn't 
  differentiate between light/heavy elements and just writeAdds everything
*/ 

template <class E>
int inline numofBits(E a) {
	int ret;
	for (ret = 0; (1 << ret) < a;) ret++;
	return ret;
}

// b is capacity of the table being hashed into
template <class E>
int inline hashing (E a, int b) {
	int c = b - 1;
	return (a & c);
}

template <class E>
int inline myrand(E seed, int bits) {
	return (((seed << 2) + 0x6782d567) + (seed >> 5)) & ((1 << bits) - 1);
}

template <class E>
int inline highBit(E a, int b) {
	return int(a >> (63 - b));
}

inline unsigned int hash1(unsigned int a)
{
	a = (a + 0x7ed55d16) + (a << 12);
	a = (a ^ 0xc761c23c) ^ (a >> 19);
	a = (a + 0x165667b1) + (a << 5);
	a = (a + 0xd3a2646c) ^ (a << 9);
	a = (a + 0xfd7046c5) + (a << 3);
	a = (a ^ 0xb55a4f09) ^ (a >> 16);
	return a;
}

inline unsigned int hash2(unsigned int a)
{
	a = (a + 0x1a976ce5) + (a << 15);
	a = (a ^ 0x98bf7c21) ^ (a >> 13);
	a = (a + 0xc092738a) + (a << 7);
	a = (a + 0xbbc2976e) ^ (a << 9);
	a = (a + 0xf6efd123) + (a << 11);
	a = (a ^ 0x987abc01) ^ (a >> 2);
	return a;
}

template <class E1>
struct iden { E1 operator() (const E1& a) { return a; } };

template <class E>
struct addSecond {
  pair<E, E> operator() (const pair<E, E>& a, const pair<E, E>& b) const {
    return make_pair(a.first, a.second + b.second);
  }
};

template <class E>
struct FilterLightS {
  bool operator() (const pair<E, int> a) {
    return a.second > SAMPLE_RATE_2;
  }
};

struct FilterNeg {
  bool operator() (intT a) {
    return a >= 0;
  }
};

template <class E>
struct cmpS { bool operator() (const pair<E, E>& a, const pair<E, E>& b) { return a.first > b.first; } };

struct cmpIntT { 
  bool operator() (intT a, intT b) { 
    return a < b;
  }
};

struct cScan {
  intT operator() (intT a, intT b) {
    if (b == -1) {
      return a;
    }
    return b;
  }
};

template <class E>
struct HeavyElm {
	E value;
	unsigned int offset, bits;
};

struct HBTElm {
	unsigned int offset, bits;
};

int inline reduceHashSize(int a, int b) {
 return 1 << numofBits(a / b); 
}

int inline hashSize(int a, int b, double logN) {
  return 1 << numofBits(1 * b * (a + logN + sqrt(logN*logN + 2 * a * logN)));
}

template <class E>
void inline insertHeavyTable(E inp, int &offset, int &size,
                             int heavyTableSize, HeavyElm<E>* heavyTable) {
	int p = hashing(inp, heavyTableSize);
	while (heavyTable[p].value != -1) { // linear-probe
		p = (p + 1) & (heavyTableSize - 1);
	}
	heavyTable[p].value = inp;
  heavyTable[p].offset = offset;
  heavyTable[p].bits = numofBits(size);
}

template <class E>
inline bool queryHeavyTable(E inp, int &offset, int &bits,
                            int heavyTableSize, HeavyElm<E>* heavyTable) {
	int p = hashing(inp, heavyTableSize);
	while (heavyTable[p].value >= 0 && heavyTable[p].value != inp) {
		p = (p + 1) & (heavyTableSize - 1);
	}
	if (heavyTable[p].value == -1) return false;
	offset = heavyTable[p].offset; bits = heavyTable[p].bits;
	return true;
}

/* SEMIREDUCE UTILS */

template <class E>
void inline insertLightElm(pair<E, E>* hashTable, int offset, int bits, pair<E, E>& data) {
	int p = myrand(data.first, bits);
  int size = ((1 << bits) - 1);
	while (1) {
		E preKey = hashTable[offset + p].first;
		if ((preKey == -1) &&
         utils::CAS(&hashTable[offset + p].first, preKey, data.first)) {
      utils::writeAdd(&hashTable[offset + p].second, data.second);
			return;
		}
    if (hashTable[offset + p].first == data.first) {
      utils::writeAdd(&hashTable[offset + p].second, data.second);
      return;
    }
		p = (p + 1) & size;
	}
}

template <class E>
void inline insertHeavyElm(pair<E, E>* hashTable, int offset, int bits, pair<E, E>& data, int i) {
	int p = myrand(i, bits); 
  hashTable[offset + p].first = data.first;
  utils::writeAdd(&hashTable[offset + p].second, data.second);
}

template <class E>
HeavyElm<E>* generateTables(E *sample, int numSample, int n,
                               pair<E, int>* ss1, pair<E, int>* ss2,
                               int &heavyTableSize, int& hashTableSize,
                               HBTElm* highBitsTable,
                               int* highBitsTableStart) {
  const double logN = log(n);
	int numHeavy = 0, numofUnique = numSample;

  // calculate heavy elements
	{parallel_for (int i = 0; i < numSample; i++) {
		if ((i == 0) || sample[i] != sample[i - 1]) {
      int j = i;
      // won't this be O(sample) depth if all id?
      // we've sorted so this can be implemented w/copy-scan
      while ((j < numSample) && (sample[j] == sample[j + 1])) {
        j++;
      }
      ss1[i].first = sample[i];
      ss1[i].second = j - i + 1;
    }
	}}
  {parallel_for (int i = 0; i < numSample; i++) {
		if ((i == 0) || sample[i] != sample[i - 1]) {
      int size = ss1[i].second;
      if (ss1[i].second > SAMPLE_RATE_2) { // heavy case
        for (int k = i; k <= i+size; k++) { // again, this could be O(sample) depth
          sample[k] = -1;
        }
      }
    }
  }}
	numHeavy = sequence::filter(ss1, ss2, numSample, FilterLightS<E>());

  int totalHeavy = 0;
	for (int i = 0; i < numHeavy; i++) {
		totalHeavy += reduceHashSize(ss2[i].second, SAMPLE_RATE_1);
		numofUnique -= ss2[i].second;
	}

  heavyTableSize = 1 << (numofBits(numHeavy) + 1);

	HeavyElm<E>* heavyTable = (HeavyElm<E>*)malloc(sizeof(HeavyElm<E>) * heavyTableSize);
	{parallel_for (int i = 0; i < heavyTableSize; i++) {
		heavyTable[i].value = -1;
  }}

  int offset = 0;
	for (int i = 0; i < numHeavy; i++) {
		int size = reduceHashSize(ss2[i].second, SAMPLE_RATE_1);
		insertHeavyTable(ss2[i].first, offset, size,
                     heavyTableSize, heavyTable);
		offset += size;
	}

  // handle light elements
	int count[1 << HIGH_BITS];
	{parallel_for (int i = 0; i < (1 << HIGH_BITS); i++) {
		count[i] = 0;
  }}

  // build histogram in count
	{parallel_for (int i = 0; i < numSample; i++) {
		if (sample[i] >= 0) {
			utils::writeAdd(&count[highBit(sample[i], HIGH_BITS)], 1);
    }
  }}

	int first = 0, tot = 0;
	for (int i = 0; i < (1 << HIGH_BITS); i++) {
		tot += count[i];
		if (tot > SAMPLE_RATE_2 || i == ((1 << HIGH_BITS) - 1)) {
			int size = hashSize(tot, SAMPLE_RATE_2, logN);
			int k = numofBits(size);
			for (int j = first; j <= i; j++) {
				highBitsTable[j].offset = offset;
				highBitsTable[j].bits = k;
				highBitsTableStart[j] = first;
			}
			first = i + 1;
      tot = 0;
			offset += size;
		}
	}

	hashTableSize = offset;
  return heavyTable;
}

template <class E>
void scatter(pair<E, E>* input, int n, HeavyElm<E>* heavyTable,
                int heavyTableSize, pair<E, E>* hashTable,
                HBTElm* highBitsTable) {
  parallel_for(int i = 0; i < n; i++) { 
		int offset, bits;
		if (!queryHeavyTable(input[i].first, offset, bits, heavyTableSize, heavyTable)) {
      // light
			int highbit = highBit(input[i].first, HIGH_BITS);
			offset = highBitsTable[highbit].offset;
			bits = highBitsTable[highbit].bits;
      insertLightElm(hashTable, offset, bits, input[i]);
		} else {
      insertHeavyElm(hashTable, offset, bits, input[i], i);
    }
	}
}

template <class E>
int compact(pair<E, E>* hashTable, int hashTableSize,
                pair<E, E>* output, HeavyElm<E>* heavyTable,
                int heavyTableSize, HBTElm* highBitsTable,
                int* highBitsTableStart, int* highBitsTableCount,
                int* scratch) {

	{parallel_for(int i = 0; i < (1 << HIGH_BITS); i++) {
		if (i == 0 || highBitsTable[i].offset != highBitsTable[i - 1].offset) {
      int bits = highBitsTable[i].bits;
      int offset = highBitsTable[i].offset;
      int cur = offset;
      // sequentially compact
      for (int j = 0; j < (1 << bits); j++) {
        if (hashTable[offset + j].first >= 0) {
          hashTable[cur++] = hashTable[offset + j];
        }
      }
      for (int j = cur; j < offset + (1 << bits); j++) {
        hashTable[j].first = -1;
      }
      highBitsTableCount[i] = cur - offset;
      sort(&hashTable[offset], &hashTable[cur], cmpS<E>());
    }
	}}

  {parallel_for (int i=0; i<heavyTableSize; i++) {
    if (heavyTable[i].value != -1) {
      scratch[i] = 1;
    } else {
      scratch[i] = 0;
    }
  }}
  int numHeavy = sequence::plusScan(scratch, scratch, heavyTableSize);

  {parallel_for(int i=0; i<heavyTableSize; i++) {
    E value = heavyTable[i].value;
    if (value != -1) {
      int offset = heavyTable[i].offset;
      int bits = heavyTable[i].bits;
      int size = ((1 << bits));
      int destOffset = scratch[i];
      pair<E, E> res = sequence::reduce(hashTable, offset, offset + size, addSecond<E>());
      output[destOffset].first = value;
      output[destOffset].second = res.second;
    }
  }}

  intT numLight = sequence::plusScan(highBitsTableCount, highBitsTableStart, (1 << HIGH_BITS));

	{parallel_for (int i = 0; i < (1 << HIGH_BITS); i++) {
		if (i == 0 || highBitsTable[i].offset != highBitsTable[i - 1].offset) {
      int cur = numHeavy + highBitsTableStart[i];
      int offset = highBitsTable[i].offset;
      for (uint j = offset; j < offset + highBitsTableCount[i]; j++) {
        output[cur].first = hashTable[j].first;
        output[cur].second = hashTable[j].second;
        cur++;
      }
    }
	}}
  return numHeavy + numLight;
}


template <class E>
void sample(pair<E,E> *input, intT n,
            intT numSample, E* sample) {
  if (numSample < 10000) {
    for (int i=0; i < numSample; i++) {
      sample[i] = input[i * SAMPLE_RATE_1 + (hash1(i) & (SAMPLE_RATE_1-1))].first;
    }
  } else {
    {parallel_for (int i = 0; i < numSample; i++) {
      sample[i] = input[i * SAMPLE_RATE_1 + (hash1(i) & (SAMPLE_RATE_1-1))].first;
    }}
  }
}

template <class E>
void sample(E *input, intT n,
            intT numSample, E* sample) {
  if (numSample < 10000) {
    for (int i=0; i < numSample; i++) {
      sample[i] = input[i * SAMPLE_RATE_1 + (hash1(i) & (SAMPLE_RATE_1-1))];
    }
  } else {
    {parallel_for (int i = 0; i < numSample; i++) {
      sample[i] = input[i * SAMPLE_RATE_1 + (hash1(i) & (SAMPLE_RATE_1-1))];
    }}
  }
}

template <class E>
int semireduce(pair<E, E>* input, int n, E max) {

  max = ((E)1 << (E)utils::logUpLong(max)) - 1;

// checking correctness
#ifdef CHECK
  cout << "checking correctness\n";
  pair<E,E>* tmp = (pair<E,E>*)malloc(sizeof(pair<E,E>) * n);
  {parallel_for(intT i=0; i<n; i++) {
    tmp[i].first = input[i].first;
    tmp[i].second = input[i].second;
  }}
  unordered_map<intT, intT> c;
  for (intT i=0; i<n; i++) {
    if (c.find(tmp[i].first) == c.end()) {
      c[tmp[i].first] = 1;
    } else {
      c[tmp[i].first]++;
    }
  }
#endif

  // sample and sort
	intT numSample = n / SAMPLE_RATE_1;
  E* smpl = newA(E, numSample);
	sample<E>(input, n, numSample, smpl);
	intSort::iSort(smpl, (E)numSample, max, iden<E>());

	pair<E, int>* ss1 = (pair<E, int>*)malloc(sizeof(pair<E, int>) * numSample);
	pair<E, int>* ss2 = (pair<E, int>*)malloc(sizeof(pair<E, int>) * numSample);
  if (numSample < 10000) {
    for(intT i=0; i<numSample; i++) {
      ss1[i].second = 0;
    }
  } else {
    {parallel_for(intT i=0; i<numSample; i++) {
      ss1[i].second = 0;
    }}
  }

  HBTElm highBitsTable[1 << HIGH_BITS];
  int highBitsTableCount[1 << HIGH_BITS];
  int highBitsTableStart[1 << HIGH_BITS];
  {parallel_for (intT i=0; i < (1 << HIGH_BITS); i++) {
    highBitsTable[i].offset = highBitsTable[i].bits = 0;
    highBitsTableCount[i] = 0;
    highBitsTableStart[i] = 0;
  }}

  int heavyTableSize = 0;
  int hashTableSize = 0;
	HeavyElm<E>* heavyTable = generateTables<E>(smpl, numSample, n, ss1, ss2,
                                              heavyTableSize, hashTableSize,
                                              highBitsTable, highBitsTableStart);

	pair<E, E>* hashTable = (pair<E, E>*)malloc(hashTableSize * sizeof(pair<E, E>));
  int* scratch = (int*)malloc(heavyTableSize * sizeof(int));

	{parallel_for (int i = 0; i < hashTableSize; i++) { hashTable[i].first = -1; hashTable[i].second = 0;}}

	scatter<E>(input, n, heavyTable, heavyTableSize, hashTable, highBitsTable);

#ifdef CHECK
	pair<E, E>* hashTable_p = (pair<E, E>*)malloc(hashTableSize * sizeof(pair<E, E>));
  {parallel_for(intT i=0; i<hashTableSize; i++) {
    hashTable_p[i].first = hashTable[i].first;
    hashTable_p[i].second = hashTable[i].second;
  }}
#endif

  pair<E, E>* output = input;
	int tot = compact<E>(hashTable, hashTableSize, output, heavyTable,
                       heavyTableSize, highBitsTable, highBitsTableStart, 
                       highBitsTableCount, scratch);

#ifdef CHECK
  unordered_map<intT, intT> ours;
  for (intT i=0; i<tot; i++) {
    ours[output[i].first] = output[i].second;
  }
  for (auto it=c.begin(); it != c.end(); ++it) {
    auto v = it->first;
    auto count = it->second;
    auto our_count = ours[v];
    if (count != our_count) {
      cout << "error on: " << v << ". Have: " << our_count << " should be: " << count << endl;
      for (int i=0; i<hashTableSize; i++) {
        cout << hashTable_p[i].first << " " << hashTable_p[i].second << endl;
      }
      exit(-1);
    }
  }
  cout << "correct!\n";
#endif 
	free(heavyTable);
	free(hashTable);
	free(ss1);
	free(ss2);
  free(scratch);
  return tot;
}

/* NAIVE BUCKET IMPL */

void testWriteAddOnce(intT* reqs, intT n, intT* dests, intT* tmp) {
  timer t;
  {parallel_for(intT i=0; i < n; i++) {
    tmp[i] = reqs[i];
  }}
  t.start();
  {parallel_for(intT i=0; i < n; i++) {
    intT v = tmp[i];
    utils::writeAdd(&dests[v], (intT)-1);
//    if (utils::writeAddOnce(&dests[v], -1)) {
//      tmp[i] = -1;
//    }
  }}
  t.stop();
  intT ns = 0;
//  for (intT i=0; i<n; i++) {
//    if (tmp[i] == -1) {
//      ns += 1;
//    }
//  }
  cout << "n = " << n << "numLeft = " << (n - ns) << endl;
  t.reportTotal("add once");
}


// writeAdd to all dests---could be O(n) in the case that 
// reqs is identically one elm 
intT naive_bucket(intT* reqs, intT n, intT* dests, bool* flags, intT* a1, bool* fl) {
  {parallel_for(intT i=0; i<n; i++) {
    intT dest = reqs[i];
    if (!flags[dest] && utils::CAS(&flags[dest], false, true)) {
      a1[i] = dest;
    } else {
      a1[i] = -1;
    }
    utils::writeAdd(&dests[dest], (intT)-1);
  }}
  intT tot = sequence::filter(a1, reqs, fl, n, FilterNeg());
  return tot;
}

/* BUCKET IMPL */

HeavyElm<intT>* findHeavySeq(intT* sample, intT numSample, intT& hashTableSize, 
                             intT& bigtsize, intT& numHeavy, intT* orig, intT n) {
//  compSort(sample, numSample, cmpIntT());
	intSort::iSort(sample, numSample, INT_MAX, iden<intT>());
  intT cnt = 1;
  intT prev = sample[0];
  intT lgn = 3*log(n);
  vector<pair<intT, intT> > heavy;

  for (intT i=1; i < numSample; i++) {
    intT cur = sample[i];
    if (cur == prev) {
      cnt++;
    } else {
      if (cnt > lgn) {
//        cout << "heavy. cnt = " << cnt << endl;
        heavy.push_back(make_pair(prev, cnt));
      }
      cnt = 0;
      prev = cur;
    }
  }
  if (cnt > lgn) {
    heavy.push_back(make_pair(prev, cnt));
  }

  if (heavy.size() > 0) {
    numHeavy = heavy.size();
    bigtsize = 1 << (numofBits(numHeavy) + 1); 

    HeavyElm<intT>* heavyTable = (HeavyElm<intT>*)malloc(sizeof(HeavyElm<intT>) * bigtsize);
    {for (intT i = 0; i < bigtsize; i++) {
      heavyTable[i].value = -1;
    }}

    int offset = 0;
    for (int i = 0; i < numHeavy; i++) {
      intT v = heavy[i].first;
      int size = 3*reduceHashSize(heavy[i].second, SAMPLE_RATE_1);
      int bits = numofBits(size);
      // TODO bug here. Using (1 << bits) later as size, so 
      // need to align
      //cout << "inserting v = " << v << " size = " << size << endl;
      insertHeavyTable(v, offset, bits, bigtsize, heavyTable);
      offset += size;
    }
    hashTableSize = offset;
    return heavyTable;
//    cout << "size = " << heavy.size() << endl;
//    cout << "one is : " << heavy[0] << endl;
//    for (intT j=0; j<heavy.size(); j++) {
//      intT elm = heavy[j];
//      intT ctr = 0;
//      for (intT i=0; i<n; i++) {
//        if (orig[i] == elm) ctr++;
//      }
//      cout << "elm = " << elm << " ctr = " << ctr << endl;
//    }
  } else {
    bigtsize = 0;
    numHeavy = 0;
    hashTableSize = 0;
    return 0;
  }
}

HeavyElm<intT>* findHeavy(intT* sample, intT numSample, intT* s1, 
                          pair<intT,intT>* p1, pair<intT, intT>* p2, intT& hashTableSize,
                          intT& bigtsize, bool* bs, intT& numHeavy) {
//  compSort(sample, numSample, cmpIntT());
	intSort::iSort(sample, numSample, INT_MAX, iden<intT>());

  {parallel_for(intT i=0; i<numSample; i++) {
    if (i==(numSample-1) || sample[i] != sample[i+1]) {
      s1[i] = i;
    } else {
      s1[i] = -1;
    }
  }}
  intT end = sequence::scanI(s1, s1, numSample, cScan(), (intT)-1);

  {parallel_for(intT i=0; i<numSample; i++) {
    if (i==(numSample-1) || s1[i] != s1[i+1]) {
      intT size = (i==(numSample-1)) ? (end - s1[i]) : (s1[i+1] - s1[i]);
      p1[i].first = sample[i];
      p1[i].second = size;
    } else {
      p1[i].second = -1;
    }
  }}
  numHeavy = sequence::filter(p1,p2,bs,numSample,FilterLightS<intT>());

  if (numHeavy == 0) {
    hashTableSize = 0;
    return 0;
  } else {
    bigtsize = 1 << (numofBits(numHeavy) + 1); 
    HeavyElm<intT>* heavyTable = (HeavyElm<intT>*)malloc(sizeof(HeavyElm<intT>) * bigtsize);

    int offset = 0;
    for (int i = 0; i < numHeavy; i++) {
      int size = reduceHashSize(p2[i].second, SAMPLE_RATE_1);
      insertHeavyTable(p2[i].first, offset, size,
                       bigtsize, heavyTable);
      offset += size;
    }
    hashTableSize = offset;
    return heavyTable;
  }
}



void inline insertHeavyElm(intT* hashTable, int offset, int bits, int i) {
	int p = myrand(i, bits); 
  utils::writeAdd(&hashTable[offset + p], (intT)1);
}

void scatterReqs(intT* reqs, intT n, intT* dests, intT* hashTable, bool* flags,
                 HeavyElm<intT>* heavyTable, int bigtsize, intT* r1) {
  if (heavyTable == 0) {
    {parallel_for(intT i=0; i<n; i++) {
      intT dest = reqs[i];
      if (!flags[dest] && utils::CAS(&flags[dest], false, true)) {
//  do nothing       r1[i] = dest;
      } else {
        reqs[i] = -1;
      }
      utils::writeAdd(&(dests[dest]), (intT)-1);
    }}
  } else {
    {parallel_for(intT i=0; i<n; i++) {
      int offset; int bits;
      intT dest = reqs[i];
      if (queryHeavyTable(dest, offset, bits, bigtsize, heavyTable)) {
         insertHeavyElm(hashTable, offset, bits, i);
      } else {
        if (!flags[dest] && utils::CAS(&flags[dest], false, true)) {
          r1[i] = dest;
        } else {
          r1[i] = -1;
        }
        utils::writeAdd(&(dests[dest]), (intT)-1);
      }
    }}
  }
}

void compactHeavy(intT* hashTable, intT hashTableSize, HeavyElm<intT>* heavyTable, intT bigtsize,
                  intT* scratch, intT* dests, intT* locs, intT& tot) {
  granular_for(i, 0, bigtsize, 10000, {
    if (heavyTable[i].value != -1) {
      scratch[i] = 1;
    } else {
      scratch[i] = 0;
    }
  };);
  intT numHeavy = sequence::plusScan(scratch, scratch, bigtsize);
  // TODO: don't we compute this before: why not just pass it in

//  {parallel_for (intT i=0; i<bigtsize; i++) {
  {for (intT i=0; i<bigtsize; i++) {
    intT value = heavyTable[i].value;
    if (value != -1) {
      int offset = heavyTable[i].offset;
      int bits = heavyTable[i].bits;
      int size = ((1 << bits));
      int destOffset = scratch[i];
      intT res = sequence::reduce(hashTable, offset, offset + size, utils::addF<intT>());
//      cout << "For v = " << value << " offset = " << offset << " bits = " << bits << " size = " << size << endl;
      dests[value] -= res;
      locs[tot + destOffset] = value;
    }
  }}
  tot += numHeavy;
}


// Caller must ensure that dests/flags are sufficiently large
// function returns #distinct elms, which are stored back into
// reqs. a1/a2/fl are scratch arrays
intT bucket(intT* reqs, intT n, intT* dests, bool* flags, 
            intT* a1, intT* a2, bool* fl, timer& b1, timer& b2, timer& b3) {
#ifdef CHECK
    unordered_map<intT, intT> c;
    for (intT i=0; i<n; i++) {
      intT v = reqs[i];
      if (c.find(v) == c.end()) {
        c[v] = dests[v] - 1;
      } else {
        c[v]--;
      }
    }
#endif
  b3.start();

  intT numSample = (intT)(pow(n, 0.5));
  intT* smp = a1; 
  sample(reqs, n, numSample, smp);

  intT hashTableSize;
  intT numHeavy;
  intT bigtsize;

  HeavyElm<intT>* table = findHeavySeq(smp, numSample, hashTableSize, bigtsize, numHeavy, reqs, n);

	intT* hashTable = a1;
  if (hashTableSize > 0) {
    granular_for(i, 0, hashTableSize, 10000, {
      hashTable[i] = 0;
    };);
  }
  
  b1.start();
  intT* idxs = a2;
  scatterReqs(reqs, n, dests, hashTable, flags, table, bigtsize, idxs);
  b1.stop();

  // can make this filterMap and unset flags if necessary 
  b2.start();
  intT tot = sequence::filter(reqs, idxs, fl, n, FilterNeg());
  b2.stop();

  if (numHeavy > 0) {
    intT* scratch = (intT*)malloc(bigtsize * sizeof(intT));
    compactHeavy(hashTable, hashTableSize, table, bigtsize, scratch, dests, idxs, tot);
    free(scratch);
  }
  
  if (table != 0)
    free(table);

#ifdef CHECK
//cout << "Checking... " << numHeavy << endl;
//cout << "htsize = " << hashTableSize << endl;
//cout << "n = " << n << endl;
  for (auto it=c.begin(); it != c.end(); ++it) {
    auto v = it->first;
    auto cnt = it->second;
    auto dest = dests[v];
    if (cnt != dest) {
      cout << "For v = " << v << " we have = " << dest << " should be " << cnt << endl;
      exit(-1);
    }
  }
#endif

  b3.stop();
  return tot;
}

#endif
