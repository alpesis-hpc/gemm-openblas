TOPDIR	= .
include ./Makefile.system

BLASDIRS = interface driver/level2 driver/level3 driver/others

ifneq ($(DYNAMIC_ARCH), 1)
BLASDIRS += kernel
endif

ifdef SANITY_CHECK
BLASDIRS += reference
endif

SUBDIRS	= $(BLASDIRS)
RELA =

LAPACK_NOOPT := $(filter-out -O0 -O1 -O2 -O3 -Ofast,$(LAPACK_FFLAGS))

SUBDIRS_ALL = $(SUBDIRS) exports benchmark ../laswp ../bench

.PHONY : all libs netlib $(RELA) shared install
.NOTPARALLEL : all libs $(RELA) prof install blas-test

all :: libs netlib $(RELA) shared
	@echo
	@echo " OpenBLAS build complete. ($(LIB_COMPONENTS))"
	@echo
	@echo "  OS               ... $(OSNAME)             "
	@echo "  Architecture     ... $(ARCH)               "
ifndef BINARY64
	@echo "  BINARY           ... 32bit                 "
else
	@echo "  BINARY           ... 64bit                 "
endif

ifdef INTERFACE64
ifneq ($(INTERFACE64), 0)
	@echo "  Use 64 bits int    (equivalent to \"-i8\" in Fortran)      "
endif
endif

	@echo "  C compiler       ... $(C_COMPILER)  (command line : $(CC))"
ifndef NOFORTRAN
	@echo "  Fortran compiler ... $(F_COMPILER)  (command line : $(FC))"
endif
ifneq ($(OSNAME), AIX)
	@echo -n "  Library Name     ... $(LIBNAME)"
else
	@echo "  Library Name     ... $(LIBNAME)"
endif

ifndef SMP
	@echo " (Single threaded)  "
else
	@echo " (Multi threaded; Max num-threads is $(NUM_THREADS))"
endif

ifeq ($(USE_OPENMP), 1)
	@echo
	@echo " Use OpenMP in the multithreading. Because of ignoring OPENBLAS_NUM_THREADS and GOTO_NUM_THREADS flags, "
	@echo " you should use OMP_NUM_THREADS environment variable to control the number of threads."
	@echo
endif

ifeq ($(OSNAME), Darwin)
	@echo "WARNING: If you plan to use the dynamic library $(LIBDYNNAME), you must run:"
	@echo
	@echo "\"make PREFIX=/your_installation_path/ install\"."
	@echo
	@echo "(or set PREFIX in Makefile.rule and run make install."
	@echo "If you want to move the .dylib to a new location later, make sure you change"
	@echo "the internal name of the dylib with:"
	@echo
	@echo "install_name_tool -id /new/absolute/path/to/$(LIBDYNNAME) $(LIBDYNNAME)"
endif
	@echo
	@echo "To install the library, you can run \"make PREFIX=/path/to/your/installation install\"."
	@echo

shared :
ifndef NO_SHARED
ifeq ($(OSNAME), $(filter $(OSNAME),Linux SunOS Android))
	@$(MAKE) -C exports so
	@ln -fs $(LIBSONAME) $(LIBPREFIX).so
	@ln -fs $(LIBSONAME) $(LIBPREFIX).so.$(MAJOR_VERSION)
endif
ifeq ($(OSNAME), FreeBSD)
	@$(MAKE) -C exports so
	@ln -fs $(LIBSONAME) $(LIBPREFIX).so
endif
ifeq ($(OSNAME), NetBSD)
	@$(MAKE) -C exports so
	@ln -fs $(LIBSONAME) $(LIBPREFIX).so
endif
ifeq ($(OSNAME), Darwin)
	@$(MAKE) -C exports dyn
	@ln -fs $(LIBDYNNAME) $(LIBPREFIX).dylib
endif
ifeq ($(OSNAME), WINNT)
	@$(MAKE) -C exports dll
endif
ifeq ($(OSNAME), CYGWIN_NT)
	@$(MAKE) -C exports dll
endif
endif


libs :
ifeq ($(CORE), UNKOWN)
	$(error OpenBLAS: Detecting CPU failed. Please set TARGET explicitly, e.g. make TARGET=your_cpu_target. Please read README for the detail.)
endif
ifeq ($(NOFORTRAN), 1)
	$(info OpenBLAS: Detecting fortran compiler failed. Cannot compile LAPACK. Only compile BLAS.)
