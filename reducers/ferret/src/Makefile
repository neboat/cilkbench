PROG = serial reducer

LDLIBS += $(LIBS) -lrt -lm -lcass -lgsl -lgslcblas -ljpeg -lstdc++

.PHONY:	all clean dirs full_clean lib tools image server \
        serial reducer

VPATH = $(CURDIR)/src:$(CURDIR)/src/lsh:$(CURDIR)/tools:$(CURDIR)/image:$(CURDIR)/benchmark

ROOT = $(CURDIR)
SRCDIR = $(ROOT)/src
INCDIR = $(ROOT)/include

BINDIR = $(ROOT)/build/bin
LIBDIR = $(ROOT)/build/lib
OBJDIR = $(ROOT)/build/obj

# CC = icc
# CXX = icpc

CC ?= clang
CXX ?= clang++
CILKFLAG ?= -fcilkplus
CFLAGS ?= -O3 -g $(CILKFLAG) -I$(INCDIR) $(EXTRA_CFLAGS)
LDFLAGS += -L$(LIBDIR) $(EXTRA_LDFLAGS)

TARGET = $(addprefix $(BINDIR)/ferret-, $(PROG))

export LIBDIR BINDIR OBJDIR CC CXX CFLAGS LDFLAGS LDLIBS

all:	$(PROG) 

dirs:
	mkdir -p $(BINDIR)
	mkdir -p $(LIBDIR)
	mkdir -p $(OBJDIR)

# build the cass library
lib:	$(LIBDIR)/libcass.a 

lib_src := $(wildcard src/*.c) $(wildcard src/lsh/*.c)
lib_src := $(notdir $(lib_src))
lib_obj := $(addprefix $(OBJDIR)/, $(lib_src:.c=.o))

$(LIBDIR)/libcass.a:	$(lib_obj)
	@echo "   A  '$@'"
	@$(AR) rcs $@ $^

# build the image support library
libimage_src := image.c extract.c edge.c srm.c
libimage_obj := $(addprefix $(OBJDIR)/, $(libimage_src:.c=.o))

$(LIBDIR)/libcassimage.a:	$(libimage_obj)
	@echo "   A  '$@'"
	@$(AR) rcs $@ $^

# build the tool programs
tools_src := $(wildcard tools/*.c)
tools_tgt := $(notdir $(tools_src))
tools_tgt := $(addprefix $(BINDIR)/, $(tools_tgt:.c=))

tools : $(tools_tgt)

serial: dirs lib tools
	@echo "Building the serial version."
	make $(BINDIR)/ferret-serial 

reducer: dirs lib tools
	@echo "Building the reducer version."
	make $(BINDIR)/ferret-reducer 

image_tgt := cass_img_extract
image_tgt := $(addprefix $(BINDIR)/, $(image_tgt))

image: $(image_tgt)

clean:
	rm -rf $(TARGET)

full_clean:
	rm -rf $(OBJDIR)/* $(BINDIR)/* $(LIBDIR)/*

$(OBJDIR)/%.o: %.c
	@echo "   '$(CC) $(CFLAGS) $<' ==> '$@'"
	@$(CC) $(CFLAGS) -c $< -o $@

$(OBJDIR)/%.o: %.cpp
	@echo "   '$(CXX) $(CFLAGS) $(CXXFLAGS) $<' ==> '$@'"
	@$(CXX) $(CFLAGS) $(CXXFLAGS) -c $< -o $@

$(tools_tgt): $(BINDIR)/% : $(OBJDIR)/%.o $(LIBDIR)/libcass.a
	@echo "   '$(CXX) $<' ==> '$@'"
	@$(CXX) $(CFLAGS) $(LDFLAGS) $^ -o $@ $(LDLIBS)

$(image_tgt): $(BINDIR)/% : $(OBJDIR)/%.o $(LIBDIR)/libcass.a $(LIBDIR)/libcassimage.a
	@echo "   '$(CXX) $<' ==> '$@'"
	@$(CXX) $(CFLAGS) $(LDFLAGS) $^ -o $@ $(LDLIBS)

$(BINDIR)/%: $(OBJDIR)/%.o $(LIBDIR)/libcass.a $(LIBDIR)/libcassimage.a
	@echo "   '$(CC) $(CFLAGS) $(LDFLAGS) $(LDLIBS) $<' ==> '$@'"
	@$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@ $(LDLIBS)
