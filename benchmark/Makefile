TOPDIR	= ..
include $(TOPDIR)/Makefile.system

# ACML standard
#ACML=/opt/acml5.3.1/gfortran64_mp/lib
#LIBACML = -fopenmp $(ACML)/libacml_mp.a -lgfortran -lm

# ACML custom
#ACML=/opt/pb/acml-5-3-1-gfortran-64bit/gfortran64_fma4_mp/lib
#LIBACML = -fopenmp $(ACML)/libacml_mp.a -lgfortran -lm

# ACML 6.1 custom
ACML=/home/saar/acml6.1/gfortran64_mp/lib
LIBACML = -fopenmp $(ACML)/libacml_mp.so -lgfortran -lm
 

# Atlas Ubuntu 
#ATLAS=/usr/lib/atlas-base
#LIBATLAS = -fopenmp $(ATLAS)/liblapack_atlas.a  $(ATLAS)/libptcblas.a  $(ATLAS)/libptf77blas.a  $(ATLAS)/libatlas.a -lgfortran -lm

# Atlas RHEL and Fedora
ATLAS=/usr/lib64/atlas
LIBATLAS = -fopenmp $(ATLAS)/liblapack.a  $(ATLAS)/libptcblas.a  $(ATLAS)/libptf77blas.a  $(ATLAS)/libatlas.a -lgfortran -lm

# Intel standard
# MKL=/opt/intel/mkl/lib/intel64
# LIBMKL = -L$(MKL) -lmkl_intel_lp64 -lmkl_gnu_thread -lmkl_core -lgomp -lpthread -lm

# Intel custom
MKL=/home/saar/intel_mkl
LIBMKL = -L$(MKL) -lmkl_intel_lp64 -lmkl_gnu_thread -lmkl_core -lgomp -lpthread -lm

# Apple vecLib
LIBVECLIB = -framework Accelerate

ESSL=/opt/ibm/lib
#LIBESSL = -lesslsmp $(ESSL)/libxlomp_ser.so.1 $(ESSL)/libxlf90_r.so.1 $(ESSL)/libxlfmath.so.1 $(ESSL)/libxlsmp.so.1 /opt/ibm/xlC/13.1.3/lib/libxl.a
LIBESSL = -lesslsmp  $(ESSL)/libxlf90_r.so.1 $(ESSL)/libxlfmath.so.1 $(ESSL)/libxlsmp.so.1 /opt/ibm/xlC/13.1.3/lib/libxl.a


ifeq ($(OSNAME), WINNT)

goto :: sgemm.goto dgemm.goto cgemm.goto zgemm.goto 

acml :: sgemm.acml dgemm.acml cgemm.acml zgemm.acml 

atlas :: sgemm.atlas dgemm.atlas cgemm.atlas zgemm.atlas 

mkl :: sgemm.mkl dgemm.mkl cgemm.mkl zgemm.mkl 

else

goto :: sgemm.goto dgemm.goto cgemm.goto zgemm.goto 

acml :: sgemm.acml dgemm.acml cgemm.acml zgemm.acml 

atlas :: sgemm.atlas dgemm.atlas cgemm.atlas zgemm.atlas 

mkl :: sgemm.mkl dgemm.mkl cgemm.mkl zgemm.mkl 

endif

essl :: sgemm.essl dgemm.essl cgemm.essl zgemm.essl 

veclib :: sgemm.veclib dgemm.veclib cgemm.veclib zgemm.veclib 

goto_3m :: cgemm3m.goto zgemm3m.goto

mkl_3m :: cgemm3m.mkl zgemm3m.mkl

all :: goto mkl atlas acml veclib

exe :
	@./Make_exe.sh


##################################### Sgemm ####################################################
sgemm.goto : sgemm.$(SUFFIX) ../$(LIBNAME)
	$(CC) $(CFLAGS) -o $(@F) $^ $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB) -lm

sgemm.acml : sgemm.$(SUFFIX)
	-$(CC) $(CFLAGS) -o $(@F) $^ $(LIBACML) $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB)

sgemm.atlas : sgemm.$(SUFFIX)
	-$(CC) $(CFLAGS) -o $(@F) $^ $(LIBATLAS) $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB)

sgemm.mkl : sgemm.$(SUFFIX)
	-$(CC) $(CFLAGS) -o $(@F) $^ $(LIBMKL) $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB)

sgemm.veclib : sgemm.$(SUFFIX)
	-$(CC) $(CFLAGS) -o $(@F) $^ $(LIBVECLIB) $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB)

sgemm.essl : sgemm.$(SUFFIX)
	-$(CC) $(CFLAGS) -o $(@F) $^ $(LIBESSL) $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB)

##################################### Dgemm ####################################################
dgemm.goto : dgemm.$(SUFFIX) ../$(LIBNAME)
	$(CC) $(CFLAGS) -o $(@F) $^ $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB) -lm

dgemm.acml : dgemm.$(SUFFIX)
	-$(CC) $(CFLAGS) -o $(@F) $^ $(LIBACML) $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB)

dgemm.atlas : dgemm.$(SUFFIX)
	-$(CC) $(CFLAGS) -o $(@F) $^ $(LIBATLAS) $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB)

