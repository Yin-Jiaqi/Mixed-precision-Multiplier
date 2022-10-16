set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME kernel0_entry_proc}
  {SRCNAME A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_45_1 MODELNAME A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_45_1 RTLNAME kernel0_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_45_1
    SUBMODULES {
      {MODELNAME kernel0_flow_control_loop_pipe_sequential_init RTLNAME kernel0_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME kernel0_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME A_IO_L3_in_serialize MODELNAME A_IO_L3_in_serialize RTLNAME kernel0_A_IO_L3_in_serialize}
  {SRCNAME A_IO_L3_in MODELNAME A_IO_L3_in RTLNAME kernel0_A_IO_L3_in
    SUBMODULES {
      {MODELNAME kernel0_flow_control_loop_pipe RTLNAME kernel0_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME kernel0_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3 MODELNAME A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3 RTLNAME kernel0_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_122_3}
  {SRCNAME A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2 MODELNAME A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2 RTLNAME kernel0_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_110_2}
  {SRCNAME A_IO_L2_in_inter_trans MODELNAME A_IO_L2_in_inter_trans RTLNAME kernel0_A_IO_L2_in_inter_trans}
  {SRCNAME A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI MODELNAME A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI RTLNAME kernel0_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI
    SUBMODULES {
      {MODELNAME kernel0_mux_83_32_1_1 RTLNAME kernel0_mux_83_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME A_IO_L2_in_intra_trans MODELNAME A_IO_L2_in_intra_trans RTLNAME kernel0_A_IO_L2_in_intra_trans}
  {SRCNAME A_IO_L2_in MODELNAME A_IO_L2_in RTLNAME kernel0_A_IO_L2_in
    SUBMODULES {
      {MODELNAME kernel0_A_IO_L2_in_local_A_ping_V RTLNAME kernel0_A_IO_L2_in_local_A_ping_V BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME A_IO_L2_in_inter_trans_boundary MODELNAME A_IO_L2_in_inter_trans_boundary RTLNAME kernel0_A_IO_L2_in_inter_trans_boundary}
  {SRCNAME A_IO_L2_in_boundary MODELNAME A_IO_L2_in_boundary RTLNAME kernel0_A_IO_L2_in_boundary}
  {SRCNAME B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_395_1 MODELNAME B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_395_1 RTLNAME kernel0_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_395_1}
  {SRCNAME B_IO_L3_in_serialize MODELNAME B_IO_L3_in_serialize RTLNAME kernel0_B_IO_L3_in_serialize}
  {SRCNAME B_IO_L3_in MODELNAME B_IO_L3_in RTLNAME kernel0_B_IO_L3_in}
  {SRCNAME B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_472_3 MODELNAME B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_472_3 RTLNAME kernel0_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_472_3}
  {SRCNAME B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_460_2 MODELNAME B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_460_2 RTLNAME kernel0_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_460_2}
  {SRCNAME B_IO_L2_in_inter_trans MODELNAME B_IO_L2_in_inter_trans RTLNAME kernel0_B_IO_L2_in_inter_trans}
  {SRCNAME B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_422_1_V MODELNAME B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_422_1_V RTLNAME kernel0_B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_422_1_V}
  {SRCNAME B_IO_L2_in_intra_trans MODELNAME B_IO_L2_in_intra_trans RTLNAME kernel0_B_IO_L2_in_intra_trans}
  {SRCNAME B_IO_L2_in MODELNAME B_IO_L2_in RTLNAME kernel0_B_IO_L2_in}
  {SRCNAME B_IO_L2_in_inter_trans_boundary MODELNAME B_IO_L2_in_inter_trans_boundary RTLNAME kernel0_B_IO_L2_in_inter_trans_boundary}
  {SRCNAME B_IO_L2_in_boundary MODELNAME B_IO_L2_in_boundary RTLNAME kernel0_B_IO_L2_in_boundary}
  {SRCNAME PE MODELNAME PE RTLNAME kernel0_PE
    SUBMODULES {
      {MODELNAME kernel0_mac_muladd_16s_16s_16ns_16_4_1 RTLNAME kernel0_mac_muladd_16s_16s_16ns_16_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME kernel0_PE_local_C RTLNAME kernel0_PE_local_C BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME PE_wrapper7 MODELNAME PE_wrapper7 RTLNAME kernel0_PE_wrapper7}
  {SRCNAME PE_wrapper8 MODELNAME PE_wrapper8 RTLNAME kernel0_PE_wrapper8}
  {SRCNAME PE_wrapper9 MODELNAME PE_wrapper9 RTLNAME kernel0_PE_wrapper9}
  {SRCNAME PE_wrapper MODELNAME PE_wrapper RTLNAME kernel0_PE_wrapper}
  {SRCNAME A_PE_dummy_in10 MODELNAME A_PE_dummy_in10 RTLNAME kernel0_A_PE_dummy_in10}
  {SRCNAME A_PE_dummy_in MODELNAME A_PE_dummy_in RTLNAME kernel0_A_PE_dummy_in}
  {SRCNAME B_PE_dummy_in11 MODELNAME B_PE_dummy_in11 RTLNAME kernel0_B_PE_dummy_in11}
  {SRCNAME B_PE_dummy_in MODELNAME B_PE_dummy_in RTLNAME kernel0_B_PE_dummy_in}
  {SRCNAME C_drain_IO_L1_out_boundary_wrapper12_Pipeline_VITI.1 MODELNAME C_drain_IO_L1_out_boundary_wrapper12_Pipeline_VITI_1 RTLNAME kernel0_C_drain_IO_L1_out_boundary_wrapper12_Pipeline_VITI_1}
  {SRCNAME C_drain_IO_L1_out_boundary_wrapper12_Pipeline_VITI MODELNAME C_drain_IO_L1_out_boundary_wrapper12_Pipeline_VITI RTLNAME kernel0_C_drain_IO_L1_out_boundary_wrapper12_Pipeline_VITI}
  {SRCNAME C_drain_IO_L1_out_boundary_wrapper12 MODELNAME C_drain_IO_L1_out_boundary_wrapper12 RTLNAME kernel0_C_drain_IO_L1_out_boundary_wrapper12
    SUBMODULES {
      {MODELNAME kernel0_C_drain_IO_L1_out_boundary_wrapper12_local_C_V RTLNAME kernel0_C_drain_IO_L1_out_boundary_wrapper12_local_C_V BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME C_drain_IO_L1_out_Pipeline_VITIS_LOOP_870_1_VITIS_ MODELNAME C_drain_IO_L1_out_Pipeline_VITIS_LOOP_870_1_VITIS_s RTLNAME kernel0_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_870_1_VITIS_s}
  {SRCNAME C_drain_IO_L1_out_Pipeline_VITIS_LOOP_918_3 MODELNAME C_drain_IO_L1_out_Pipeline_VITIS_LOOP_918_3 RTLNAME kernel0_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_918_3}
  {SRCNAME C_drain_IO_L1_out_Pipeline_VITIS_LOOP_906_2 MODELNAME C_drain_IO_L1_out_Pipeline_VITIS_LOOP_906_2 RTLNAME kernel0_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_906_2}
  {SRCNAME C_drain_IO_L1_out MODELNAME C_drain_IO_L1_out RTLNAME kernel0_C_drain_IO_L1_out}
  {SRCNAME C_drain_IO_L1_out_wrapper13 MODELNAME C_drain_IO_L1_out_wrapper13 RTLNAME kernel0_C_drain_IO_L1_out_wrapper13}
  {SRCNAME C_drain_IO_L1_out_boundary_wrapper_Pipeline_VITIS_.1 MODELNAME C_drain_IO_L1_out_boundary_wrapper_Pipeline_VITIS_1 RTLNAME kernel0_C_drain_IO_L1_out_boundary_wrapper_Pipeline_VITIS_1}
  {SRCNAME C_drain_IO_L1_out_boundary_wrapper_Pipeline_VITIS_ MODELNAME C_drain_IO_L1_out_boundary_wrapper_Pipeline_VITIS_s RTLNAME kernel0_C_drain_IO_L1_out_boundary_wrapper_Pipeline_VITIS_s}
  {SRCNAME C_drain_IO_L1_out_boundary_wrapper MODELNAME C_drain_IO_L1_out_boundary_wrapper RTLNAME kernel0_C_drain_IO_L1_out_boundary_wrapper}
  {SRCNAME C_drain_IO_L1_out_wrapper MODELNAME C_drain_IO_L1_out_wrapper RTLNAME kernel0_C_drain_IO_L1_out_wrapper}
  {SRCNAME C_drain_IO_L2_out_boundary MODELNAME C_drain_IO_L2_out_boundary RTLNAME kernel0_C_drain_IO_L2_out_boundary}
  {SRCNAME C_drain_IO_L2_out_Pipeline_VITIS_LOOP_1080_6_VITIS MODELNAME C_drain_IO_L2_out_Pipeline_VITIS_LOOP_1080_6_VITIS RTLNAME kernel0_C_drain_IO_L2_out_Pipeline_VITIS_LOOP_1080_6_VITIS}
  {SRCNAME C_drain_IO_L2_out_Pipeline_VITIS_LOOP_1065_4_VITIS MODELNAME C_drain_IO_L2_out_Pipeline_VITIS_LOOP_1065_4_VITIS RTLNAME kernel0_C_drain_IO_L2_out_Pipeline_VITIS_LOOP_1065_4_VITIS}
  {SRCNAME C_drain_IO_L2_out MODELNAME C_drain_IO_L2_out RTLNAME kernel0_C_drain_IO_L2_out}
  {SRCNAME C_drain_IO_L3_out MODELNAME C_drain_IO_L3_out RTLNAME kernel0_C_drain_IO_L3_out}
  {SRCNAME C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11 MODELNAME C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11 RTLNAME kernel0_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11}
  {SRCNAME C_drain_IO_L3_out_serialize MODELNAME C_drain_IO_L3_out_serialize RTLNAME kernel0_C_drain_IO_L3_out_serialize}
  {SRCNAME kernel0 MODELNAME kernel0 RTLNAME kernel0 IS_TOP 1
    SUBMODULES {
      {MODELNAME kernel0_fifo_w64_d12_S RTLNAME kernel0_fifo_w64_d12_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME kernel0_fifo_w256_d2_S RTLNAME kernel0_fifo_w256_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME kernel0_fifo_w32_d2_S RTLNAME kernel0_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME kernel0_fifo_w16_d2_S RTLNAME kernel0_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME kernel0_fifo_w128_d2_S RTLNAME kernel0_fifo_w128_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME kernel0_start_for_A_IO_L3_in_U0 RTLNAME kernel0_start_for_A_IO_L3_in_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME kernel0_start_for_A_IO_L2_in_U0 RTLNAME kernel0_start_for_A_IO_L2_in_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME kernel0_start_for_A_IO_L2_in_boundary_U0 RTLNAME kernel0_start_for_A_IO_L2_in_boundary_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME kernel0_start_for_PE_wrapper7_U0 RTLNAME kernel0_start_for_PE_wrapper7_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME kernel0_start_for_PE_wrapper9_U0 RTLNAME kernel0_start_for_PE_wrapper9_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME kernel0_start_for_B_IO_L3_in_U0 RTLNAME kernel0_start_for_B_IO_L3_in_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME kernel0_start_for_B_IO_L2_in_U0 RTLNAME kernel0_start_for_B_IO_L2_in_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME kernel0_start_for_B_IO_L2_in_boundary_U0 RTLNAME kernel0_start_for_B_IO_L2_in_boundary_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME kernel0_start_for_PE_wrapper8_U0 RTLNAME kernel0_start_for_PE_wrapper8_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME kernel0_start_for_C_drain_IO_L1_out_wrapper13_U0 RTLNAME kernel0_start_for_C_drain_IO_L1_out_wrapper13_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME kernel0_start_for_PE_wrapper_U0 RTLNAME kernel0_start_for_PE_wrapper_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME kernel0_start_for_A_PE_dummy_in10_U0 RTLNAME kernel0_start_for_A_PE_dummy_in10_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME kernel0_start_for_C_drain_IO_L1_out_wrapper_U0 RTLNAME kernel0_start_for_C_drain_IO_L1_out_wrapper_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME kernel0_start_for_B_PE_dummy_in11_U0 RTLNAME kernel0_start_for_B_PE_dummy_in11_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME kernel0_start_for_C_drain_IO_L1_out_boundary_wrapper12_U0 RTLNAME kernel0_start_for_C_drain_IO_L1_out_boundary_wrapper12_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME kernel0_start_for_A_PE_dummy_in_U0 RTLNAME kernel0_start_for_A_PE_dummy_in_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME kernel0_start_for_B_PE_dummy_in_U0 RTLNAME kernel0_start_for_B_PE_dummy_in_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME kernel0_start_for_C_drain_IO_L1_out_boundary_wrapper_U0 RTLNAME kernel0_start_for_C_drain_IO_L1_out_boundary_wrapper_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME kernel0_start_for_C_drain_IO_L2_out_U0 RTLNAME kernel0_start_for_C_drain_IO_L2_out_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME kernel0_start_for_C_drain_IO_L2_out_boundary_U0 RTLNAME kernel0_start_for_C_drain_IO_L2_out_boundary_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME kernel0_start_for_C_drain_IO_L3_out_U0 RTLNAME kernel0_start_for_C_drain_IO_L3_out_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME kernel0_control_s_axi RTLNAME kernel0_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME kernel0_gmem_A_m_axi RTLNAME kernel0_gmem_A_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME kernel0_gmem_B_m_axi RTLNAME kernel0_gmem_B_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME kernel0_gmem_C_m_axi RTLNAME kernel0_gmem_C_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
