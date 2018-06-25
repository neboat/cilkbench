include parallelDefs

COMMON = IO.h parseCommandLine.h parallel.h runTests.py sequence.h utils.h geometry.h geometryIO.h octTree.h

%.o : %.C $(COMMON)
	$(PCC) $(PCFLAGS) -c $< -o $@

CHECKFILES = nbodyCheck.o 

nbodyCheck : $(CHECKFILES)
	$(PCC) $(PLFLAGS) -o $@ $(CHECKFILES)

$(COMMON) :
	ln -s ../../common/$@ .

clean :
	rm -f nbodyCheck *.o

cleansrc :
	make -s clean
	rm -f $(COMMON) *.pyc
