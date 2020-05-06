#-----------------------------------------------------------------------

MINIFE_TYPES =  \
        -DMINIFE_SCALAR=double   \
        -DMINIFE_LOCAL_ORDINAL=int      \
        -DMINIFE_GLOBAL_ORDINAL=int

MINIFE_MATRIX_TYPE = -DMINIFE_CSR_MATRIX
# MINIFE_MATRIX_TYPE = -DMINIFE_ELL_MATRIX

#-----------------------------------------------------------------------

CFLAGS = -O2 -mavx $(CILKFLAG) $(EXTRA_CFLAGS)
CXXFLAGS = $(CFLAGS)

# For debugging, the macro MINIFE_DEBUG will cause miniFE to dump a log file
# from each proc containing various information.
# This macro will also enable a somewhat expensive range-check on indices in
# the exchange_externals function.

# CPPFLAGS = -I. -I../utils -I../fem $(MINIFE_TYPES) -DMINIFE_DEBUG -DHAVE_MPI -DMPICH_IGNORE_CXX_SEEK
CPPFLAGS = -I. -I../utils -I../fem $(MINIFE_TYPES) $(MINIFE_MATRIX_TYPE) -DHAVE_MPI -DMPICH_IGNORE_CXX_SEEK

LDFLAGS=$(EXTRA_LDFLAGS)
LIBS=

# The MPICH_IGNORE_CXX_SEEK macro is required for some mpich versions,
# such as the one on my cygwin machine.

# TAPIR_BASE ?= /data/compilers/tapir/src-release_80

MPICC=/usr/lib64/openmpi/bin/mpicc
MPICXX=/usr/lib64/openmpi/bin/mpic++

#CXX=mpiicpc
#CC=mpiicc
#CXX=OMPI_MPICXX=$(TAPIR_BASE)/build-debug/bin/clang++ OMPI_MPICXX_CXXFLAGS="-fcilkplus" $(MPICXX)
#CC=OMPI_MPICC=$(TAPIR_BASE)/build-debug/bin/clang OMPI_MPICC_CFLAGS="-fcilkplus" $(MPICC)
CC=$(MPICC)
CXX=$(MPICXX)
include make_targets

