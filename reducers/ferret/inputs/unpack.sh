#!/bin/bash
echo "Unpacking small data set ... "
for dataset in simdev simsmall simmedium simlarge native
do
    mkdir -p ../data/$dataset
    cp -f input_$dataset.tar ../data/$dataset
    pushd ../data/$dataset/
    tar xfv input_$dataset.tar
    rm -rf input_$dataset.tar
    popd
done
