DEFAULT_COMPILERS_TO_TEST="tapir"
DEFAULT_WORKERS_TO_TEST="1 $(lscpu -p | egrep -v '^#' | sort -u -t, -k 2,4 | wc -l)"
#WORKERS_TO_TEST="18"
DEFAULT_NUMTRIALS=3

DEFAULT=1
DEBUG=0
# TAP=0
# REF=0
# SER=0
# STAP=0
# SREF=0
# GCC=0
# SGCC=0

ALLTESTS=""
CHECK_CORRECTNESS=0
CHECK_CILKSAN=0
CHECK_CILKSCALE=0
NUMTRIALS=$DEFAULT_NUMTRIALS
WORKERS_TO_TEST=$DEFAULT_WORKERS_TO_TEST
COMPILERS_TO_TEST=""

function usage {
    >&2 echo -e "Usage:"
    >&2 echo -e "$0 [<compiler selection>] [[-x|--trials]=<int>] [[-w|--workers]=<int,int,...>] <test1> <test2> ..."
    >&2 echo -e "\tBuild and run the specified tests.  Use each specified compiler to build each test,"
    >&2 echo -e "\tthen run that executable with each of the specified worker counts.  Each test is run"
    >&2 echo -e "\trepeatedly for the specified number of trials."
    >&2 echo -e "\t-t|--tapir : Compile using Tapir's pipeline."
    >&2 echo -e "\t-r|--reference : Compile using the reference pipeline."
    >&2 echo -e "\t-g|--gcc : Compile using GCC."
    >&2 echo -e "\t-st|--stapir : Compile serial elision using Tapir's pipeline."
    >&2 echo -e "\t-sr|--sreference : Compile serial elision using the reference pipeline."
    >&2 echo -e "\t-sg|--sgcc : Compile serial elision using GCC."
    >&2 echo -e "\t-s|--serial : Compile serial elision using default Clang pipeline."
    >&2 echo -e "\t-x=<int>|--trials=<int> : Specify the number of trials to run."
    >&2 echo -e "\t-w=<int,int,...>|--workers=<int,int,...> : Specify how many workers to use."
    >&2 echo -e "\t-checkrace : Compile with Cilksan race detection."
    >&2 echo -e "\t-checkscale : Compile with Cilkscale scalability analysis."
    >&2 echo -e "$0 -h|--help"
    >&2 echo -e "\tPrint this help message."
    exit 1
}

while [[ $# > 0 ]]
do
    key="$1"
    case $key in
	-h|--help)
	    usage
	    ;;
	-d|--debug)
	    DEBUG=1
	    shift
	    ;;
	-t|--tapir)
	    DEFAULT=0
	    COMPILERS_TO_TEST="$COMPILERS_TO_TEST tapir"
	    # TAP=0
	    shift
	    ;;
	-g|--gcc)
	    DEFAULT=0
	    COMPILERS_TO_TEST="$COMPILERS_TO_TEST gcc"
	    # GCC=1
	    shift
	    ;;
	-r|--reference)
	    DEFAULT=0
	    COMPILERS_TO_TEST="$COMPILERS_TO_TEST ref"
	    # REF=1
	    shift
	    ;;
	-st|--serialTapir)
	    DEFAULT=0
	    COMPILERS_TO_TEST="$COMPILERS_TO_TEST stapir"
	    # STAP=1
	    shift
	    ;;
	-sg|--serialGCC)
	    DEFAULT=0
	    COMPILERS_TO_TEST="$COMPILERS_TO_TEST sgcc"
	    # SGCC=1
	    shift
	    ;;
	-sr|--serialReference)
	    DEFAULT=0
	    COMPILERS_TO_TEST="$COMPILERS_TO_TEST sref"
	    # SREF=1
	    shift
	    ;;
	-s|--serial)
	    DEFAULT=0
	    COMPILERS_TO_TEST="$COMPILERS_TO_TEST serial"
	    # SER=1
	    shift
	    ;;
	-c|--check)
	    CHECK_CORRECTNESS=1
	    shift
	    ;;
	-cr|--checkrace)
	    CHECK_CILKSAN=1
	    shift
	    ;;
	-cs|--checkscale)
	    CHECK_CILKSCALE=1
	    shift
	    ;;
	-x=*|--trials=*)
	    NUMTRIALS="${key#*=}"
	    shift
	    ;;
	-w=*|--workers=*)
	    WORKERS_TO_TEST="$(echo ${key#*=} | sed 's/,/ /g')"
	    shift
	    ;;
	*)
	    ALLTESTS="$ALLTESTS $key"
	    shift
	    ;;
    esac
done

if [[ $DEFAULT -eq 1 ]]; then
    COMPILERS_TO_TEST=$DEFAULT_COMPILERS_TO_TEST
fi

# if [[ $DEFAULT -eq 0 ]]; then
#     COMPILERS_TO_TEST=""
#     if [[ $GCC -eq 1 ]]; then
# 	COMPILERS_TO_TEST="$COMPILERS_TO_TEST gcc"
#     fi
#     if [[ $SGCC -eq 1 ]]; then
# 	COMPILERS_TO_TEST="$COMPILERS_TO_TEST sgcc"
#     fi
#     if [[ $TAP -eq 1 ]]; then
# 	COMPILERS_TO_TEST="$COMPILERS_TO_TEST tapir"
#     fi
#     if [[ $STAP -eq 1 ]]; then
# 	COMPILERS_TO_TEST="$COMPILERS_TO_TEST stapir"
#     fi
#     if [[ $REF -eq 1 ]]; then
# 	COMPILERS_TO_TEST="$COMPILERS_TO_TEST ref"
#     fi
#     if [[ $SREF -eq 1 ]]; then
# 	COMPILERS_TO_TEST="$COMPILERS_TO_TEST sref"
#     fi
#     if [[ $SER -eq 1 ]]; then
# 	COMPILERS_TO_TEST="$COMPILERS_TO_TEST serial"
#     fi
# fi
