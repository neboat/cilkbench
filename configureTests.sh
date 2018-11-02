COMPILERS="gcc tapir ref stapir sref serial"
WORKERS="1 18"
# NUMTRIALS=3

TAPIR_CC=clang
TAPIR_CXX=clang++

if [ -z $REF_BASE ]; then
    if [ -z $TAPIR_BASE ]; then
	REF_BASE="/unknown/path/to/src-ref"
    else
	REF_BASE=$TAPIR_BASE-ref
    fi
fi

if [ ! -z $TAPIR_BASE ]; then
    if [ -z $DEBUG ]; then
	TAPIR_ROOT=$TAPIR_BASE/build
	REF_ROOT=$REF_BASE/build
    else
	echo "Using Debug build"
	TAPIR_ROOT=$TAPIR_BASE/build-debug
	REF_ROOT=$REF_BASE/build-debug
    fi
fi

if [ ! -z $TAPIR_ROOT ]; then
    TAPIR_PATH=$TAPIR_ROOT/bin
    REF_PATH=$REF_ROOT/bin

    TAPIR_CC=$TAPIR_PATH/clang
    TAPIR_CXX=$TAPIR_PATH/clang++

    TAPIR_LIB=$TAPIR_ROOT/lib/clang/`$TAPIR_CC --version | perl -pe '($_)=/([0-9]+([.][0-9]+)+)/'`/lib/linux
else
    TAPIR_LIB=/usr/lib/clang/`$TAPIR_CC --version | perl -pe '($_)=/([0-9]+([.][0-9]+)+)/'`/lib/linux
fi
echo $TAPIR_LIB

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

JEMALLOC_LDLIBS="-L`jemalloc-config --libdir` -Wl,-rpath,`jemalloc-config --libdir` -ljemalloc `jemalloc-config --libs`"

C_COMPILER() {
    case $1 in
	"tapir") echo "$TAPIR_CC $TAPIR_CILK_FLAG";;
	"ref") echo "$REF_PATH/clang $REF_CILK_FLAG";;
	"stapir") echo "$TAPIR_CC $TAPIR_CILK_FLAG $SERIAL_CFLAGS";;
	"sref") echo "$REF_PATH/clang $REF_CILK_FLAG $SERIAL_CFLAGS";;
	"serial") echo "$TAPIR_CC $SERIAL_CFLAGS";;
	"gcc") echo "gcc $GCC_CILK_FLAG";;
	"sgcc") echo "gcc $GCC_CILK_FLAG $SERIAL_CFLAGS";;
	*) echo "Unknown compiler $1"; exit 1;;
    esac
}

CXX_COMPILER() {
    case $1 in
	"tapir") echo "$TAPIR_CXX $TAPIR_CILK_FLAG";;
	"ref") echo "$REF_PATH/clang++ $REF_CILK_FLAG";;
	"stapir") echo "$TAPIR_CXX $TAPIR_CILK_FLAG $SERIAL_CFLAGS";;
	"sref") echo "$REF_PATH/clang++ $REF_CILK_FLAG $SERIAL_CFLAGS";;
	"serial") echo "$TAPIR_CXX $SERIAL_CFLAGS";;
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
