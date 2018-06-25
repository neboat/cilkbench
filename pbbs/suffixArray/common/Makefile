include parallelDefs

COMMON = IO.h parseCommandLine.h parallel.h runTests.py sequence.h utils.h

SACheck: SACheck.C $(COMMON)
	$(PCC) $(PCFLAGS) $(PLFLAGS) -o SACheck SACheck.C

$(COMMON) :
	ln -s ../../common/$@ .

clean :
	rm -f SACheck

cleansrc :
	make -s clean
	rm -f $(COMMON) *.pyc
