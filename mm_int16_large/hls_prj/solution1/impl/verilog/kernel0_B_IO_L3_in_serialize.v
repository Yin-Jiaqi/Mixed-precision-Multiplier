// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module kernel0_B_IO_L3_in_serialize (
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
        m_axi_gmem_B_AWVALID,
        m_axi_gmem_B_AWREADY,
        m_axi_gmem_B_AWADDR,
        m_axi_gmem_B_AWID,
        m_axi_gmem_B_AWLEN,
        m_axi_gmem_B_AWSIZE,
        m_axi_gmem_B_AWBURST,
        m_axi_gmem_B_AWLOCK,
        m_axi_gmem_B_AWCACHE,
        m_axi_gmem_B_AWPROT,
        m_axi_gmem_B_AWQOS,
        m_axi_gmem_B_AWREGION,
        m_axi_gmem_B_AWUSER,
        m_axi_gmem_B_WVALID,
        m_axi_gmem_B_WREADY,
        m_axi_gmem_B_WDATA,
        m_axi_gmem_B_WSTRB,
        m_axi_gmem_B_WLAST,
        m_axi_gmem_B_WID,
        m_axi_gmem_B_WUSER,
        m_axi_gmem_B_ARVALID,
        m_axi_gmem_B_ARREADY,
        m_axi_gmem_B_ARADDR,
        m_axi_gmem_B_ARID,
        m_axi_gmem_B_ARLEN,
        m_axi_gmem_B_ARSIZE,
        m_axi_gmem_B_ARBURST,
        m_axi_gmem_B_ARLOCK,
        m_axi_gmem_B_ARCACHE,
        m_axi_gmem_B_ARPROT,
        m_axi_gmem_B_ARQOS,
        m_axi_gmem_B_ARREGION,
        m_axi_gmem_B_ARUSER,
        m_axi_gmem_B_RVALID,
        m_axi_gmem_B_RREADY,
        m_axi_gmem_B_RDATA,
        m_axi_gmem_B_RLAST,
        m_axi_gmem_B_RID,
        m_axi_gmem_B_RUSER,
        m_axi_gmem_B_RRESP,
        m_axi_gmem_B_BVALID,
        m_axi_gmem_B_BREADY,
        m_axi_gmem_B_BRESP,
        m_axi_gmem_B_BID,
        m_axi_gmem_B_BUSER,
        B,
        fifo_B_B_IO_L3_in_serialize1260_din,
        fifo_B_B_IO_L3_in_serialize1260_full_n,
        fifo_B_B_IO_L3_in_serialize1260_write
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
output   m_axi_gmem_B_AWVALID;
input   m_axi_gmem_B_AWREADY;
output  [63:0] m_axi_gmem_B_AWADDR;
output  [0:0] m_axi_gmem_B_AWID;
output  [31:0] m_axi_gmem_B_AWLEN;
output  [2:0] m_axi_gmem_B_AWSIZE;
output  [1:0] m_axi_gmem_B_AWBURST;
output  [1:0] m_axi_gmem_B_AWLOCK;
output  [3:0] m_axi_gmem_B_AWCACHE;
output  [2:0] m_axi_gmem_B_AWPROT;
output  [3:0] m_axi_gmem_B_AWQOS;
output  [3:0] m_axi_gmem_B_AWREGION;
output  [0:0] m_axi_gmem_B_AWUSER;
output   m_axi_gmem_B_WVALID;
input   m_axi_gmem_B_WREADY;
output  [511:0] m_axi_gmem_B_WDATA;
output  [63:0] m_axi_gmem_B_WSTRB;
output   m_axi_gmem_B_WLAST;
output  [0:0] m_axi_gmem_B_WID;
output  [0:0] m_axi_gmem_B_WUSER;
output   m_axi_gmem_B_ARVALID;
input   m_axi_gmem_B_ARREADY;
output  [63:0] m_axi_gmem_B_ARADDR;
output  [0:0] m_axi_gmem_B_ARID;
output  [31:0] m_axi_gmem_B_ARLEN;
output  [2:0] m_axi_gmem_B_ARSIZE;
output  [1:0] m_axi_gmem_B_ARBURST;
output  [1:0] m_axi_gmem_B_ARLOCK;
output  [3:0] m_axi_gmem_B_ARCACHE;
output  [2:0] m_axi_gmem_B_ARPROT;
output  [3:0] m_axi_gmem_B_ARQOS;
output  [3:0] m_axi_gmem_B_ARREGION;
output  [0:0] m_axi_gmem_B_ARUSER;
input   m_axi_gmem_B_RVALID;
output   m_axi_gmem_B_RREADY;
input  [511:0] m_axi_gmem_B_RDATA;
input   m_axi_gmem_B_RLAST;
input  [0:0] m_axi_gmem_B_RID;
input  [0:0] m_axi_gmem_B_RUSER;
input  [1:0] m_axi_gmem_B_RRESP;
input   m_axi_gmem_B_BVALID;
output   m_axi_gmem_B_BREADY;
input  [1:0] m_axi_gmem_B_BRESP;
input  [0:0] m_axi_gmem_B_BID;
input  [0:0] m_axi_gmem_B_BUSER;
input  [63:0] B;
output  [511:0] fifo_B_B_IO_L3_in_serialize1260_din;
input   fifo_B_B_IO_L3_in_serialize1260_full_n;
output   fifo_B_B_IO_L3_in_serialize1260_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg m_axi_gmem_B_ARVALID;
reg[63:0] m_axi_gmem_B_ARADDR;
reg[0:0] m_axi_gmem_B_ARID;
reg[31:0] m_axi_gmem_B_ARLEN;
reg[2:0] m_axi_gmem_B_ARSIZE;
reg[1:0] m_axi_gmem_B_ARBURST;
reg[1:0] m_axi_gmem_B_ARLOCK;
reg[3:0] m_axi_gmem_B_ARCACHE;
reg[2:0] m_axi_gmem_B_ARPROT;
reg[3:0] m_axi_gmem_B_ARQOS;
reg[3:0] m_axi_gmem_B_ARREGION;
reg[0:0] m_axi_gmem_B_ARUSER;
reg m_axi_gmem_B_RREADY;
reg fifo_B_B_IO_L3_in_serialize1260_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    gmem_B_blk_n_AR;
wire  signed [57:0] trunc_ln_fu_60_p4;
reg   [57:0] trunc_ln_reg_81;
wire    grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_ap_start;
wire    grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_ap_done;
wire    grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_ap_idle;
wire    grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_ap_ready;
wire    grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_AWVALID;
wire   [63:0] grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_AWADDR;
wire   [0:0] grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_AWID;
wire   [31:0] grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_AWLEN;
wire   [2:0] grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_AWSIZE;
wire   [1:0] grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_AWBURST;
wire   [1:0] grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_AWLOCK;
wire   [3:0] grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_AWCACHE;
wire   [2:0] grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_AWPROT;
wire   [3:0] grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_AWQOS;
wire   [3:0] grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_AWREGION;
wire   [0:0] grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_AWUSER;
wire    grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_WVALID;
wire   [511:0] grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_WDATA;
wire   [63:0] grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_WSTRB;
wire    grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_WLAST;
wire   [0:0] grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_WID;
wire   [0:0] grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_WUSER;
wire    grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARVALID;
wire   [63:0] grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARADDR;
wire   [0:0] grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARID;
wire   [31:0] grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARLEN;
wire   [2:0] grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARSIZE;
wire   [1:0] grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARBURST;
wire   [1:0] grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARLOCK;
wire   [3:0] grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARCACHE;
wire   [2:0] grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARPROT;
wire   [3:0] grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARQOS;
wire   [3:0] grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARREGION;
wire   [0:0] grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARUSER;
wire    grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_RREADY;
wire    grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_BREADY;
wire   [511:0] grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_fifo_B_B_IO_L3_in_serialize1260_din;
wire    grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_fifo_B_B_IO_L3_in_serialize1260_write;
reg    grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_ap_start_reg;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
wire  signed [63:0] sext_ln373_fu_70_p1;
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
#0 grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_ap_start_reg = 1'b0;
end

