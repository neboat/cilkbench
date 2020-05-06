#COMPILER ?= llvm-pir
COMPILER ?= gcc

# CXX := g++
SRCDIR := src
BUILDDIR := release
# CFLAGS := -O2 -xAVX 
EXTRA_CFLAGS ?=
# LIBFLAGS := -fcilkplus $(EXTRA_LDFLAGS) # -lcilkrts
CILKFLAG ?= -fcilkplus
LIBFLAGS := $(CILKFLAG) $(EXTRA_LDFLAGS) # -lcilkrts
option := res/nahelam.bmp res/nahelam1.bmp
ifdef vecreport
	CFLAGS += -vec-report1
endif

ifdef perf_num
	EXTRA_CFLAGS += -D PERF_NUM
endif

TARGET := $(BUILDDIR)/DCT

# icpc: $(TARGET)

# ifneq ($(shell uname -s),Darwin)
# gcc: CXX := g++
# else
# gcc: CXX := clang++
# endif
# gcc: CFLAGS := -O2 -mfpmath=sse -march=core-avx-i
# gcc: $(TARGET)

SOURCES := $(wildcard $(SRCDIR)/*.cpp)
OBJECTS := $(patsubst $(SRCDIR)/%,$(BUILDDIR)/%,$(SOURCES:.cpp=.o))

include $(COMPILER).mk

$(BUILDDIR) :
	if [ ! -d $(BUILDDIR) ]; then mkdir -p $(BUILDDIR); fi

$(TARGET): $(OBJECTS)
	@echo " Linking..."
	$(CXX) $^ $(LIBFLAGS) -o $(TARGET)

# $(BUILDDIR)/%.o: $(SRCDIR)/%.cpp
# 	@mkdir -p $(BUILDDIR)
# 	$(CXX) -c $(CFLAGS) $(EXTRA_CFLAGS) -o $@ $< 

run: $(TARGET)
	@./$(TARGET) $(option)

clean:
	@echo " Cleaning..."
	@rm -fr $(BUILDDIR) $(TARGET) 2>/dev/null || true
	@rm -f *.bmp *.valsig

.PHONY: clean

