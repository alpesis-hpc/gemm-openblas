#include <cblas.h>
#include <stdio.h>
#include <stdlib.h>

#include "timer.h"

#define M 1200
#define N 1200
#define K 1200

void main()
{
  float * A = (float*)malloc(M*K*sizeof(float));
  float * B = (float*)malloc(K*N*sizeof(float));
  float * C = (float*)malloc(M*N*sizeof(float));

  int i;
  for (i = 0; i < M*K; ++i) { A[i] = rand() % 20; }
  for (i = 0; i < K*N; ++i) { B[i] = rand() % 20; }

  double tic = timer();
  cblas_sgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans,M, N, K,1,A, K, B, N, 1,C,N);
  printf("range %d %d %d, time elapsed: %f\n", M, N, K, timer() - tic);

  free(A);
  free(B);
  free(C);
}
