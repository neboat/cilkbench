#!/bin/bash
curr=`pwd`
datadir=../../data

if [[ $# -le 2 ]]; then
echo "Usage: ./run.sh <prog> <data size> <output_file> [nproc] [pipe_depth] where"
echo "where     prog includes: serial, cilk, cilk-bw, pthreads, tbb, parsec3-tbb, and" 
echo "          data size includes: simdev, simsmall, simmedium, simlarge, native."
echo "NOTE: for cilk version, pipe_depth is used as a multiplier to set the "
echo "      actul depth, i.e., depth = \$(pipe_depth) * \$(nproc)."
exit 0
fi

prog=$1
dsize=$2
outfile=$3
nproc=$4
depth=$5

numReps=1

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
  if [[ $1 = 'cilk' || $1 = 'cilk-bw' ]]; then
      cmd+=" --nproc $nproc "
      if [[ "$depth" != "" ]]; then
         cmd+="--pipe-qsize-mult $depth "
      fi
  elif [[ $1 = 'cilk-bw' ]]; then
      cmd+=" --nproc $nproc "
      if [[ "$depth" != "" ]]; then
         cmd+="--pipe-qsize-mult $depth "
      fi
  elif [[ $1 = 'tbb' ]]; then
      cmd+=" -t $nproc "
  fi

  cmd+=" -c -i $infile -o $outfile"

  echo "$cmd"
  $cmd
#  rm -rf $outfile
#  echo "rm -rf $outfile"
done

