TOPDIR	= ../..
include ../../Makefile.system

USE_GEMM3M = 0

ifeq ($(ARCH), x86)
USE_GEMM3M = 1
endif

ifeq ($(ARCH), x86_64)
USE_GEMM3M = 1
endif

ifeq ($(ARCH), ia64)
USE_GEMM3M = 1
endif

ifeq ($(ARCH), MIPS)
USE_GEMM3M = 1
endif

SBLASOBJS	+= sgemm_nn.$(SUFFIX) sgemm_nt.$(SUFFIX) sgemm_tn.$(SUFFIX) sgemm_tt.$(SUFFIX) 

DBLASOBJS	+= dgemm_nn.$(SUFFIX) dgemm_nt.$(SUFFIX) dgemm_tn.$(SUFFIX) dgemm_tt.$(SUFFIX) 

QBLASOBJS	+= qgemm_nn.$(SUFFIX) qgemm_nt.$(SUFFIX) qgemm_tn.$(SUFFIX) qgemm_tt.$(SUFFIX) 

CBLASOBJS	+= \
	cgemm_nn.$(SUFFIX) cgemm_cn.$(SUFFIX) cgemm_tn.$(SUFFIX) cgemm_nc.$(SUFFIX) \
	cgemm_nt.$(SUFFIX) cgemm_cc.$(SUFFIX) cgemm_ct.$(SUFFIX) cgemm_tc.$(SUFFIX) \
	cgemm_tt.$(SUFFIX) cgemm_nr.$(SUFFIX) cgemm_tr.$(SUFFIX) cgemm_cr.$(SUFFIX) \
	cgemm_rn.$(SUFFIX) cgemm_rt.$(SUFFIX) cgemm_rc.$(SUFFIX) cgemm_rr.$(SUFFIX) 

ZBLASOBJS	+= \
	zgemm_nn.$(SUFFIX) zgemm_cn.$(SUFFIX) zgemm_tn.$(SUFFIX) zgemm_nc.$(SUFFIX) \
	zgemm_nt.$(SUFFIX) zgemm_cc.$(SUFFIX) zgemm_ct.$(SUFFIX) zgemm_tc.$(SUFFIX) \
	zgemm_tt.$(SUFFIX) zgemm_nr.$(SUFFIX) zgemm_tr.$(SUFFIX) zgemm_cr.$(SUFFIX) \
	zgemm_rn.$(SUFFIX) zgemm_rt.$(SUFFIX) zgemm_rc.$(SUFFIX) zgemm_rr.$(SUFFIX) 


XBLASOBJS	+= \
	xgemm_nn.$(SUFFIX) xgemm_cn.$(SUFFIX) xgemm_tn.$(SUFFIX) xgemm_nc.$(SUFFIX) \
	xgemm_nt.$(SUFFIX) xgemm_cc.$(SUFFIX) xgemm_ct.$(SUFFIX) xgemm_tc.$(SUFFIX) \
	xgemm_tt.$(SUFFIX) xgemm_nr.$(SUFFIX) xgemm_tr.$(SUFFIX) xgemm_cr.$(SUFFIX) \
	xgemm_rn.$(SUFFIX) xgemm_rt.$(SUFFIX) xgemm_rc.$(SUFFIX) xgemm_rr.$(SUFFIX) 

ifeq ($(USE_GEMM3M), 1)

CBLASOBJS   +=  \
	cgemm3m_nn.$(SUFFIX) cgemm3m_cn.$(SUFFIX) cgemm3m_tn.$(SUFFIX) cgemm3m_nc.$(SUFFIX) \
	cgemm3m_nt.$(SUFFIX) cgemm3m_cc.$(SUFFIX) cgemm3m_ct.$(SUFFIX) cgemm3m_tc.$(SUFFIX) \
	cgemm3m_tt.$(SUFFIX) cgemm3m_nr.$(SUFFIX) cgemm3m_tr.$(SUFFIX) cgemm3m_cr.$(SUFFIX) \
	cgemm3m_rn.$(SUFFIX) cgemm3m_rt.$(SUFFIX) cgemm3m_rc.$(SUFFIX) cgemm3m_rr.$(SUFFIX) 

ZBLASOBJS   +=  \
	zgemm3m_nn.$(SUFFIX) zgemm3m_cn.$(SUFFIX) zgemm3m_tn.$(SUFFIX) zgemm3m_nc.$(SUFFIX) \
	zgemm3m_nt.$(SUFFIX) zgemm3m_cc.$(SUFFIX) zgemm3m_ct.$(SUFFIX) zgemm3m_tc.$(SUFFIX) \
	zgemm3m_tt.$(SUFFIX) zgemm3m_nr.$(SUFFIX) zgemm3m_tr.$(SUFFIX) zgemm3m_cr.$(SUFFIX) \
	zgemm3m_rn.$(SUFFIX) zgemm3m_rt.$(SUFFIX) zgemm3m_rc.$(SUFFIX) zgemm3m_rr.$(SUFFIX) 

XBLASOBJS   +=  \
	xgemm3m_nn.$(SUFFIX) xgemm3m_cn.$(SUFFIX) xgemm3m_tn.$(SUFFIX) xgemm3m_nc.$(SUFFIX) \
	xgemm3m_nt.$(SUFFIX) xgemm3m_cc.$(SUFFIX) xgemm3m_ct.$(SUFFIX) xgemm3m_tc.$(SUFFIX) \
	xgemm3m_tt.$(SUFFIX) xgemm3m_nr.$(SUFFIX) xgemm3m_tr.$(SUFFIX) xgemm3m_cr.$(SUFFIX) \
	xgemm3m_rn.$(SUFFIX) xgemm3m_rt.$(SUFFIX) xgemm3m_rc.$(SUFFIX) xgemm3m_rr.$(SUFFIX) 