dgemm.mkl : dgemm.$(SUFFIX)
	-$(CC) $(CFLAGS) -o $(@F) $^ $(LIBMKL) $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB)

dgemm.veclib : dgemm.$(SUFFIX)
	-$(CC) $(CFLAGS) -o $(@F) $^ $(LIBVECLIB) $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB)

dgemm.essl : dgemm.$(SUFFIX)
	-$(CC) $(CFLAGS) -o $(@F) $^ $(LIBESSL) $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB)

##################################### Cgemm ####################################################

cgemm.goto : cgemm.$(SUFFIX) ../$(LIBNAME)
	$(CC) $(CFLAGS) -o $(@F) $^ $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB) -lm

cgemm.acml : cgemm.$(SUFFIX)
	-$(CC) $(CFLAGS) -o $(@F) $^ $(LIBACML) $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB)

cgemm.atlas : cgemm.$(SUFFIX)
	-$(CC) $(CFLAGS) -o $(@F) $^ $(LIBATLAS) $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB)

cgemm.mkl : cgemm.$(SUFFIX)
	-$(CC) $(CFLAGS) -o $(@F) $^ $(LIBMKL) $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB)

cgemm.veclib : cgemm.$(SUFFIX)
	-$(CC) $(CFLAGS) -o $(@F) $^ $(LIBVECLIB) $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB)

cgemm.essl : cgemm.$(SUFFIX)
	-$(CC) $(CFLAGS) -o $(@F) $^ $(LIBESSL) $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB)

##################################### Zgemm ####################################################

zgemm.goto : zgemm.$(SUFFIX) ../$(LIBNAME)
	$(CC) $(CFLAGS) -o $(@F) $^ $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB) -lm

zgemm.acml : zgemm.$(SUFFIX)
	-$(CC) $(CFLAGS) -o $(@F) $^ $(LIBACML) $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB)

zgemm.atlas : zgemm.$(SUFFIX)
	-$(CC) $(CFLAGS) -o $(@F) $^ $(LIBATLAS) $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB)

zgemm.mkl : zgemm.$(SUFFIX)
	-$(CC) $(CFLAGS) -o $(@F) $^ $(LIBMKL) $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB)

zgemm.veclib : zgemm.$(SUFFIX)
	-$(CC) $(CFLAGS) -o $(@F) $^ $(LIBVECLIB) $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB)

zgemm.essl : zgemm.$(SUFFIX)
	-$(CC) $(CFLAGS) -o $(@F) $^ $(LIBESSL) $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB)

##################################### Cgemm3m ####################################################

cgemm3m.goto : cgemm3m.$(SUFFIX) ../$(LIBNAME)
	$(CC) $(CFLAGS) -o $(@F) $^ $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB) -lm

cgemm3m.mkl : cgemm3m.$(SUFFIX)
	-$(CC) $(CFLAGS) -o $(@F) $^ $(LIBMKL) $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB)

cgemm3m.veclib : cgemm3m.$(SUFFIX)
	-$(CC) $(CFLAGS) -o $(@F) $^ $(LIBVECLIB) $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB)

##################################### Zgemm3m ####################################################

zgemm3m.goto : zgemm3m.$(SUFFIX) ../$(LIBNAME)
	$(CC) $(CFLAGS) -o $(@F) $^ $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB) -lm

zgemm3m.mkl : zgemm3m.$(SUFFIX)
	-$(CC) $(CFLAGS) -o $(@F) $^ $(LIBMKL) $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB)

zgemm3m.veclib : zgemm3m.$(SUFFIX)
	-$(CC) $(CFLAGS) -o $(@F) $^ $(LIBVECLIB) $(CEXTRALIB) $(EXTRALIB) $(FEXTRALIB)


sgemm.$(SUFFIX) : gemm.c
	$(CC) $(CFLAGS) -c -UCOMPLEX -UDOUBLE -o $(@F) $^

dgemm.$(SUFFIX) : gemm.c
	$(CC) $(CFLAGS) -c -UCOMPLEX -DDOUBLE -o $(@F) $^

cgemm.$(SUFFIX) : gemm.c
	$(CC) $(CFLAGS) -c -DCOMPLEX -UDOUBLE -o $(@F) $^

zgemm.$(SUFFIX) : gemm.c
	$(CC) $(CFLAGS) -c -DCOMPLEX -DDOUBLE -o $(@F) $^


cgemm3m.$(SUFFIX) : gemm3m.c
	$(CC) $(CFLAGS) -c -DCOMPLEX -UDOUBLE -o $(@F) $^

zgemm3m.$(SUFFIX) : gemm3m.c
	$(CC) $(CFLAGS) -c -DCOMPLEX -DDOUBLE -o $(@F) $^


smallscaling: smallscaling.c ../$(LIBNAME)
	$(CC) $(CFLAGS) -o $(@F) $^ $(EXTRALIB) -fopenmp -lm -lpthread

clean ::
	@rm -f *.goto *.mkl *.acml *.atlas *.veclib *.essl smallscaling

include $(TOPDIR)/Makefile.tail

