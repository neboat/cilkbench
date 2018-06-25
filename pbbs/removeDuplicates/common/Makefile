include parallelDefs

COMMON = IO.h sequenceIO.h parseCommandLine.h parallel.h quickSort.h deterministicHash.h runTests.py sequence.h utils.h gettime.h

remDupsCheck: remDupsCheck.C $(COMMON)
	$(PCC) $(PCFLAGS) $(PLFLAGS) -o remDupsCheck remDupsCheck.C

$(COMMON) :
	ln -s ../../common/$@ .

clean :
	rm -f remDupsCheck

cleansrc :
	make -s clean
	rm -f $(COMMON) *.pyc
