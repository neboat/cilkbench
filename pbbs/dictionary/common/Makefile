include parallelDefs

COMMON = IO.h sequenceIO.h parseCommandLine.h parallel.h quickSort.h serialHash.h runTests.py sequence.h utils.h gettime.h

dictCheck: dictCheck.C $(COMMON)
	$(PCC) $(PCFLAGS) $(PLFLAGS) -o dictCheck dictCheck.C

$(COMMON) :
	ln -s ../../common/$@ .

clean :
	rm -f dictCheck

cleansrc :
	make -s clean
	rm -f $(COMMON) *.pyc
