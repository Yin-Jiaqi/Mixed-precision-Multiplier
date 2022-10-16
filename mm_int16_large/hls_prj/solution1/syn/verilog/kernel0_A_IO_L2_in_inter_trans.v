// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module kernel0_A_IO_L2_in_inter_trans (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        idx,
        local_A_address0,
        local_A_ce0,
        local_A_we0,
        local_A_d0,
        fifo_A_A_IO_L2_in_01262_dout,
        fifo_A_A_IO_L2_in_01262_empty_n,
        fifo_A_A_IO_L2_in_01262_read,
        fifo_A_A_IO_L2_in_11263_din,
        fifo_A_A_IO_L2_in_11263_full_n,
        fifo_A_A_IO_L2_in_11263_write
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [3:0] idx;
output  [3:0] local_A_address0;
output   local_A_ce0;
output   local_A_we0;
output  [511:0] local_A_d0;
input  [511:0] fifo_A_A_IO_L2_in_01262_dout;
input   fifo_A_A_IO_L2_in_01262_empty_n;
output   fifo_A_A_IO_L2_in_01262_read;
output  [511:0] fifo_A_A_IO_L2_in_11263_din;
input   fifo_A_A_IO_L2_in_11263_full_n;
output   fifo_A_A_IO_L2_in_11263_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fifo_A_A_IO_L2_in_01262_read;
reg fifo_A_A_IO_L2_in_11263_write;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] idx_cast_fu_72_p1;
reg   [4:0] idx_cast_reg_114;
wire   [0:0] icmp_ln1049_fu_92_p2;
reg   [0:0] icmp_ln1049_reg_125;
wire    ap_CS_fsm_state2;
wire   [0:0] tmp_fu_84_p3;
wire    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_102_3_fu_56_ap_start;
wire    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_102_3_fu_56_ap_done;
wire    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_102_3_fu_56_ap_idle;
wire    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_102_3_fu_56_ap_ready;
wire    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_102_3_fu_56_fifo_A_A_IO_L2_in_01262_read;
wire   [511:0] grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_102_3_fu_56_fifo_A_A_IO_L2_in_11263_din;
wire    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_102_3_fu_56_fifo_A_A_IO_L2_in_11263_write;
wire    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_ap_start;
wire    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_ap_done;
wire    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_ap_idle;
wire    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_ap_ready;
wire    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_fifo_A_A_IO_L2_in_01262_read;
wire   [3:0] grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_local_A_address0;
wire    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_local_A_ce0;
wire    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_local_A_we0;
wire   [511:0] grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_local_A_d0;
reg    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_102_3_fu_56_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_ap_start_reg;
reg   [4:0] c3_V_fu_46;
wire   [4:0] c3_V_6_fu_97_p2;
reg    ap_block_state3_on_subcall_done;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_102_3_fu_56_ap_start_reg = 1'b0;
#0 grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_ap_start_reg = 1'b0;
end

kernel0_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_102_3 grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_102_3_fu_56(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_102_3_fu_56_ap_start),
    .ap_done(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_102_3_fu_56_ap_done),
    .ap_idle(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_102_3_fu_56_ap_idle),
    .ap_ready(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_102_3_fu_56_ap_ready),
    .fifo_A_A_IO_L2_in_01262_dout(fifo_A_A_IO_L2_in_01262_dout),
    .fifo_A_A_IO_L2_in_01262_empty_n(fifo_A_A_IO_L2_in_01262_empty_n),
    .fifo_A_A_IO_L2_in_01262_read(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_102_3_fu_56_fifo_A_A_IO_L2_in_01262_read),
    .fifo_A_A_IO_L2_in_11263_din(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_102_3_fu_56_fifo_A_A_IO_L2_in_11263_din),
    .fifo_A_A_IO_L2_in_11263_full_n(fifo_A_A_IO_L2_in_11263_full_n),
    .fifo_A_A_IO_L2_in_11263_write(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_102_3_fu_56_fifo_A_A_IO_L2_in_11263_write)
);

