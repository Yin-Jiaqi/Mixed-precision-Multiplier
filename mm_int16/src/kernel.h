#include <stdio.h>
#include <stdlib.h>
#include <math.h>

typedef unsigned short data_t;
typedef unsigned int data_t1;
#define I 64
#define J 64
#define K 64
#define BIT 64
#define Base_BIT 16
#define log_K (int)ceil(log(K)/log(2))
#define BIT_RATIO BIT/(8*sizeof(data_t))
