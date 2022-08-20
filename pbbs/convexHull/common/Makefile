include parallelDefs

SORT =  quickSort.h sampleSort.h transpose.h
COMMON = IO.h parseCommandLine.h parallel.h runTests.py sequence.h utils.h geometry.h geometryIO.h $(SORT)

# Enabling contracted floating-point operations leads to incorrect
# results from this code.
PCFLAGS+=-ffp-contract=off

%.o : %.C $(COMMON)
	$(PCC) $(PCFLAGS) -c $< -o $@

CHECKFILES = hullCheck.o 

hullCheck : $(CHECKFILES)
	$(PCC) $(PLFLAGS) -o $@ $(CHECKFILES)

$(COMMON) :
	ln -s ../../common/$@ .

clean :
	rm -f hullCheck *.o

cleansrc :
	make -s clean
	rm -f $(COMMON) *.pyc
