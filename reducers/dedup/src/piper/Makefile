# Makefile for dedup kernel
TARGET = dedup
CC = icc
CXX = icpc

include ../../../../Makefile.myenv

# cilk2 --- alternative implementation 
.PHONY: all clean serial cilkview tbb check check_all

PROG = dedup-serial dedup-tbb dedup-piper dedup-cilkview

ifeq ($(PROF),1)
CFLAGS += -g
endif

export UTIL_OBJ LIBS CFLAGS

CFLAGS += -Wall -fno-strict-aliasing -D_XOPEN_SOURCE=600 $(INCLUDES) -O3 -DNDEBUG -g 
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
CPPFLAGS += -std=c++0x
CFLAGS += -std=gnu99 


$(warning "CPPFLAGS is $(CPPFLAGS),  CFLAGS is $(CFLAGS)")

# Root for TBB installation directory.
# This part of the Makefile is looking for those directories explicitly.
# Alternatively, if TBB is already in your path, don't need to set these. 
TBBROOT=/opt/intel/composerxe/tbb
TBBARCH=intel64
TBB_LIBRARY_PATH=$(TBBROOT)/lib/$(TBBARCH)
TBB_INCLUDE_PATH=$(TBBROOT)/include

# The installation root for the Cilk Plus runtime with pipeline
# support.
PIPER_ROOT=$(CILKPLUS_PIPER_LIB)
PIPER_LIBRARY_PATH=$(PIPER_ROOT)/lib
PIPER_INCLUDE_PATH=$(PIPER_ROOT)/include

# Uncomment the following to enable bzip2 compression
# Don't seem to have bzlib.h installed on the system
# CFLAGS += -DENABLE_BZIP2_COMPRESSION
# LIBS += -lbz2

# Modify the following variables if source code moves location
# cilkm_top_dir := $(HOME)/sandbox/MIT/cilkm_src
# cilkm_top_dir := /scratch/angelee/cilk_dev/cilk-M/src_hand_comp
# cilkm_rts := $(cilkm_top_dir)/runtime
# CILK_FLAGS := -DCILK -DHAVE_CONFIG_H -I$(cilkm_top_dir) -I$(cilkm_rts) -O3 -std=gnu99 # -H
# CILK_LDFLAGS := -L$(cilkm_rts)/.libs -L$(cilkm_rts) -lcilkrt0 -lcilk -Wl,-rpath=$(cilkm_rts)/.libs

TBB_FLAGS := -DTBB -I $(TBB_INCLUDE_PATH) -g
TBB_LDFLAGS := -L$(TBB_LIBRARY_PATH) -ltbb -ltbbmalloc

# For now, Piper uses the same flags as TBB.
PIPER_FLAGS := -I $(PIPER_INCLUDE_PATH) -g
PIPER_LDFLAGS := -Wl,-rpath -Wl,$(PIPER_LIBRARY_PATH) -L$(PIPER_LIBRARY_PATH) -L$(TBB_LIBRARY_PATH) -ltbbmalloc

# Some setup for checking versions.

TEST_INPUT := ../../data/simmedium/media.dat
TEST_OUTPUT_PREFIX := TestOut

all: $(PROG)

## TODO(jsukha): I took these lines out. I don't know how they were
## suppose to work, but they didn't work for me...
#cilk:   CFLAGS += $(CILK_FLAGS) -DCILK
#cilk:   LDFLAGS += $(CILK_LDFLAGS)

serial: dedup-serial
tbb: dedup-tbb
piper: dedup-piper
cilkview: dedup-cilkview

dedup-serial.o: dedup.c
	$(CC) -c $(CFLAGS) $< -o $@

dedup-tbb.o: dedup.c
	$(CC) -c $(CFLAGS) $< -o $@

dedup-piper.o: dedup.c
	$(CC) -c $(CFLAGS) $< -o $@

%-tbb.o: %-tbb.cpp
	$(CXX) -c $(CPPFLAGS) $(TBB_FLAGS) $< -o $@ 

%-piper.o: %-piper.cpp
	$(CXX) -c $(CPPFLAGS) $(PIPER_FLAGS) $< -o $@ 

%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@

%.o: %.cpp
	$(CXX) -c $(CPPFLAGS) $< -o $@

util/%.o: util/%.c
	$(CC) -c $(CFLAGS) $< -o $@

$(TARGET)-tbb: encoder-tbb.o $(DEDUP_OBJ) $(UTIL_OBJ) dedup-tbb.o
	$(CXX) $(CPPFLAGS) $(TBB_FLAGS) -o $@ $^ $(TBB_LDFLAGS) $(LIBS) 

$(TARGET)-piper: encoder-piper.o $(DEDUP_OBJ) $(UTIL_OBJ) dedup-piper.o
	$(CXX) $(CPPFLAGS) $(PIPER_FLAGS) -o $@ $^ $(PIPER_LDFLAGS) $(LIBS) 

$(TARGET)-cilkview: encoder-cilkview.o $(DEDUP_OBJ) $(UTIL_OBJ) dedup-serial.o
	$(CC) $(CFLAGS) -o $@ $^ $(LIBS) 

$(TARGET)-%: encoder-%.o $(DEDUP_OBJ) $(UTIL_OBJ) dedup-serial.o
	$(CC) $(CFLAGS) -o $@ $^ $(LIBS)  

clean:
	rm -f *~ *.o util/*.o $(PROG) *.tmp


# Compare the different versions, make sure they all generate the same
# output file.
check: $(PROG)
	rm -f $(TEST_OUTPUT_PREFIX)-*.tmp
	./dedup-serial -c -i $(TEST_INPUT) -o $(TEST_OUTPUT_PREFIX)-serial.tmp
	./dedup-piper  -c -i $(TEST_INPUT) -o $(TEST_OUTPUT_PREFIX)-piper.tmp -t 4
	diff $(TEST_OUTPUT_PREFIX)-serial.tmp $(TEST_OUTPUT_PREFIX)-piper.tmp
	@echo "PASSED: Piper and Serial code generate the same output."


# This test seems to fail because of the reason above.
check_all: $(PROG)
	./dedup-serial -c -i $(TEST_INPUT) -o $(TEST_OUTPUT_PREFIX)-serial.tmp
	./dedup-tbb  -c -i $(TEST_INPUT) -o $(TEST_OUTPUT_PREFIX)-tbb.tmp -t 4
	./dedup-piper  -c -i $(TEST_INPUT) -o $(TEST_OUTPUT_PREFIX)-piper.tmp -t 4
	diff $(TEST_OUTPUT_PREFIX)-tbb.tmp $(TEST_OUTPUT_PREFIX)-serial.tmp
	diff $(TEST_OUTPUT_PREFIX)-piper.tmp $(TEST_OUTPUT_PREFIX)-serial.tmp
