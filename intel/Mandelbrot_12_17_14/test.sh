echo "compile"
#rm x.ll
#~/git/Parallel-IR/build/bin/clang -O3 ./src/mandelbrot.cpp -S -emit-llvm -o x.ll  -g -ggdb -O3 -ftapir -march=native || exit 1
echo "asm"
~/git/Parallel-IR/build/bin/llc -O0 x.ll -o xi7.s -mcpu=sandybridge -O0 || exit 1
~/git/Parallel-IR/build/bin/llc -O0 x.ll -o xi8.s -mcpu=sandybridge -mattr=-avx -O0 || exit 1
echo "link"
~/project2-all/bin/g++ release/timer.o release/bmp_image.o xi8.s release/main.o -lcilkrts  -o release/Mandelbrot -O0 -march=native && ./release/Mandelbrot
~/project2-all/bin/g++ release/timer.o release/bmp_image.o xi7.s release/main.o -lcilkrts  -o release/Mandelbrot -O0 -march=native && ./release/Mandelbrot
