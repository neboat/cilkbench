#!/bin/bash
curr=`pwd`
datadir=../../data

if [[ $# -le 2 ]]; then
echo "Usage: ./run.sh <prog> <data size> <output_file> [nproc] [iters_per_thread] where"
echo "where     prog includes: serial, tbb, piper" 
echo "          data size includes: simdev, simsmall, simmedium, simlarge, native."
exit 0
fi

prog=$1
dsize=$2
outfile=$3
nproc=$4
depth=$5

numReps=5

if [[ $2 = 'dev' || $2 = 'small' || $2 = 'medium' || $2 = 'large' ]]; then
    dsize="sim$dsize"
fi

if [ "$nproc" = "" ]; then
    nproc=1
fi
# For P=1, set maxP to be small.
if [[ $1 = 'serial' ]]; then
    nproc=1
fi

# for dsize in simsmall simmedium simlarge native; 
# do 
infile="$datadir/$dsize/media.dat"
for ((k = 0 ; k < $numReps ; k++ )); do
  cmd="./dedup-$prog"
  if [[ $1 = 'tbb' ]]; then
      cmd+=" -t $nproc "
  elif [[ $1 = 'piper' ]]; then
      cmd+=" -t $nproc "
  fi
  if [[ "$depth" != "" ]]; then
      cmd+=" -q $depth"
  fi
  cmd+=" -c -i $infile -o $outfile"

  echo "$cmd"
  $cmd
#  rm -rf $outfile
#  echo "rm -rf $outfile"
done

