#include "kernel.h"

void Base_mul (data_t A[I][K], data_t B[J][K], data_t** C) {

    // Allocate memory in host memory
    unsigned short *dev_A_unserialized = (unsigned short *)malloc((64) * (64) * sizeof(unsigned short));
    unsigned short *dev_A = (unsigned short *)malloc(16384 * sizeof(unsigned short));
    unsigned short *dev_B_unserialized = (unsigned short *)malloc((64) * (64) * sizeof(unsigned short));
    unsigned short *dev_B = (unsigned short *)malloc(16384 * sizeof(unsigned short));
    unsigned short *dev_C_unserialized = (unsigned short *)malloc((64) * (64) * sizeof(unsigned short));
    unsigned short *dev_C = (unsigned short *)malloc(4096 * sizeof(unsigned short));

    // Initialize host buffers
    memcpy(dev_A_unserialized, A, (64) * (64) * sizeof(unsigned short));
    memcpy(dev_B_unserialized, B, (64) * (64) * sizeof(unsigned short));
    host_serialize_A(dev_A, dev_A_unserialized);
    host_serialize_B(dev_B, dev_B_unserialized);

    // Allocate buffers in device memory
    std::vector<A_t32 *> buffer_A;
    std::vector<B_t32 *> buffer_B;
    std::vector<C_t32 *> buffer_C;
    for (int i = 0; i < 1; i++) {
      A_t32 *buffer_A_tmp = (A_t32 *)malloc((16384) * sizeof(unsigned short));
      buffer_A.push_back(buffer_A_tmp);
    }
    for (int i = 0; i < 1; i++) {
      B_t32 *buffer_B_tmp = (B_t32 *)malloc((16384) * sizeof(unsigned short));
      buffer_B.push_back(buffer_B_tmp);
    }
    for (int i = 0; i < 1; i++) {
      C_t32 *buffer_C_tmp = (C_t32 *)malloc((4096) * sizeof(unsigned short));
      buffer_C.push_back(buffer_C_tmp);
    }

    for (int i = 0; i < 1; i++) {
      memcpy(buffer_A[i], dev_A, (16384) * sizeof(unsigned short));
    }

    for (int i = 0; i < 1; i++) {
      memcpy(buffer_B[i], dev_B, (16384) * sizeof(unsigned short));
    }

    {
      // Launch the kernel
      kernel0(buffer_A[0], buffer_B[0], buffer_C[0]);
    }
    for (int i = 0; i < 1; i++) {
      memcpy(dev_C, buffer_C[i], (4096) * sizeof(unsigned short));
    }

    host_deserialize_C(dev_C_unserialized, dev_C);
    // Restore data from host buffers
    for (int i=0;i<64;i++){
	memcpy(C[i], dev_C_unserialized+i*64, 64*sizeof(unsigned short));
    }
    
    //printf ("Output: %f \n",fabs((float)C[0][0]));
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
