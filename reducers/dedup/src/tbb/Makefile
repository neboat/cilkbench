# Makefile for dedup kernel

PREFIX=${PARSECDIR}/pkgs/kernels/dedup/inst/${PARSECPLAT}

TARGET=dedup

BIGFILE_CFLAGS=$(shell getconf LFS_CFLAGS)

CFLAGS += -Wall -O3 -std=c99 -fno-strict-aliasing -D_XOPEN_SOURCE=600
CXXFLAGS += -Wall -O3 -fno-strict-aliasing -D_XOPEN_SOURCE=600
LIBS += -lcrypto -lz -lrt

# Add directories into include path.
INCLUDES += -I ../

DEDUP_OBJ =  ktiming.o hashtable.o queue.o util.o binheap.o tree.o decoder.o dedup.o rabin.o #encoder.o

CC = gcc
CXX = g++

ifndef version
  # Set a sane default version. 
   version=pthreads
   $(warning "Setting default version to  [$(version)].")
endif

ifeq "$(version)" "pthreads"
   CFLAGS += -DPARALLEL -pthread
   COMPILER=$(CC)
   COMPILER_FLAGS=$(CFLAGS)
   DEDUP_OBJ += encoder.o
endif
ifeq "$(version)" "tbb_funcobj"
   CFLAGS += -DPARALLEL -DTBB_FUNCOBJ -DTBB
   CXXFLAGS += -DPARALLEL -DTBB_FUNCOBJ -DTBB
   COMPILER=$(CXX)
   COMPILER_FLAGS=$(CXXFLAGS)
   LDFLAGS += -ltbb -ltbbmalloc
   DEDUP_OBJ += encoder-funcobj.o
endif
ifeq "$(version)" "tbb_lambda"
   CFLAGS += -DPARALLEL -DTBB_LAMBDA -DTBB
   CXXFLAGS += -DPARALLEL -DTBB_LAMBDA -DTBB
   COMPILER=$(CXX)
   COMPILER_FLAGS=$(CXXFLAGS)
   DEDUP_OBJ += encoder-lambda.o
endif


all: $(TARGET)

.c.o:
	$(COMPILER) $(INCLUDES) -c $(COMPILER_FLAGS) $< -o $@

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $< -o $@

$(TARGET): $(DEDUP_OBJ)
	$(COMPILER) $(COMPILER_FLAGS) $(INCLUDES) $(LDFLAGS) -o $(TARGET) $(DEDUP_OBJ) $(LIBS)

clean:
	rm -f *~ *.o $(TARGET)

install:
	mkdir -p $(PREFIX)/bin
	cp -f $(TARGET) $(PREFIX)/bin/$(TARGET)

