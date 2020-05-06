#!/usr/bin/env bash

source configureTests.sh
source parseArgs.sh

if [ -z $TMPDIR ]; then
    echo "export TMPDIR=$PWD/tmp"
    export TMPDIR=$PWD/tmp
    if [ ! -d $PWD/tmp ]; then
	mkdir -p $PWD/tmp
    fi
fi

if [[ "" == "$ALLTESTS" ]]; then
    usage
fi

# Die if anything produces an error
set -e

DEBUG_STR=""
if [ -z $DEBUG ]; then
    DEBUG_STR="DEBUG=1"
fi

for Test in $ALLTESTS; do
    for Compiler in $COMPILERS_TO_TEST; do
	echo "pushd $Test"
	pushd $Test
	cd ../common
	make cleansrc
	cd -
	export TAPIR=1
	#export GCILK11=1
	export OPENCILK=1
	export CILKFLAG=$(CILKFLAG $Compiler)
	make cleansrc
	WORKERS=$WORKERS_TO_TEST
	if [[ $CHECK_CILKSAN -ne 0 ]]; then
	    echo "Running race detection on $Test"
	    EXTRA_CFLAGS="$CILKSAN_CFLAGS $EXTRA_CFLAGS"
	    EXTRA_LDFLAGS="$CILKSAN_LDFLAGS $EXTRA_LDFLAGS"
	    case $Compiler in
		"tapir") EXTRA_CFLAGS=$EXTRA_CFLAGS EXTRA_LDFLAGS=$EXTRA_LDFLAGS TAPIR_BASE=$TAPIR_BASE make $DEBUG_STR;;
		*) echo "Unknown compiler for race detection$1"; exit 1;;
	    esac
	    LD_LIBRARY_PATH=$CILKSAN_LIB:$LD_LIBRARY_PATH ./testInputs --small -r $NUMTRIALS -p 1
	    make cleansrc
	    cd ../common
	    make cleansrc
	    cd -
	fi
	case $Compiler in
	    "tapir") export TAPIR_PCC=$TAPIR_CXX; make $DEBUG_STR;;
	    "ref") export TAPIR_PCC="$REF_PATH/clang++"; make $DEBUG_STR REF=1;;
	    "stapir") export TAPIR_PCC=$TAPIR_CXX; make $DEBUG_STR SERIAL=1; WORKERS="1";;
	    "sref") export TAPIR_PCC=$REF_PATH/clang++; make $DEBUG_STR REF=1 SERIAL=1; WORKERS="1";;
	    "serial") export TAPIR_PCC=$TAPIR_CXX; make $DEBUG_STR ORIG=1 SERIAL=1; WORKERS="1";;
	    "gcc") make $DEBUG_STR GCC=1;;
	    "sgcc") make $DEBUG_STR GCC=1 SERIAL=1; WORKERS="1";;
	    *) echo "Unknown compiler $1"; exit 1;;
	esac
	# if [[ ($Compiler == "stapir") ||
	# 	  ($Compiler == "sref") ||
	# 	  ($Compiler == "serial") ]]; then
	#     if [[ $Compiler == "stapir" ]]; then
	# 	make SERIAL=1
	#     elif [[ $COMPILER == "sref" ]]; then
	# 	make REF=1 SERIAL=1
	#     else
	# 	make ORIG=1 SERIAL=1
	#     fi
	#     WORKERS="1"
	# else
	#     if [[ $Compiler == "ref" ]]; then
	# 	make REF=1
	#     elif [[ $Compiler == "gcc" ]]; then
	# 	make GCC=1
	#     else
	# 	make
	#     fi
	# fi
	for P in $WORKERS; do
	    if [[ $CHECK_CORRECTNESS -ne 0 ]]; then
		echo "CILK_NWORKERS=$P ./testInputs -r $NUMTRIALS -p $P"
		CILK_NWORKERS=$P ./testInputs -r $NUMTRIALS -p $P
	    fi
	    # echo "CILK_NWORKERS=$P taskset -c 0-$(($P-1)) numactl -i all ./testInputs -x -r $NUMTRIALS -p $P"
	    # CILK_NWORKERS=$P taskset -c 0-$(($P-1)) numactl -i all ./testInputs -x -r $NUMTRIALS -p $P

	    # echo "CILK_NWORKERS=$P setarch x86_64 -R taskset -c 1-$P numactl -i all ionice -c 2 -n 0 ./testInputs -x -r $NUMTRIALS -p $P"
	    # CILK_NWORKERS=$P setarch x86_64 -R taskset -c 1-$P numactl -i all ionice -c 2 -n 0 ./testInputs -x -r $NUMTRIALS -p $P
	    (RUN_ON_P_WORKERS $P "./testInputs -x -r $NUMTRIALS -p $P")
	    # echo "CILK_NWORKERS=$P taskset -c 8-$(($P+7)) numactl -i all ./testInputs -x -r $NUMTRIALS -p $P"
	    # CILK_NWORKERS=$P taskset -c 8-$(($P+7)) numactl -i all ./testInputs -x -r $NUMTRIALS -p $P
	    
	done
	unset TAPIR_PCC
	echo "popd"
	popd
    done
done