endif
ifeq ($(NO_STATIC), 1)
ifeq ($(NO_SHARED), 1)
	$(error OpenBLAS: neither static nor shared are enabled.)
endif
endif
	@-ln -fs $(LIBNAME) $(LIBPREFIX).$(LIBSUFFIX)
	@for d in $(SUBDIRS) ; \
	do if test -d $$d; then \
	  $(MAKE) -C $$d $(@F) || exit 1 ; \
	fi; \
	done
#Save the config files for installation
	@cp Makefile.conf Makefile.conf_last
	@cp config.h config_last.h
ifdef QUAD_PRECISION
	@echo "#define QUAD_PRECISION">> config_last.h
endif
ifeq ($(EXPRECISION), 1)
	@echo "#define EXPRECISION">> config_last.h
endif
##
ifeq ($(DYNAMIC_ARCH), 1)
	@$(MAKE) -C kernel commonlibs || exit 1
	@for d in $(DYNAMIC_CORE) ; \
	do  $(MAKE) GOTOBLAS_MAKEFILE= -C kernel TARGET_CORE=$$d kernel || exit 1 ;\
	done
	@echo DYNAMIC_ARCH=1 >> Makefile.conf_last
endif
ifdef USE_THREAD
	@echo USE_THREAD=$(USE_THREAD) >>  Makefile.conf_last
endif
	@touch lib.grd

prof : prof_blas 

prof_blas :
	ln -fs $(LIBNAME_P) $(LIBPREFIX)_p.$(LIBSUFFIX)
	for d in $(SUBDIRS) ; \
	do if test -d $$d; then \
	  $(MAKE) -C $$d prof || exit 1 ; \
	fi; \
	done
ifeq ($(DYNAMIC_ARCH), 1)
	  $(MAKE) -C kernel commonprof || exit 1
endif

blas :
	ln -fs $(LIBNAME) $(LIBPREFIX).$(LIBSUFFIX)
	for d in $(BLASDIRS) ; \
	do if test -d $$d; then \
	  $(MAKE) -C $$d libs || exit 1 ; \
	fi; \
	done

hpl :
	ln -fs $(LIBNAME) $(LIBPREFIX).$(LIBSUFFIX)
	for d in $(BLASDIRS) ../laswp exports ; \
	do if test -d $$d; then \
	  $(MAKE) -C $$d $(@F) || exit 1 ; \
	fi; \
	done
ifeq ($(DYNAMIC_ARCH), 1)
	  $(MAKE) -C kernel commonlibs || exit 1
	for d in $(DYNAMIC_CORE) ; \
	do  $(MAKE) GOTOBLAS_MAKEFILE= -C kernel TARGET_CORE=$$d kernel || exit 1 ;\
	done
endif

hpl_p :
	ln -fs $(LIBNAME_P) $(LIBPREFIX)_p.$(LIBSUFFIX)
	for d in $(SUBDIRS) ../laswp exports ; \
	do if test -d $$d; then \
	  $(MAKE) -C $$d $(@F) || exit 1 ; \
	fi; \
	done





blas-test:
	(cd $(NETLIB_LAPACK_DIR)/BLAS && rm -f x* *.out)
	$(MAKE) -j 1 -C $(NETLIB_LAPACK_DIR) blas_testing
	(cd $(NETLIB_LAPACK_DIR)/BLAS && cat *.out)


dummy :

install :
	$(MAKE) -f Makefile.install install

clean ::
	@for d in $(SUBDIRS_ALL) ; \
	do if test -d $$d; then \
	  $(MAKE) -C $$d $(@F) || exit 1 ; \
	fi; \
	done
#ifdef DYNAMIC_ARCH
	@$(MAKE) -C kernel clean
#endif
	@rm -f *.$(LIBSUFFIX) *.so *~ *.exe getarch getarch_2nd *.dll *.lib *.$(SUFFIX) *.dwf $(LIBPREFIX).$(LIBSUFFIX) $(LIBPREFIX)_p.$(LIBSUFFIX) $(LIBPREFIX).so.$(MAJOR_VERSION) *.lnk myconfig.h
ifeq ($(OSNAME), Darwin)
	@rm -rf getarch.dSYM getarch_2nd.dSYM
endif
	@rm -f Makefile.conf config.h Makefile_kernel.conf config_kernel.h st* *.dylib
	@rm -f *.grd Makefile.conf_last config_last.h
	@echo Done.
