#!/usr/bin/env bash

REGRESSION_NUMTRIALS=5

# 6.172 F15 project 2 tests
#P2_TESTS=`ls -d p2/*.git | sort -`
P2_TESTS="p2/aheifetz-gchau.git p2/akashk16-xmwangi.git p2/akshayp-denisli.git \
p2/alhuang-rparvat.git p2/alvis-epayne.git p2/anyingl-tianm.git p2/ashwang-kaixi.git \
p2/baxe-mmceach.git p2/bcai-denizokt.git p2/bcarter-zrneely.git p2/berjc-osmidy.git \
p2/calvinh-vmohan.git p2/changycj-kjx.git p2/coesa-llwu.git p2/deeptir-ktekiela.git \
p2/Demitri-Zacku.git p2/devneal-vdean.git p2/dgaddy-raywu22.git p2/dhlim-paerhati.git \
p2/divyas-yasyf.git p2/dmlittle-johnfw.git p2/dmz-je23693.git p2/dyhwong-jains.git \
p2/dzuo-krwang.git p2/ehuppert-samedson.git p2/enguyen-jessq.git p2/erosales-robsoto.git \
p2/ftong-larat.git p2/ftorija-peterkg.git p2/geronm-sinback.git p2/hannalee-mvuyyuru.git \
p2/haoshen-majohn.git p2/hkannan-sfishman.git p2/hongyis-linb.git p2/huypham-lucasem.git \
p2/jiajiaz-rgomes.git p2/jimmywu-mshum.git p2/jlucas16-zulsar.git p2/jongwook-ktian.git \
p2/jrcontre-vickyg.git p2/jserrino-sidds.git p2/kevinli-liangjy.git p2/kevinwen-rswang.git \
p2/kgalli-matthewk.git p2/kkleidal-nikm.git p2/krasuski-pdgraham.git p2/lvnguyen-sunl.git \
p2/mingy-pandit.git p2/neriam-varot.git p2/tonycao-vye16.git"

BUGGY_P2_TESTS="p2/dpchen-shraman.git"

# PPoPP tests
CILK_TESTS="cholesky fft nqueens qsort rectmul strassen"

INTEL_TESTS="intel/AveragingFilter_01_07_15/ intel/Mandelbrot_12_17_14/"

PBBS_TESTS="pbbs/maximalIndependentSet/ndMIS pbbs/maximalIndependentSet/incrementalMIS \
pbbs/integerSort/blockRadixSort \
pbbs/spmv/pSPMV \
pbbs/suffixArray/parallelRange \
pbbs/rayCast/kdTree \
pbbs/convexHull/quickHull \
pbbs/spanningTree/incrementalST pbbs/spanningTree/newST pbbs/spanningTree/ndST \
pbbs/breadthFirstSearch/ndBFS pbbs/breadthFirstSearch/deterministicBFS"

# Additional tests
MORE_CILK="lu heat cilksort matmul"

MORE_INTEL="intel/BlackScholes_12_17_14/ intel/DCT_01_07_15/"

MORE_PBBS="pbbs/breadthFirstSearch/hybridBFS \
pbbs/comparisonSort/quickSort pbbs/comparisonSort/sampleSort \
pbbs/delaunayRefine/incrementalRefine \
pbbs/delaunayTriangulation/incrementalDelaunay \
pbbs/dictionary/deterministicHash \
pbbs/maximalIndependentSet/luby \
pbbs/maximalMatching/incrementalMatching \
pbbs/minSpanningTree/parallelKruskal \
pbbs/nBody/parallelBarnesHut pbbs/nBody/parallelCK \
pbbs/nearestNeighbors/octTree2Neighbors pbbs/nearestNeighbors/octTreeNeighbors \
pbbs/removeDuplicates/deterministicHash \
pbbs/setCover/manis \
pbbs/suffixArray/parallelKS \
pbbs/triangleCounting/orderedMerge"

BUGGY_PBBS="pbbs/maximalMatching/ndMatching pbbs/gaussianElimination/newParallelGe"

