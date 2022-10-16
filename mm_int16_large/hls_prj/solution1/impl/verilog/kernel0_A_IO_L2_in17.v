// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module kernel0_A_IO_L2_in17 (
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
        fifo_A_A_IO_L2_in_01262_dout,
        fifo_A_A_IO_L2_in_01262_empty_n,
        fifo_A_A_IO_L2_in_01262_read,
        fifo_A_A_IO_L2_in_11263_din,
        fifo_A_A_IO_L2_in_11263_full_n,
        fifo_A_A_IO_L2_in_11263_write,
        fifo_A_PE_0_01294_din,
        fifo_A_PE_0_01294_full_n,
        fifo_A_PE_0_01294_write
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

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
input  [511:0] fifo_A_A_IO_L2_in_01262_dout;
input   fifo_A_A_IO_L2_in_01262_empty_n;
output   fifo_A_A_IO_L2_in_01262_read;
output  [511:0] fifo_A_A_IO_L2_in_11263_din;
input   fifo_A_A_IO_L2_in_11263_full_n;
output   fifo_A_A_IO_L2_in_11263_write;
output  [511:0] fifo_A_PE_0_01294_din;
input   fifo_A_PE_0_01294_full_n;
output   fifo_A_PE_0_01294_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg fifo_A_A_IO_L2_in_01262_read;
reg fifo_A_A_IO_L2_in_11263_write;
reg fifo_A_PE_0_01294_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
wire   [2:0] add_ln870_fu_185_p2;
reg   [2:0] add_ln870_reg_235;
wire    ap_CS_fsm_state2;
wire   [2:0] add_ln870_56_fu_197_p2;
reg   [2:0] add_ln870_56_reg_243;
wire    ap_CS_fsm_state3;
wire   [5:0] add_ln870_57_fu_213_p2;
reg   [5:0] add_ln870_57_reg_251;
wire    ap_CS_fsm_state4;
wire   [0:0] arb_fu_219_p2;
wire    ap_CS_fsm_state5;
reg   [3:0] local_A_ping_V_address0;
reg    local_A_ping_V_ce0;
reg    local_A_ping_V_we0;
wire   [511:0] local_A_ping_V_q0;
reg   [3:0] local_A_pong_V_address0;
reg    local_A_pong_V_ce0;
reg    local_A_pong_V_we0;
wire   [511:0] local_A_pong_V_q0;
wire    grp_A_IO_L2_in_intra_trans_fu_150_ap_start;
wire    grp_A_IO_L2_in_intra_trans_fu_150_ap_done;
wire    grp_A_IO_L2_in_intra_trans_fu_150_ap_idle;
wire    grp_A_IO_L2_in_intra_trans_fu_150_ap_ready;
wire   [3:0] grp_A_IO_L2_in_intra_trans_fu_150_local_A_address0;
wire    grp_A_IO_L2_in_intra_trans_fu_150_local_A_ce0;
reg   [511:0] grp_A_IO_L2_in_intra_trans_fu_150_local_A_q0;
wire   [511:0] grp_A_IO_L2_in_intra_trans_fu_150_fifo_A_PE_15_01549_din;
wire    grp_A_IO_L2_in_intra_trans_fu_150_fifo_A_PE_15_01549_write;
reg   [0:0] grp_A_IO_L2_in_intra_trans_fu_150_intra_trans_en_offset;
wire    grp_A_IO_L2_in_inter_trans_fu_160_ap_start;
wire    grp_A_IO_L2_in_inter_trans_fu_160_ap_done;
wire    grp_A_IO_L2_in_inter_trans_fu_160_ap_idle;
wire    grp_A_IO_L2_in_inter_trans_fu_160_ap_ready;
wire   [3:0] grp_A_IO_L2_in_inter_trans_fu_160_local_A_address0;
wire    grp_A_IO_L2_in_inter_trans_fu_160_local_A_ce0;
wire    grp_A_IO_L2_in_inter_trans_fu_160_local_A_we0;
wire   [511:0] grp_A_IO_L2_in_inter_trans_fu_160_local_A_d0;
wire    grp_A_IO_L2_in_inter_trans_fu_160_fifo_A_A_IO_L2_in_01262_read;
wire   [511:0] grp_A_IO_L2_in_inter_trans_fu_160_fifo_A_A_IO_L2_in_11263_din;
wire    grp_A_IO_L2_in_inter_trans_fu_160_fifo_A_A_IO_L2_in_11263_write;
reg   [0:0] intra_trans_en_reg_76;
wire   [0:0] icmp_ln1069_56_fu_191_p2;
reg    ap_block_state1;
reg   [2:0] c1_V_reg_90;
wire   [0:0] icmp_ln1069_57_fu_207_p2;
wire   [0:0] icmp_ln1069_fu_179_p2;
reg   [0:0] intra_trans_en_7_reg_101;
reg   [5:0] c2_V_reg_114;
reg   [0:0] arb_4_reg_138;
reg    ap_block_state5_on_subcall_done;
reg   [0:0] intra_trans_en_8_reg_125;
wire   [0:0] ap_phi_mux_arb_4_phi_fu_142_p4;
reg    grp_A_IO_L2_in_intra_trans_fu_150_ap_start_reg;
wire    ap_CS_fsm_state6;
reg    grp_A_IO_L2_in_inter_trans_fu_160_ap_start_reg;
reg   [2:0] c0_V_fu_64;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 6'd1;
#0 grp_A_IO_L2_in_intra_trans_fu_150_ap_start_reg = 1'b0;
#0 grp_A_IO_L2_in_inter_trans_fu_160_ap_start_reg = 1'b0;
end

