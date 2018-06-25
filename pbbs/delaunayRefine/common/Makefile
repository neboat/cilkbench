include parallelDefs
BNCHMRK = refine

TOPOLOGY = topology.h topologyFromTri.C deterministicHash.h gettime.h
GLOBAL = IO.h parseCommandLine.h parallel.h runTests.py sequence.h utils.h geometry.h geometryIO.h $(TOPOLOGY)

CHECKFILE = $(BNCHMRK)Check
OBJS = $(CHECKFILE).o topologyFromTri.o

$(CHECKFILE) : $(OBJS)
	$(PCC) $(PLFLAGS) -o $@ $(OBJS)

%.o : %.C $(GLOBAL)
	$(PCC) $(PCFLAGS) -c $< -o $@

$(GLOBAL) :
	ln -s ../../common/$@ .

clean :
	rm -f $(BNCHMRK)Check *.o

cleansrc :
	make -s clean
	rm -f $(GLOBAL) *.pyc
