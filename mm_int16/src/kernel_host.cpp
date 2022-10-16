#include <assert.h>
#include <stdio.h>
#include "kernel.h"
#include "kernel_kernel_kernel.h"
#include <math.h>
#include "ap_int.h"
#include <iostream>

using namespace std;



int main(int argc, char **argv) {
  ap_uint<BIT> A[I][K];ap_uint<BIT> B[J][K];
  ap_uint<2*BIT+log_K> **res=(ap_uint<2*BIT+log_K> **)malloc(I*sizeof(ap_uint<2*BIT+log_K>*));
  char hex_characters[16]={'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};
  for (int i = 0; i < I; i++) 
    for (int k = 0; k < K; k++) {
      char* tmp=(char*)malloc(2+sizeof(char)*BIT/4);
      tmp[0]='0';tmp[1]='x';
      for (int ii=1;ii<=BIT/4;ii++){
        if (ii%4==0) tmp[ii+1]=hex_characters[7];
        else tmp[ii+1]=hex_characters[0];
      }
      ap_uint<BIT> tmp_(tmp,16);
      A[i][k]=tmp_;
    }
 

  for (int j = 0; j < J; j++)
    for (int k = 0; k < K; k++) {
      char* tmp=(char*)malloc(2+sizeof(char)*BIT/4);
      tmp[0]='0';tmp[1]='x';
      for (int ii=1;ii<=BIT/4;ii++){
        if (ii%4==0) tmp[ii+1]=hex_characters[7];
        else tmp[ii+1]=hex_characters[0];
      }
      ap_uint<BIT> tmp_(tmp,16);
      B[j][k]=tmp_;
    }
  for (int i = 0; i < I; i++) {
    res[i]=(ap_uint<2*BIT+log_K> *)malloc(J*sizeof(ap_uint<2*BIT+log_K>));}
  karatsuba(A,B,res);
  for (int i=0;i<I;i++){
        for (int j=0;j<J;j++){
                cout<<"i="<<i<<";j="<<j<<";output:"<<res[i][j]<<endl;
  }}
  return 0;
}

