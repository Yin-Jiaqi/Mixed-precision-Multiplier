// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module kernel0_A_IO_L3_in_serialize (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        m_axi_gmem_A_AWVALID,
        m_axi_gmem_A_AWREADY,
        m_axi_gmem_A_AWADDR,
        m_axi_gmem_A_AWID,
        m_axi_gmem_A_AWLEN,
        m_axi_gmem_A_AWSIZE,
        m_axi_gmem_A_AWBURST,
        m_axi_gmem_A_AWLOCK,
        m_axi_gmem_A_AWCACHE,
        m_axi_gmem_A_AWPROT,
        m_axi_gmem_A_AWQOS,
        m_axi_gmem_A_AWREGION,
        m_axi_gmem_A_AWUSER,
        m_axi_gmem_A_WVALID,
        m_axi_gmem_A_WREADY,
        m_axi_gmem_A_WDATA,
        m_axi_gmem_A_WSTRB,
        m_axi_gmem_A_WLAST,
        m_axi_gmem_A_WID,
        m_axi_gmem_A_WUSER,
        m_axi_gmem_A_ARVALID,
        m_axi_gmem_A_ARREADY,
        m_axi_gmem_A_ARADDR,
        m_axi_gmem_A_ARID,
        m_axi_gmem_A_ARLEN,
        m_axi_gmem_A_ARSIZE,
        m_axi_gmem_A_ARBURST,
        m_axi_gmem_A_ARLOCK,
        m_axi_gmem_A_ARCACHE,
        m_axi_gmem_A_ARPROT,
        m_axi_gmem_A_ARQOS,
        m_axi_gmem_A_ARREGION,
        m_axi_gmem_A_ARUSER,
        m_axi_gmem_A_RVALID,
        m_axi_gmem_A_RREADY,
        m_axi_gmem_A_RDATA,
        m_axi_gmem_A_RLAST,
        m_axi_gmem_A_RID,
        m_axi_gmem_A_RUSER,
        m_axi_gmem_A_RRESP,
        m_axi_gmem_A_BVALID,
        m_axi_gmem_A_BREADY,
        m_axi_gmem_A_BRESP,
        m_axi_gmem_A_BID,
        m_axi_gmem_A_BUSER,
        A,
        fifo_A_A_IO_L3_in_serialize69_din,
        fifo_A_A_IO_L3_in_serialize69_full_n,
        fifo_A_A_IO_L3_in_serialize69_write
);

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
output   m_axi_gmem_A_AWVALID;
input   m_axi_gmem_A_AWREADY;
output  [63:0] m_axi_gmem_A_AWADDR;
output  [0:0] m_axi_gmem_A_AWID;
output  [31:0] m_axi_gmem_A_AWLEN;
output  [2:0] m_axi_gmem_A_AWSIZE;
output  [1:0] m_axi_gmem_A_AWBURST;
output  [1:0] m_axi_gmem_A_AWLOCK;
output  [3:0] m_axi_gmem_A_AWCACHE;
output  [2:0] m_axi_gmem_A_AWPROT;
output  [3:0] m_axi_gmem_A_AWQOS;
output  [3:0] m_axi_gmem_A_AWREGION;
output  [0:0] m_axi_gmem_A_AWUSER;
output   m_axi_gmem_A_WVALID;
input   m_axi_gmem_A_WREADY;
output  [511:0] m_axi_gmem_A_WDATA;
output  [63:0] m_axi_gmem_A_WSTRB;
output   m_axi_gmem_A_WLAST;
output  [0:0] m_axi_gmem_A_WID;
output  [0:0] m_axi_gmem_A_WUSER;
output   m_axi_gmem_A_ARVALID;
input   m_axi_gmem_A_ARREADY;
output  [63:0] m_axi_gmem_A_ARADDR;
output  [0:0] m_axi_gmem_A_ARID;
output  [31:0] m_axi_gmem_A_ARLEN;
output  [2:0] m_axi_gmem_A_ARSIZE;
output  [1:0] m_axi_gmem_A_ARBURST;
output  [1:0] m_axi_gmem_A_ARLOCK;
output  [3:0] m_axi_gmem_A_ARCACHE;
output  [2:0] m_axi_gmem_A_ARPROT;
output  [3:0] m_axi_gmem_A_ARQOS;
output  [3:0] m_axi_gmem_A_ARREGION;
output  [0:0] m_axi_gmem_A_ARUSER;
input   m_axi_gmem_A_RVALID;
output   m_axi_gmem_A_RREADY;
input  [511:0] m_axi_gmem_A_RDATA;
input   m_axi_gmem_A_RLAST;
input  [0:0] m_axi_gmem_A_RID;
input  [0:0] m_axi_gmem_A_RUSER;
input  [1:0] m_axi_gmem_A_RRESP;
input   m_axi_gmem_A_BVALID;
output   m_axi_gmem_A_BREADY;
input  [1:0] m_axi_gmem_A_BRESP;
input  [0:0] m_axi_gmem_A_BID;
input  [0:0] m_axi_gmem_A_BUSER;
input  [63:0] A;
output  [511:0] fifo_A_A_IO_L3_in_serialize69_din;
input   fifo_A_A_IO_L3_in_serialize69_full_n;
output   fifo_A_A_IO_L3_in_serialize69_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg m_axi_gmem_A_ARVALID;
reg[63:0] m_axi_gmem_A_ARADDR;
reg[0:0] m_axi_gmem_A_ARID;
reg[31:0] m_axi_gmem_A_ARLEN;
reg[2:0] m_axi_gmem_A_ARSIZE;
reg[1:0] m_axi_gmem_A_ARBURST;
reg[1:0] m_axi_gmem_A_ARLOCK;
reg[3:0] m_axi_gmem_A_ARCACHE;
reg[2:0] m_axi_gmem_A_ARPROT;
reg[3:0] m_axi_gmem_A_ARQOS;
reg[3:0] m_axi_gmem_A_ARREGION;
reg[0:0] m_axi_gmem_A_ARUSER;
reg m_axi_gmem_A_RREADY;
reg fifo_A_A_IO_L3_in_serialize69_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    gmem_A_blk_n_AR;
wire  signed [57:0] trunc_ln_fu_60_p4;
reg   [57:0] trunc_ln_reg_81;
wire    grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_ap_start;
wire    grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_ap_done;
wire    grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_ap_idle;
wire    grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_ap_ready;
wire    grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_AWVALID;
wire   [63:0] grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_AWADDR;
wire   [0:0] grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_AWID;
wire   [31:0] grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_AWLEN;
wire   [2:0] grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_AWSIZE;
wire   [1:0] grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_AWBURST;
wire   [1:0] grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_AWLOCK;
wire   [3:0] grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_AWCACHE;
wire   [2:0] grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_AWPROT;
wire   [3:0] grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_AWQOS;
wire   [3:0] grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_AWREGION;
wire   [0:0] grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_AWUSER;
wire    grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_WVALID;
wire   [511:0] grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_WDATA;
wire   [63:0] grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_WSTRB;
wire    grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_WLAST;
wire   [0:0] grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_WID;
wire   [0:0] grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_WUSER;
wire    grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARVALID;
wire   [63:0] grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARADDR;
wire   [0:0] grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARID;
wire   [31:0] grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARLEN;
wire   [2:0] grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARSIZE;
wire   [1:0] grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARBURST;
wire   [1:0] grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARLOCK;
wire   [3:0] grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARCACHE;
wire   [2:0] grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARPROT;
wire   [3:0] grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARQOS;
wire   [3:0] grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARREGION;
wire   [0:0] grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARUSER;
wire    grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_RREADY;
wire    grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_BREADY;
wire   [511:0] grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_fifo_A_A_IO_L3_in_serialize69_din;
wire    grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_fifo_A_A_IO_L3_in_serialize69_write;
reg    grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_ap_start_reg;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
wire  signed [63:0] sext_ln38_fu_70_p1;
reg    ap_block_state1;
reg   [8:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 9'd1;
#0 grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_ap_start_reg = 1'b0;
end

kernel0_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1 grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_ap_start),
    .ap_done(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_ap_done),
    .ap_idle(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_ap_idle),
    .ap_ready(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_ap_ready),
    .m_axi_gmem_A_AWVALID(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_AWVALID),
    .m_axi_gmem_A_AWREADY(1'b0),
    .m_axi_gmem_A_AWADDR(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_AWADDR),
    .m_axi_gmem_A_AWID(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_AWID),
    .m_axi_gmem_A_AWLEN(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_AWLEN),
    .m_axi_gmem_A_AWSIZE(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_AWSIZE),
    .m_axi_gmem_A_AWBURST(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_AWBURST),
    .m_axi_gmem_A_AWLOCK(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_AWLOCK),
    .m_axi_gmem_A_AWCACHE(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_AWCACHE),
    .m_axi_gmem_A_AWPROT(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_AWPROT),
    .m_axi_gmem_A_AWQOS(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_AWQOS),
    .m_axi_gmem_A_AWREGION(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_AWREGION),
    .m_axi_gmem_A_AWUSER(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_AWUSER),
    .m_axi_gmem_A_WVALID(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_WVALID),
    .m_axi_gmem_A_WREADY(1'b0),
    .m_axi_gmem_A_WDATA(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_WDATA),
    .m_axi_gmem_A_WSTRB(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_WSTRB),
    .m_axi_gmem_A_WLAST(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_WLAST),
    .m_axi_gmem_A_WID(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_WID),
    .m_axi_gmem_A_WUSER(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_WUSER),
    .m_axi_gmem_A_ARVALID(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARVALID),
    .m_axi_gmem_A_ARREADY(m_axi_gmem_A_ARREADY),
    .m_axi_gmem_A_ARADDR(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARADDR),
    .m_axi_gmem_A_ARID(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARID),
    .m_axi_gmem_A_ARLEN(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARLEN),
    .m_axi_gmem_A_ARSIZE(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARSIZE),
    .m_axi_gmem_A_ARBURST(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARBURST),
    .m_axi_gmem_A_ARLOCK(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARLOCK),
    .m_axi_gmem_A_ARCACHE(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARCACHE),
    .m_axi_gmem_A_ARPROT(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARPROT),
    .m_axi_gmem_A_ARQOS(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARQOS),
    .m_axi_gmem_A_ARREGION(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARREGION),
    .m_axi_gmem_A_ARUSER(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARUSER),
    .m_axi_gmem_A_RVALID(m_axi_gmem_A_RVALID),
    .m_axi_gmem_A_RREADY(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_RREADY),
    .m_axi_gmem_A_RDATA(m_axi_gmem_A_RDATA),
    .m_axi_gmem_A_RLAST(m_axi_gmem_A_RLAST),
    .m_axi_gmem_A_RID(m_axi_gmem_A_RID),
    .m_axi_gmem_A_RUSER(m_axi_gmem_A_RUSER),
    .m_axi_gmem_A_RRESP(m_axi_gmem_A_RRESP),
    .m_axi_gmem_A_BVALID(1'b0),
    .m_axi_gmem_A_BREADY(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_BREADY),
    .m_axi_gmem_A_BRESP(2'd0),
    .m_axi_gmem_A_BID(1'd0),
    .m_axi_gmem_A_BUSER(1'd0),
    .fifo_A_A_IO_L3_in_serialize69_din(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_fifo_A_A_IO_L3_in_serialize69_din),
    .fifo_A_A_IO_L3_in_serialize69_full_n(fifo_A_A_IO_L3_in_serialize69_full_n),
    .fifo_A_A_IO_L3_in_serialize69_write(grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_fifo_A_A_IO_L3_in_serialize69_write),
    .sext_ln38(trunc_ln_reg_81)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state9) & (grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_ap_start_reg <= 1'b1;
        end else if ((grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_ap_ready == 1'b1)) begin
            grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        trunc_ln_reg_81 <= {{A[63:6]}};
    end
end

always @ (*) begin
    if (((m_axi_gmem_A_ARREADY == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

always @ (*) begin
    if ((grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & (grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_ap_done == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (real_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        fifo_A_A_IO_L3_in_serialize69_write = grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_fifo_A_A_IO_L3_in_serialize69_write;
    end else begin
        fifo_A_A_IO_L3_in_serialize69_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        gmem_A_blk_n_AR = m_axi_gmem_A_ARREADY;
    end else begin
        gmem_A_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & (grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_ap_done == 1'b1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((m_axi_gmem_A_ARREADY == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        m_axi_gmem_A_ARADDR = sext_ln38_fu_70_p1;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_gmem_A_ARADDR = grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARADDR;
    end else begin
        m_axi_gmem_A_ARADDR = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_gmem_A_ARBURST = grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARBURST;
    end else begin
        m_axi_gmem_A_ARBURST = 2'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_gmem_A_ARCACHE = grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARCACHE;
    end else begin
        m_axi_gmem_A_ARCACHE = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_gmem_A_ARID = grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARID;
    end else begin
        m_axi_gmem_A_ARID = 1'd0;
    end
end

always @ (*) begin
    if ((~((m_axi_gmem_A_ARREADY == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        m_axi_gmem_A_ARLEN = 32'd1024;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_gmem_A_ARLEN = grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARLEN;
    end else begin
        m_axi_gmem_A_ARLEN = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_gmem_A_ARLOCK = grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARLOCK;
    end else begin
        m_axi_gmem_A_ARLOCK = 2'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_gmem_A_ARPROT = grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARPROT;
    end else begin
        m_axi_gmem_A_ARPROT = 3'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_gmem_A_ARQOS = grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARQOS;
    end else begin
        m_axi_gmem_A_ARQOS = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_gmem_A_ARREGION = grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARREGION;
    end else begin
        m_axi_gmem_A_ARREGION = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_gmem_A_ARSIZE = grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARSIZE;
    end else begin
        m_axi_gmem_A_ARSIZE = 3'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_gmem_A_ARUSER = grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARUSER;
    end else begin
        m_axi_gmem_A_ARUSER = 1'd0;
    end
end

always @ (*) begin
    if ((~((m_axi_gmem_A_ARREADY == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        m_axi_gmem_A_ARVALID = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_gmem_A_ARVALID = grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_ARVALID;
    end else begin
        m_axi_gmem_A_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_gmem_A_RREADY = grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_m_axi_gmem_A_RREADY;
    end else begin
        m_axi_gmem_A_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((m_axi_gmem_A_ARREADY == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (real_start == 1'b0));
end

assign ap_ready = internal_ap_ready;

assign fifo_A_A_IO_L3_in_serialize69_din = grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_fifo_A_A_IO_L3_in_serialize69_din;

assign grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_ap_start = grp_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1_fu_51_ap_start_reg;

assign m_axi_gmem_A_AWADDR = 64'd0;

assign m_axi_gmem_A_AWBURST = 2'd0;

assign m_axi_gmem_A_AWCACHE = 4'd0;

assign m_axi_gmem_A_AWID = 1'd0;

assign m_axi_gmem_A_AWLEN = 32'd0;

assign m_axi_gmem_A_AWLOCK = 2'd0;

assign m_axi_gmem_A_AWPROT = 3'd0;

assign m_axi_gmem_A_AWQOS = 4'd0;

assign m_axi_gmem_A_AWREGION = 4'd0;

assign m_axi_gmem_A_AWSIZE = 3'd0;

assign m_axi_gmem_A_AWUSER = 1'd0;

assign m_axi_gmem_A_AWVALID = 1'b0;

assign m_axi_gmem_A_BREADY = 1'b0;

assign m_axi_gmem_A_WDATA = 512'd0;

assign m_axi_gmem_A_WID = 1'd0;

assign m_axi_gmem_A_WLAST = 1'b0;

assign m_axi_gmem_A_WSTRB = 64'd0;

assign m_axi_gmem_A_WUSER = 1'd0;

assign m_axi_gmem_A_WVALID = 1'b0;

assign sext_ln38_fu_70_p1 = trunc_ln_fu_60_p4;

assign start_out = real_start;

assign trunc_ln_fu_60_p4 = {{A[63:6]}};

endmodule //kernel0_A_IO_L3_in_serialize
