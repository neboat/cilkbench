#!/usr/bin/env bash

TESTDIR="./cilk5"

source configureTests.sh

TEST_RUN_ARGS () {
    case $1 in
	"cholesky") echo "-n 4000 -z 8000";;
	"fft") echo "-n 20000000";;
	"fib") echo "42";;
	"heat") echo "-nx 4096 -ny 4096 -nt 200";;
	"lu") echo "-n 4096";;
	"matmul") echo "-n 2048";;
	"nqueens") echo "13";;
	"qsort") echo "50000000";;
	"rectmul") echo "-x 4096 -y 4096 -z 2048";;
	"rectmulred") echo "-x 4096 -y 4096 -z 2048";;
	"strassen") echo "-n 4096";;
	"cilksort") echo "-n 80000000";;
	*) echo "INVALID CODE CASE $1"; exit;;
    esac
}

CHECK_RUN_ARGS () {
    case $1 in
	"cholesky") echo "-c";;
	"fft") echo "-c";;
	"fib") echo "42";;
	"heat") echo "";;
	"lu") echo "-c";;
	"matmul") echo "-c";;
	"nqueens") echo "13 -c";;
	"qsort") echo "10000000";;
	"rectmul") echo "-c";;
	"rectmulred") echo "-c";;
	"strassen") echo "-c";;
	"cilksort") echo "-c";;
	*) echo "INVALID CODE CASE $1"; exit;;
    esac
}

CompileTest() {
    Compiler=$1
    Test=$2
    Results=Compile-$Compiler-$Test.txt
    rm -rf $Results
    echo "<Compiling $Test with $Compiler>"
    make clean
    (CC=$(C_COMPILER $Compiler) \
       CXX=$(CXX_COMPILER $Compiler) \
       CILKFLAG=$(CILKFLAG $Compiler) \
       EXTRA_CFLAGS="$EXTRA_CFLAGS"\
       EXTRA_CXXFLAGS="$EXTRA_CFLAGS"\
       make -B $Test 2>&1)
    if [[ $? -ne "0" ]]; then
	echo "<FAILED>"
    fi
    return $?
}

RaceDetectTest() {
    Compiler=$1
    Test=$2
    Results=Cilksan-Compile-$Compiler-$Test.txt
    rm -rf $Results
    echo "<Compiling $Test with $Compiler for race detection>"
    make clean
    (CC=$(C_COMPILER $Compiler) \
       CXX=$(CXX_COMPILER $Compiler) \
       CILKFLAG=$(CILKFLAG $Compiler) \
       EXTRA_CFLAGS="$CILKSAN_CFLAGS" \
       EXTRA_CXXFLAGS="$CILKSAN_CFLAGS" \
       EXTRA_LDFLAGS="$CILKSAN_LDFLAGS" \
       make -B $Test > $Results 2>&1)
    if [[ $? -ne "0" ]]; then
	echo "<FAILED>"
    else
	echo "<Race-detecting $Test with $Compiler>"
	LD_LIBRARY_PATH=$CILKSAN_LIB:$LD_LIBRARY_PATH ./$Test
	if [[ $? -ne "0" ]]; then
	    echo "<FAILED>"
	fi
    fi
    return $?
}

ScalabilityTest() {
    Compiler=$1
    Test=$2
    Results=Cilkscale-Compile-$Compiler-$Test.txt
    rm -rf $Results
    echo "<Compiling $Test with $Compiler for scalability analysis>"
    make clean
    (CC=$(C_COMPILER $Compiler) \
       CXX=$(CXX_COMPILER $Compiler) \
       CILKFLAG=$(CILKFLAG $Compiler) \
       EXTRA_CFLAGS="$CILKSCALE_CFLAGS" \
       EXTRA_CXXFLAGS="$CILKSCALE_CFLAGS" \
       EXTRA_LDFLAGS="$CILKSCALE_LDFLAGS" \
       EXTRA_LDLIBS="$CILKSCALE_LDLIBS" \
       make -B $Test > $Results 2>&1)
    if [[ $? -ne "0" ]]; then
	echo "<FAILED>"
    else
	echo "<Analyzing scalability of $Test with $Compiler>"
	./$Test $(TEST_RUN_ARGS $Test)
	if [[ $? -ne "0" ]]; then
	    echo "<FAILED>"
	fi
    fi
    return $?
}

RunTest() {
    Compiler=$1
    Test=$2
    Worker=$3
    Trials=$4
    Results=Run-$Compiler-$Test-$Worker.txt
    rm -rf $Results
    Failed=0
    if [[ $CHECK_CORRECTNESS -ne 0 ]]; then
	echo "CILK_NWORKERS=$Worker ./$Test $(CHECK_RUN_ARGS $Test)"
	CILK_NWORKERS=$Worker ./$Test $(CHECK_RUN_ARGS $Test)
    fi
    # echo "CILK_NWORKERS=$Worker taskset -c 0-$(($Worker-1)) numactl -i all ./$Test $(TEST_RUN_ARGS $Test) >> $Results 2>&1"
    # (RUN_ON_P_WORKERS $Worker "./$Test $(TEST_RUN_ARGS $Test)")
    for Trial in `seq 1 $Trials`; do
	# CILK_NWORKERS=$Worker taskset -c 0-$(($Worker-1)) numactl -i all ./$Test $(TEST_RUN_ARGS $Test) >> $Results 2>&1
	(RUN_ON_P_WORKERS $Worker "./$Test $(TEST_RUN_ARGS $Test)") >> $Results 2>&1
	Failed=$Failed||$?
    done
    # Report failure or sorted running times.
    if [[ $Failed -ne 0 ]]; then
	echo "<FAILED>"
    else
	echo "<$Compiler $Test $Worker>"
	grep "^[0-9]" $Results | sort -n | sed '/^\s*$/d' | head -n $Trials
    fi
    return $Failed
}

source parseArgs.sh

if [[ "" == "$ALLTESTS" ]]; then
    usage
fi

# Die if anything produces an error
set -e

for Test in $ALLTESTS; do
    pushd $TESTDIR
    for Compiler in $COMPILERS_TO_TEST; do
	WORKERS=$WORKERS_TO_TEST
	if [[ ($Compiler == "stapir") ||
		  ($Compiler == "sref") ||
		  ($Compiler == "serial") ||
		  ($Compiler == "sgcc") ]]; then
	    WORKERS="1"
	fi
	CompileTest $Compiler $Test
	if [[ $? -ne 0 ]]; then break; fi
	if [[ $CHECK_CILKSAN -ne 0 ]]; then
	    RaceDetectTest $Compiler $Test
	    CompileTest $Compiler $Test
	fi
	if [[ $CHECK_CILKSCALE -ne 0 ]]; then
	    ScalabilityTest $Compiler $Test
	    CompileTest $Compiler $Test
	fi
	for Worker in $WORKERS; do
	    RunTest $Compiler $Test $Worker $NUMTRIALS
	done
    done
    popd
done
