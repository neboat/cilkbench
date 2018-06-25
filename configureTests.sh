COMPILERS="gcc tapir ref stapir sref serial"
WORKERS="1 18"
# NUMTRIALS=3

if [ -z $TAPIR_BASE ]; then
    TAPIR_BASE=/data/compilers/tapir/src-release_60
fi

if [ -z $REF_BASE ]; then
    REF_BASE=$TAPIR_BASE-ref
fi

if [ -z $DEBUG ]; then
    TAPIR_ROOT=$TAPIR_BASE/build
    REF_ROOT=$REF_BASE/build
else
    echo "Using Debug build of Tapir"
    TAPIR_ROOT=$TAPIR_BASE/build-debug
    REF_ROOT=$REF_BASE/build-debug
fi

TAPIR_PATH=$TAPIR_ROOT/bin
TAPIR_LIB=$TAPIR_ROOT/lib/clang/`$TAPIR_PATH/clang --version | perl -pe '($_)=/([0-9]+([.][0-9]+)+)/'`/lib/linux
echo $TAPIR_LIB
# REF_PATH=/data/compilers/tapir/src-release_60-ref/build-debug/bin
REF_PATH=$REF_ROOT/bin

TAPIR_CILK_FLAG=-fcilkplus
REF_CILK_FLAG=-fcilkplus #-fdetach
GCC_CILK_FLAG=-fcilkplus

SERIAL_CFLAGS="-Dcilk_for=for -Dcilk_spawn=  -Dcilk_sync=  -D_Cilk_for=for -D_Cilk_spawn=  -D_Cilk_sync= "
REPORT_CFLAGS="-Rpass=.* -Rpass-analysis=.*"
# REPORT_CFLAGS="-Rpass=loop-spawning"

CILKSAN_LIB=$TAPIR_LIB
CILKSAN_CFLAGS="-g -fsanitize=cilk"
# CILKSAN_LDFLAGS="-lcilksan -L$CILKSAN_LIB"
CILKSAN_LDFLAGS="-fsanitize=cilk"

CILKSCALE_CFLAGS="-flto -fcsi"
CILKSCALE_LDFLAGS="-flto -fuse-ld=gold -L$TAPIR_LIB"
CILKSCALE_LDLIBS="-lclang_rt.cilkscale-x86_64"

C_COMPILER() {
    case $1 in
	"tapir") echo "$TAPIR_PATH/clang $TAPIR_CILK_FLAG";;
	"ref") echo "$REF_PATH/clang $REF_CILK_FLAG";;
	"stapir") echo "$TAPIR_PATH/clang $TAPIR_CILK_FLAG $SERIAL_CFLAGS";;
	"sref") echo "$REF_PATH/clang $REF_CILK_FLAG $SERIAL_CFLAGS";;
	"serial") echo "$TAPIR_PATH/clang $SERIAL_CFLAGS";;
	"gcc") echo "gcc $GCC_CILK_FLAG";;
	"sgcc") echo "gcc $GCC_CILK_FLAG $SERIAL_CFLAGS";;
	*) echo "Unknown compiler $1"; exit 1;;
    esac
}

CXX_COMPILER() {
    case $1 in
	"tapir") echo "$TAPIR_PATH/clang++ $TAPIR_CILK_FLAG";;
	"ref") echo "$REF_PATH/clang++ $REF_CILK_FLAG";;
	"stapir") echo "$TAPIR_PATH/clang++ $TAPIR_CILK_FLAG $SERIAL_CFLAGS";;
	"sref") echo "$REF_PATH/clang++ $REF_CILK_FLAG $SERIAL_CFLAGS";;
	"serial") echo "$TAPIR_PATH/clang++ $SERIAL_CFLAGS";;
	"gcc") echo "g++ $GCC_CILK_FLAG";;
	"sgcc") echo "g++ $GCC_CILK_FLAG $SERIAL_CFLAGS";;
	*) echo "Unknown compiler $1"; exit 1;;
    esac
}

RUN_ON_P_WORKERS() {
    P=$1
    # echo "CILK_NWORKERS=$P setarch x86_64 -R taskset -c 1-$P numactl -i all ionice -c 2 -n 0 $2"
    # CILK_NWORKERS=$P setarch x86_64 -R taskset -c 1-$P numactl -i all ionice -c 2 -n 0 $2
    echo "CILK_NWORKERS=$P setarch x86_64 -R taskset -c 1-$P numactl -i all ionice -c 2 -n 0 $2"
    CILK_NWORKERS=$P setarch x86_64 -R taskset -c 1-$P numactl -i all ionice -c 2 -n 0 $2
}
