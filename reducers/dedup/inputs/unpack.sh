#!/bin/bash
echo "Unpacking small data set ... "
for dataset in simdev simsmall simmedium simlarge native
do
    mkdir -p ../data/$dataset
    cp -f input_$dataset.tar.bz2 ../data/$dataset
    pushd ../data/$dataset/
    tar xjfv input_$dataset.tar.bz2
    if [ $dataset = "simdev" ]; then
        mv hamlet.dat media.dat
    elif [ $dataset = "native" ]; then 
        mv FC-6-x86_64-disc1.iso media.dat
    fi
    rm -rf input_$dataset.tar.bz2
    popd
done