PBBS_CORR_TESTS="pbbs/maximalIndependentSet/ndMIS pbbs/maximalIndependentSet/incrementalMIS \
pbbs/spmv/pSPMV \
pbbs/rayCast/kdTree \
pbbs/convexHull/quickHull \
pbbs/spanningTree/incrementalST pbbs/spanningTree/newST pbbs/spanningTree/ndST \
pbbs/breadthFirstSearch/ndBFS pbbs/breadthFirstSearch/deterministicBFS \
pbbs/comparisonSort/quickSort pbbs/comparisonSort/sampleSort \
pbbs/delaunayRefine/incrementalRefine \
pbbs/delaunayTriangulation/incrementalDelaunay \
pbbs/dictionary/deterministicHash \
pbbs/maximalIndependentSet/luby \
pbbs/maximalMatching/incrementalMatching \
pbbs/minSpanningTree/parallelKruskal \
pbbs/nBody/parallelCK \
pbbs/nearestNeighbors/octTree2Neighbors pbbs/nearestNeighbors/octTreeNeighbors \
pbbs/removeDuplicates/deterministicHash \
pbbs/setCover/manis \
pbbs/suffixArray/parallelKS \
pbbs/triangleCounting/orderedMerge \
pbbs/integerSort/blockRadixSort"

OTHER_PBBS_TESTS="pbbs/suffixArray/parallelRange \
pbbs/breadthFirstSearch/hybridBFS \
pbbs/nBody/parallelBarnesHut"

PBBS_RELEASED="pbbs/breadthFirstSearch/deterministicBFS \
pbbs/suffixArray/parallelRange \
pbbs/nearestNeighbors/octTree2Neighbors \
pbbs/integerSort/blockRadixSort \
pbbs/dictionary/deterministicHash \
pbbs/maximalIndependentSet/incrementalMIS \
pbbs/removeDuplicates/deterministicHash \
pbbs/maximalIndependentSet/ndMIS \
pbbs/rayCast/kdTree \
pbbs/maximalMatching/ndMatching \
pbbs/convexHull/quickHull \
pbbs/maximalMatching/incrementalMatching \
pbbs/comparisonSort/sampleSort \
pbbs/breadthFirstSearch/ndBFS \
pbbs/spanningForest/incrementalST \
pbbs/spanningForest/ndST \
pbbs/suffixArray/parallelKS \
pbbs/delaunayTriangulation/incrementalDelaunay \
pbbs/minSpanningForest/parallelKruskal \
pbbs/delaunayRefine/incrementalRefine \
pbbs/nBody/parallelCK"

PBBS_STABLE="$PBBS_RELEASED \
pbbs/comparisonSort/quickSort \
pbbs/triangleCounting/colorfulOrderedMerge \
pbbs/triangleCounting/orderedHash \
pbbs/triangleCounting/orderedMerge"

REDUCER_TESTS="dedup ferret"

DEFAULT=1
RUN_P2_TESTS=0
RUN_CILK_TESTS=0
RUN_INTEL_TESTS=0
RUN_PBBS_TESTS=0
RUN_MINIFE_TEST=0
RUN_REDUCER_TESTS=0
NUMTRIALS=REGRESSION_NUMTRIALS
ARGS=""

function usage {
    >&2 echo -e "Usage:"
    >&2 echo -e "$0 [-p2] [-cilk] [-intel] [-pbbs] [-minife] [-reducers] [-x|--trials=<number of trials>]"
    >&2 echo -e "\tBuild the specified test in pbbs."
    >&2 echo -e "\t-p2 : Run 6.172 project 2 tests."
    >&2 echo -e "\t-cilk : Run Cilk-5 tests."
    >&2 echo -e "\t-intel : Run Intel example code tests."
    >&2 echo -e "\t-pbbs : Run PBBS tests."
    >&2 echo -e "\t-minife : Run miniFE test."
    >&2 echo -e "\t-reducers : Run reducer tests."
    >&2 echo -e "\t-x|--trials=<number of trials> : Run each test <number of trials> times.  (Default is $REGRESSION_NUMTRIALS runs)."
    >&2 echo -e "$0 -h|--help"
    >&2 echo -e "\tPrint this help message."
    exit 1
}