kernel0_A_IO_L2_in7_local_A_ping_V #(
    .DataWidth( 512 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
local_A_ping_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(local_A_ping_V_address0),
    .ce0(local_A_ping_V_ce0),
    .we0(local_A_ping_V_we0),
    .d0(grp_A_IO_L2_in_inter_trans_fu_160_local_A_d0),
    .q0(local_A_ping_V_q0)
);

kernel0_A_IO_L2_in7_local_A_ping_V #(
    .DataWidth( 512 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
local_A_pong_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(local_A_pong_V_address0),
    .ce0(local_A_pong_V_ce0),
    .we0(local_A_pong_V_we0),
    .d0(grp_A_IO_L2_in_inter_trans_fu_160_local_A_d0),
    .q0(local_A_pong_V_q0)
);

kernel0_A_IO_L2_in_intra_trans grp_A_IO_L2_in_intra_trans_fu_150(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_A_IO_L2_in_intra_trans_fu_150_ap_start),
    .ap_done(grp_A_IO_L2_in_intra_trans_fu_150_ap_done),
    .ap_idle(grp_A_IO_L2_in_intra_trans_fu_150_ap_idle),
    .ap_ready(grp_A_IO_L2_in_intra_trans_fu_150_ap_ready),
    .local_A_address0(grp_A_IO_L2_in_intra_trans_fu_150_local_A_address0),
    .local_A_ce0(grp_A_IO_L2_in_intra_trans_fu_150_local_A_ce0),
    .local_A_q0(grp_A_IO_L2_in_intra_trans_fu_150_local_A_q0),
    .fifo_A_PE_15_01549_din(grp_A_IO_L2_in_intra_trans_fu_150_fifo_A_PE_15_01549_din),
    .fifo_A_PE_15_01549_full_n(fifo_A_PE_0_01294_full_n),
    .fifo_A_PE_15_01549_write(grp_A_IO_L2_in_intra_trans_fu_150_fifo_A_PE_15_01549_write),
    .intra_trans_en_offset(grp_A_IO_L2_in_intra_trans_fu_150_intra_trans_en_offset)
);