kernel0_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1 grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_ap_start),
    .ap_done(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_ap_done),
    .ap_idle(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_ap_idle),
    .ap_ready(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_ap_ready),
    .m_axi_gmem_B_AWVALID(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_AWVALID),
    .m_axi_gmem_B_AWREADY(1'b0),
    .m_axi_gmem_B_AWADDR(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_AWADDR),
    .m_axi_gmem_B_AWID(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_AWID),
    .m_axi_gmem_B_AWLEN(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_AWLEN),
    .m_axi_gmem_B_AWSIZE(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_AWSIZE),
    .m_axi_gmem_B_AWBURST(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_AWBURST),
    .m_axi_gmem_B_AWLOCK(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_AWLOCK),
    .m_axi_gmem_B_AWCACHE(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_AWCACHE),
    .m_axi_gmem_B_AWPROT(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_AWPROT),
    .m_axi_gmem_B_AWQOS(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_AWQOS),
    .m_axi_gmem_B_AWREGION(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_AWREGION),
    .m_axi_gmem_B_AWUSER(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_AWUSER),
    .m_axi_gmem_B_WVALID(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_WVALID),
    .m_axi_gmem_B_WREADY(1'b0),
    .m_axi_gmem_B_WDATA(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_WDATA),
    .m_axi_gmem_B_WSTRB(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_WSTRB),
    .m_axi_gmem_B_WLAST(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_WLAST),
    .m_axi_gmem_B_WID(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_WID),
    .m_axi_gmem_B_WUSER(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_WUSER),
    .m_axi_gmem_B_ARVALID(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARVALID),
    .m_axi_gmem_B_ARREADY(m_axi_gmem_B_ARREADY),
    .m_axi_gmem_B_ARADDR(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARADDR),
    .m_axi_gmem_B_ARID(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARID),
    .m_axi_gmem_B_ARLEN(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARLEN),
    .m_axi_gmem_B_ARSIZE(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARSIZE),
    .m_axi_gmem_B_ARBURST(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARBURST),
    .m_axi_gmem_B_ARLOCK(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARLOCK),
    .m_axi_gmem_B_ARCACHE(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARCACHE),
    .m_axi_gmem_B_ARPROT(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARPROT),
    .m_axi_gmem_B_ARQOS(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARQOS),
    .m_axi_gmem_B_ARREGION(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARREGION),
    .m_axi_gmem_B_ARUSER(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARUSER),
    .m_axi_gmem_B_RVALID(m_axi_gmem_B_RVALID),
    .m_axi_gmem_B_RREADY(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_RREADY),
    .m_axi_gmem_B_RDATA(m_axi_gmem_B_RDATA),
    .m_axi_gmem_B_RLAST(m_axi_gmem_B_RLAST),
    .m_axi_gmem_B_RID(m_axi_gmem_B_RID),
    .m_axi_gmem_B_RUSER(m_axi_gmem_B_RUSER),
    .m_axi_gmem_B_RRESP(m_axi_gmem_B_RRESP),
    .m_axi_gmem_B_BVALID(1'b0),
    .m_axi_gmem_B_BREADY(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_BREADY),
    .m_axi_gmem_B_BRESP(2'd0),
    .m_axi_gmem_B_BID(1'd0),
    .m_axi_gmem_B_BUSER(1'd0),
    .fifo_B_B_IO_L3_in_serialize1260_din(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_fifo_B_B_IO_L3_in_serialize1260_din),
    .fifo_B_B_IO_L3_in_serialize1260_full_n(fifo_B_B_IO_L3_in_serialize1260_full_n),
    .fifo_B_B_IO_L3_in_serialize1260_write(grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_fifo_B_B_IO_L3_in_serialize1260_write),
    .sext_ln373(trunc_ln_reg_81)
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
        end else if (((1'b1 == ap_CS_fsm_state9) & (grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_ap_start_reg <= 1'b1;
        end else if ((grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_ap_ready == 1'b1)) begin
            grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_ap_start_reg <= 1'b0;
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
        trunc_ln_reg_81 <= {{B[63:6]}};
    end
end

always @ (*) begin
    if (((m_axi_gmem_B_ARREADY == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0))) begin
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
    if ((grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & (grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_ap_done == 1'b1))) begin
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
        fifo_B_B_IO_L3_in_serialize1260_write = grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_fifo_B_B_IO_L3_in_serialize1260_write;
    end else begin
        fifo_B_B_IO_L3_in_serialize1260_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        gmem_B_blk_n_AR = m_axi_gmem_B_ARREADY;
    end else begin
        gmem_B_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & (grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_ap_done == 1'b1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((m_axi_gmem_B_ARREADY == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        m_axi_gmem_B_ARADDR = sext_ln373_fu_70_p1;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_gmem_B_ARADDR = grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARADDR;
    end else begin
        m_axi_gmem_B_ARADDR = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_gmem_B_ARBURST = grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARBURST;
    end else begin
        m_axi_gmem_B_ARBURST = 2'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_gmem_B_ARCACHE = grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARCACHE;
    end else begin
        m_axi_gmem_B_ARCACHE = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_gmem_B_ARID = grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARID;
    end else begin
        m_axi_gmem_B_ARID = 1'd0;
    end
end

always @ (*) begin
    if ((~((m_axi_gmem_B_ARREADY == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        m_axi_gmem_B_ARLEN = 32'd131072;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_gmem_B_ARLEN = grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARLEN;
    end else begin
        m_axi_gmem_B_ARLEN = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_gmem_B_ARLOCK = grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARLOCK;
    end else begin
        m_axi_gmem_B_ARLOCK = 2'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_gmem_B_ARPROT = grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARPROT;
    end else begin
        m_axi_gmem_B_ARPROT = 3'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_gmem_B_ARQOS = grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARQOS;
    end else begin
        m_axi_gmem_B_ARQOS = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_gmem_B_ARREGION = grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARREGION;
    end else begin
        m_axi_gmem_B_ARREGION = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_gmem_B_ARSIZE = grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARSIZE;
    end else begin
        m_axi_gmem_B_ARSIZE = 3'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_gmem_B_ARUSER = grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARUSER;
    end else begin
        m_axi_gmem_B_ARUSER = 1'd0;
    end
end

always @ (*) begin
    if ((~((m_axi_gmem_B_ARREADY == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        m_axi_gmem_B_ARVALID = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_gmem_B_ARVALID = grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_ARVALID;
    end else begin
        m_axi_gmem_B_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_gmem_B_RREADY = grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_m_axi_gmem_B_RREADY;
    end else begin
        m_axi_gmem_B_RREADY = 1'b0;
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
            if ((~((m_axi_gmem_B_ARREADY == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
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
            if (((1'b1 == ap_CS_fsm_state9) & (grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_ap_done == 1'b1))) begin
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

assign fifo_B_B_IO_L3_in_serialize1260_din = grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_fifo_B_B_IO_L3_in_serialize1260_din;

assign grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_ap_start = grp_B_IO_L3_in_serialize_Pipeline_VITIS_LOOP_373_1_fu_51_ap_start_reg;

assign m_axi_gmem_B_AWADDR = 64'd0;

assign m_axi_gmem_B_AWBURST = 2'd0;

assign m_axi_gmem_B_AWCACHE = 4'd0;

assign m_axi_gmem_B_AWID = 1'd0;

assign m_axi_gmem_B_AWLEN = 32'd0;

assign m_axi_gmem_B_AWLOCK = 2'd0;

assign m_axi_gmem_B_AWPROT = 3'd0;

assign m_axi_gmem_B_AWQOS = 4'd0;

assign m_axi_gmem_B_AWREGION = 4'd0;

assign m_axi_gmem_B_AWSIZE = 3'd0;

assign m_axi_gmem_B_AWUSER = 1'd0;

assign m_axi_gmem_B_AWVALID = 1'b0;

assign m_axi_gmem_B_BREADY = 1'b0;

assign m_axi_gmem_B_WDATA = 512'd0;

assign m_axi_gmem_B_WID = 1'd0;

assign m_axi_gmem_B_WLAST = 1'b0;

assign m_axi_gmem_B_WSTRB = 64'd0;

assign m_axi_gmem_B_WUSER = 1'd0;

assign m_axi_gmem_B_WVALID = 1'b0;

assign sext_ln373_fu_70_p1 = trunc_ln_fu_60_p4;

assign start_out = real_start;

assign trunc_ln_fu_60_p4 = {{B[63:6]}};

endmodule //kernel0_B_IO_L3_in_serialize