endif

ifdef SMP
COMMONOBJS  += gemm_thread_m.$(SUFFIX) gemm_thread_n.$(SUFFIX) gemm_thread_mn.$(SUFFIX) gemm_thread_variable.$(SUFFIX)

ifndef USE_SIMPLE_THREADED_LEVEL3

SBLASOBJS    += sgemm_thread_nn.$(SUFFIX) sgemm_thread_nt.$(SUFFIX) sgemm_thread_tn.$(SUFFIX) sgemm_thread_tt.$(SUFFIX)
DBLASOBJS    += dgemm_thread_nn.$(SUFFIX) dgemm_thread_nt.$(SUFFIX) dgemm_thread_tn.$(SUFFIX) dgemm_thread_tt.$(SUFFIX)
QBLASOBJS    += qgemm_thread_nn.$(SUFFIX) qgemm_thread_nt.$(SUFFIX) qgemm_thread_tn.$(SUFFIX) qgemm_thread_tt.$(SUFFIX)
CBLASOBJS    += cgemm_thread_nn.$(SUFFIX) cgemm_thread_nt.$(SUFFIX) cgemm_thread_nr.$(SUFFIX) cgemm_thread_nc.$(SUFFIX)
CBLASOBJS    += cgemm_thread_tn.$(SUFFIX) cgemm_thread_tt.$(SUFFIX) cgemm_thread_tr.$(SUFFIX) cgemm_thread_tc.$(SUFFIX)
CBLASOBJS    += cgemm_thread_rn.$(SUFFIX) cgemm_thread_rt.$(SUFFIX) cgemm_thread_rr.$(SUFFIX) cgemm_thread_rc.$(SUFFIX)
CBLASOBJS    += cgemm_thread_cn.$(SUFFIX) cgemm_thread_ct.$(SUFFIX) cgemm_thread_cr.$(SUFFIX) cgemm_thread_cc.$(SUFFIX)
ZBLASOBJS    += zgemm_thread_nn.$(SUFFIX) zgemm_thread_nt.$(SUFFIX) zgemm_thread_nr.$(SUFFIX) zgemm_thread_nc.$(SUFFIX)
ZBLASOBJS    += zgemm_thread_tn.$(SUFFIX) zgemm_thread_tt.$(SUFFIX) zgemm_thread_tr.$(SUFFIX) zgemm_thread_tc.$(SUFFIX)
ZBLASOBJS    += zgemm_thread_rn.$(SUFFIX) zgemm_thread_rt.$(SUFFIX) zgemm_thread_rr.$(SUFFIX) zgemm_thread_rc.$(SUFFIX)
ZBLASOBJS    += zgemm_thread_cn.$(SUFFIX) zgemm_thread_ct.$(SUFFIX) zgemm_thread_cr.$(SUFFIX) zgemm_thread_cc.$(SUFFIX)
XBLASOBJS    += xgemm_thread_nn.$(SUFFIX) xgemm_thread_nt.$(SUFFIX) xgemm_thread_nr.$(SUFFIX) xgemm_thread_nc.$(SUFFIX)
XBLASOBJS    += xgemm_thread_tn.$(SUFFIX) xgemm_thread_tt.$(SUFFIX) xgemm_thread_tr.$(SUFFIX) xgemm_thread_tc.$(SUFFIX)
XBLASOBJS    += xgemm_thread_rn.$(SUFFIX) xgemm_thread_rt.$(SUFFIX) xgemm_thread_rr.$(SUFFIX) xgemm_thread_rc.$(SUFFIX)
XBLASOBJS    += xgemm_thread_cn.$(SUFFIX) xgemm_thread_ct.$(SUFFIX) xgemm_thread_cr.$(SUFFIX) xgemm_thread_cc.$(SUFFIX)


ifeq ($(USE_GEMM3M), 1)

CBLASOBJS    += cgemm3m_thread_nn.$(SUFFIX) cgemm3m_thread_nt.$(SUFFIX) cgemm3m_thread_nr.$(SUFFIX) cgemm3m_thread_nc.$(SUFFIX)
CBLASOBJS    += cgemm3m_thread_tn.$(SUFFIX) cgemm3m_thread_tt.$(SUFFIX) cgemm3m_thread_tr.$(SUFFIX) cgemm3m_thread_tc.$(SUFFIX)
CBLASOBJS    += cgemm3m_thread_rn.$(SUFFIX) cgemm3m_thread_rt.$(SUFFIX) cgemm3m_thread_rr.$(SUFFIX) cgemm3m_thread_rc.$(SUFFIX)
CBLASOBJS    += cgemm3m_thread_cn.$(SUFFIX) cgemm3m_thread_ct.$(SUFFIX) cgemm3m_thread_cr.$(SUFFIX) cgemm3m_thread_cc.$(SUFFIX)
ZBLASOBJS    += zgemm3m_thread_nn.$(SUFFIX) zgemm3m_thread_nt.$(SUFFIX) zgemm3m_thread_nr.$(SUFFIX) zgemm3m_thread_nc.$(SUFFIX)
ZBLASOBJS    += zgemm3m_thread_tn.$(SUFFIX) zgemm3m_thread_tt.$(SUFFIX) zgemm3m_thread_tr.$(SUFFIX) zgemm3m_thread_tc.$(SUFFIX)
ZBLASOBJS    += zgemm3m_thread_rn.$(SUFFIX) zgemm3m_thread_rt.$(SUFFIX) zgemm3m_thread_rr.$(SUFFIX) zgemm3m_thread_rc.$(SUFFIX)
ZBLASOBJS    += zgemm3m_thread_cn.$(SUFFIX) zgemm3m_thread_ct.$(SUFFIX) zgemm3m_thread_cr.$(SUFFIX) zgemm3m_thread_cc.$(SUFFIX)
XBLASOBJS    += xgemm3m_thread_nn.$(SUFFIX) xgemm3m_thread_nt.$(SUFFIX) xgemm3m_thread_nr.$(SUFFIX) xgemm3m_thread_nc.$(SUFFIX)
XBLASOBJS    += xgemm3m_thread_tn.$(SUFFIX) xgemm3m_thread_tt.$(SUFFIX) xgemm3m_thread_tr.$(SUFFIX) xgemm3m_thread_tc.$(SUFFIX)
XBLASOBJS    += xgemm3m_thread_rn.$(SUFFIX) xgemm3m_thread_rt.$(SUFFIX) xgemm3m_thread_rr.$(SUFFIX) xgemm3m_thread_rc.$(SUFFIX)
XBLASOBJS    += xgemm3m_thread_cn.$(SUFFIX) xgemm3m_thread_ct.$(SUFFIX) xgemm3m_thread_cr.$(SUFFIX) xgemm3m_thread_cc.$(SUFFIX)