kernel0_A_IO_L2_in_inter_trans grp_A_IO_L2_in_inter_trans_fu_160(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_A_IO_L2_in_inter_trans_fu_160_ap_start),
    .ap_done(grp_A_IO_L2_in_inter_trans_fu_160_ap_done),
    .ap_idle(grp_A_IO_L2_in_inter_trans_fu_160_ap_idle),
    .ap_ready(grp_A_IO_L2_in_inter_trans_fu_160_ap_ready),
    .idx(4'd10),
    .local_A_address0(grp_A_IO_L2_in_inter_trans_fu_160_local_A_address0),
    .local_A_ce0(grp_A_IO_L2_in_inter_trans_fu_160_local_A_ce0),
    .local_A_we0(grp_A_IO_L2_in_inter_trans_fu_160_local_A_we0),
    .local_A_d0(grp_A_IO_L2_in_inter_trans_fu_160_local_A_d0),
    .fifo_A_A_IO_L2_in_01262_dout(fifo_A_A_IO_L2_in_01262_dout),
    .fifo_A_A_IO_L2_in_01262_empty_n(fifo_A_A_IO_L2_in_01262_empty_n),
    .fifo_A_A_IO_L2_in_01262_read(grp_A_IO_L2_in_inter_trans_fu_160_fifo_A_A_IO_L2_in_01262_read),
    .fifo_A_A_IO_L2_in_11263_din(grp_A_IO_L2_in_inter_trans_fu_160_fifo_A_A_IO_L2_in_11263_din),
    .fifo_A_A_IO_L2_in_11263_full_n(fifo_A_A_IO_L2_in_11263_full_n),
    .fifo_A_A_IO_L2_in_11263_write(grp_A_IO_L2_in_inter_trans_fu_160_fifo_A_A_IO_L2_in_11263_write)
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
        end else if (((1'b1 == ap_CS_fsm_state6) & (grp_A_IO_L2_in_intra_trans_fu_150_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_A_IO_L2_in_inter_trans_fu_160_ap_start_reg <= 1'b0;
    end else begin
        if ((((1'b1 == ap_CS_fsm_state4) & (ap_phi_mux_arb_4_phi_fu_142_p4 == 1'd1) & (icmp_ln1069_57_fu_207_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_state4) & (ap_phi_mux_arb_4_phi_fu_142_p4 == 1'd0) & (icmp_ln1069_57_fu_207_p2 == 1'd0)))) begin
            grp_A_IO_L2_in_inter_trans_fu_160_ap_start_reg <= 1'b1;
        end else if ((grp_A_IO_L2_in_inter_trans_fu_160_ap_ready == 1'b1)) begin
            grp_A_IO_L2_in_inter_trans_fu_160_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_A_IO_L2_in_intra_trans_fu_150_ap_start_reg <= 1'b0;
    end else begin
        if ((((1'b1 == ap_CS_fsm_state4) & (ap_phi_mux_arb_4_phi_fu_142_p4 == 1'd1) & (icmp_ln1069_57_fu_207_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_state4) & (ap_phi_mux_arb_4_phi_fu_142_p4 == 1'd0) & (icmp_ln1069_57_fu_207_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_state2) & (icmp_ln1069_fu_179_p2 == 1'd1)))) begin
            grp_A_IO_L2_in_intra_trans_fu_150_ap_start_reg <= 1'b1;
        end else if ((grp_A_IO_L2_in_intra_trans_fu_150_ap_ready == 1'b1)) begin
            grp_A_IO_L2_in_intra_trans_fu_150_ap_start_reg <= 1'b0;
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
    if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
        arb_4_reg_138 <= arb_fu_219_p2;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln1069_56_fu_191_p2 == 1'd0))) begin
        arb_4_reg_138 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        c0_V_fu_64 <= 3'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln1069_56_fu_191_p2 == 1'd1))) begin
        c0_V_fu_64 <= add_ln870_reg_235;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln1069_fu_179_p2 == 1'd0))) begin
        c1_V_reg_90 <= 3'd0;
    end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln1069_57_fu_207_p2 == 1'd1))) begin
        c1_V_reg_90 <= add_ln870_56_reg_243;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
        c2_V_reg_114 <= add_ln870_57_reg_251;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln1069_56_fu_191_p2 == 1'd0))) begin
        c2_V_reg_114 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln1069_fu_179_p2 == 1'd0))) begin
        intra_trans_en_7_reg_101 <= intra_trans_en_reg_76;
    end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln1069_57_fu_207_p2 == 1'd1))) begin
        intra_trans_en_7_reg_101 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
        intra_trans_en_8_reg_125 <= 1'd1;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln1069_56_fu_191_p2 == 1'd0))) begin
        intra_trans_en_8_reg_125 <= intra_trans_en_7_reg_101;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        intra_trans_en_reg_76 <= 1'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln1069_56_fu_191_p2 == 1'd1))) begin
        intra_trans_en_reg_76 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln870_56_reg_243 <= add_ln870_56_fu_197_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln870_57_reg_251 <= add_ln870_57_fu_213_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln870_reg_235 <= add_ln870_fu_185_p2;
    end
