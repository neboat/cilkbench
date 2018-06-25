ALL_TESTS = fft cholesky nqueens qsort rectmul strassen

CC ?= gcc
CXX ?= g++

CFLAGS = -Wall -O3 # -DPIR # -fcilkplus
CXXFLAGS = -Wall -O3 # -DPIR # -fcilkplus
LDFLAGS =

ifeq ($(SERIAL),1)
	SERIAL_FLAGS=-Dcilk_for=for -Dcilk_spawn= -Dcilk_sync= 
	CFLAGS += $(SERIAL_FLAGS)
	CXXFLAGS += $(SERIAL_FLAGS)
endif

CFLAGS += $(EXTRA_CFLAGS)
CXXFLAGS += $(EXTRA_CXXFLAGS)
LDFLAGS += $(EXTRA_LDFLAGS)
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

% : %.o
	$(CXX) $(LDFLAGS) $^ $(LDLIBS) -o $@

clean :
	rm -f $(ALL_TESTS) *.o *.d* *~
