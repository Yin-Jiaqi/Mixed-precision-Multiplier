// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module kernel0_C_drain_IO_L2_out582 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        fifo_C_drain_C_drain_IO_L2_out_152365_dout,
        fifo_C_drain_C_drain_IO_L2_out_152365_empty_n,
        fifo_C_drain_C_drain_IO_L2_out_152365_read,
        fifo_C_drain_C_drain_IO_L2_out_142364_din,
        fifo_C_drain_C_drain_IO_L2_out_142364_full_n,
        fifo_C_drain_C_drain_IO_L2_out_142364_write,
        fifo_C_drain_C_drain_IO_L1_out_14_02318_dout,
        fifo_C_drain_C_drain_IO_L1_out_14_02318_empty_n,
        fifo_C_drain_C_drain_IO_L1_out_14_02318_read
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [255:0] fifo_C_drain_C_drain_IO_L2_out_152365_dout;
input   fifo_C_drain_C_drain_IO_L2_out_152365_empty_n;
output   fifo_C_drain_C_drain_IO_L2_out_152365_read;
output  [255:0] fifo_C_drain_C_drain_IO_L2_out_142364_din;
input   fifo_C_drain_C_drain_IO_L2_out_142364_full_n;
output   fifo_C_drain_C_drain_IO_L2_out_142364_write;
input  [255:0] fifo_C_drain_C_drain_IO_L1_out_14_02318_dout;
input   fifo_C_drain_C_drain_IO_L1_out_14_02318_empty_n;
output   fifo_C_drain_C_drain_IO_L1_out_14_02318_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fifo_C_drain_C_drain_IO_L2_out_152365_read;
reg[255:0] fifo_C_drain_C_drain_IO_L2_out_142364_din;
reg fifo_C_drain_C_drain_IO_L2_out_142364_write;
reg fifo_C_drain_C_drain_IO_L1_out_14_02318_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln1069_fu_117_p2;
reg   [6:0] add_ln1069_reg_226;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln106933_fu_126_p2;
reg   [0:0] icmp_ln106933_reg_231;
wire   [0:0] icmp_ln1069_fu_111_p2;
wire   [4:0] select_ln1080_fu_156_p3;
reg   [4:0] select_ln1080_reg_236;
wire   [0:0] icmp_ln1049_fu_164_p2;
reg   [0:0] icmp_ln1049_reg_241;
wire    grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1101_6_VI_fu_74_ap_start;
wire    grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1101_6_VI_fu_74_ap_done;
wire    grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1101_6_VI_fu_74_ap_idle;
wire    grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1101_6_VI_fu_74_ap_ready;
wire    grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1101_6_VI_fu_74_fifo_C_drain_C_drain_IO_L2_out_152365_read;
wire   [255:0] grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1101_6_VI_fu_74_fifo_C_drain_C_drain_IO_L2_out_142364_din;
wire    grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1101_6_VI_fu_74_fifo_C_drain_C_drain_IO_L2_out_142364_write;
wire    grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82_ap_start;
wire    grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82_ap_done;
wire    grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82_ap_idle;
wire    grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82_ap_ready;
wire    grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82_fifo_C_drain_C_drain_IO_L1_out_14_02318_read;
wire   [255:0] grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82_fifo_C_drain_C_drain_IO_L2_out_142364_din;
wire    grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82_fifo_C_drain_C_drain_IO_L2_out_142364_write;
reg    grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1101_6_VI_fu_74_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82_ap_start_reg;
reg   [4:0] c3_V_1_fu_62;
wire   [4:0] c3_V_fu_170_p2;
reg    ap_block_state3_on_subcall_done;
reg    ap_block_state1;
reg   [5:0] indvar_flatten15_fu_66;
wire   [5:0] select_ln1069_fu_181_p3;
reg   [6:0] indvar_flatten27_fu_70;
wire   [0:0] icmp_ln1083_fu_138_p2;
wire   [0:0] xor_ln1079_fu_132_p2;
wire   [0:0] and_ln1079_fu_144_p2;
wire   [0:0] or_ln1080_fu_150_p2;
wire   [5:0] add_ln1069_13_fu_175_p2;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1101_6_VI_fu_74_ap_start_reg = 1'b0;
#0 grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82_ap_start_reg = 1'b0;
end

