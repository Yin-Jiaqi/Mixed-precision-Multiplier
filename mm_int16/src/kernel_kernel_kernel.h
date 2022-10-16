#include "kernel.h"
#include "kernel_kernel.h"
#include "karatsuba_1_level.h"
#include <math.h>
#include "ap_int.h"
#include <iostream>
using namespace std;


void hex2int(ap_uint<BIT> A[I][K],data_t* A_decompose[I][K]){
  for (int i = 0; i < I; i++)
    for (int k = 0; k < K; k++) {
      for (int r=BIT_RATIO-1;r>=0;r--){
        data_t result=0;
        for (int j=8*sizeof(data_t)-1;j>=0;j--)
        {
          result += ((A[i][k][8*sizeof(data_t)*r+j])*pow(2,j));
        }
        A_decompose[i][k][BIT_RATIO-1-r]=result;
    }}
}

void karatsuba(ap_uint<BIT> A[I][K],ap_uint<BIT> B[J][K],ap_uint<2*BIT+log_K> **res)
{
  data_t* A_decompose[I][K]; data_t* B_decompose[J][K];

  for (int i = 0; i < I; i++)
    for (int k = 0; k < K; k++) {
      A_decompose[i][k]=(data_t*)malloc(BIT_RATIO*sizeof(data_t));
  }

  for (int j = 0; j < J; j++)
    for (int k = 0; k < K; k++) {
      B_decompose[j][k]=(data_t*)malloc(BIT_RATIO*sizeof(data_t));
  }


  
  hex2int(A,A_decompose);
  hex2int(B,B_decompose);
  data_t A_[BIT_RATIO][I][K]; data_t B_[BIT_RATIO][J][K];
  for (int b=0;b<BIT_RATIO;b++){
    for (int i=0;i<I;i++){
      for (int k=0;k<K;k++){
        A_[b][i][k]=A_decompose[i][k][b];
      }
    }
  }
  for (int b=0;b<BIT_RATIO;b++){
    for (int j=0;j<J;j++){
      for (int k=0;k<K;k++){
        B_[b][j][k]=B_decompose[j][k][b];
      }
    }
  }
  level_2(A_,B_,res);
}