end

always @ (*) begin
    if (((ap_done_reg == 1'b1) | (real_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_block_state5_on_subcall_done)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end

always @ (*) begin
    if ((grp_A_IO_L2_in_intra_trans_fu_150_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_A_IO_L2_in_intra_trans_fu_150_ap_done == 1'b1))) begin
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
    if ((((1'b1 == ap_CS_fsm_state5) & (arb_4_reg_138 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (arb_4_reg_138 == 1'd0)))) begin
        fifo_A_A_IO_L2_in_01262_read = grp_A_IO_L2_in_inter_trans_fu_160_fifo_A_A_IO_L2_in_01262_read;
    end else begin
        fifo_A_A_IO_L2_in_01262_read = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (arb_4_reg_138 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (arb_4_reg_138 == 1'd0)))) begin
        fifo_A_A_IO_L2_in_11263_write = grp_A_IO_L2_in_inter_trans_fu_160_fifo_A_A_IO_L2_in_11263_write;
    end else begin
        fifo_A_A_IO_L2_in_11263_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state5) & (arb_4_reg_138 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (arb_4_reg_138 == 1'd0)))) begin
        fifo_A_PE_0_01294_write = grp_A_IO_L2_in_intra_trans_fu_150_fifo_A_PE_15_01549_write;
    end else begin
        fifo_A_PE_0_01294_write = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (arb_4_reg_138 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (arb_4_reg_138 == 1'd0)))) begin
        grp_A_IO_L2_in_intra_trans_fu_150_intra_trans_en_offset = intra_trans_en_8_reg_125;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_A_IO_L2_in_intra_trans_fu_150_intra_trans_en_offset = 1'd1;
    end else begin
        grp_A_IO_L2_in_intra_trans_fu_150_intra_trans_en_offset = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (arb_4_reg_138 == 1'd1))) begin
        grp_A_IO_L2_in_intra_trans_fu_150_local_A_q0 = local_A_pong_V_q0;
    end else if (((1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state5) & (arb_4_reg_138 == 1'd0)))) begin
        grp_A_IO_L2_in_intra_trans_fu_150_local_A_q0 = local_A_ping_V_q0;
    end else begin
        grp_A_IO_L2_in_intra_trans_fu_150_local_A_q0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_A_IO_L2_in_intra_trans_fu_150_ap_done == 1'b1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (arb_4_reg_138 == 1'd1))) begin
        local_A_ping_V_address0 = grp_A_IO_L2_in_inter_trans_fu_160_local_A_address0;
    end else if (((1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state5) & (arb_4_reg_138 == 1'd0)))) begin
        local_A_ping_V_address0 = grp_A_IO_L2_in_intra_trans_fu_150_local_A_address0;
    end else begin
        local_A_ping_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (arb_4_reg_138 == 1'd1))) begin
        local_A_ping_V_ce0 = grp_A_IO_L2_in_inter_trans_fu_160_local_A_ce0;
    end else if (((1'b1 == ap_CS_fsm_state6) | ((1'b1 == ap_CS_fsm_state5) & (arb_4_reg_138 == 1'd0)))) begin
        local_A_ping_V_ce0 = grp_A_IO_L2_in_intra_trans_fu_150_local_A_ce0;
    end else begin
        local_A_ping_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (arb_4_reg_138 == 1'd1))) begin
        local_A_ping_V_we0 = grp_A_IO_L2_in_inter_trans_fu_160_local_A_we0;
    end else begin
        local_A_ping_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((arb_4_reg_138 == 1'd0)) begin
            local_A_pong_V_address0 = grp_A_IO_L2_in_inter_trans_fu_160_local_A_address0;
        end else if ((arb_4_reg_138 == 1'd1)) begin
            local_A_pong_V_address0 = grp_A_IO_L2_in_intra_trans_fu_150_local_A_address0;
        end else begin
            local_A_pong_V_address0 = 'bx;
        end
    end else begin
        local_A_pong_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((arb_4_reg_138 == 1'd0)) begin
            local_A_pong_V_ce0 = grp_A_IO_L2_in_inter_trans_fu_160_local_A_ce0;
        end else if ((arb_4_reg_138 == 1'd1)) begin
            local_A_pong_V_ce0 = grp_A_IO_L2_in_intra_trans_fu_150_local_A_ce0;
        end else begin
            local_A_pong_V_ce0 = 1'b0;
        end
    end else begin
        local_A_pong_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (arb_4_reg_138 == 1'd0))) begin
        local_A_pong_V_we0 = grp_A_IO_L2_in_inter_trans_fu_160_local_A_we0;
    end else begin
        local_A_pong_V_we0 = 1'b0;
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
            if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln1069_fu_179_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln1069_56_fu_191_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln1069_57_fu_207_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_A_IO_L2_in_intra_trans_fu_150_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln870_56_fu_197_p2 = (c1_V_reg_90 + 3'd1);

assign add_ln870_57_fu_213_p2 = (c2_V_reg_114 + 6'd1);

assign add_ln870_fu_185_p2 = (c0_V_fu_64 + 3'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (real_start == 1'b0));
end

always @ (*) begin
    ap_block_state5_on_subcall_done = (((arb_4_reg_138 == 1'd1) & (grp_A_IO_L2_in_intra_trans_fu_150_ap_done == 1'b0)) | ((arb_4_reg_138 == 1'd1) & (grp_A_IO_L2_in_inter_trans_fu_160_ap_done == 1'b0)) | ((arb_4_reg_138 == 1'd0) & (grp_A_IO_L2_in_intra_trans_fu_150_ap_done == 1'b0)) | ((arb_4_reg_138 == 1'd0) & (grp_A_IO_L2_in_inter_trans_fu_160_ap_done == 1'b0)));
end

assign ap_phi_mux_arb_4_phi_fu_142_p4 = arb_4_reg_138;

assign ap_ready = internal_ap_ready;

assign arb_fu_219_p2 = (arb_4_reg_138 ^ 1'd1);

assign fifo_A_A_IO_L2_in_11263_din = grp_A_IO_L2_in_inter_trans_fu_160_fifo_A_A_IO_L2_in_11263_din;

assign fifo_A_PE_0_01294_din = grp_A_IO_L2_in_intra_trans_fu_150_fifo_A_PE_15_01549_din;

assign grp_A_IO_L2_in_inter_trans_fu_160_ap_start = grp_A_IO_L2_in_inter_trans_fu_160_ap_start_reg;

assign grp_A_IO_L2_in_intra_trans_fu_150_ap_start = grp_A_IO_L2_in_intra_trans_fu_150_ap_start_reg;

assign icmp_ln1069_56_fu_191_p2 = ((c1_V_reg_90 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln1069_57_fu_207_p2 = ((c2_V_reg_114 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln1069_fu_179_p2 = ((c0_V_fu_64 == 3'd4) ? 1'b1 : 1'b0);

assign start_out = real_start;

endmodule //kernel0_A_IO_L2_in17
