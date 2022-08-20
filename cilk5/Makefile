ALL_TESTS = fft cholesky nqueens qsort rectmul strassen cilksort heat lu matmul

CC ?= gcc
CXX ?= g++

CFLAGS = -Wall -O3 # -DPIR # -fcilkplus
CXXFLAGS = -Wall -O3 # -DPIR # -fcilkplus
LDFLAGS =
LDLIBS = # -ltcmalloc

ifeq ($(SERIAL),1)
	CILKFLAG ?=
#       SERIAL_FLAGS=-Dcilk_for=for -Dcilk_spawn= -Dcilk_sync=
	SERIAL_FLAGS = -DSERIAL
	CFLAGS += $(SERIAL_FLAGS)
	CXXFLAGS += $(SERIAL_FLAGS)
endif

ifeq ($(CILKPLUS),1)
	CILKFLAG = -fcilkplus
	LDFLAGS = -L/data/work/cilkrts/install/lib -Wl,-rpath,/data/work/cilkrts/install/lib
else
	CILKFLAG ?= -fopencilk
endif

CFLAGS += $(CILKFLAG) $(EXTRA_CFLAGS)
CXXFLAGS += $(CILKFLAG) $(EXTRA_CFLAGS)
LDFLAGS += $(CILKFLAG) $(EXTRA_LDFLAGS)
LDLIBS += $(EXTRA_LDLIBS)

.PHONY : default clean

default: all

all: $(ALL_TESTS)

%.o : %.c
	$(CC) $(CFLAGS) -c $<

%.o : %.cpp
	$(CXX) $(CXXFLAGS) -c $<

%.o : %.cc
	$(CXX) $(CXXFLAGS) -c $<

cholesky: getoptions.o cholesky.o
cilksort: getoptions.o cilksort.o
fft: getoptions.o fft.o
heat: getoptions.o heat.o
knapsack: getoptions.o knapsack.o
lu: getoptions.o lu.o
matmul: getoptions.o matmul.o
nqueens: getoptions.o nqueens.o
rectmul: getoptions.o rectmul.o
strassen: getoptions.o strassen.o
loop-matmul: loop-matmul.o
qsort: qsort.o

fft cholesky : LDLIBS += -lm

# qsort : CXXFLAGS += -falign-functions=32

% : %.o
	$(CXX) $(LDFLAGS) $^ $(LDLIBS) -o $@

clean :
	rm -f $(ALL_TESTS) *.o *.d* *~
