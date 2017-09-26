#include <cblas.h>
#include <stdio.h>

void main()
{
  int i=0;
  float A[6] = {1.0,2.0,1.0,-3.0,4.0,-1.0};         
  float B[6] = {1.0,2.0,1.0,-3.0,4.0,-1.0};  
  float C[9] = {.5,.5,.5,.5,.5,.5,.5,.5,.5}; 
  cblas_sgemm(CblasColMajor, CblasNoTrans, CblasTrans,3,3,2,1,A, 3, B, 3,2,C,3);

  for(i=0; i<9; i++)
    printf("%lf ", C[i]);
  printf("\n");
}
