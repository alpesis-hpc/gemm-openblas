TOPDIR	= ..
include $(TOPDIR)/Makefile.system

SUPPORT_GEMM3M = 0

ifeq ($(ARCH), x86)
SUPPORT_GEMM3M = 1
endif

ifeq ($(ARCH), x86_64)
SUPPORT_GEMM3M = 1
endif

ifeq ($(ARCH), ia64)
SUPPORT_GEMM3M = 1
endif

ifeq ($(ARCH), MIPS)
SUPPORT_GEMM3M = 1
endif

ifndef NO_FBLAS


SBLAS3OBJS    = sgemm.$(SUFFIX)


DBLAS3OBJS    = dgemm.$(SUFFIX) 

CBLAS3OBJS    = cgemm.$(SUFFIX) 

ZBLAS3OBJS    = zgemm.$(SUFFIX) 

ifeq ($(SUPPORT_GEMM3M), 1)

# CBLAS3OBJS   +=  cgemm3m.$(SUFFIX) csymm3m.$(SUFFIX) chemm3m.$(SUFFIX)
CBLAS3OBJS   +=  cgemm3m.$(SUFFIX)

# ZBLAS3OBJS   +=  zgemm3m.$(SUFFIX) zsymm3m.$(SUFFIX) zhemm3m.$(SUFFIX)
ZBLAS3OBJS   +=  zgemm3m.$(SUFFIX)

endif

ifdef EXPRECISION

QBLAS3OBJS    = qgemm.$(SUFFIX)

XBLAS3OBJS    = xgemm.$(SUFFIX) 

ifeq ($(SUPPORT_GEMM3M), 1)

XBLAS3OBJS   +=  xgemm3m.$(SUFFIX) 

endif

endif

ifdef QUAD_PRECISION

QBLAS3OBJS    = qgemm.$(SUFFIX) 

XBLAS3OBJS    = xgemm.$(SUFFIX)

ifeq ($(SUPPORT_GEMM3M), 1)

XBLAS3OBJS   +=  xgemm3m.$(SUFFIX) 

endif
endif

endif

HPLOBJS = dgemm.$(SUFFIX)  

CSBLAS3OBJS   = cblas_sgemm.$(SUFFIX) 

CDBLAS3OBJS   += cblas_dgemm.$(SUFFIX) 

CCBLAS3OBJS   = cblas_cgemm.$(SUFFIX) 

CZBLAS3OBJS   = cblas_zgemm.$(SUFFIX) 


ifeq ($(SUPPORT_GEMM3M), 1)

CCBLAS3OBJS   +=  cblas_cgemm3m.$(SUFFIX)

CZBLAS3OBJS   +=  cblas_zgemm3m.$(SUFFIX)

endif


ifndef NO_CBLAS

override CFLAGS += -I.

SBLAS3OBJS   += $(CSBLAS3OBJS)
DBLAS3OBJS   += $(CDBLAS3OBJS)
CBLAS3OBJS   += $(CCBLAS3OBJS)
ZBLAS3OBJS   += $(CZBLAS3OBJS)

endif

SBLASOBJS    = $(SBLAS3OBJS)
DBLASOBJS    = $(DBLAS3OBJS)
QBLASOBJS    = $(QBLAS3OBJS)
CBLASOBJS    = $(CBLAS3OBJS)
ZBLASOBJS    = $(ZBLAS3OBJS)
XBLASOBJS    = $(XBLAS3OBJS)



FUNCOBJS    = $(SBLASOBJS) $(DBLASOBJS) $(CBLASOBJS) $(ZBLASOBJS)

ifdef EXPRECISION
FUNCOBJS   += $(QBLASOBJS) $(XBLASOBJS)
endif

ifdef QUAD_PRECISION
FUNCOBJS   += $(QBLASOBJS) $(XBLASOBJS)
endif

FUNCALLFILES = $(FUNCOBJS:.$(SUFFIX)=)

include $(TOPDIR)/Makefile.tail

all :: libs

