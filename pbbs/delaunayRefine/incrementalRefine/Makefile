include parallelDefs

# required files
TOPOLOGY = geometry.h topology.h topologyFromTri.C 
HASH = deterministicHash.h
GLOBAL_REQUIRE = parallel.h sequence.h delaunayQs.h $(HASH) $(TOPOLOGY)
LOCAL_REQUIRE = 
OBJS = refine.o topologyFromTri.o

include ../common/timeRequiredFiles
include MakeBench
