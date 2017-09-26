CC = gcc
CFLAGS = -I../blas/include
LDFLAGS = -L../blas/lib -lopenblas

all:
	$(CC) $(CFLAGS) sgemm.c -o _build/sgemm $(LDFLAGS)
	$(CC) $(CFLAGS) dgemm.c -o _build/dgemm $(LDFLAGS)