endif

endif
endif

HPLOBJS = dgemm_nn.$(SUFFIX) dgemm_nt.$(SUFFIX) dgemm_tn.$(SUFFIX) dgemm_tt.$(SUFFIX) 

ifndef USE_SIMPLE_THREADED_LEVEL3
HPLOBJS += dgemm_thread_nn.$(SUFFIX) dgemm_thread_nt.$(SUFFIX) \
	   dgemm_thread_tn.$(SUFFIX) dgemm_thread_tt.$(SUFFIX)
endif

all ::

sgemm_nn.$(SUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -UCOMPLEX -DNN $< -o $(@F)

sgemm_nt.$(SUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -UCOMPLEX -DNT $< -o $(@F)

sgemm_tn.$(SUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -UCOMPLEX -DTN $< -o $(@F)

sgemm_tt.$(SUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -UCOMPLEX -DTT $< -o $(@F)

dgemm_nn.$(SUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -UCOMPLEX -DNN $< -o $(@F)

dgemm_nt.$(SUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -UCOMPLEX -DNT $< -o $(@F)

dgemm_tn.$(SUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -UCOMPLEX -DTN $< -o $(@F)

dgemm_tt.$(SUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -UCOMPLEX -DTT $< -o $(@F)

qgemm_nn.$(SUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -UCOMPLEX -DNN $< -o $(@F)

qgemm_nt.$(SUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -UCOMPLEX -DNT $< -o $(@F)

qgemm_tn.$(SUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -UCOMPLEX -DTN $< -o $(@F)

qgemm_tt.$(SUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -UCOMPLEX -DTT $< -o $(@F)

cgemm_nn.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DNN $< -o $(@F)

cgemm_nt.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DNT $< -o $(@F)

cgemm_nr.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DNR $< -o $(@F)

cgemm_nc.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DNC $< -o $(@F)

cgemm_tn.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DTN $< -o $(@F)

cgemm_tt.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DTT $< -o $(@F)

cgemm_tr.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DTR $< -o $(@F)

cgemm_tc.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DTC $< -o $(@F)

cgemm_rn.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DRN $< -o $(@F)

cgemm_rt.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DRT $< -o $(@F)

cgemm_rr.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DRR $< -o $(@F)

cgemm_rc.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DRC $< -o $(@F)

cgemm_cn.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DCN $< -o $(@F)

cgemm_ct.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DCT $< -o $(@F)

cgemm_cr.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DCR $< -o $(@F)

cgemm_cc.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DCC $< -o $(@F)

zgemm_nn.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DNN $< -o $(@F)

zgemm_nt.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DNT $< -o $(@F)

zgemm_nr.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DNR $< -o $(@F)

zgemm_nc.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DNC $< -o $(@F)

zgemm_tn.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DTN $< -o $(@F)

zgemm_tt.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DTT $< -o $(@F)

zgemm_tr.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DTR $< -o $(@F)

zgemm_tc.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DTC $< -o $(@F)

zgemm_rn.$(SUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DRN $< -o $(@F)

zgemm_rt.$(SUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DRT $< -o $(@F)

zgemm_rr.$(SUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DRR $< -o $(@F)

zgemm_rc.$(SUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DRC $< -o $(@F)

zgemm_cn.$(SUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DCN $< -o $(@F)

zgemm_ct.$(SUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DCT $< -o $(@F)

zgemm_cr.$(SUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DCR $< -o $(@F)

zgemm_cc.$(SUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DCC $< -o $(@F)

xgemm_nn.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DNN $< -o $(@F)

xgemm_nt.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DNT $< -o $(@F)

xgemm_nr.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DNR $< -o $(@F)

xgemm_nc.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DNC $< -o $(@F)

xgemm_tn.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DTN $< -o $(@F)

xgemm_tt.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DTT $< -o $(@F)

xgemm_tr.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DTR $< -o $(@F)

xgemm_tc.$(SUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DTC $< -o $(@F)

xgemm_rn.$(SUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DRN $< -o $(@F)

xgemm_rt.$(SUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DRT $< -o $(@F)

xgemm_rr.$(SUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DRR $< -o $(@F)

xgemm_rc.$(SUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DRC $< -o $(@F)

xgemm_cn.$(SUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DCN $< -o $(@F)

xgemm_ct.$(SUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DCT $< -o $(@F)

xgemm_cr.$(SUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DCR $< -o $(@F)

xgemm_cc.$(SUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DCC $< -o $(@F)

gemm_thread_m.$(SUFFIX) : gemm_thread_m.c ../../common.h
	$(CC) -c $(CFLAGS) $< -o $(@F)

gemm_thread_n.$(SUFFIX) : gemm_thread_n.c ../../common.h
	$(CC) -c $(CFLAGS) $< -o $(@F)

gemm_thread_mn.$(SUFFIX) : gemm_thread_mn.c ../../common.h
	$(CC) -c $(CFLAGS) $< -o $(@F)

gemm_thread_variable.$(SUFFIX) : gemm_thread_variable.c ../../common.h
	$(CC) -c $(CFLAGS) $< -o $(@F)

beta_thread.$(SUFFIX) : beta_thread.c ../../common.h
	$(CC) -c $(CFLAGS) $< -o $(@F)


sgemm_thread_nn.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -UCOMPLEX -DNN $< -o $(@F)

sgemm_thread_nt.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -UCOMPLEX -DNT $< -o $(@F)

sgemm_thread_tn.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -UCOMPLEX -DTN $< -o $(@F)

sgemm_thread_tt.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -UCOMPLEX -DTT $< -o $(@F)

dgemm_thread_nn.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -UCOMPLEX -DNN $< -o $(@F)

dgemm_thread_nt.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -UCOMPLEX -DNT $< -o $(@F)

dgemm_thread_tn.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -UCOMPLEX -DTN $< -o $(@F)

dgemm_thread_tt.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -UCOMPLEX -DTT $< -o $(@F)

qgemm_thread_nn.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -UCOMPLEX -DNN $< -o $(@F)

qgemm_thread_nt.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -UCOMPLEX -DNT $< -o $(@F)

qgemm_thread_tn.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -UCOMPLEX -DTN $< -o $(@F)

qgemm_thread_tt.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -UCOMPLEX -DTT $< -o $(@F)

cgemm_thread_nn.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DNN $< -o $(@F)

cgemm_thread_nt.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DNT $< -o $(@F)

cgemm_thread_nr.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DNR $< -o $(@F)

cgemm_thread_nc.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DNC $< -o $(@F)

cgemm_thread_tn.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DTN $< -o $(@F)

cgemm_thread_tt.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DTT $< -o $(@F)

cgemm_thread_tr.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DTR $< -o $(@F)

cgemm_thread_tc.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DTC $< -o $(@F)

cgemm_thread_rn.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DRN $< -o $(@F)

cgemm_thread_rt.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DRT $< -o $(@F)

cgemm_thread_rr.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DRR $< -o $(@F)

cgemm_thread_rc.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DRC $< -o $(@F)

cgemm_thread_cn.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DCN $< -o $(@F)

cgemm_thread_ct.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DCT $< -o $(@F)

cgemm_thread_cr.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DCR $< -o $(@F)

cgemm_thread_cc.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DCC $< -o $(@F)

zgemm_thread_nn.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DNN $< -o $(@F)

zgemm_thread_nt.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DNT $< -o $(@F)

zgemm_thread_nr.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DNR $< -o $(@F)

zgemm_thread_nc.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DNC $< -o $(@F)

zgemm_thread_tn.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DTN $< -o $(@F)

zgemm_thread_tt.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DTT $< -o $(@F)

zgemm_thread_tr.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DTR $< -o $(@F)

zgemm_thread_tc.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DTC $< -o $(@F)

zgemm_thread_rn.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DRN $< -o $(@F)

zgemm_thread_rt.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DRT $< -o $(@F)

zgemm_thread_rr.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DRR $< -o $(@F)

zgemm_thread_rc.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DRC $< -o $(@F)

zgemm_thread_cn.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DCN $< -o $(@F)

zgemm_thread_ct.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DCT $< -o $(@F)

zgemm_thread_cr.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DCR $< -o $(@F)

zgemm_thread_cc.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DCC $< -o $(@F)

xgemm_thread_nn.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DNN $< -o $(@F)

xgemm_thread_nt.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DNT $< -o $(@F)

xgemm_thread_nr.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DNR $< -o $(@F)

xgemm_thread_nc.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DNC $< -o $(@F)

xgemm_thread_tn.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DTN $< -o $(@F)

xgemm_thread_tt.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DTT $< -o $(@F)

xgemm_thread_tr.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DTR $< -o $(@F)

xgemm_thread_tc.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DTC $< -o $(@F)

xgemm_thread_rn.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DRN $< -o $(@F)

xgemm_thread_rt.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DRT $< -o $(@F)

xgemm_thread_rr.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DRR $< -o $(@F)

xgemm_thread_rc.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DRC $< -o $(@F)

xgemm_thread_cn.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DCN $< -o $(@F)

xgemm_thread_ct.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DCT $< -o $(@F)

xgemm_thread_cr.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DCR $< -o $(@F)

xgemm_thread_cc.$(SUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DCC $< -o $(@F)


cgemm3m_nn.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DNN $< -o $(@F)

cgemm3m_nt.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DNT $< -o $(@F)

cgemm3m_nr.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DNR $< -o $(@F)

cgemm3m_nc.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DNC $< -o $(@F)

cgemm3m_tn.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DTN $< -o $(@F)

cgemm3m_tt.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DTT $< -o $(@F)

cgemm3m_tr.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DTR $< -o $(@F)

cgemm3m_tc.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DTC $< -o $(@F)

cgemm3m_rn.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DRN $< -o $(@F)

cgemm3m_rt.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DRT $< -o $(@F)

cgemm3m_rr.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DRR $< -o $(@F)

cgemm3m_rc.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DRC $< -o $(@F)

cgemm3m_cn.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DCN $< -o $(@F)

cgemm3m_ct.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DCT $< -o $(@F)

cgemm3m_cr.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DCR $< -o $(@F)

cgemm3m_cc.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DCC $< -o $(@F)

zgemm3m_nn.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DNN $< -o $(@F)

zgemm3m_nt.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DNT $< -o $(@F)

zgemm3m_nr.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DNR $< -o $(@F)

zgemm3m_nc.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DNC $< -o $(@F)

zgemm3m_tn.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DTN $< -o $(@F)

zgemm3m_tt.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DTT $< -o $(@F)

zgemm3m_tr.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DTR $< -o $(@F)

zgemm3m_tc.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DTC $< -o $(@F)

zgemm3m_rn.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DRN $< -o $(@F)

zgemm3m_rt.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DRT $< -o $(@F)

zgemm3m_rr.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DRR $< -o $(@F)

zgemm3m_rc.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DRC $< -o $(@F)

zgemm3m_cn.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DCN $< -o $(@F)

zgemm3m_ct.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DCT $< -o $(@F)

zgemm3m_cr.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DCR $< -o $(@F)

zgemm3m_cc.$(SUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(CFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DCC $< -o $(@F)

xgemm3m_nn.$(SUFFIX) : gemm3m.c gemm3m_level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DNN $< -o $(@F)

xgemm3m_nt.$(SUFFIX) : gemm3m.c gemm3m_level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DNT $< -o $(@F)

xgemm3m_nr.$(SUFFIX) : gemm3m.c gemm3m_level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DNR $< -o $(@F)

xgemm3m_nc.$(SUFFIX) : gemm3m.c gemm3m_level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DNC $< -o $(@F)

xgemm3m_tn.$(SUFFIX) : gemm3m.c gemm3m_level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DTN $< -o $(@F)

xgemm3m_tt.$(SUFFIX) : gemm3m.c gemm3m_level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DTT $< -o $(@F)

xgemm3m_tr.$(SUFFIX) : gemm3m.c gemm3m_level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DTR $< -o $(@F)

xgemm3m_tc.$(SUFFIX) : gemm3m.c gemm3m_level3.c  ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DTC $< -o $(@F)

xgemm3m_rn.$(SUFFIX) : gemm3m.c gemm3m_level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DRN $< -o $(@F)

xgemm3m_rt.$(SUFFIX) : gemm3m.c gemm3m_level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DRT $< -o $(@F)

xgemm3m_rr.$(SUFFIX) : gemm3m.c gemm3m_level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DRR $< -o $(@F)

xgemm3m_rc.$(SUFFIX) : gemm3m.c gemm3m_level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DRC $< -o $(@F)

xgemm3m_cn.$(SUFFIX) : gemm3m.c gemm3m_level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DCN $< -o $(@F)

xgemm3m_ct.$(SUFFIX) : gemm3m.c gemm3m_level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DCT $< -o $(@F)

xgemm3m_cr.$(SUFFIX) : gemm3m.c gemm3m_level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DCR $< -o $(@F)

xgemm3m_cc.$(SUFFIX) : gemm3m.c gemm3m_level3.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DCC $< -o $(@F)


cgemm3m_thread_nn.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DNN $< -o $(@F)

cgemm3m_thread_nt.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DNT $< -o $(@F)

cgemm3m_thread_nr.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DNR $< -o $(@F)

cgemm3m_thread_nc.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DNC $< -o $(@F)

cgemm3m_thread_tn.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DTN $< -o $(@F)

cgemm3m_thread_tt.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DTT $< -o $(@F)

cgemm3m_thread_tr.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DTR $< -o $(@F)

cgemm3m_thread_tc.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DTC $< -o $(@F)

cgemm3m_thread_rn.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DRN $< -o $(@F)

cgemm3m_thread_rt.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DRT $< -o $(@F)

cgemm3m_thread_rr.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DRR $< -o $(@F)

cgemm3m_thread_rc.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DRC $< -o $(@F)

cgemm3m_thread_cn.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DCN $< -o $(@F)

cgemm3m_thread_ct.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DCT $< -o $(@F)

cgemm3m_thread_cr.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DCR $< -o $(@F)

cgemm3m_thread_cc.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DCC $< -o $(@F)

zgemm3m_thread_nn.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DNN $< -o $(@F)

zgemm3m_thread_nt.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DNT $< -o $(@F)

zgemm3m_thread_nr.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DNR $< -o $(@F)

zgemm3m_thread_nc.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DNC $< -o $(@F)

zgemm3m_thread_tn.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DTN $< -o $(@F)

zgemm3m_thread_tt.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DTT $< -o $(@F)

zgemm3m_thread_tr.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DTR $< -o $(@F)

zgemm3m_thread_tc.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DTC $< -o $(@F)

zgemm3m_thread_rn.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DRN $< -o $(@F)

zgemm3m_thread_rt.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DRT $< -o $(@F)

zgemm3m_thread_rr.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DRR $< -o $(@F)

zgemm3m_thread_rc.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DRC $< -o $(@F)

zgemm3m_thread_cn.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DCN $< -o $(@F)

zgemm3m_thread_ct.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DCT $< -o $(@F)

zgemm3m_thread_cr.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DCR $< -o $(@F)

zgemm3m_thread_cc.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DCC $< -o $(@F)

xgemm3m_thread_nn.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DNN $< -o $(@F)

xgemm3m_thread_nt.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DNT $< -o $(@F)

xgemm3m_thread_nr.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DNR $< -o $(@F)

xgemm3m_thread_nc.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DNC $< -o $(@F)

xgemm3m_thread_tn.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DTN $< -o $(@F)

xgemm3m_thread_tt.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DTT $< -o $(@F)

xgemm3m_thread_tr.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DTR $< -o $(@F)

xgemm3m_thread_tc.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DTC $< -o $(@F)

xgemm3m_thread_rn.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DRN $< -o $(@F)

xgemm3m_thread_rt.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DRT $< -o $(@F)

xgemm3m_thread_rr.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DRR $< -o $(@F)

xgemm3m_thread_rc.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DRC $< -o $(@F)

xgemm3m_thread_cn.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DCN $< -o $(@F)

xgemm3m_thread_ct.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DCT $< -o $(@F)

xgemm3m_thread_cr.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DCR $< -o $(@F)

xgemm3m_thread_cc.$(SUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(CFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DCC $< -o $(@F)


sgemm_nn.$(PSUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -UCOMPLEX -DNN $< -o $(@F)

sgemm_nt.$(PSUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -UCOMPLEX -DNT $< -o $(@F)

sgemm_tn.$(PSUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -UCOMPLEX -DTN $< -o $(@F)

sgemm_tt.$(PSUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -UCOMPLEX -DTT $< -o $(@F)

dgemm_nn.$(PSUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -UCOMPLEX -DNN $< -o $(@F)

dgemm_nt.$(PSUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -UCOMPLEX -DNT $< -o $(@F)

dgemm_tn.$(PSUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -UCOMPLEX -DTN $< -o $(@F)

dgemm_tt.$(PSUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -UCOMPLEX -DTT $< -o $(@F)

qgemm_nn.$(PSUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -UCOMPLEX -DNN $< -o $(@F)

qgemm_nt.$(PSUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -UCOMPLEX -DNT $< -o $(@F)

qgemm_tn.$(PSUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -UCOMPLEX -DTN $< -o $(@F)

qgemm_tt.$(PSUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -UCOMPLEX -DTT $< -o $(@F)

cgemm_nn.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DNN $< -o $(@F)

cgemm_nt.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DNT $< -o $(@F)

cgemm_nr.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DNR $< -o $(@F)

cgemm_nc.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DNC $< -o $(@F)

cgemm_tn.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DTN $< -o $(@F)

cgemm_tt.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DTT $< -o $(@F)

cgemm_tr.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DTR $< -o $(@F)

cgemm_tc.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DTC $< -o $(@F)

cgemm_rn.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DRN $< -o $(@F)

cgemm_rt.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DRT $< -o $(@F)

cgemm_rr.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DRR $< -o $(@F)

cgemm_rc.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DRC $< -o $(@F)

cgemm_cn.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DCN $< -o $(@F)

cgemm_ct.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DCT $< -o $(@F)

cgemm_cr.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DCR $< -o $(@F)

cgemm_cc.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DCC $< -o $(@F)

zgemm_nn.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DNN $< -o $(@F)

zgemm_nt.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DNT $< -o $(@F)

zgemm_nr.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DNR $< -o $(@F)

zgemm_nc.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DNC $< -o $(@F)

zgemm_tn.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DTN $< -o $(@F)

zgemm_tt.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DTT $< -o $(@F)

zgemm_tr.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DTR $< -o $(@F)

zgemm_tc.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DTC $< -o $(@F)

zgemm_rn.$(PSUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DRN $< -o $(@F)

zgemm_rt.$(PSUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DRT $< -o $(@F)

zgemm_rr.$(PSUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DRR $< -o $(@F)

zgemm_rc.$(PSUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DRC $< -o $(@F)

zgemm_cn.$(PSUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DCN $< -o $(@F)

zgemm_ct.$(PSUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DCT $< -o $(@F)

zgemm_cr.$(PSUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DCR $< -o $(@F)

zgemm_cc.$(PSUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DCC $< -o $(@F)

xgemm_nn.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DNN $< -o $(@F)

xgemm_nt.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DNT $< -o $(@F)

xgemm_nr.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DNR $< -o $(@F)

xgemm_nc.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DNC $< -o $(@F)

xgemm_tn.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DTN $< -o $(@F)

xgemm_tt.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DTT $< -o $(@F)

xgemm_tr.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DTR $< -o $(@F)

xgemm_tc.$(PSUFFIX) : gemm.c level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DTC $< -o $(@F)

xgemm_rn.$(PSUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DRN $< -o $(@F)

xgemm_rt.$(PSUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DRT $< -o $(@F)

xgemm_rr.$(PSUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DRR $< -o $(@F)

xgemm_rc.$(PSUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DRC $< -o $(@F)

xgemm_cn.$(PSUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DCN $< -o $(@F)

xgemm_ct.$(PSUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DCT $< -o $(@F)

xgemm_cr.$(PSUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DCR $< -o $(@F)

xgemm_cc.$(PSUFFIX) : gemm.c level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DCC $< -o $(@F)

gemm_thread_m.$(PSUFFIX) : gemm_thread_m.c ../../common.h
	$(CC) -c $(PFLAGS) $< -o $(@F)

gemm_thread_n.$(PSUFFIX) : gemm_thread_n.c ../../common.h
	$(CC) -c $(PFLAGS) $< -o $(@F)

gemm_thread_mn.$(PSUFFIX) : gemm_thread_mn.c ../../common.h
	$(CC) -c $(PFLAGS) $< -o $(@F)

gemm_thread_variable.$(PSUFFIX) : gemm_thread_variable.c ../../common.h
	$(CC) -c $(PFLAGS) $< -o $(@F)

beta_thread.$(PSUFFIX) : beta_thread.c ../../common.h
	$(CC) -c $(PFLAGS) $< -o $(@F)


sgemm_thread_nn.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -UCOMPLEX -DNN $< -o $(@F)

sgemm_thread_nt.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -UCOMPLEX -DNT $< -o $(@F)

sgemm_thread_tn.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -UCOMPLEX -DTN $< -o $(@F)

sgemm_thread_tt.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -UCOMPLEX -DTT $< -o $(@F)

dgemm_thread_nn.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -UCOMPLEX -DNN $< -o $(@F)

dgemm_thread_nt.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -UCOMPLEX -DNT $< -o $(@F)

dgemm_thread_tn.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -UCOMPLEX -DTN $< -o $(@F)

dgemm_thread_tt.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -UCOMPLEX -DTT $< -o $(@F)

qgemm_thread_nn.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -UCOMPLEX -DNN $< -o $(@F)

qgemm_thread_nt.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -UCOMPLEX -DNT $< -o $(@F)

qgemm_thread_tn.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -UCOMPLEX -DTN $< -o $(@F)

qgemm_thread_tt.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -UCOMPLEX -DTT $< -o $(@F)

cgemm_thread_nn.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DNN $< -o $(@F)

cgemm_thread_nt.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DNT $< -o $(@F)

cgemm_thread_nr.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DNR $< -o $(@F)

cgemm_thread_nc.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DNC $< -o $(@F)

cgemm_thread_tn.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DTN $< -o $(@F)

cgemm_thread_tt.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DTT $< -o $(@F)

cgemm_thread_tr.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DTR $< -o $(@F)

cgemm_thread_tc.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DTC $< -o $(@F)

cgemm_thread_rn.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DRN $< -o $(@F)

cgemm_thread_rt.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DRT $< -o $(@F)

cgemm_thread_rr.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DRR $< -o $(@F)

cgemm_thread_rc.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DRC $< -o $(@F)

cgemm_thread_cn.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DCN $< -o $(@F)

cgemm_thread_ct.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DCT $< -o $(@F)

cgemm_thread_cr.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DCR $< -o $(@F)

cgemm_thread_cc.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DCC $< -o $(@F)

zgemm_thread_nn.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DNN $< -o $(@F)

zgemm_thread_nt.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DNT $< -o $(@F)

zgemm_thread_nr.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DNR $< -o $(@F)

zgemm_thread_nc.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DNC $< -o $(@F)

zgemm_thread_tn.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DTN $< -o $(@F)

zgemm_thread_tt.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DTT $< -o $(@F)

zgemm_thread_tr.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DTR $< -o $(@F)

zgemm_thread_tc.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DTC $< -o $(@F)

zgemm_thread_rn.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DRN $< -o $(@F)

zgemm_thread_rt.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DRT $< -o $(@F)

zgemm_thread_rr.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DRR $< -o $(@F)

zgemm_thread_rc.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DRC $< -o $(@F)

zgemm_thread_cn.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DCN $< -o $(@F)

zgemm_thread_ct.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DCT $< -o $(@F)

zgemm_thread_cr.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DCR $< -o $(@F)

zgemm_thread_cc.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DCC $< -o $(@F)

xgemm_thread_nn.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DNN $< -o $(@F)

xgemm_thread_nt.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DNT $< -o $(@F)

xgemm_thread_nr.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DNR $< -o $(@F)

xgemm_thread_nc.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DNC $< -o $(@F)

xgemm_thread_tn.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DTN $< -o $(@F)

xgemm_thread_tt.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DTT $< -o $(@F)

xgemm_thread_tr.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DTR $< -o $(@F)

xgemm_thread_tc.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DTC $< -o $(@F)

xgemm_thread_rn.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DRN $< -o $(@F)

xgemm_thread_rt.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DRT $< -o $(@F)

xgemm_thread_rr.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DRR $< -o $(@F)

xgemm_thread_rc.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DRC $< -o $(@F)

xgemm_thread_cn.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DCN $< -o $(@F)

xgemm_thread_ct.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DCT $< -o $(@F)

xgemm_thread_cr.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DCR $< -o $(@F)

xgemm_thread_cc.$(PSUFFIX) : gemm.c level3_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DCC $< -o $(@F)


cgemm3m_nn.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DNN $< -o $(@F)

cgemm3m_nt.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DNT $< -o $(@F)

cgemm3m_nr.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DNR $< -o $(@F)

cgemm3m_nc.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DNC $< -o $(@F)

cgemm3m_tn.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DTN $< -o $(@F)

cgemm3m_tt.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DTT $< -o $(@F)

cgemm3m_tr.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DTR $< -o $(@F)

cgemm3m_tc.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DTC $< -o $(@F)

cgemm3m_rn.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DRN $< -o $(@F)

cgemm3m_rt.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DRT $< -o $(@F)

cgemm3m_rr.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DRR $< -o $(@F)

cgemm3m_rc.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DRC $< -o $(@F)

cgemm3m_cn.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DCN $< -o $(@F)

cgemm3m_ct.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DCT $< -o $(@F)

cgemm3m_cr.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DCR $< -o $(@F)

cgemm3m_cc.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -UDOUBLE -DCOMPLEX -DCC $< -o $(@F)

zgemm3m_nn.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DNN $< -o $(@F)

zgemm3m_nt.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DNT $< -o $(@F)

zgemm3m_nr.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DNR $< -o $(@F)

zgemm3m_nc.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DNC $< -o $(@F)

zgemm3m_tn.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DTN $< -o $(@F)

zgemm3m_tt.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DTT $< -o $(@F)

zgemm3m_tr.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DTR $< -o $(@F)

zgemm3m_tc.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DTC $< -o $(@F)

zgemm3m_rn.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DRN $< -o $(@F)

zgemm3m_rt.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DRT $< -o $(@F)

zgemm3m_rr.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DRR $< -o $(@F)

zgemm3m_rc.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DRC $< -o $(@F)

zgemm3m_cn.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DCN $< -o $(@F)

zgemm3m_ct.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DCT $< -o $(@F)

zgemm3m_cr.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DCR $< -o $(@F)

zgemm3m_cc.$(PSUFFIX) : gemm3m.c gemm3m_level3.c
	$(CC) $(PFLAGS) $(BLOCKS) -c -DDOUBLE -DCOMPLEX -DCC $< -o $(@F)

xgemm3m_nn.$(PSUFFIX) : gemm3m.c gemm3m_level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DNN $< -o $(@F)

xgemm3m_nt.$(PSUFFIX) : gemm3m.c gemm3m_level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DNT $< -o $(@F)

xgemm3m_nr.$(PSUFFIX) : gemm3m.c gemm3m_level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DNR $< -o $(@F)

xgemm3m_nc.$(PSUFFIX) : gemm3m.c gemm3m_level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DNC $< -o $(@F)

xgemm3m_tn.$(PSUFFIX) : gemm3m.c gemm3m_level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DTN $< -o $(@F)

xgemm3m_tt.$(PSUFFIX) : gemm3m.c gemm3m_level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DTT $< -o $(@F)

xgemm3m_tr.$(PSUFFIX) : gemm3m.c gemm3m_level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DTR $< -o $(@F)

xgemm3m_tc.$(PSUFFIX) : gemm3m.c gemm3m_level3.c  ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DTC $< -o $(@F)

xgemm3m_rn.$(PSUFFIX) : gemm3m.c gemm3m_level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DRN $< -o $(@F)

xgemm3m_rt.$(PSUFFIX) : gemm3m.c gemm3m_level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DRT $< -o $(@F)

xgemm3m_rr.$(PSUFFIX) : gemm3m.c gemm3m_level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DRR $< -o $(@F)

xgemm3m_rc.$(PSUFFIX) : gemm3m.c gemm3m_level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DRC $< -o $(@F)

xgemm3m_cn.$(PSUFFIX) : gemm3m.c gemm3m_level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DCN $< -o $(@F)

xgemm3m_ct.$(PSUFFIX) : gemm3m.c gemm3m_level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DCT $< -o $(@F)

xgemm3m_cr.$(PSUFFIX) : gemm3m.c gemm3m_level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DCR $< -o $(@F)

xgemm3m_cc.$(PSUFFIX) : gemm3m.c gemm3m_level3.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DXDOUBLE -DCOMPLEX -DCC $< -o $(@F)

cgemmf.$(PSUFFIX) : zgemmf.c
	$(CC) -c $(PFLAGS) -UDOUBLE -DCOMPLEX $< -o $(@F)

zgemmf.$(PSUFFIX) : zgemmf.c
	$(CC) -c $(PFLAGS) -DDOUBLE -DCOMPLEX $< -o $(@F)

xgemmf.$(PSUFFIX) : zgemmf.c
	$(CC) -c $(PFLAGS) -DXDOUBLE -DCOMPLEX $< -o $(@F)

cgemm3m_thread_nn.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DNN $< -o $(@F)

cgemm3m_thread_nt.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DNT $< -o $(@F)

cgemm3m_thread_nr.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DNR $< -o $(@F)

cgemm3m_thread_nc.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DNC $< -o $(@F)

cgemm3m_thread_tn.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DTN $< -o $(@F)

cgemm3m_thread_tt.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DTT $< -o $(@F)

cgemm3m_thread_tr.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DTR $< -o $(@F)

cgemm3m_thread_tc.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DTC $< -o $(@F)

cgemm3m_thread_rn.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DRN $< -o $(@F)

cgemm3m_thread_rt.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DRT $< -o $(@F)

cgemm3m_thread_rr.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DRR $< -o $(@F)

cgemm3m_thread_rc.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DRC $< -o $(@F)

cgemm3m_thread_cn.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DCN $< -o $(@F)

cgemm3m_thread_ct.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DCT $< -o $(@F)

cgemm3m_thread_cr.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DCR $< -o $(@F)

cgemm3m_thread_cc.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -UDOUBLE -DCOMPLEX -DCC $< -o $(@F)

zgemm3m_thread_nn.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DNN $< -o $(@F)

zgemm3m_thread_nt.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DNT $< -o $(@F)

zgemm3m_thread_nr.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DNR $< -o $(@F)

zgemm3m_thread_nc.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DNC $< -o $(@F)

zgemm3m_thread_tn.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DTN $< -o $(@F)

zgemm3m_thread_tt.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DTT $< -o $(@F)

zgemm3m_thread_tr.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DTR $< -o $(@F)

zgemm3m_thread_tc.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DTC $< -o $(@F)

zgemm3m_thread_rn.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DRN $< -o $(@F)

zgemm3m_thread_rt.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DRT $< -o $(@F)

zgemm3m_thread_rr.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DRR $< -o $(@F)

zgemm3m_thread_rc.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DRC $< -o $(@F)

zgemm3m_thread_cn.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DCN $< -o $(@F)

zgemm3m_thread_ct.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DCT $< -o $(@F)

zgemm3m_thread_cr.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DCR $< -o $(@F)

zgemm3m_thread_cc.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DDOUBLE -DCOMPLEX -DCC $< -o $(@F)

xgemm3m_thread_nn.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DNN $< -o $(@F)

xgemm3m_thread_nt.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DNT $< -o $(@F)

xgemm3m_thread_nr.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DNR $< -o $(@F)

xgemm3m_thread_nc.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DNC $< -o $(@F)

xgemm3m_thread_tn.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DTN $< -o $(@F)

xgemm3m_thread_tt.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DTT $< -o $(@F)

xgemm3m_thread_tr.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DTR $< -o $(@F)

xgemm3m_thread_tc.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DTC $< -o $(@F)

xgemm3m_thread_rn.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DRN $< -o $(@F)

xgemm3m_thread_rt.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DRT $< -o $(@F)

xgemm3m_thread_rr.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DRR $< -o $(@F)

xgemm3m_thread_rc.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DRC $< -o $(@F)

xgemm3m_thread_cn.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DCN $< -o $(@F)

xgemm3m_thread_ct.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DCT $< -o $(@F)

xgemm3m_thread_cr.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DCR $< -o $(@F)

xgemm3m_thread_cc.$(PSUFFIX) : gemm3m.c level3_gemm3m_thread.c ../../param.h
	$(CC) $(PFLAGS) $(BLOCKS) -c -DTHREADED_LEVEL3 -DXDOUBLE -DCOMPLEX -DCC $< -o $(@F)


include ../../Makefile.tail
