#include "ap_int.h"
#include "kernel.h"
#include "Base_mul.h"
#include <iostream>
using namespace std;



void level_1(data_t A_[2][I][K],data_t B_[2][J][K],ap_uint<2*Base_BIT*2+log_K> **res){
  data_t A_sum[I][K];data_t B_sum[J][K];
  data_t **_mul1=(data_t **)malloc(I*sizeof(data_t*));
  data_t **_mul2=(data_t **)malloc(I*sizeof(data_t*));
  data_t **_mul3=(data_t **)malloc(I*sizeof(data_t*)); 
  for (int i = 0; i < I; i++) {
    _mul1[i]=(data_t *)malloc(J*sizeof(data_t));
    _mul2[i]=(data_t *)malloc(J*sizeof(data_t));
    _mul3[i]=(data_t *)malloc(J*sizeof(data_t));
  }  


  for (int i=0;i<I;i++){
          for (int k=0;k<K;k++){
                  A_sum[i][k]=A_[0][i][k]+A_[1][i][k];}}
  for (int j=0;j<J;j++){
          for (int k=0;k<K;k++){
                  B_sum[j][k]=B_[0][j][k]+B_[1][j][k];}}
  Base_mul(A_[0],B_[0],_mul1);
  Base_mul(A_[1],B_[1],_mul2);
  Base_mul(A_sum,B_sum,_mul3);
  for (int i=0;i<I;i++){
          for (int j=0;j<J;j++){
                  _mul3[i][j]=_mul3[i][j]-_mul1[i][j]-_mul2[i][j];}}
  for (int i=0;i<I;i++){
        for (int j=0;j<J;j++){
                res[i][j]=(ap_uint<2*Base_BIT*2+log_K>)_mul1[i][j]+(((ap_uint<2*Base_BIT*2+log_K>)_mul3[i][j])<<(Base_BIT))+(((ap_uint<2*Base_BIT*2+log_K>)_mul2[i][j])<<(2*Base_BIT));
  }}
  for (int i = 0; i < I; i++) {
    free(_mul1[i]);free(_mul2[i]);free(_mul3[i]);}
  free(_mul1);free(_mul2);free(_mul3);
}


void level_2(data_t A_[4][I][K],data_t B_[4][J][K],ap_uint<8*Base_BIT+log_K> **res){

ap_uint<4*Base_BIT+log_K> **res1=(ap_uint<4*Base_BIT+log_K> **)malloc(I*sizeof(ap_uint<4*Base_BIT+log_K>*));
ap_uint<4*Base_BIT+log_K> **res2=(ap_uint<4*Base_BIT+log_K> **)malloc(I*sizeof(ap_uint<4*Base_BIT+log_K>*));
ap_uint<4*Base_BIT+log_K> **res3=(ap_uint<4*Base_BIT+log_K> **)malloc(I*sizeof(ap_uint<4*Base_BIT+log_K>*));

for (int i = 0; i < I; i++) {
  res1[i]=(ap_uint<4*Base_BIT+log_K> *)malloc(J*sizeof(ap_uint<4*Base_BIT+log_K>));
  res2[i]=(ap_uint<4*Base_BIT+log_K> *)malloc(J*sizeof(ap_uint<4*Base_BIT+log_K>));
  res3[i]=(ap_uint<4*Base_BIT+log_K> *)malloc(J*sizeof(ap_uint<4*Base_BIT+log_K>));
}

data_t A_1[2][I][K],A_2[2][I][K],B_1[2][J][K],B_2[2][J][K],A_3[2][I][K],B_3[2][J][K];

for (int i=0;i<I;i++){
        for (int k=0;k<K;k++){
		for (int j=0;j<2;j++){
                	A_1[j][i][k]=A_[j][i][k];A_2[j][i][k]=A_[j+2][i][k];
			A_3[j][i][k]=A_1[j][i][k]+A_2[j][i][k];}}}
for (int j=0;j<J;j++){
	for (int k=0;k<K;k++){
                for (int i=0;i<2;i++){
                        B_1[i][j][k]=B_[i][j][k];B_2[i][j][k]=B_[i+2][j][k];
                        B_3[i][j][k]=B_1[i][j][k]+B_2[i][j][k];}}}

level_1(A_1,B_1,res1);
level_1(A_2,B_2,res2);
level_1(A_3,B_3,res3);
for (int i=0;i<I;i++){
        for (int j=0;j<J;j++){
                  res3[i][j]=res3[i][j]-res1[i][j]-res2[i][j];}}
for (int i=0;i<I;i++){
      for (int j=0;j<J;j++){
              res[i][j]=(ap_uint<8*Base_BIT+log_K>)res1[i][j]+(((ap_uint<8*Base_BIT+log_K>)res3[i][j])<<(2*Base_BIT))+(((ap_uint<8*Base_BIT+log_K>)res2[i][j])<<(4*Base_BIT));
  }}
}


void level_3(data_t A_[8][I][K],data_t B_[8][J][K],ap_uint<8*Base_BIT+log_K> **res){

ap_uint<8*Base_BIT+log_K> **res1=(ap_uint<8*Base_BIT+log_K> **)malloc(I*sizeof(ap_uint<8*Base_BIT+log_K>*));
ap_uint<8*Base_BIT+log_K> **res2=(ap_uint<8*Base_BIT+log_K> **)malloc(I*sizeof(ap_uint<8*Base_BIT+log_K>*));
ap_uint<8*Base_BIT+log_K> **res3=(ap_uint<8*Base_BIT+log_K> **)malloc(I*sizeof(ap_uint<8*Base_BIT+log_K>*));

for (int i = 0; i < I; i++) {
  res1[i]=(ap_uint<8*Base_BIT+log_K> *)malloc(J*sizeof(ap_uint<8*Base_BIT+log_K>));
  res2[i]=(ap_uint<8*Base_BIT+log_K> *)malloc(J*sizeof(ap_uint<8*Base_BIT+log_K>));
  res3[i]=(ap_uint<8*Base_BIT+log_K> *)malloc(J*sizeof(ap_uint<8*Base_BIT+log_K>));
}

data_t A_1[4][I][K],A_2[4][I][K],B_1[4][J][K],B_2[4][J][K],A_3[4][I][K],B_3[4][J][K];

for (int i=0;i<I;i++){
        for (int k=0;k<K;k++){
                for (int j=0;j<4;j++){
                        A_1[j][i][k]=A_[j][i][k];A_2[j][i][k]=A_[j+4][i][k];
                        A_3[j][i][k]=A_1[j][i][k]+A_2[j][i][k];}}}
for (int j=0;j<J;j++){
        for (int k=0;k<K;k++){
                for (int i=0;i<4;i++){
                        B_1[i][j][k]=B_[i][j][k];B_2[i][j][k]=B_[i+4][j][k];
                        B_3[i][j][k]=B_1[i][j][k]+B_2[i][j][k];}}}

level_2(A_1,B_1,res1);
level_2(A_2,B_2,res2);
level_2(A_3,B_3,res3);
for (int i=0;i<I;i++){
        for (int j=0;j<J;j++){
                  res3[i][j]=res3[i][j]-res1[i][j]-res2[i][j];}}
for (int i=0;i<I;i++){
      for (int j=0;j<J;j++){
              res[i][j]=(ap_uint<16*Base_BIT+log_K>)res1[i][j]+(((ap_uint<16*Base_BIT+log_K>)res3[i][j])<<(4*Base_BIT))+(((ap_uint<16*Base_BIT+log_K>)res2[i][j])<<(8*Base_BIT));
  }}
}
