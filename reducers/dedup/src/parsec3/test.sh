#! /bin/bash
if [ $# -lt 2 ]; then
echo "Usage: ./test.sh <program> <data size (simsmall, simmedium, simlarge)>"
exit 0
fi

./$1 -c -i ../../data/$2/media.dat -o compressed.dat.ddp
./$1 -u -i compressed.dat.ddp -o decompressed.dat
diff decompressed.dat ../../../data/dedup/$2/media.dat
