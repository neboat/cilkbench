LLVM_BIN_DIR=`git rev-parse --show-toplevel`/../build/Debug+Asserts/bin
CLANG=$(LLVM_BIN_DIR)/clang -fno-exceptions -D__INTEL_COMPILER -Dcilk_for=_Cilk_for
CLANGPP=$(LLVM_BIN_DIR)/clang++ -fno-exceptions -D__INTEL_COMPILER -Dcilk_for=_Cilk_for
OPT=$(LLVM_BIN_DIR)/opt
LLC=$(LLVM_BIN_DIR)/llc
DETACH2CILK = -detach2cilk
LOOP2CILK = -loop2cilk
GCC=gcc
GPP=g++

CC=$(GCC)
CXX=$(GPP)

LIB_DIR=$(COMPILER_TOP)/lib
INCLUDE_DIR=$(COMPILER_TOP)/include

CFLAGS += -I $(INCLUDE_DIR) -fcilkplus
CXXFLAGS += -I $(INCLUDE_DIR) -fcilkplus

ifeq (1,$(SERIAL))
CFLAGS += -DSERIAL
CXXFLAGS += -DSERIAL
else
CFLAGS += -DPIR
CXXFLAGS += -DPIR
endif

LINK.o = $(CXX) $(LDFLAGS) $(TARGET_ARCH)
LDFLAGS += -L $(LIB_DIR) -lcilkrts -ldl

CLANGOPTFLAGS ?= $(OPTFLAGS)
INITOPTFLAGS ?= $(OPTFLAGS)
# CILKOPTFLAGS ?= -inline
CILKOPTFLAGS ?= -targetlibinfo -tti -tbaa -scoped-noalias -assumption-cache-tracker -forceattrs -inferattrs -ipsccp -globalopt -domtree -mem2reg \
	-deadargelim -basicaa -aa -domtree -instcombine -simplifycfg -basiccg -globals-aa -prune-eh -always-inline -functionattrs -domtree -sroa \
	-early-cse -lazy-value-info -jump-threading -correlated-propagation -simplifycfg -basicaa -aa -domtree -instcombine -tailcallelim \
	-simplifycfg -reassociate -basicaa -aa -domtree -instcombine -basicaa -aa -memdep -memcpyopt -sccp -domtree -demanded-bits -bdce \
	-basicaa -aa -instcombine -lazy-value-info -jump-threading -correlated-propagation -domtree -basicaa -aa -memdep -dse -aa -licm -adce \
	-simplifycfg -basicaa -aa -domtree -instcombine -barrier -basiccg -globals-aa -float2int -domtree -branch-prob -block-freq -basicaa -aa \
	-instcombine -simplifycfg -basicaa -aa -domtree -instcombine -basicaa -aa -instcombine -alignment-from-assumptions -strip-dead-prototypes -verify
# CILKOPTFLAGS ?= -O1
LLCOPTFLAGS ?= $(OPTFLAGS)

CILKTOOLS=../../../cilktools
ifeq (1,$(CILKSAN))
CFLAGS += -fsanitize=thread
CXXFlags += -fsanitize=thread
DETACH2CILK += -instrument-cilk
LDFLAGS += -L $(CILKTOOLS)/lib -lcilksan
endif

%.pbc : %.c
	$(CLANG) $(CFLAGS) $(CLANGOPTFLAGS) -c $< -emit-llvm -o $@

%.pbc : %.cpp
	$(CLANGPP) $(CXXFLAGS) $(CLANGOPTFLAGS) -c $< -emit-llvm -o $@

%.pll : %.c
	$(CLANG) $(CFLAGS) $(CLANGOPTFLAGS) -c $< -S -emit-llvm -o $@

%.pll : %.cpp
	$(CLANGPP) $(CXXFLAGS) $(CLANGOPTFLAGS) -c $< -S -emit-llvm -o $@

#%.lbc : %.pbc
#	$(OPT) $< $(LOOP2CILK) $(CILKOPTFLAGS) $(INITOPTFLAGS) -o $@

%.bc : %.lbc
	$(OPT) $< $(LOOP2CILK) $(CILKOPTFLAGS) $(INITOPTFLAGS) -o $@
	$(OPT) $@ $(DETACH2CILK) $(CILKOPTFLAGS) $(INITOPTFLAGS) -o $@
	$(OPT) $< $(INITOPTFLAGS) -o $<
	$(OPT) $< $(LOOP2CILK) -o $@
	$(OPT) $@ $(DETACH2CILK) -o $@
	$(OPT) $@ $(CILKOPTFLAGS) -o $@

%.s : %.bc
	$(LLC) $(LLCOPTFLAGS) $<

%.o : %.s
	$(GCC) -c $< -o $@



$(OBJECTS): $(patsubst %.o,%.s, $(OBJECTS))

$(BUILDDIR) :
	if [ ! -d $(BUILDDIR) ]; then mkdir -p $(BUILDDIR); fi

$(BUILDDIR)/%.pbc : $(SRCDIR)/%.c | $(BUILDDIR)
	$(CLANG) $(CFLAGS) $(CLANGOPTFLAGS) -c $< -emit-llvm -o $@

$(BUILDDIR)/%.pbc : $(SRCDIR)/%.cpp | $(BUILDDIR)
	$(CLANGPP) $(CXXFLAGS) $(CLANGOPTFLAGS) -c $< -emit-llvm -o $@

$(BUILDDIR)/%.pll : $(SRCDIR)/%.c | $(BUILDDIR)
	$(CLANG) $(CFLAGS) $(CLANGOPTFLAGS) -c $< -S -emit-llvm -o $@

$(BUILDDIR)/%.pll : $(SRCDIR)/%.cpp | $(BUILDDIR)
	$(CLANGPP) $(CXXFLAGS) $(CLANGOPTFLAGS) -c $< -S -emit-llvm -o $@

$(BUILDDIR)/%.bc : $(BUILDDIR)/%.pbc
	$(OPT) $< $(INITOPTFLAGS) -o $<
	$(OPT) $< -O3 -o $<
	$(OPT) $< -indvars -o $<
	$(OPT) $< $(LOOP2CILK) -o $@
	$(OPT) $< $(LOOP2CILK) -o $@.tmp -S
	$(OPT) $@ $(DETACH2CILK) -o $@
	$(OPT) $@ $(CILKOPTFLAGS) -o $@

# $(OPT) $< $(DETACH2CILK) $(CILKOPTFLAGS) $(INITOPTFLAGS) -o $@

$(BUILDDIR)/%.s : $(BUILDDIR)/%.bc
	$(LLC) $(LLCOPTFLAGS) $<

$(BUILDDIR)/%.o : $(BUILDDIR)/%.s
	$(GCC) -c $< -o $@