kernel0_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2 grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_ap_start),
    .ap_done(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_ap_done),
    .ap_idle(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_ap_idle),
    .ap_ready(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_ap_ready),
    .fifo_A_A_IO_L2_in_01262_dout(fifo_A_A_IO_L2_in_01262_dout),
    .fifo_A_A_IO_L2_in_01262_empty_n(fifo_A_A_IO_L2_in_01262_empty_n),
    .fifo_A_A_IO_L2_in_01262_read(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_fifo_A_A_IO_L2_in_01262_read),
    .local_A_address0(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_local_A_address0),
    .local_A_ce0(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_local_A_ce0),
    .local_A_we0(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_local_A_we0),
    .local_A_d0(grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_local_A_d0)
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
        grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_102_3_fu_56_ap_start_reg <= 1'b0;
    end else begin
        if (((tmp_fu_84_p3 == 1'd0) & (icmp_ln1049_fu_92_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_102_3_fu_56_ap_start_reg <= 1'b1;
        end else if ((grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_102_3_fu_56_ap_ready == 1'b1)) begin
            grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_102_3_fu_56_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_ap_start_reg <= 1'b0;
    end else begin
        if (((tmp_fu_84_p3 == 1'd0) & (icmp_ln1049_fu_92_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_ap_start_reg <= 1'b1;
        end else if ((grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_ap_ready == 1'b1)) begin
            grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        c3_V_fu_46 <= idx_cast_fu_72_p1;
    end else if (((1'b1 == ap_CS_fsm_state3) & (1'b0 == ap_block_state3_on_subcall_done))) begin
        c3_V_fu_46 <= c3_V_6_fu_97_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_fu_84_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        icmp_ln1049_reg_125 <= icmp_ln1049_fu_92_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        idx_cast_reg_114[3 : 0] <= idx_cast_fu_72_p1[3 : 0];
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_block_state3_on_subcall_done)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if ((((tmp_fu_84_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_fu_84_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        if ((icmp_ln1049_reg_125 == 1'd1)) begin
            fifo_A_A_IO_L2_in_01262_read = grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_fifo_A_A_IO_L2_in_01262_read;
        end else if ((icmp_ln1049_reg_125 == 1'd0)) begin
            fifo_A_A_IO_L2_in_01262_read = grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_102_3_fu_56_fifo_A_A_IO_L2_in_01262_read;
        end else begin
            fifo_A_A_IO_L2_in_01262_read = 1'b0;
        end
    end else begin
        fifo_A_A_IO_L2_in_01262_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1049_reg_125 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        fifo_A_A_IO_L2_in_11263_write = grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_102_3_fu_56_fifo_A_A_IO_L2_in_11263_write;
    end else begin
        fifo_A_A_IO_L2_in_11263_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((tmp_fu_84_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (1'b0 == ap_block_state3_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state3_on_subcall_done = (((grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_102_3_fu_56_ap_done == 1'b0) & (icmp_ln1049_reg_125 == 1'd0)) | ((grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_ap_done == 1'b0) & (icmp_ln1049_reg_125 == 1'd1)));
end

assign c3_V_6_fu_97_p2 = (c3_V_fu_46 + 5'd1);

assign fifo_A_A_IO_L2_in_11263_din = grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_102_3_fu_56_fifo_A_A_IO_L2_in_11263_din;

assign grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_102_3_fu_56_ap_start = grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_102_3_fu_56_ap_start_reg;

assign grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_ap_start = grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_ap_start_reg;

assign icmp_ln1049_fu_92_p2 = ((c3_V_fu_46 == idx_cast_reg_114) ? 1'b1 : 1'b0);

assign idx_cast_fu_72_p1 = idx;

assign local_A_address0 = grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_local_A_address0;

assign local_A_ce0 = grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_local_A_ce0;

assign local_A_d0 = grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_local_A_d0;

assign local_A_we0 = grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_90_2_fu_64_local_A_we0;

assign tmp_fu_84_p3 = c3_V_fu_46[32'd4];

always @ (posedge ap_clk) begin
    idx_cast_reg_114[4] <= 1'b0;
end

endmodule //kernel0_A_IO_L2_in_inter_trans
