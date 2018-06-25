#include <iostream>
#include <limits.h>
#include "sequence.h"
#include "gettime.h"
#include "graph.h"
#include "parallel.h"
#include "unionFind.h"
using namespace std;

struct notMax { bool operator() (intT i) {return i < INT_T_MAX;}};

// Assumes root is negative
inline intT find(intT i, intT* parent) {
  if (parent[i] < 0) return i;
  intT j = parent[i];     
  if (parent[j] < 0) return j;
  do j = parent[j]; 
  while (parent[j] >= 0);
  intT tmp = parent[i];
  while((tmp=parent[i])!=j){ parent[i]=j; i=tmp; }
  return j;
}

pair<intT*, intT> st(edgeArray<intT> EA){
  edge<intT>* E = EA.E;
  intT m = EA.nonZeros;
  intT n = EA.numRows;
  intT *parents = newA(intT,n);
  parallel_for (intT i=0; i < n; i++) parents[i] = -1;
  intT *hooks = newA(intT,n);
  parallel_for (intT i=0; i < n; i++) hooks[i] = INT_T_MAX;
  edge<intT>* st = newA(edge<intT>,m);

  timespec req;
  req.tv_sec = 0;
  req.tv_nsec = 1;  
  
  //edge joins only if acquired lock on both endpoints
  parallel_for (intT i = 0; i < m; i++) {
    intT j = 0;
    while(1){
      //if(j++ > 1000) abort();
      intT u = find(E[i].u,parents);
      intT v = find(E[i].v,parents);
      if(u == v) break;
      else {
	if(utils::CAS(&hooks[v],(intT)INT_T_MAX,(intT)i)){
	  if(utils::CAS(&hooks[u],(intT)INT_T_MAX,(intT)i)){
	    if(u == find(u,parents)){ //check that roots didn't change
	      if(v == find(v,parents)){
		//union by rank
		if(parents[u] < parents[v]) swap(u,v);
		parents[v] += parents[u];
		parents[u]=v;
		hooks[v]=INT_T_MAX;
		break;
	      } else hooks[u] = INT_T_MAX;
	    } else hooks[v] = INT_T_MAX;
	  } else hooks[v] = INT_T_MAX;
	} 

      }
      //sleep if failed too many times
      if(j++ > 25){
	j = 0;
	nanosleep(&req, (struct timespec *) NULL); 
      }      
    }
  }
  _seq<intT> stIdx = sequence::filter((intT*) hooks, n, notMax());
  
  free(parents); free(hooks); free(st); 
  cout<<"nInSt = "<<stIdx.n<<endl;
  return pair<intT*,intT>(stIdx.A, stIdx.n);
}
