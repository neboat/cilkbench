CXX ?= icpc
SRCDIR := src
BUILDDIR := release
# CFLAGS := -restrict -xAVX -O2 -ipo
CFLAGS := -fcilkplus -std=c++11 -O3 -march=native -D __INTEL_COMPILER
EXTRA_CFLAGS ?=
EXTRA_LDFLAGS ?=
LIBFLAGS := -fcilkplus $(EXTRA_LDFLAGS)
option := res/nahelam.bmp res/nahelam1.bmp
# vecreport := 1
perf_num := 1
ifdef vecreport
	CFLAGS += -vec-report1
endif

ifdef perf_num
	EXTRA_CFLAGS += -D PERF_NUM
endif

TARGET := $(BUILDDIR)/AveragingFilter

icpc: $(TARGET)

gcc: CXX := g++
gcc: CFLAGS := -O2 -mfpmath=sse -flto 
gcc: $(TARGET)

SOURCES := $(wildcard $(SRCDIR)/*.cpp)
OBJECTS := $(patsubst $(SRCDIR)/%,$(BUILDDIR)/%,$(SOURCES:.cpp=.o))

$(TARGET): $(OBJECTS)
	@echo " Linking..."
	$(CXX) $^ $(LIBFLAGS) -o $(TARGET)

$(BUILDDIR)/%.o: $(SRCDIR)/%.cpp
	@mkdir -p $(BUILDDIR)
	$(CXX) -c $(CFLAGS) $(EXTRA_CFLAGS) -o $@ $< 

run: $(TARGET)
	./$(TARGET) $(option)

clean:
	@echo " Cleaning..."
	@rm -fr $(BUILDDIR) $(TARGET) 2>/dev/null || true
	@rm -f *.valsig

.PHONY: clean
