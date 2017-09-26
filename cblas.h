#ifndef CBLAS_H
#define CBLAS_H

#include <stddef.h>
#include "common.h"

#ifdef __cplusplus
extern "C" {
	/* Assume C declarations for C++ */
#endif  /* __cplusplus */

/*Set the number of threads on runtime.*/
void openblas_set_num_threads(int num_threads);
void goto_set_num_threads(int num_threads);

/*Get the number of threads on runtime.*/
int openblas_get_num_threads(void);

/*Get the number of physical processors (cores).*/
int openblas_get_num_procs(void);

/*Get the build configure on runtime.*/
char* openblas_get_config(void);

/*Get the CPU corename on runtime.*/
char* openblas_get_corename(void);

/* Get the parallelization type which is used by OpenBLAS */
int openblas_get_parallel(void);
/* OpenBLAS is compiled for sequential use  */
#define OPENBLAS_SEQUENTIAL  0
/* OpenBLAS is compiled using normal threading model */
#define OPENBLAS_THREAD  1
/* OpenBLAS is compiled using OpenMP threading model */
#define OPENBLAS_OPENMP 2


/*
 * Since all of GotoBlas was written without const,
 * we disable it at build time.
 */
#ifndef OPENBLAS_CONST
# define OPENBLAS_CONST const
#endif


#define CBLAS_INDEX size_t

typedef enum CBLAS_ORDER     {CblasRowMajor=101, CblasColMajor=102} CBLAS_ORDER;
typedef enum CBLAS_TRANSPOSE {CblasNoTrans=111, CblasTrans=112, CblasConjTrans=113, CblasConjNoTrans=114} CBLAS_TRANSPOSE;
typedef enum CBLAS_UPLO      {CblasUpper=121, CblasLower=122} CBLAS_UPLO;
typedef enum CBLAS_DIAG      {CblasNonUnit=131, CblasUnit=132} CBLAS_DIAG;
typedef enum CBLAS_SIDE      {CblasLeft=141, CblasRight=142} CBLAS_SIDE;


openblas_complex_float  cblas_cdotu(OPENBLAS_CONST blasint n, OPENBLAS_CONST float  *x, OPENBLAS_CONST blasint incx, OPENBLAS_CONST float  *y, OPENBLAS_CONST blasint incy);
openblas_complex_float  cblas_cdotc(OPENBLAS_CONST blasint n, OPENBLAS_CONST float  *x, OPENBLAS_CONST blasint incx, OPENBLAS_CONST float  *y, OPENBLAS_CONST blasint incy);
openblas_complex_double cblas_zdotu(OPENBLAS_CONST blasint n, OPENBLAS_CONST double *x, OPENBLAS_CONST blasint incx, OPENBLAS_CONST double *y, OPENBLAS_CONST blasint incy);
openblas_complex_double cblas_zdotc(OPENBLAS_CONST blasint n, OPENBLAS_CONST double *x, OPENBLAS_CONST blasint incx, OPENBLAS_CONST double *y, OPENBLAS_CONST blasint incy);




void cblas_sgemm(OPENBLAS_CONST enum CBLAS_ORDER Order, OPENBLAS_CONST enum CBLAS_TRANSPOSE TransA, OPENBLAS_CONST enum CBLAS_TRANSPOSE TransB, OPENBLAS_CONST blasint M, OPENBLAS_CONST blasint N, OPENBLAS_CONST blasint K,
		 OPENBLAS_CONST float alpha, OPENBLAS_CONST float *A, OPENBLAS_CONST blasint lda, OPENBLAS_CONST float *B, OPENBLAS_CONST blasint ldb, OPENBLAS_CONST float beta, float *C, OPENBLAS_CONST blasint ldc);
void cblas_dgemm(OPENBLAS_CONST enum CBLAS_ORDER Order, OPENBLAS_CONST enum CBLAS_TRANSPOSE TransA, OPENBLAS_CONST enum CBLAS_TRANSPOSE TransB, OPENBLAS_CONST blasint M, OPENBLAS_CONST blasint N, OPENBLAS_CONST blasint K,
		 OPENBLAS_CONST double alpha, OPENBLAS_CONST double *A, OPENBLAS_CONST blasint lda, OPENBLAS_CONST double *B, OPENBLAS_CONST blasint ldb, OPENBLAS_CONST double beta, double *C, OPENBLAS_CONST blasint ldc);
void cblas_cgemm(OPENBLAS_CONST enum CBLAS_ORDER Order, OPENBLAS_CONST enum CBLAS_TRANSPOSE TransA, OPENBLAS_CONST enum CBLAS_TRANSPOSE TransB, OPENBLAS_CONST blasint M, OPENBLAS_CONST blasint N, OPENBLAS_CONST blasint K,
		 OPENBLAS_CONST float *alpha, OPENBLAS_CONST float *A, OPENBLAS_CONST blasint lda, OPENBLAS_CONST float *B, OPENBLAS_CONST blasint ldb, OPENBLAS_CONST float *beta, float *C, OPENBLAS_CONST blasint ldc);
void cblas_cgemm3m(OPENBLAS_CONST enum CBLAS_ORDER Order, OPENBLAS_CONST enum CBLAS_TRANSPOSE TransA, OPENBLAS_CONST enum CBLAS_TRANSPOSE TransB, OPENBLAS_CONST blasint M, OPENBLAS_CONST blasint N, OPENBLAS_CONST blasint K,
		 OPENBLAS_CONST float *alpha, OPENBLAS_CONST float *A, OPENBLAS_CONST blasint lda, OPENBLAS_CONST float *B, OPENBLAS_CONST blasint ldb, OPENBLAS_CONST float *beta, float *C, OPENBLAS_CONST blasint ldc);
void cblas_zgemm(OPENBLAS_CONST enum CBLAS_ORDER Order, OPENBLAS_CONST enum CBLAS_TRANSPOSE TransA, OPENBLAS_CONST enum CBLAS_TRANSPOSE TransB, OPENBLAS_CONST blasint M, OPENBLAS_CONST blasint N, OPENBLAS_CONST blasint K,
		 OPENBLAS_CONST double *alpha, OPENBLAS_CONST double *A, OPENBLAS_CONST blasint lda, OPENBLAS_CONST double *B, OPENBLAS_CONST blasint ldb, OPENBLAS_CONST double *beta, double *C, OPENBLAS_CONST blasint ldc);
void cblas_zgemm3m(OPENBLAS_CONST enum CBLAS_ORDER Order, OPENBLAS_CONST enum CBLAS_TRANSPOSE TransA, OPENBLAS_CONST enum CBLAS_TRANSPOSE TransB, OPENBLAS_CONST blasint M, OPENBLAS_CONST blasint N, OPENBLAS_CONST blasint K,
		 OPENBLAS_CONST double *alpha, OPENBLAS_CONST double *A, OPENBLAS_CONST blasint lda, OPENBLAS_CONST double *B, OPENBLAS_CONST blasint ldb, OPENBLAS_CONST double *beta, double *C, OPENBLAS_CONST blasint ldc);



#ifdef __cplusplus
}
#endif  /* __cplusplus */

#endif
