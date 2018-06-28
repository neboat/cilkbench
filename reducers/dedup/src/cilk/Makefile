# Makefile for dedup kernel
TARGET = dedup
# CC = gcc
# CXX = g++
# CC = icpc
# CXX = icpc

CC ?= clang
CXX ?= clang++

.PHONY: all clean serial reducer check

# dedup-cilk-bw --- alternative implementation with a single writer
PROG = dedup-serial dedup-reducer

ifeq ($(PROF),1)
CFLAGS += -g
endif

export UTIL_OBJ LIBS CFLAGS

CFLAGS += -Wall -D_XOPEN_SOURCE=600 $(INCLUDES) -O3 -DNDEBUG -g 
LIBS += -lm -lrt

DEDUP_OBJ = decoder.o
OTHER_OBJ = hashtable.o util.o rabin.o sha.o ktiming.o
UTIL_OBJ = $(addprefix util/, $(OTHER_OBJ)) 

# Uncomment the following to enable gzip compression
CFLAGS += -DENABLE_GZIP_COMPRESSION
LIBS += -lz

# Differentiate between C vs. C++ flags.   

# Yeah, this Makefile is ugly.  If I don't set this variable
# immediately, then CPPFLAGS might be set after -std=gnu99 has been
# added to CFLAGS.  (CFLAGS seems to be deferred initialization by
# default...)
CPPFLAGS := $(CFLAGS)  
CPPFLAGS += -std=c++0x $(EXTRA_CXXFLAGS) $(EXTRA_CFLAGS)
CFLAGS += -std=gnu99 $(EXTRA_CFLAGS) # -pedantic

$(warning "CPPFLAGS is $(CPPFLAGS),  CFLAGS is $(CFLAGS)")

# Uncomment the following to enable bzip2 compression
# Don't seem to have bzlib.h installed on the system
# CFLAGS += -DENABLE_BZIP2_COMPRESSION
# LIBS += -lbz2

# Modify the following variables if source code moves location
# cilkm_top_dir := $(HOME)/sandbox/MIT/cilkm_src
CILK_FLAGS := -DCILK -DHAVE_CONFIG_H -O3 -fcilkplus # -H
CILK_CPPFLAGS := -DCILK -DHAVE_CONFIG_H -O3 -fcilkplus # -H

# Some setup for checking versions.

TEST_INPUT := ../../data/simmedium/media.dat
TEST_OUTPUT_PREFIX := TestOut

all: $(PROG)

## TODO(jsukha): I took these lines out. I don't know how they were
## suppose to work, but they didn't work for me...
#cilk:   CFLAGS += $(CILK_FLAGS) -DCILK
#cilk:   LDFLAGS += $(CILK_LDFLAGS)

serial: dedup-serial

dedup-serial.o: dedup.c
	$(CC) -c $(CFLAGS) $< -o $@

dedup-reducer.o: dedup.c
	$(CXX) $(CPPFLAGS) $(CILK_FLAGS) -c $< -o $@

%-reducer.o: %-reducer.cpp
	$(CXX) $(CPPFLAGS) $(CILK_FLAGS) -c $< -o $@ 

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

%.o: %.cpp
	$(CXX) $(CPPFLAGS) -c $< -o $@

util/%.o: util/%.c
	$(CC) $(CFLAGS) -c $< -o $@

# Specialize rule for Cilk.  Cilk requires extra flags.
$(TARGET)-reducer: encoder-reducer.o $(DEDUP_OBJ) $(UTIL_OBJ) dedup-reducer.o
	$(CXX) $(CPPFLAGS) $(CILK_FLAGS)  $^ -o $@  $(CILK_LDFLAGS) $(EXTRA_LDFLAGS) $(LIBS)

$(TARGET)-%: encoder-%.o $(DEDUP_OBJ) $(UTIL_OBJ) dedup-serial.o
	$(CC) $(CFLAGS) $^ -o $@ $(LIBS)  

clean:
	rm -f *~ *.o util/*.o $(PROG) *.tmp


# Compare the different versions, make sure they all generate the same
# output file.
check: $(PROG)
	rm -f $(TEST_OUTPUT_PREFIX)-*.tmp
	./dedup-serial -c -i $(TEST_INPUT) -o $(TEST_OUTPUT_PREFIX)-serial.tmp
	./dedup-reducer  -c -i $(TEST_INPUT) -o $(TEST_OUTPUT_PREFIX)-reducer.tmp -t 4
	diff $(TEST_OUTPUT_PREFIX)-serial.tmp $(TEST_OUTPUT_PREFIX)-reducer.tmp
	@echo "PASSED: Reducer and Serial code generate the same output."
