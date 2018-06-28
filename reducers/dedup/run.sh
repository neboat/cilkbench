#!/bin/bash
curr=`pwd`
rundir=$curr/src
datadir=$curr/data

if [ $# -le 2 ]; then
echo "Usage ./run.sh <prog> <data size> <output file> [nproc] [depth] where"
echo "      prog includes: serial, cilk, pthreads, tbb"
echo "      data size includes dev, small, medium, large, and native."
exit 0
fi

dsize=$2
outfile=$3
nproc=$4
depth=$5

if [ "$nproc" = "" ]; then
    nproc=1
fi

if [[ $2 = 'dev' || $2 = 'small' || $2 = 'medium' || $2 = 'large' ]]; then
    dsize="sim$dsize"
fi

# For P=1, set maxP to be small.
if [[ $1 = 'serial' ]]; then
    nproc=1
fi

if [ $1 = 'serial' ]; then
    cmd="$rundir/cilk/dedup-serial "  
elif [ $1 = 'parsec-serial' ]; then
    cmd="$rundir/parsec3/dedup-serial "
elif [ $1 = 'cilk' ]; then
    cmd="$rundir/cilk/dedup-reducer "  
elif [ $1 = 'pthreads' ]; then
    cmd="$rundir/parsec3/dedup-pthreads -t $nproc "  
    if [[ "$depth" != "" ]]; then
         cmd+=" -q $depth "
    fi
elif [ $1 = 'tbb' ]; then
    cmd="$rundir/cilk/dedup-tbb -t $nproc "  
fi

cmd+="-c -i $datadir/$dsize/media.dat -o $outfile"

echo "$cmd"
echo `$cmd`

rm -rf $outfile
