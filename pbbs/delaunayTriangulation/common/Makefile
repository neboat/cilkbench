include parallelDefs

TOPOLOGY = topology.h topologyFromTri.C deterministicHash.h
COMMON = IO.h parseCommandLine.h parallel.h runTests.py sequence.h utils.h geometry.h geometryIO.h gettime.h $(TOPOLOGY)

%.o : %.C $(COMMON)
	$(PCC) $(PCFLAGS) -c $< -o $@

CHECKFILES = delaunayCheck.o topologyFromTri.o

delaunayCheck : $(CHECKFILES)
	$(PCC) $(PLFLAGS) -o $@ $(CHECKFILES)

$(COMMON) :
	ln -s ../../common/$@ .

clean :
	rm -f delaunayCheck *.o

cleansrc :
	make -s clean
	rm -f $(COMMON) *.pyc
