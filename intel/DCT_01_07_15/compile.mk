CC=/home/wmoses/git/Parallel-IR/build/bin/compile -fast
CXX=/home/wmoses/git/Parallel-IR/build/bin/compile++ -fast

CFLAGS := -D__INTEL_COMPILER -O3 # -march=native

CFLAGS += $(OPTFLAGS) -fcilkplus
CXXFLAGS += $(OPTFLAGS) -fcilkplus

LINK.o = $(CXX) $(LDFLAGS) $(TARGET_ARCH)
LDFLAGS += -lcilkrts -ldl

$(BUILDDIR)/%.o: $(SRCDIR)/%.cpp
	@mkdir -p $(BUILDDIR)
	$(CXX) -c $(CFLAGS) $(EXTRA_CFLAGS) -o $@ $< 
