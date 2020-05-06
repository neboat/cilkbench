#COMPILER ?= llvm-pir
COMPILER ?= gcc

# CXX := g++
SRCDIR := src
BUILDDIR := release
EXTRA_CFLAGS ?=
# LIBFLAGS := -fcilkplus $(EXTRA_LDFLAGS) # -vec-report1
CILKFLAG ?= -fcilkplus
LIBFLAGS := $(CILKFLAG) $(EXTRA_LDFLAGS) # -vec-report1

ifdef perf_num
	EXTRA_CFLAGS += -D PERF_NUM
endif

TARGET := $(BUILDDIR)/BlackScholes

# icpc: $(TARGET)

# gcc: CXX := g++
# gcc: CFLAGS := -O3 -mfpmath=sse -flto 
# gcc: $(TARGET)

SOURCES := $(wildcard $(SRCDIR)/*.cpp)
OBJECTS := $(patsubst $(SRCDIR)/%,$(BUILDDIR)/%,$(SOURCES:.cpp=.o))

include $(COMPILER).mk

$(TARGET): $(OBJECTS)
	@echo " Linking..."
	@$(CXX) $^ $(LIBFLAGS) -o $(TARGET)

run: $(TARGET)
	./$(TARGET) $(option)

clean:
	@echo " Cleaning..."
	@rm -fr $(BUILDDIR) $(TARGET) 2>/dev/null || true
	@rm -f *.bmp *.valsig

.PHONY: clean
