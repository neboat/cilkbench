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

#ifndef A_SEMISORT_INCLUDED
#define A_SEMISORT_INCLUDED

#include <assert.h>
#include <algorithm>

#include "blockRadixSort.h"
#include "gettime.h"
#include "utils.h"
#include "sequence.h"
#include "parallel.h"
using namespace std;

typedef unsigned int uint;

#define SAMPLE_RATE_1 16
#define SAMPLE_RATE_2 16
#define HIGH_BITS 16

timer s0,s1,s2,s3,s4,s5,s6;

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
struct HeavyElm {
	E value;
	unsigned int offset, bits;
};

struct HBTElm {
	unsigned int offset, bits;
};

int inline reduceHashSize(int a, int b, double logN) {
 return 1 << numofBits(a / b); 
}

int inline hashSize(int a, int b, double logN) {
  return 1 << numofBits(1 * b * (a + logN + sqrt(logN*logN + 2 * a * logN)));
}

template <class E>
void inline insertHeavyTable(E inp, int &offset, int &size,
                             int sizeofBig, HeavyElm<E>* heavyTable) {
	int p = hashing(inp, sizeofBig);
	while (heavyTable[p].value != -1) { // linear-probe
		p = (p + 1) & (sizeofBig - 1);
	}
	heavyTable[p].value = inp;
  heavyTable[p].offset = offset;
  heavyTable[p].bits = numofBits(size);
}

template <class E>
inline bool queryHeavyTable(E inp, int &offset, int &bits,
                            int sizeofBig, HeavyElm<E>* heavyTable) {
	int p = hashing(inp, sizeofBig);
	while (heavyTable[p].value >= 0 && heavyTable[p].value != inp) {
		p = (p + 1) & (sizeofBig - 1);
	}
	if (heavyTable[p].value == -1) return false;
	offset = heavyTable[p].offset; bits = heavyTable[p].bits;
	return true;
}

template <class E>
void inline insertHashTable(pair<E, E>* hashTable, int offset, int bits, pair<E, E>& data, int i) {
	int p = myrand(i, bits);
  int size = ((1 << bits) - 1);
	while (1) {
		E preKey = hashTable[offset + p].second;
		if (hashTable[offset + p].second == -1 &&
			  utils::CAS(&hashTable[offset + p].second, preKey, data.second)) {
			hashTable[offset + p].first = data.first;
			return;
		}
		p = (p + 1) & size;
	}
}

template <class E>
struct FilterLightS {
  bool operator() (const pair<E, int> a) {
    return a.second > SAMPLE_RATE_2;
  }
};

template <class E>
HeavyElm<E>* generateTables(E *sample, int numSample, int n,
                         pair<E, int>* ss1, pair<E, int>* ss2,
                         int &sizeofBig, int& hashTableSize,
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
		totalHeavy += hashSize(ss2[i].second, SAMPLE_RATE_1, logN);
		numofUnique -= ss2[i].second;
	}

  sizeofBig = 1 << (numofBits(numHeavy) + 1);
//  cout << "sizeofBig = " << sizeofBig << endl;
//  cout << "numHeavy = " << numHeavy << endl;

	HeavyElm<E>* heavyTable = (HeavyElm<E>*)malloc(sizeof(HeavyElm<E>) * sizeofBig);
//  cout << "heavyTable = " << heavyTable << endl;
	{parallel_for (int i = 0; i < sizeofBig; i++) {
		heavyTable[i].value = -1;
  }}

  int offset = 0;
	for (int i = 0; i < numHeavy; i++) {
		int size = hashSize(ss2[i].second, SAMPLE_RATE_1, logN);
		insertHeavyTable(ss2[i].first, offset, size,
                     sizeofBig, heavyTable);
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
             int sizeofBig, pair<E, E>* hashTable,
             HBTElm* highBitsTable) {
	parallel_for(int i = 0; i < n; i++) {
		int offset, bits;
		if (!queryHeavyTable(input[i].first, offset, bits, sizeofBig, heavyTable)) {
			int highbit = highBit(input[i].first, HIGH_BITS);
			offset = highBitsTable[highbit].offset;
			bits = highBitsTable[highbit].bits;
		}
		insertHashTable(hashTable, offset, bits, input[i], i);
	}
}

template <class E>
struct cmpS { bool operator() (const pair<E, E>& a, const pair<E, E>& b) { return a.first > b.first; } };

template <class E>
struct filterS { bool operator() (const pair<E, E>& a) { return a.second != -1; } };

template <class E>
int filter(pair<E, E>* input, pair<E, E>* output, int size) {
	if (size < 10000) {
		int tot = 0;
		for (int i = 0; i < size; i++) {
			if (input[i].second != -1)
				output[tot++] = input[i];
		}
		return tot;
	}
	int count[1001];
	{parallel_for(int i = 0; i <= 1000; i++) {
		count[i] = 0;
  }}
	int percore = size / 1000 + 1;
	{parallel_for(int i = 0; i < 1000; i++) {
		int start = i * percore;
		int end = (i + 1) * percore < size ? (i + 1) * percore : size;
		int cnt = 0;
		for (int j = start; j < end; j++)
			if (input[j].second != -1)
				input[start + (cnt++)] = input[j];
		count[i+1] = cnt;
	}}
	for (int i = 0; i < 1000; i++) {
		count[i + 1] += count[i];
  }
	{parallel_for(int i = 0; i < 1000; i++) {
		int start = i * percore;
		for (int j = 0; j < count[i + 1] - count[i]; j++)
			output[count[i] + j] = input[start + j];
	}}
	return count[1000];
}


