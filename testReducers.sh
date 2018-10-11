#!/usr/bin/env bash

TESTDIR="./reducers"

source configureTests.sh
source parseArgs.sh

TEST_RUN () {
    case $1 in
	"dedup-reducer") echo "./run.sh cilk native out";;
	"ferret-reducer") echo "./run.sh reducer native out";;
	"dedup-serial") echo "./run.sh serial native out";;
	"ferret-serial") echo "./run.sh serial native out";;
	*) echo "INVALID CODE CASE $1"; exit;;
    esac
}

CHECK_RUN () {
    case $1 in
	"dedup-reducer") echo "./run.sh cilk small out";;
	"ferret-reducer") echo "./run.sh reducer simsmall out";;
	"dedup-serial") echo "./run.sh serial small out";;
	"ferret-serial") echo "./run.sh serial simsmall out";;
	*) echo "INVALID CODE CASE $1"; exit;;
    esac
}

TEST_DIR () {
    case $1 in
	dedup*) echo "dedup";;
	ferret*) echo "ferret";;
	*) echo "INVALID CODE CASE $1"; exit;;
    esac
}

COMPILE_DIR () {
    case $1 in
	dedup*) echo "src/cilk";;
	ferret*) echo "src";;
	*) echo "INVALID CODE CASE $1"; exit;;
    esac
}

MAKE_TARGET () {
    case $1 in
	"dedup-reducer") echo "dedup-reducer";;
	"ferret-reducer") echo "reducer";;
	"dedup-serial") echo "dedup-serial";;
	"ferret-serial") echo "serial";;
	*) echo "INVALID CODE CASE $1"; exit;;
    esac
}

CompileTest() {
    Compiler=$1
    Test=$2
    Results=Compile-$Compiler-$Test.txt
    rm -rf $Results
    echo "<Compiling $Test with $Compiler>"
    pushd $(COMPILE_DIR $Test)
    make clean
    (CC=$(C_COMPILER $Compiler) \
       CXX=$(CXX_COMPILER $Compiler) \
       EXTRA_CFLAGS="$EXTRA_CFLAGS"\
       EXTRA_CXXFLAGS="$EXTRA_CFLAGS"\
       make -B $(MAKE_TARGET $Test) > $Results 2>&1)
    if [[ $? -ne "0" ]]; then
	cat $Results
	echo "<FAILED>"
    fi
    popd
    return $?
}

RaceDetectTest() {
    Compiler=$1
    Test=$2
    Results=Cilksan-Compile-$Compiler-$Test.txt
    rm -rf $Results
    echo "<Compiling $Test with $Compiler for race detection>"
    pushd $(COMPILE_DIR $Test)
    make clean
    (CC=$(C_COMPILER $Compiler) \
       CXX=$(CXX_COMPILER $Compiler) \
       EXTRA_CFLAGS="$CILKSAN_CFLAGS" \
       EXTRA_CXXFLAGS="$CILKSAN_CFLAGS" \
       EXTRA_LDFLAGS="$CILKSAN_LDFLAGS" \
       make -B $(MAKE_TARGET $Test) > $Results 2>&1)
    popd
    if [[ $? -ne "0" ]]; then
	echo "<FAILED>"
    else
	echo "<Race-detecting $Test with $Compiler>"
	LD_LIBRARY_PATH=$CILKSAN_LIB:$LD_LIBRARY_PATH $(TEST_RUN $Test)
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
    pushd $(COMPILE_DIR $Test)
    make clean
    (CC=$(C_COMPILER $Compiler) \
       CXX=$(CXX_COMPILER $Compiler) \
       EXTRA_CFLAGS="$CILKSCALE_CFLAGS" \
       EXTRA_CXXFLAGS="$CILKSCALE_CFLAGS" \
       EXTRA_LDFLAGS="$CILKSCALE_LDFLAGS" \
       EXTRA_LDLIBS="$CILKSCALE_LDLIBS" \
       make -B $(MAKE_TARGET $Test) > $Results 2>&1)
    popd
    if [[ $? -ne "0" ]]; then
	echo "<FAILED>"
    else
	echo "<Analyzing scalability of $Test with $Compiler>"
	$(TEST_RUN $Test)
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
	echo "CILK_NWORKERS=$Worker $(CHECK_RUN $Test)"
	CILK_NWORKERS=$Worker $(CHECK_RUN $Test)
    fi
    # echo "CILK_NWORKERS=$Worker taskset -c 0-$(($Worker-1)) numactl -i all $(TEST_RUN $Test) >> $Results 2>&1"
    # (RUN_ON_P_WORKERS $Worker "$(TEST_RUN $Test)")
    for Trial in `seq 1 $Trials`; do
	# CILK_NWORKERS=$Worker taskset -c 0-$(($Worker-1)) numactl -i all $(TEST_RUN $Test) >> $Results 2>&1
	(RUN_ON_P_WORKERS $Worker "$(TEST_RUN $Test)") >> $Results 2>&1
	Failed=$Failed||$?
    done
    # Report failure or sorted running times.
    if [[ $Failed -ne 0 ]]; then
	echo "<FAILED>"
    else
	echo "<$Compiler $Test $Worker>"
	grep -i "time" $Results | sort | sed '/^\s*$/d' | head -n $Trials
    fi
    return $Failed
}

if [[ "" == "$ALLTESTS" ]]; then
    usage
fi

# Die if anything produces an error
set -e

for TestName in $ALLTESTS; do
    pushd $TESTDIR/$(TEST_DIR $TestName)
    if [ ! -d data ]; then
	pushd inputs
	./unpack.sh
	popd
    fi
    for Compiler in $COMPILERS_TO_TEST; do
	Test=$TestName
	WORKERS=$WORKERS_TO_TEST
	if [[ ($Compiler == "stapir") ||
		  ($Compiler == "sref") ||
		  ($Compiler == "serial") ||
		  ($Compiler == "sgcc") ]]; then
	    WORKERS="1"
	    Test=$TestName-serial
	else
	    Test=$TestName-reducer
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
