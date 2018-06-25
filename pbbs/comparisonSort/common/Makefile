include parallelDefs

COMMON = IO.h sequenceIO.h parseCommandLine.h parallel.h quickSort.h runTests.py sequence.h utils.h

sortCheck: sortCheck.C $(COMMON)
	$(PCC) $(PCFLAGS) $(PLFLAGS) -o sortCheck sortCheck.C

$(COMMON) :
	ln -s ../../common/$@ .

clean :
	rm -f sortCheck

cleansrc :
	make -s clean
	rm -f $(COMMON) *.pyc