ifdef FUNCTION_PROFILE
$(BLASOBJS) $(BLASOBJS_P) : functable.h
$(BLASOBJS) $(BLASOBJS_P) : override CFLAGS += -DPROFILE_FUNC_NAME=interface_$(*F)

functable.h : Makefile
	./create $(FUNCALLFILES) > functable.h

endif

clean ::
	@rm -f functable.h


level3 : $(SBLAS3OBJS) $(DBLAS3OBJS) $(QBLAS3OBJS) $(CBLAS3OBJS) $(ZBLAS3OBJS) $(XBLAS3OBJS)
	$(AR) $(ARFLAGS) -ru $(TOPDIR)/$(LIBNAME) $^

$(CSBLASOBJS) $(CSBLASOBJS_P) $(CDBLASOBJS) $(CDBLASOBJS_P) $(CQBLASOBJS) $(CQBLASOBJS_P) \
$(CCBLASOBJS) $(CCBLASOBJS_P) $(CZBLASOBJS) $(CZBLASOBJS_P) $(CXBLASOBJS) $(CXBLASOBJS_P) : override CFLAGS += -DCBLAS


sgemm.$(SUFFIX) sgemm.$(PSUFFIX) : gemm.c ../param.h
	$(CC) -c $(CFLAGS) $< -o $(@F)

dgemm.$(SUFFIX) dgemm.$(PSUFFIX) : gemm.c ../param.h
	$(CC) -c $(CFLAGS) $< -o $(@F)

qgemm.$(SUFFIX) qgemm.$(PSUFFIX) : gemm.c ../param.h
	$(CC) -c $(CFLAGS) $< -o $(@F)

cgemm.$(SUFFIX) cgemm.$(PSUFFIX) : gemm.c ../param.h
	$(CC) -c $(CFLAGS) $< -o $(@F)

zgemm.$(SUFFIX) zgemm.$(PSUFFIX) : gemm.c ../param.h
	$(CC) -c $(CFLAGS) $< -o $(@F)

xgemm.$(SUFFIX) xgemm.$(PSUFFIX) : gemm.c ../param.h
	$(CC) -c $(CFLAGS) $< -o $(@F)


cgemm3m.$(SUFFIX) cgemm3m.$(PSUFFIX) : gemm.c
	$(CC) -c $(CFLAGS) -DGEMM3M $< -o $(@F)

zgemm3m.$(SUFFIX) zgemm3m.$(PSUFFIX) : gemm.c
	$(CC) -c $(CFLAGS) -DGEMM3M $< -o $(@F)

xgemm3m.$(SUFFIX) xgemm3m.$(PSUFFIX) : gemm.c
	$(CC) -c $(CFLAGS) -DGEMM3M $< -o $(@F)


cblas_sgemm.$(SUFFIX) cblas_sgemm.$(PSUFFIX) : gemm.c ../param.h
	$(CC) -DCBLAS -c $(CFLAGS) $< -o $(@F)

cblas_dgemm.$(SUFFIX) cblas_dgemm.$(PSUFFIX) : gemm.c ../param.h
	$(CC) -DCBLAS -c $(CFLAGS) $< -o $(@F)

cblas_cgemm.$(SUFFIX) cblas_cgemm.$(PSUFFIX) : gemm.c ../param.h
	$(CC) -DCBLAS -c $(CFLAGS) $< -o $(@F)

cblas_zgemm.$(SUFFIX) cblas_zgemm.$(PSUFFIX) : gemm.c ../param.h
	$(CC) -DCBLAS -c $(CFLAGS) $< -o $(@F)


cblas_cgemm3m.$(SUFFIX) cblas_cgemm3m.$(PSUFFIX) : gemm.c
	$(CC) -DCBLAS -c $(CFLAGS) -DGEMM3M $< -o $(@F)

cblas_zgemm3m.$(SUFFIX) cblas_zgemm3m.$(PSUFFIX) : gemm.c
	$(CC) -DCBLAS -c $(CFLAGS) -DGEMM3M $< -o $(@F)

