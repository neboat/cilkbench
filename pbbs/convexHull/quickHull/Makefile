include parallelDefs

# required files
GLOBAL_REQUIRE = parallel.h sequence.h geometry.h
LOCAL_REQUIRE = 
OBJS = hull.o

# Enabling contracted floating-point operations leads to infinite
# recursion in this code.
PCFLAGS+=-ffp-contract=off

include ../common/timeRequiredFiles
include MakeBench
