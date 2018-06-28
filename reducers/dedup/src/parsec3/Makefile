# Makefile for dedup kernel
TARGET = dedup
CC = gcc 

.PHONY: all clean serial pthreads pthreads-mod

PROG = dedup-serial dedup-pthreads dedup-pthreads-mod

ifeq ($(PROF),1)
CFLAGS += -g
endif

export UTIL_OBJ LIBS CFLAGS

# Add -DCOUNT_LOCK=1 to CFLAGS to count the number of dynamic lock acquire / releases.
CFLAGS += -Wall -fno-strict-aliasing -D_XOPEN_SOURCE=600 $(INCLUDES) -lrt -std=gnu99 -O3 -DNDEBUG
LIBS += -lm

DEDUP_OBJ = decoder.o dedup.o 
OTHER_OBJ = hashtable.o util.o rabin.o mbuffer.o sha.o ktiming.o
PAR_OBJ = binheap.o tree.o queue.o 
UTIL_OBJ = $(addprefix util/, $(OTHER_OBJ)) 
PAR_UTIL_OBJ = $(addprefix util/, $(PAR_OBJ)) 

# Uncomment the following to enable gzip compression
CFLAGS += -DENABLE_GZIP_COMPRESSION
LIBS += -lz

# Uncomment the following to enable bzip2 compression
# Don't seem to have bzlib.h installed on the system
# CFLAGS += -DENABLE_BZIP2_COMPRESSION
# LIBS += -lbz2

all: $(PROG)

serial: dedup-serial
pthreads: dedup-pthreads
pthreads-mod: dedup-pthreads-mod

pthreads: CFLAGS += -DENABLE_PTHREADS 
pthreads-mod: CFLAGS += -DENABLE_PTHREADS

%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@

util/%.o: util/%.c
	$(CC) -c $(CFLAGS) $< -o $@

dedup-pthreads: encoder-pthreads.o $(DEDUP_OBJ) $(UTIL_OBJ) $(PAR_UTIL_OBJ)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^ $(LIBS)
	rm dedup.o $(UTIL_OBJ)  # Need to compile these everytime we switch flag

dedup-pthreads-mod: encoder-pthreads-mod.o $(DEDUP_OBJ) $(UTIL_OBJ) $(PAR_UTIL_OBJ)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^ $(LIBS)
	rm dedup.o $(UTIL_OBJ)  # Need to compile these everytime we switch flag

$(TARGET)-%: encoder-%.o $(DEDUP_OBJ) $(UTIL_OBJ)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^ $(LIBS)
	rm dedup.o $(UTIL_OBJ)  # Need to compile these everytime we switch flag

clean:
	rm -f *~ *.o util/*.o $(PROG)