kernel0_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1101_6_VI grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1101_6_VI_fu_74(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1101_6_VI_fu_74_ap_start),
    .ap_done(grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1101_6_VI_fu_74_ap_done),
    .ap_idle(grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1101_6_VI_fu_74_ap_idle),
    .ap_ready(grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1101_6_VI_fu_74_ap_ready),
    .fifo_C_drain_C_drain_IO_L2_out_152365_dout(fifo_C_drain_C_drain_IO_L2_out_152365_dout),
    .fifo_C_drain_C_drain_IO_L2_out_152365_empty_n(fifo_C_drain_C_drain_IO_L2_out_152365_empty_n),
    .fifo_C_drain_C_drain_IO_L2_out_152365_read(grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1101_6_VI_fu_74_fifo_C_drain_C_drain_IO_L2_out_152365_read),
    .fifo_C_drain_C_drain_IO_L2_out_142364_din(grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1101_6_VI_fu_74_fifo_C_drain_C_drain_IO_L2_out_142364_din),
    .fifo_C_drain_C_drain_IO_L2_out_142364_full_n(fifo_C_drain_C_drain_IO_L2_out_142364_full_n),
    .fifo_C_drain_C_drain_IO_L2_out_142364_write(grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1101_6_VI_fu_74_fifo_C_drain_C_drain_IO_L2_out_142364_write)
);

