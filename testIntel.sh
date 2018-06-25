#!/usr/bin/env bash

MY_EXTRA_CFLAGS=""

source configureTests.sh

RaceDetectTest() {
    Compiler=$1
    Test=$2
    Results=Cilksan-Compile-$Compiler-$Test.txt
    rm -rf $Results
    echo "<Compiling $Test with $Compiler for race detection>"
    make clean
    (CC=$(C_COMPILER $Compiler) \
       CXX=$(CXX_COMPILER $Compiler) \
       EXTRA_CFLAGS="$CILKSAN_CFLAGS" \
       EXTRA_CXXFLAGS="$CILKSAN_CFLAGS" \
       EXTRA_LDFLAGS="$CILKSAN_LDFLAGS" \
       LD_LIBRARY_PATH=$CILKSAN_LIB:$LD_LIBRARY_PATH make run -B perf_num=1)
    if [[ $? -ne "0" ]]; then
	echo "<FAILED>"
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
       EXTRA_CFLAGS="$CILKSCALE_CFLAGS" \
       EXTRA_CXXFLAGS="$CILKSCALE_CFLAGS" \
       EXTRA_LDFLAGS="$CILKSCALE_LDFLAGS" \
       EXTRA_LDLIBS="$CILKSCALE_LDLIBS" \
       make run -B perf_num=1)
    if [[ $? -ne "0" ]]; then
	echo "<FAILED>"
    fi
    return $?
}

CompileAndRunTest() {
    Compiler=$1
    Test=$2
    Worker=$3
    Trials=$4
    Results=Run-$Compiler-$Worker.txt
    rm -rf $Results
    (CC=$(C_COMPILER $Compiler) \
       CXX=$(CXX_COMPILER $Compiler) \
       EXTRA_CFLAGS="$MY_EXTRA_CFLAGS $EXTRA_CFLAGS"\
       EXTRA_CXXFLAGS="$MY_EXTRA_CFLAGS $EXTRA_CXXFLAGS"\
       make run -B perf_num=1)
    Failed=0
    # echo "CILK_NWORKERS=$Worker taskset -c 0-$(($Worker-1)) numactl -i all make run >> $Results 2>&1"
    # (RUN_ON_P_WORKERS $Worker "make run")
    for Trial in `seq 1 $Trials`; do
	# (RUN_ON_P_WORKERS $P "./$Test $(TEST_RUN_ARGS $Test)") >> $Results 2>&1
	# CILK_NWORKERS=$Worker taskset -c 0-$(($Worker-1)) numactl -i all make run >> $Results 2>&1
	(RUN_ON_P_WORKERS $Worker "make run") >> $Results 2>&1
	Failed=$Failed||$?
    done
    # Report failure or sorted running times.
    if [[ $Failed -ne 0 ]]; then
	echo "<FAILED>"
    else
	echo "<$Compiler $Test $Worker>"
	sort $Results | sed '/^\s*$/d' | head -n $Trials
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
    pushd $Test
    for Compiler in $COMPILERS_TO_TEST; do
	WORKERS=$WORKERS_TO_TEST
	if [[ ($Compiler == "stapir") ||
		  ($Compiler == "sref") ||
		  ($Compiler == "serial") ]]; then
	    WORKERS="1"
	fi
	# CompileTest $Compiler $Test
	# if [[ $? -ne 0 ]]; then break; fi
	# RaceDetectTest $Compiler $Test
	# CompileTest $Compiler $Test
	for Worker in $WORKERS; do
	    CompileAndRunTest $Compiler $Test $Worker $NUMTRIALS
	done
    done
    popd
done
