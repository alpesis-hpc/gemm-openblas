ifdef TARGET_CORE
TARGET = $(TARGET_CORE)
endif

TOPDIR	= ..
include $(TOPDIR)/Makefile.system

ifdef TARGET_CORE
override CFLAGS += -DBUILD_KERNEL -DTABLE_NAME=gotoblas_$(TARGET_CORE)
BUILD_KERNEL = 1
KDIR =
TSUFFIX = _$(TARGET_CORE)
else
TARGET_CORE = $(CORE)
KDIR =
TSUFFIX =
endif

-include $(KERNELDIR)/KERNEL.$(TARGET_CORE)

include $(KERNELDIR)/KERNEL


include Makefile.L3


HPLOBJS = \
	dgemm_kernel.$(SUFFIX) \
	$(DGEMMINCOPYOBJ) $(DGEMMITCOPYOBJ) \
	$(DGEMMONCOPYOBJ) $(DGEMMOTCOPYOBJ) 


ifeq ($(DYNAMIC_ARCH), 1)
SBLASOBJS	+= setparam$(TSUFFIX).$(SUFFIX)
CCOMMON_OPT	+= -DTS=$(TSUFFIX)
endif

KERNEL_INTERFACE = ../common_level3.h

ifeq ($(ARCH), x86)
COMMONOBJS	+= cpuid.$(SUFFIX)
endif

ifdef EXPRECISION
# COMMONOBJS	+= qconjg.$(SUFFIX) qcabs1.$(SUFFIX)
endif

ifdef QUAD_PRECISION
# COMMONOBJS	+= qconjg.$(SUFFIX) qcabs1.$(SUFFIX)
endif

all : libs


setparam$(TSUFFIX).$(SUFFIX): setparam$(TSUFFIX).c kernel$(TSUFFIX).h
	$(CC) -c $(CFLAGS) $< -o $@

setparam$(TSUFFIX).c : setparam-ref.c
	sed 's/TS/$(TSUFFIX)/g' $< > $(@F)

kernel$(TSUFFIX).h : $(KERNEL_INTERFACE)
	sed 's/\ *(/$(TSUFFIX)(/g' $^ > $(@F)



#ifdef DYNAMIC_ARCH
clean ::
	@rm -f setparam_*.c kernel_*.h setparam.h kernel.h

#endif

include $(TOPDIR)/Makefile.tail
