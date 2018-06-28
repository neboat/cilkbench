#!/bin/bash
cilkview="/export/opt0/angelee/cilk_dev/piper_cilkview/cilkutil/bin/cilkview"

curr=`pwd`
bindir=$curr/src/build/bin
datadir=$curr/data

if [ $# -le 2 ]; then
echo "Usage: ./run.sh <prog> <data_size> <output_file>"
echo "where prog includes: serial, reducer." 
echo "      data_size includes: simdev, simsmall, simmedium, simlarge, native."
exit 0
fi

prog=$1
dsize=$2
outfile=$3

cmd="$bindir/ferret-$prog $datadir/$dsize/corel/ lsh $datadir/$dsize/queries/ "
cmd+="10 $outfile"

echo "$cmd"
echo `$cmd`
