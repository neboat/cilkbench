include parallelDefs
BNCHMRK = ST

COMMON = IO.h parseCommandLine.h parallel.h sequence.h utils.h graph.h graphIO.h

CHECKFILES = serialST.o $(BNCHMRK)Check.o

%.o : %.C $(COMMON)
	$(PCC) $(PCFLAGS) -c $< -o $@

$(BNCHMRK)Check : $(CHECKFILES)
	$(PCC) $(PLFLAGS) -o $@ $(CHECKFILES)

$(COMMON) :
	ln -s ../../common/$@ .

clean :
	rm -f $(BNCHMRK)Check *.o

cleansrc :
	make -s clean
	rm -f $(COMMON) *.pyc
