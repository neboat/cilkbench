include parallelDefs

# required files
SORT =  blockRadixSort.h transpose.h quickSort.h sampleSort.h
GLOBAL_REQUIRE = parallel.h sequence.h utils.h $(SORT) $(OTHER)
LOCAL_REQUIRE = 
OBJS = suffix.o 

# # This test does not appear to work correctly with AVX512
# # instructions, possibly due to a bug in vanilla clang.
# NOTE: Resolved 20200906
# PCFLAGS += -mno-avx512f

include ../common/timeRequiredFiles
include MakeBench
