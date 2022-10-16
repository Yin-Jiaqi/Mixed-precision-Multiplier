#include <ap_int.h>
#include <hls_stream.h>

#define min(x,y) ((x < y) ? x : y)
#define max(x,y) ((x > y) ? x : y)

/* Data Type */
typedef int A_t1;
typedef int B_t1;
typedef int C_t1;
typedef ap_uint<512> A_t16;
typedef ap_uint<256> A_t8;
typedef ap_uint<512> B_t16;
typedef ap_uint<256> B_t8;
typedef ap_uint<512> C_t16;
typedef ap_uint<128> C_t4;
/* Data Type */

/* Helper Function */
inline void host_serialize_A(int *A_to, int *A_from){
  /* Variable Declaration */
  unsigned int cnt = 0;
  /* Variable Declaration */

  for (int c1 = 0; c1 <= 1; c1 += 1) {
    // array
    // io_L3
    for (int c3 = 0; c3 <= 10; c3 += 1) {
      // io_L2
      for (int c4 = 0; c4 <= min(19, -20 * c3 + 207); c4 += 1)
        for (int c5 = 0; c5 <= 255; c5 += 1)
          A_to[cnt++] = A_from[(20 * c3 + c4) * 256 + c5];
    }
  }
}
/* Helper Function */

/* Helper Function */
inline void host_serialize_B(int *B_to, int *B_from){
  /* Variable Declaration */
  unsigned int cnt = 0;
  /* Variable Declaration */

  for (int c1 = 0; c1 <= 1; c1 += 1) {
    // array
    // io_L3
    for (int c3 = 0; c3 <= 15; c3 += 1) {
      // io_L2
      for (int c4 = 0; c4 <= 15; c4 += 1)
        for (int c5 = 0; c5 <= 255; c5 += 1)
          B_to[cnt++] = B_from[(256 * c1 + 16 * c3 + c4) * 256 + c5];
    }
  }
}
/* Helper Function */

/* Helper Function */
inline void host_deserialize_C(int *C_to, int *C_from){
  /* Variable Declaration */
  unsigned int cnt = 0;
  /* Variable Declaration */

  for (int c1 = 0; c1 <= 1; c1 += 1) {
    // array
    // io_L3
    for (int c3 = 0; c3 <= 15; c3 += 1) {
      // io_L2
      for (int c4 = 0; c4 <= 10; c4 += 1) {
        // io_L1
        // pe
        for (int c5 = 0; c5 <= min(19, -20 * c4 + 207); c5 += 1)
          for (int c6 = 0; c6 <= 15; c6 += 1)
            C_to[(20 * c4 + c5) * 512 + (256 * c1 + 16 * c3 + c6)] = C_from[cnt++];
      }
    }
  }
}
/* Helper Function */

void kernel0(A_t16 *A, B_t16 *B, C_t16 *C);
void A_IO_L2_in_intra_trans(int idx, A_t16 local_A[20][16], hls::stream<A_t8> &fifo_A_local_out, bool intra_trans_en);
void A_IO_L2_in_inter_trans(int idx, A_t16 local_A[20][16], hls::stream<A_t16> &fifo_A_in, hls::stream<A_t16> &fifo_A_out, bool inter_trans_en);
void A_IO_L2_in_inter_trans_boundary(int idx, A_t16 local_A[20][16], hls::stream<A_t16> &fifo_A_in, bool inter_trans_en);
void B_IO_L2_in_intra_trans(int idx, int c1, B_t16 local_B[16][16], hls::stream<B_t8> &fifo_B_local_out, bool intra_trans_en);
void B_IO_L2_in_inter_trans(int idx, int c1, B_t16 local_B[16][16], hls::stream<B_t16> &fifo_B_in, hls::stream<B_t16> &fifo_B_out, bool inter_trans_en);
void B_IO_L2_in_inter_trans_boundary(int idx, int c1, B_t16 local_B[16][16], hls::stream<B_t16> &fifo_B_in, bool inter_trans_en);
void PE_wrapper(int idx, int idy, hls::stream<A_t8> &fifo_A_in, hls::stream<A_t8> &fifo_A_out, hls::stream<B_t8> &fifo_B_in, hls::stream<B_t8> &fifo_B_out, hls::stream<int> &fifo_C_drain_out);
void C_drain_IO_L1_out_intra_trans(int idx, int idy, int c1, C_t4 local_C[20][4], hls::stream<int> &fifo_C_drain_local_in);
void C_drain_IO_L1_out_inter_trans(int idx, int idy, int c1, C_t4 local_C[20][4], hls::stream<C_t4> &fifo_C_drain_in, hls::stream<C_t4> &fifo_C_drain_out);
void C_drain_IO_L1_out_inter_trans_boundary(int idx, int idy, int c1, C_t4 local_C[20][4], hls::stream<C_t4> &fifo_C_drain_out);
void C_drain_IO_L1_out_wrapper(int idx, int idy, hls::stream<C_t4> &fifo_C_drain_in, hls::stream<C_t4> &fifo_C_drain_out, hls::stream<int> &fifo_C_drain_local_in);
void C_drain_IO_L1_out_boundary_wrapper(int idx, int idy, hls::stream<C_t4> &fifo_C_drain_out, hls::stream<int> &fifo_C_drain_local_in);
