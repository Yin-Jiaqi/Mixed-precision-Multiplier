-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity kernel0_C_drain_IO_L3_out_serialize is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_gmem_C_AWVALID : OUT STD_LOGIC;
    m_axi_gmem_C_AWREADY : IN STD_LOGIC;
    m_axi_gmem_C_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem_C_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_C_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem_C_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_C_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_C_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_C_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_C_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_C_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_C_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_C_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_C_WVALID : OUT STD_LOGIC;
    m_axi_gmem_C_WREADY : IN STD_LOGIC;
    m_axi_gmem_C_WDATA : OUT STD_LOGIC_VECTOR (511 downto 0);
    m_axi_gmem_C_WSTRB : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem_C_WLAST : OUT STD_LOGIC;
    m_axi_gmem_C_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_C_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_C_ARVALID : OUT STD_LOGIC;
    m_axi_gmem_C_ARREADY : IN STD_LOGIC;
    m_axi_gmem_C_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem_C_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_C_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem_C_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_C_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_C_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_C_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_C_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_C_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_C_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_C_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_C_RVALID : IN STD_LOGIC;
    m_axi_gmem_C_RREADY : OUT STD_LOGIC;
    m_axi_gmem_C_RDATA : IN STD_LOGIC_VECTOR (511 downto 0);
    m_axi_gmem_C_RLAST : IN STD_LOGIC;
    m_axi_gmem_C_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_C_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_C_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_C_BVALID : IN STD_LOGIC;
    m_axi_gmem_C_BREADY : OUT STD_LOGIC;
    m_axi_gmem_C_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_C_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_C_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    p_read : IN STD_LOGIC_VECTOR (63 downto 0);
    fifo_C_drain_C_drain_IO_L3_out_serialize71_dout : IN STD_LOGIC_VECTOR (127 downto 0);
    fifo_C_drain_C_drain_IO_L3_out_serialize71_empty_n : IN STD_LOGIC;
    fifo_C_drain_C_drain_IO_L3_out_serialize71_read : OUT STD_LOGIC );
end;


architecture behav of kernel0_C_drain_IO_L3_out_serialize is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (7 downto 0) := "00000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (7 downto 0) := "00000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (7 downto 0) := "00001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (7 downto 0) := "00010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (7 downto 0) := "00100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (7 downto 0) := "01000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_80 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010000000";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv512_lc_1 : STD_LOGIC_VECTOR (511 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal gmem_C_blk_n_AW : STD_LOGIC;
    signal gmem_C_blk_n_B : STD_LOGIC;
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal trunc_ln_fu_63_p4 : STD_LOGIC_VECTOR (57 downto 0);
    signal trunc_ln_reg_84 : STD_LOGIC_VECTOR (57 downto 0);
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_ap_start : STD_LOGIC;
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_ap_done : STD_LOGIC;
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_ap_idle : STD_LOGIC;
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_ap_ready : STD_LOGIC;
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_fifo_C_drain_C_drain_IO_L3_out_serialize71_read : STD_LOGIC;
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWVALID : STD_LOGIC;
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWADDR : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWID : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWLEN : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWSIZE : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWBURST : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWLOCK : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWCACHE : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWPROT : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWQOS : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWREGION : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_WVALID : STD_LOGIC;
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_WDATA : STD_LOGIC_VECTOR (511 downto 0);
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_WSTRB : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_WLAST : STD_LOGIC;
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_WID : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_WUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_ARVALID : STD_LOGIC;
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_ARADDR : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_ARID : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_ARLEN : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_ARSIZE : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_ARBURST : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_ARLOCK : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_ARCACHE : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_ARPROT : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_ARQOS : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_ARREGION : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_ARUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_RREADY : STD_LOGIC;
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_BREADY : STD_LOGIC;
    signal grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal sext_ln1171_fu_73_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ST_fsm_state7_blk : STD_LOGIC;
    signal ap_ST_fsm_state8_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component kernel0_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        fifo_C_drain_C_drain_IO_L3_out_serialize71_dout : IN STD_LOGIC_VECTOR (127 downto 0);
        fifo_C_drain_C_drain_IO_L3_out_serialize71_empty_n : IN STD_LOGIC;
        fifo_C_drain_C_drain_IO_L3_out_serialize71_read : OUT STD_LOGIC;
        m_axi_gmem_C_AWVALID : OUT STD_LOGIC;
        m_axi_gmem_C_AWREADY : IN STD_LOGIC;
        m_axi_gmem_C_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
        m_axi_gmem_C_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_C_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
        m_axi_gmem_C_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_gmem_C_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem_C_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem_C_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem_C_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_gmem_C_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem_C_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem_C_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_C_WVALID : OUT STD_LOGIC;
        m_axi_gmem_C_WREADY : IN STD_LOGIC;
        m_axi_gmem_C_WDATA : OUT STD_LOGIC_VECTOR (511 downto 0);
        m_axi_gmem_C_WSTRB : OUT STD_LOGIC_VECTOR (63 downto 0);
        m_axi_gmem_C_WLAST : OUT STD_LOGIC;
        m_axi_gmem_C_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_C_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_C_ARVALID : OUT STD_LOGIC;
        m_axi_gmem_C_ARREADY : IN STD_LOGIC;
        m_axi_gmem_C_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
        m_axi_gmem_C_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_C_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
        m_axi_gmem_C_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_gmem_C_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem_C_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem_C_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem_C_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_gmem_C_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem_C_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem_C_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_C_RVALID : IN STD_LOGIC;
        m_axi_gmem_C_RREADY : OUT STD_LOGIC;
        m_axi_gmem_C_RDATA : IN STD_LOGIC_VECTOR (511 downto 0);
        m_axi_gmem_C_RLAST : IN STD_LOGIC;
        m_axi_gmem_C_RID : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_C_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_C_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem_C_BVALID : IN STD_LOGIC;
        m_axi_gmem_C_BREADY : OUT STD_LOGIC;
        m_axi_gmem_C_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem_C_BID : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_C_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        sext_ln1171 : IN STD_LOGIC_VECTOR (57 downto 0) );
    end component;



