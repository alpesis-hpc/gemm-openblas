BUILD_DIR = _build
INC_DIR = inc
GEMM_DIR = gemm


CC = gcc
CFLAGS = -I$(INC_DIR)


all: clean build
	$(CC) $(CFLAGS) -o $(BUILD_DIR)/gemm.o -c $(GEMM_DIR)/gemm.c
	

build:
	mkdir $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)
