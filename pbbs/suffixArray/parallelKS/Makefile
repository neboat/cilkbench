include parallelDefs

# required files
SORT =  blockRadixSort.h transpose.h sampleSort.h quickSort.h
OTHER = merge.h rangeMin.h
GLOBAL_REQUIRE = parallel.h sequence.h utils.h $(SORT) $(OTHER)
LOCAL_REQUIRE = 
OBJS = pks.o

include ../common/timeRequiredFiles
include MakeBench