kernel0_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82_ap_start),
    .ap_done(grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82_ap_done),
    .ap_idle(grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82_ap_idle),
    .ap_ready(grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82_ap_ready),
    .fifo_C_drain_C_drain_IO_L1_out_14_02318_dout(fifo_C_drain_C_drain_IO_L1_out_14_02318_dout),
    .fifo_C_drain_C_drain_IO_L1_out_14_02318_empty_n(fifo_C_drain_C_drain_IO_L1_out_14_02318_empty_n),
    .fifo_C_drain_C_drain_IO_L1_out_14_02318_read(grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82_fifo_C_drain_C_drain_IO_L1_out_14_02318_read),
    .fifo_C_drain_C_drain_IO_L2_out_142364_din(grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82_fifo_C_drain_C_drain_IO_L2_out_142364_din),
    .fifo_C_drain_C_drain_IO_L2_out_142364_full_n(fifo_C_drain_C_drain_IO_L2_out_142364_full_n),
    .fifo_C_drain_C_drain_IO_L2_out_142364_write(grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82_fifo_C_drain_C_drain_IO_L2_out_142364_write)
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
        end else if (((icmp_ln1069_fu_111_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln1049_fu_164_p2 == 1'd1) & (icmp_ln1069_fu_111_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82_ap_start_reg <= 1'b1;
        end else if ((grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82_ap_ready == 1'b1)) begin
            grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1101_6_VI_fu_74_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln1049_fu_164_p2 == 1'd0) & (icmp_ln1069_fu_111_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1101_6_VI_fu_74_ap_start_reg <= 1'b1;
        end else if ((grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1101_6_VI_fu_74_ap_ready == 1'b1)) begin
            grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1101_6_VI_fu_74_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        c3_V_1_fu_62 <= 5'd9;
    end else if (((1'b1 == ap_CS_fsm_state3) & (1'b0 == ap_block_state3_on_subcall_done))) begin
        c3_V_1_fu_62 <= c3_V_fu_170_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten15_fu_66 <= 6'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (1'b0 == ap_block_state3_on_subcall_done))) begin
        indvar_flatten15_fu_66 <= select_ln1069_fu_181_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten27_fu_70 <= 7'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (1'b0 == ap_block_state3_on_subcall_done))) begin
        indvar_flatten27_fu_70 <= add_ln1069_reg_226;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln1069_reg_226 <= add_ln1069_fu_117_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1069_fu_111_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        icmp_ln1049_reg_241 <= icmp_ln1049_fu_164_p2;
        icmp_ln106933_reg_231 <= icmp_ln106933_fu_126_p2;
        select_ln1080_reg_236 <= select_ln1080_fu_156_p3;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) | (ap_done_reg == 1'b1))) begin
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
    if (((icmp_ln1069_fu_111_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
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
    if (((icmp_ln1069_fu_111_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1049_reg_241 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        fifo_C_drain_C_drain_IO_L1_out_14_02318_read = grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82_fifo_C_drain_C_drain_IO_L1_out_14_02318_read;
    end else begin
        fifo_C_drain_C_drain_IO_L1_out_14_02318_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        if ((icmp_ln1049_reg_241 == 1'd1)) begin
            fifo_C_drain_C_drain_IO_L2_out_142364_din = grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82_fifo_C_drain_C_drain_IO_L2_out_142364_din;
        end else if ((icmp_ln1049_reg_241 == 1'd0)) begin
            fifo_C_drain_C_drain_IO_L2_out_142364_din = grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1101_6_VI_fu_74_fifo_C_drain_C_drain_IO_L2_out_142364_din;
        end else begin
            fifo_C_drain_C_drain_IO_L2_out_142364_din = grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82_fifo_C_drain_C_drain_IO_L2_out_142364_din;
        end
    end else begin
        fifo_C_drain_C_drain_IO_L2_out_142364_din = grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82_fifo_C_drain_C_drain_IO_L2_out_142364_din;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        if ((icmp_ln1049_reg_241 == 1'd1)) begin
            fifo_C_drain_C_drain_IO_L2_out_142364_write = grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82_fifo_C_drain_C_drain_IO_L2_out_142364_write;
        end else if ((icmp_ln1049_reg_241 == 1'd0)) begin
            fifo_C_drain_C_drain_IO_L2_out_142364_write = grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1101_6_VI_fu_74_fifo_C_drain_C_drain_IO_L2_out_142364_write;
        end else begin
            fifo_C_drain_C_drain_IO_L2_out_142364_write = 1'b0;
        end
    end else begin
        fifo_C_drain_C_drain_IO_L2_out_142364_write = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1049_reg_241 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        fifo_C_drain_C_drain_IO_L2_out_152365_read = grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1101_6_VI_fu_74_fifo_C_drain_C_drain_IO_L2_out_152365_read;
    end else begin
        fifo_C_drain_C_drain_IO_L2_out_152365_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln1069_fu_111_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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

assign add_ln1069_13_fu_175_p2 = (indvar_flatten15_fu_66 + 6'd1);

assign add_ln1069_fu_117_p2 = (indvar_flatten27_fu_70 + 7'd1);

assign and_ln1079_fu_144_p2 = (xor_ln1079_fu_132_p2 & icmp_ln1083_fu_138_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state3_on_subcall_done = (((grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82_ap_done == 1'b0) & (icmp_ln1049_reg_241 == 1'd1)) | ((grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1101_6_VI_fu_74_ap_done == 1'b0) & (icmp_ln1049_reg_241 == 1'd0)));
end

assign c3_V_fu_170_p2 = (select_ln1080_reg_236 + 5'd1);

assign grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82_ap_start = grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1086_4_VI_fu_82_ap_start_reg;

assign grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1101_6_VI_fu_74_ap_start = grp_C_drain_IO_L2_out582_Pipeline_VITIS_LOOP_1101_6_VI_fu_74_ap_start_reg;

assign icmp_ln1049_fu_164_p2 = ((select_ln1080_fu_156_p3 == 5'd9) ? 1'b1 : 1'b0);

assign icmp_ln106933_fu_126_p2 = ((indvar_flatten15_fu_66 == 6'd28) ? 1'b1 : 1'b0);

assign icmp_ln1069_fu_111_p2 = ((indvar_flatten27_fu_70 == 7'd112) ? 1'b1 : 1'b0);

assign icmp_ln1083_fu_138_p2 = ((c3_V_1_fu_62 == 5'd16) ? 1'b1 : 1'b0);

assign or_ln1080_fu_150_p2 = (icmp_ln106933_fu_126_p2 | and_ln1079_fu_144_p2);

assign select_ln1069_fu_181_p3 = ((icmp_ln106933_reg_231[0:0] == 1'b1) ? 6'd1 : add_ln1069_13_fu_175_p2);

assign select_ln1080_fu_156_p3 = ((or_ln1080_fu_150_p2[0:0] == 1'b1) ? 5'd9 : c3_V_1_fu_62);

assign xor_ln1079_fu_132_p2 = (icmp_ln106933_fu_126_p2 ^ 1'd1);

endmodule //kernel0_C_drain_IO_L2_out582