template <class E>
void compact(pair<E, E>* hashTable, int hashTableSize,
             pair<E, E>* output, HBTElm* highBitsTable,
             int* highBitsTableStart, int* highBitsTableCount) {

	parallel_for(int i = 0; i < (1 << HIGH_BITS); i++) {
		if (i == 0 || highBitsTable[i].offset != highBitsTable[i - 1].offset) {
      int bits = highBitsTable[i].bits;
      int offset = highBitsTable[i].offset;
      int cur = offset;
      // sequentially compact
      for (int j = 0; j < (1 << bits); j++) {
        if (hashTable[offset + j].second >= 0) {
          hashTable[cur++] = hashTable[offset + j];
        }
      }
      for (int j = cur; j < offset + (1 << bits); j++) {
        hashTable[j].second = -1;
      }
      highBitsTableCount[i] = cur - offset;
      sort(&hashTable[offset], &hashTable[cur], cmpS<E>());
    }
	}

	int tot = filter(hashTable, output, highBitsTable[0].offset);

	for (int i = 0; i < (1 << HIGH_BITS); i++) {
		if (highBitsTableCount[i] >= 0) {
			highBitsTableStart[i] = tot;
			tot += highBitsTableCount[i];
		}
	}

	{parallel_for (int i = 0; i < (1 << HIGH_BITS); i++) {
		if (i == 0 || highBitsTable[i].offset != highBitsTable[i - 1].offset) {
      int cur = highBitsTableStart[i];
      for (uint j = highBitsTable[i].offset; j < highBitsTable[i].offset + highBitsTableCount[i]; j++) {
        output[cur++] = hashTable[j];
      }
    }
	}}
}

template <class E>
E* sampling(pair<E, E> *input, int n,
            int rate, int &numSample) {
	numSample = n / SAMPLE_RATE_1;
  E* sample = (E*)malloc(numSample * sizeof(E));
	{parallel_for (int i = 0; i < numSample; i++) {
		sample[i] = input[i * SAMPLE_RATE_1 + (hash1(i) & (SAMPLE_RATE_1-1))].first;
  }}
  return sample;
}

void reportSemisort() {
  s0.reportTotal("sample and sort");
  s1.reportTotal("gen tables");
  s2.reportTotal("alloc");
  s3.reportTotal("scatter");
  s4.reportTotal("compact");
  s5.reportTotal("other");
}

template <class E>
pair<E, E>* semisort(pair<E, E>* input, int n) {
  // sample and sort
  s0.start();
	int numSample = 0;
	E* sample = sampling(input, n, SAMPLE_RATE_1, numSample);
	intSort::iSort(sample, (E)numSample, 0x7fffffffffffffffll, iden<E>());
  s0.stop();

	pair<E, int>* ss1 = (pair<E, int>*)malloc(sizeof(pair<E, int>) * numSample);
	pair<E, int>* ss2 = (pair<E, int>*)malloc(sizeof(pair<E, int>) * numSample);
  parallel_for(intT i=0; i<numSample; i++) {
    ss1[i].first = 0;
    ss1[i].second = 0;
  }

  HBTElm highBitsTable[1 << HIGH_BITS];
  int highBitsTableCount[1 << HIGH_BITS];
  int highBitsTableStart[1 << HIGH_BITS];
  {parallel_for (intT i=0; i < (1 << HIGH_BITS); i++) {
    highBitsTable[i].offset = highBitsTable[i].bits = 0;
    highBitsTableCount[i] = 0;
    highBitsTableStart[i] = 0;
  }}

  s1.start();
  int sizeofBig = 0;
  int hashTableSize = 0;
	HeavyElm<E>* heavyTable = generateTables<E>(sample, numSample, n, ss1, ss2,
                                              sizeofBig, hashTableSize,
                                              highBitsTable, highBitsTableStart);
  s1.stop();

  s2.start();
	pair<E, E>* hashTable = (pair<E, E>*)malloc(hashTableSize * sizeof(pair<E, E>));
  pair<E, E>* output = input; // overwrite
  cout << "htsize: " << hashTableSize << endl;

	{parallel_for (int i = 0; i < hashTableSize; i++) { hashTable[i].second = -1; }}
  s2.stop();

  s3.start();
	scatter<E>(input, n, heavyTable, sizeofBig, hashTable, highBitsTable);
  s3.stop();

  s4.start();
	compact<E>(hashTable, hashTableSize, output, highBitsTable, highBitsTableStart, highBitsTableCount);
  s4.stop();

	free(heavyTable);
	free(hashTable);
	free(ss1);
	free(ss2);
  reportSemisort();
  return output;
}
#endif
