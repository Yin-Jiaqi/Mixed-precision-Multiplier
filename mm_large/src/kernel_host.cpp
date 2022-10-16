#include <assert.h>
#include <stdio.h>
#include "kernel_kernel.h"

#include "kernel.h"

//#define LAYOUT1
#define LAYOUT2
//#define LAYOUT3

int main(int argc, char **argv) {
//  data_t A[I][K], B[K][J], C[I][J], C_golden[I][J]; 
#ifdef LAYOUT2  
  static data_t A[I][K], B[J][K], C[I][J], C_golden[I][J]; // gemm0,3
#endif  
#ifdef LAYOUT3  
  static data_t A[K][I], B[K][J], C[I][J], C_golden[I][J]; // gemm4
#endif  

  for (int i = 0; i < I; i++) 
    for (int k = 0; k < K; k++) {
#ifdef LAYOUT2      
      A[i][k] = (data_t)rand() / RAND_MAX;
#endif
#ifdef LAYOUT3      
      A[k][i] = (data_t)rand() / RAND_MAX;
#endif      
    }

  for (int j = 0; j < J; j++)
    for (int k = 0; k < K; k++) {
#ifdef LAYOUT2      
      B[j][k] = (data_t)rand() / RAND_MAX;
#endif
#ifdef LAYOUT3      
      B[k][j] = (data_t)rand() / RAND_MAX;
#endif      
    }

  {
    // Allocate memory in host memory
    int *dev_A_unserialized = (int *)malloc((208) * (256) * sizeof(int));
    int *dev_A = (int *)malloc(106496 * sizeof(int));
    int *dev_B_unserialized = (int *)malloc((512) * (256) * sizeof(int));
    int *dev_B = (int *)malloc(131072 * sizeof(int));
    int *dev_C_unserialized = (int *)malloc((208) * (512) * sizeof(int));
    int *dev_C = (int *)malloc(106496 * sizeof(int));

    // Initialize host buffers
    memcpy(dev_A_unserialized, A, (208) * (256) * sizeof(int));
    memcpy(dev_B_unserialized, B, (512) * (256) * sizeof(int));
    host_serialize_A(dev_A, dev_A_unserialized);
    host_serialize_B(dev_B, dev_B_unserialized);

    // Allocate buffers in device memory
    std::vector<A_t16 *> buffer_A;
    std::vector<B_t16 *> buffer_B;
    std::vector<C_t16 *> buffer_C;
    for (int i = 0; i < 1; i++) {
      A_t16 *buffer_A_tmp = (A_t16 *)malloc((106496) * sizeof(int));
      buffer_A.push_back(buffer_A_tmp);
    }
    for (int i = 0; i < 1; i++) {
      B_t16 *buffer_B_tmp = (B_t16 *)malloc((131072) * sizeof(int));
      buffer_B.push_back(buffer_B_tmp);
    }
    for (int i = 0; i < 1; i++) {
      C_t16 *buffer_C_tmp = (C_t16 *)malloc((106496) * sizeof(int));
      buffer_C.push_back(buffer_C_tmp);
    }

    for (int i = 0; i < 1; i++) {
      memcpy(buffer_A[i], dev_A, (106496) * sizeof(int));
    }

    for (int i = 0; i < 1; i++) {
      memcpy(buffer_B[i], dev_B, (131072) * sizeof(int));
    }

    {
      // Launch the kernel
      kernel0(buffer_A[0], buffer_B[0], buffer_C[0]);
    }
    for (int i = 0; i < 1; i++) {
      memcpy(dev_C, buffer_C[i], (106496) * sizeof(int));
    }

    host_deserialize_C(dev_C_unserialized, dev_C);
    // Restore data from host buffers
    memcpy(C, dev_C_unserialized, (208) * (512) * sizeof(int));

    // Clean up resources
    for (int i = 0; i < 1; i++) {
      free(buffer_A[i]);
    }
    for (int i = 0; i < 1; i++) {
      free(buffer_B[i]);
    }
    for (int i = 0; i < 1; i++) {
      free(buffer_C[i]);
    }
    free(dev_A);
    free(dev_A_unserialized);
    free(dev_B);
    free(dev_B_unserialized);
    free(dev_C);
    free(dev_C_unserialized);
  }

  for (int i = 0; i < I; i++)
    for (int j = 0; j < J; j++) {
      C_golden[i][j] = 0;
      for (int k = 0; k < K; k++) {
#ifdef LAYOUT2        
        C_golden[i][j] = C_golden[i][j] + A[i][k] * B[j][k];
#endif
#ifdef LAYOUT3        
        C_golden[i][j] = C_golden[i][j] + A[k][i] * B[k][j];
#endif        
      }
    }

  int err = 0;
  for (int i = 0; i < I; i++)
    for (int j = 0; j < J; j++) {
      printf ("input: %i, %i ;", i,j);
      printf ("C_golden: %f ;",fabs((float)C_golden[i][j]));
      printf ("Output: %f",(float)C[i][j]);
      if (fabs((float)C_golden[i][j] - (float)C[i][j]) > 0.001)
        err++;
    }

  if (err)
    printf("Failed with %d errors!\n", err);
  else
    printf("Passed!\n");

  return 0;
}
