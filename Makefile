BUILD_DIR = _build
BUILD_LIB_DIR = $(BUILD_DIR)/lib
BUILD_KERNEL_DIR = $(BUILD_DIR)/kernel

GEMM_DIR = gemm
INC_DIR = inc

# ------------------------------------------------------------------------------------------ #

CC = gcc
CFLAGS = -g -Wall -fPIC -m64 
CFLAGS_OPTS += -I$(INC_DIR)
CFLAGS_OPTS += -DMAX_STACK_ALLOC=2048
CFLAGS_OPTS += -DMAX_CPU_NUMBER=8
CFLAGS_OPTS += -UDOUBLE -UCOMPLEX

# ------------------------------------------------------------------------------------------ #

include makefiles/gemm.make

# ------------------------------------------------------------------------------------------ #

all: clean build lib
	$(CC) $(CFLAGS) $(CFLAGS_OPTS)\
            -DASMNAME=sgemm_beta \
            -DASMFNAME=sgemm_beta_ \
            -DNAME=sgemm_beta_ \
            -DCNAME=sgemm_beta \
            -DCHAR_NAME=\"sgemm_beta_\" \
            -DCHAR_CNAME=\"sgemm_beta\" \
            -c $(GEMM_DIR)/gemm_beta.S \
            -o $(BUILD_DIR)/sgemm_beta.o


build:
	mkdir $(BUILD_DIR)
	mkdir $(BUILD_KERNEL_DIR)
	mkdir $(BUILD_LIB_DIR)

clean:
	rm -rf $(BUILD_DIR)
