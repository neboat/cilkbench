SERIAL_FLAGS = -Dcilk_for=for -Dcilk_spawn=  -Dcilk_sync=  -D_Cilk_for=for -D_Cilk_spawn=  -D_Cilk_sync=  

ifeq ($(SERIAL),1)
TAPIR_CFLAGS = $(SERIAL_FLAGS)
endif

TAPIR_BASE ?= /data/compilers/tapir/src-master

ifeq ($(DEBUG),1)
TAPIR_BIN=$(TAPIR_BASE)/build-debug/bin
else
TAPIR_BIN=$(TAPIR_BASE)/build/bin
endif

ifeq ($(GCC), 1)
TAPIR_CC = g++
TAPIR_CFLAGS += -fcilkplus
TAPIR_LFLAGS = -fcilkplus
else ifeq ($(ORIG),1)
TAPIR_CC = $(TAPIR_BIN)/clang++
TAPIR_CFLAGS +=
TAPIR_LFLAGS =
else ifeq ($(REF),1)
TAPIR_CC = /data/compilers/tapir/src-ref/build/bin/clang++
TAPIR_CFLAGS += -fdetach # -DPIR -fno-exceptions
TAPIR_LFLAGS = -fdetach
else
TAPIR_CC = $(TAPIR_BIN)/clang++
TAPIR_CFLAGS += $(EXTRA_CFLAGS) # -fcilkplus -ffast-math $(EXTRA_CFLAGS) # -Rpass=.* -Rpass-analysis=.*
TAPIR_LFLAGS = $(EXTRA_LDFLAGS) # -fcilkplus $(EXTRA_LDFLAGS)
endif

# else

# ifeq ($(REF),1)
# TAPIR_CC = /data/compilers/tapir/src-ref/build/bin/clang++
# TAPIR_CFLAGS = -fdetach -DPIR -fno-exceptions
# TAPIR_LFLAGS = -fdetach
# else
# #TAPIR_CC = /data/compilers/tapir/src-upmerge/build/bin/clang++
# TAPIR_CC = /data/compilers/tapir/src-nl-ppopp/build/bin/clang++
# TAPIR_CFLAGS = -fcilkplus -DPIR -fno-exceptions
# TAPIR_LFLAGS = -fcilkplus
# endif

# endif

ifdef TAPIR
PCC = $(TAPIR_CC)
PCFLAGS += $(TAPIR_CFLAGS)
PLFLAGS += $(TAPIR_LFLAGS)
endif