begin
    grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54 : component kernel0_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_ap_start,
        ap_done => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_ap_done,
        ap_idle => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_ap_idle,
        ap_ready => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_ap_ready,
        fifo_C_drain_C_drain_IO_L3_out_serialize71_dout => fifo_C_drain_C_drain_IO_L3_out_serialize71_dout,
        fifo_C_drain_C_drain_IO_L3_out_serialize71_empty_n => fifo_C_drain_C_drain_IO_L3_out_serialize71_empty_n,
        fifo_C_drain_C_drain_IO_L3_out_serialize71_read => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_fifo_C_drain_C_drain_IO_L3_out_serialize71_read,
        m_axi_gmem_C_AWVALID => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWVALID,
        m_axi_gmem_C_AWREADY => m_axi_gmem_C_AWREADY,
        m_axi_gmem_C_AWADDR => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWADDR,
        m_axi_gmem_C_AWID => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWID,
        m_axi_gmem_C_AWLEN => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWLEN,
        m_axi_gmem_C_AWSIZE => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWSIZE,
        m_axi_gmem_C_AWBURST => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWBURST,
        m_axi_gmem_C_AWLOCK => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWLOCK,
        m_axi_gmem_C_AWCACHE => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWCACHE,
        m_axi_gmem_C_AWPROT => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWPROT,
        m_axi_gmem_C_AWQOS => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWQOS,
        m_axi_gmem_C_AWREGION => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWREGION,
        m_axi_gmem_C_AWUSER => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWUSER,
        m_axi_gmem_C_WVALID => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_WVALID,
        m_axi_gmem_C_WREADY => m_axi_gmem_C_WREADY,
        m_axi_gmem_C_WDATA => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_WDATA,
        m_axi_gmem_C_WSTRB => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_WSTRB,
        m_axi_gmem_C_WLAST => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_WLAST,
        m_axi_gmem_C_WID => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_WID,
        m_axi_gmem_C_WUSER => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_WUSER,
        m_axi_gmem_C_ARVALID => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_ARVALID,
        m_axi_gmem_C_ARREADY => ap_const_logic_0,
        m_axi_gmem_C_ARADDR => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_ARADDR,
        m_axi_gmem_C_ARID => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_ARID,
        m_axi_gmem_C_ARLEN => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_ARLEN,
        m_axi_gmem_C_ARSIZE => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_ARSIZE,
        m_axi_gmem_C_ARBURST => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_ARBURST,
        m_axi_gmem_C_ARLOCK => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_ARLOCK,
        m_axi_gmem_C_ARCACHE => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_ARCACHE,
        m_axi_gmem_C_ARPROT => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_ARPROT,
        m_axi_gmem_C_ARQOS => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_ARQOS,
        m_axi_gmem_C_ARREGION => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_ARREGION,
        m_axi_gmem_C_ARUSER => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_ARUSER,
        m_axi_gmem_C_RVALID => ap_const_logic_0,
        m_axi_gmem_C_RREADY => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_RREADY,
        m_axi_gmem_C_RDATA => ap_const_lv512_lc_1,
        m_axi_gmem_C_RLAST => ap_const_logic_0,
        m_axi_gmem_C_RID => ap_const_lv1_0,
        m_axi_gmem_C_RUSER => ap_const_lv1_0,
        m_axi_gmem_C_RRESP => ap_const_lv2_0,
        m_axi_gmem_C_BVALID => m_axi_gmem_C_BVALID,
        m_axi_gmem_C_BREADY => grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_BREADY,
        m_axi_gmem_C_BRESP => m_axi_gmem_C_BRESP,
        m_axi_gmem_C_BID => m_axi_gmem_C_BID,
        m_axi_gmem_C_BUSER => m_axi_gmem_C_BUSER,
        sext_ln1171 => trunc_ln_reg_84);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((m_axi_gmem_C_BVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                    grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_ap_ready = ap_const_logic_1)) then 
                    grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                trunc_ln_reg_84 <= p_read(63 downto 6);
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, m_axi_gmem_C_AWREADY, m_axi_gmem_C_BVALID, ap_CS_fsm_state8, grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_ap_done, ap_CS_fsm_state3)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((m_axi_gmem_C_AWREADY = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                if (((m_axi_gmem_C_BVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start, ap_done_reg, m_axi_gmem_C_AWREADY)
    begin
        if (((m_axi_gmem_C_AWREADY = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;

    ap_ST_fsm_state3_blk_assign_proc : process(grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_ap_done)
    begin
        if ((grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state3_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state3_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state4_blk <= ap_const_logic_0;
    ap_ST_fsm_state5_blk <= ap_const_logic_0;
    ap_ST_fsm_state6_blk <= ap_const_logic_0;
    ap_ST_fsm_state7_blk <= ap_const_logic_0;

    ap_ST_fsm_state8_blk_assign_proc : process(m_axi_gmem_C_BVALID)
    begin
        if ((m_axi_gmem_C_BVALID = ap_const_logic_0)) then 
            ap_ST_fsm_state8_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state8_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, m_axi_gmem_C_BVALID, ap_CS_fsm_state8)
    begin
        if (((m_axi_gmem_C_BVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(m_axi_gmem_C_BVALID, ap_CS_fsm_state8)
    begin
        if (((m_axi_gmem_C_BVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    fifo_C_drain_C_drain_IO_L3_out_serialize71_read_assign_proc : process(grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_fifo_C_drain_C_drain_IO_L3_out_serialize71_read, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            fifo_C_drain_C_drain_IO_L3_out_serialize71_read <= grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_fifo_C_drain_C_drain_IO_L3_out_serialize71_read;
        else 
            fifo_C_drain_C_drain_IO_L3_out_serialize71_read <= ap_const_logic_0;
        end if; 
    end process;


    gmem_C_blk_n_AW_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, m_axi_gmem_C_AWREADY)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            gmem_C_blk_n_AW <= m_axi_gmem_C_AWREADY;
        else 
            gmem_C_blk_n_AW <= ap_const_logic_1;
        end if; 
    end process;


    gmem_C_blk_n_B_assign_proc : process(m_axi_gmem_C_BVALID, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            gmem_C_blk_n_B <= m_axi_gmem_C_BVALID;
        else 
            gmem_C_blk_n_B <= ap_const_logic_1;
        end if; 
    end process;

    grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_ap_start <= grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_ap_start_reg;
    m_axi_gmem_C_ARADDR <= ap_const_lv64_0;
    m_axi_gmem_C_ARBURST <= ap_const_lv2_0;
    m_axi_gmem_C_ARCACHE <= ap_const_lv4_0;
    m_axi_gmem_C_ARID <= ap_const_lv1_0;
    m_axi_gmem_C_ARLEN <= ap_const_lv32_0;
    m_axi_gmem_C_ARLOCK <= ap_const_lv2_0;
    m_axi_gmem_C_ARPROT <= ap_const_lv3_0;
    m_axi_gmem_C_ARQOS <= ap_const_lv4_0;
    m_axi_gmem_C_ARREGION <= ap_const_lv4_0;
    m_axi_gmem_C_ARSIZE <= ap_const_lv3_0;
    m_axi_gmem_C_ARUSER <= ap_const_lv1_0;
    m_axi_gmem_C_ARVALID <= ap_const_logic_0;

    m_axi_gmem_C_AWADDR_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, m_axi_gmem_C_AWREADY, grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWADDR, ap_CS_fsm_state2, ap_CS_fsm_state3, sext_ln1171_fu_73_p1)
    begin
        if ((not(((m_axi_gmem_C_AWREADY = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            m_axi_gmem_C_AWADDR <= sext_ln1171_fu_73_p1;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_axi_gmem_C_AWADDR <= grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWADDR;
        else 
            m_axi_gmem_C_AWADDR <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    m_axi_gmem_C_AWBURST_assign_proc : process(grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWBURST, ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_axi_gmem_C_AWBURST <= grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWBURST;
        else 
            m_axi_gmem_C_AWBURST <= ap_const_lv2_0;
        end if; 
    end process;


    m_axi_gmem_C_AWCACHE_assign_proc : process(grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWCACHE, ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_axi_gmem_C_AWCACHE <= grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWCACHE;
        else 
            m_axi_gmem_C_AWCACHE <= ap_const_lv4_0;
        end if; 
    end process;


    m_axi_gmem_C_AWID_assign_proc : process(grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWID, ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_axi_gmem_C_AWID <= grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWID;
        else 
            m_axi_gmem_C_AWID <= ap_const_lv1_0;
        end if; 
    end process;


    m_axi_gmem_C_AWLEN_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, m_axi_gmem_C_AWREADY, grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWLEN, ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if ((not(((m_axi_gmem_C_AWREADY = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            m_axi_gmem_C_AWLEN <= ap_const_lv32_80;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_axi_gmem_C_AWLEN <= grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWLEN;
        else 
            m_axi_gmem_C_AWLEN <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    m_axi_gmem_C_AWLOCK_assign_proc : process(grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWLOCK, ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_axi_gmem_C_AWLOCK <= grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWLOCK;
        else 
            m_axi_gmem_C_AWLOCK <= ap_const_lv2_0;
        end if; 
    end process;


    m_axi_gmem_C_AWPROT_assign_proc : process(grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWPROT, ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_axi_gmem_C_AWPROT <= grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWPROT;
        else 
            m_axi_gmem_C_AWPROT <= ap_const_lv3_0;
        end if; 
    end process;


    m_axi_gmem_C_AWQOS_assign_proc : process(grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWQOS, ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_axi_gmem_C_AWQOS <= grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWQOS;
        else 
            m_axi_gmem_C_AWQOS <= ap_const_lv4_0;
        end if; 
    end process;


    m_axi_gmem_C_AWREGION_assign_proc : process(grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWREGION, ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_axi_gmem_C_AWREGION <= grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWREGION;
        else 
            m_axi_gmem_C_AWREGION <= ap_const_lv4_0;
        end if; 
    end process;


    m_axi_gmem_C_AWSIZE_assign_proc : process(grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWSIZE, ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_axi_gmem_C_AWSIZE <= grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWSIZE;
        else 
            m_axi_gmem_C_AWSIZE <= ap_const_lv3_0;
        end if; 
    end process;


    m_axi_gmem_C_AWUSER_assign_proc : process(grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWUSER, ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_axi_gmem_C_AWUSER <= grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWUSER;
        else 
            m_axi_gmem_C_AWUSER <= ap_const_lv1_0;
        end if; 
    end process;


    m_axi_gmem_C_AWVALID_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, m_axi_gmem_C_AWREADY, grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWVALID, ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if ((not(((m_axi_gmem_C_AWREADY = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            m_axi_gmem_C_AWVALID <= ap_const_logic_1;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_axi_gmem_C_AWVALID <= grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_AWVALID;
        else 
            m_axi_gmem_C_AWVALID <= ap_const_logic_0;
        end if; 
    end process;


    m_axi_gmem_C_BREADY_assign_proc : process(m_axi_gmem_C_BVALID, ap_CS_fsm_state8, grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_BREADY, ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if (((m_axi_gmem_C_BVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            m_axi_gmem_C_BREADY <= ap_const_logic_1;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_axi_gmem_C_BREADY <= grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_BREADY;
        else 
            m_axi_gmem_C_BREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_gmem_C_RREADY <= ap_const_logic_0;
    m_axi_gmem_C_WDATA <= grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_WDATA;
    m_axi_gmem_C_WID <= grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_WID;
    m_axi_gmem_C_WLAST <= grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_WLAST;
    m_axi_gmem_C_WSTRB <= grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_WSTRB;
    m_axi_gmem_C_WUSER <= grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_WUSER;

    m_axi_gmem_C_WVALID_assign_proc : process(grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_WVALID, ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_axi_gmem_C_WVALID <= grp_C_drain_IO_L3_out_serialize_Pipeline_VITIS_LOOP_11_fu_54_m_axi_gmem_C_WVALID;
        else 
            m_axi_gmem_C_WVALID <= ap_const_logic_0;
        end if; 
    end process;

        sext_ln1171_fu_73_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(trunc_ln_fu_63_p4),64));

    trunc_ln_fu_63_p4 <= p_read(63 downto 6);
end behav;