while [[ $# > 0 ]]
do
    key="$1"
    case $key in
	-h|--help)
	    usage
	    ;;
	-p2)
	    DEFAULT=0
	    RUN_P2_TESTS=1
	    shift
	    ;;
	-cilk)
	    DEFAULT=0
	    RUN_CILK_TESTS=1
	    shift
	    ;;
	-intel)
	    DEFAULT=0
	    RUN_INTEL_TESTS=1
	    shift
	    ;;
	-pbbs)
	    DEFAULT=0
	    RUN_PBBS_TESTS=1
	    shift
	    ;;
	-minife)
	    DEFAULT=0
	    RUN_MINIFE_TEST=1
	    shift
	    ;;
	-reducers)
	    DEFAULT=0
	    RUN_REDUCER_TESTS=1
	    shift
	    ;;
	-x=*|--trials=*)
	    REGRESSION_NUMTRIALS="${key#*=}"
	    shift
	    ;;
	*)
	    ARGS="$ARGS $key"
	    shift
	    ;;
    esac
done

if [[ $DEFAULT -eq 1 ]]; then
    RUN_P2_TESTS=1
    RUN_CILK_TESTS=1
    RUN_INTEL_TESTS=1
    RUN_PBBS_TESTS=1
    RUN_MINIFE_TEST=1
    RUN_REDUCER_TESTS=1
    # ARGS="-t"
fi

if [[ $RUN_P2_TESTS -eq 1 ]]; then
    bash ./testP2.sh $ARGS -x=$REGRESSION_NUMTRIALS $P2_TESTS
fi
if [[ $RUN_CILK_TESTS -eq 1 ]]; then
    bash ./testCilk.sh $ARGS -x=$REGRESSION_NUMTRIALS $CILK_TESTS $MORE_CILK
    # bash ./testCilk.sh -s -t -x=$REGRESSION_NUMTRIALS $CILK_TESTS $MORE_CILK
fi
if [[ $RUN_INTEL_TESTS -eq 1 ]]; then
    # bash ./testIntel.sh -s -t -x=$REGRESSION_NUMTRIALS $INTEL_TESTS $MORE_INTEL
    bash ./testIntel.sh $ARGS -x=$REGRESSION_NUMTRIALS $INTEL_TESTS $MORE_INTEL
fi
if [[ $RUN_PBBS_TESTS -eq 1 ]]; then
    # bash ./testPBBS.sh -s -t -x=$REGRESSION_NUMTRIALS $PBBS_CORR_TESTS
    # bash ./testPBBS.sh -s -t -x=$REGRESSION_NUMTRIALS $OTHER_PBBS_TESTS
    # bash ./testPBBS.sh -t -c -x=$REGRESSION_NUMTRIALS $PBBS_CORR_TESTS
    # bash ./testPBBS.sh -t -x=$REGRESSION_NUMTRIALS $OTHER_PBBS_TESTS
    bash ./testPBBS.sh $ARGS -x=$REGRESSION_NUMTRIALS $PBBS_RELEASED
fi

if [[ $RUN_MINIFE_TEST -eq 1 ]]; then
    bash ./testMiniFE.sh $ARGS -x=$REGRESSION_NUMTRIALS
fi

if [[ $RUN_REDUCER_TESTS -eq 1 ]]; then
    bash ./testReducers.sh $ARGS -x=$REGRESSION_NUMTRIALS $REDUCER_TESTS
fi

# bash ./testCilk.sh -s -st $CILK_TESTS
# bash ./testIntel.sh -s -st $INTEL_TESTS
# bash ./testPBBS.sh -s -st $PBBS_TESTS
# bash ./testPBBS.sh -s -st -t -sr -r $MORE_PBBS

# bash ./testCilk.sh -sr -st -r -t $CILK_TESTS
# bash ./testIntel.sh -sr -st -r -t $INTEL_TESTS
# bash ./testPBBS.sh -sr -st -r -t $PBBS_TESTS
