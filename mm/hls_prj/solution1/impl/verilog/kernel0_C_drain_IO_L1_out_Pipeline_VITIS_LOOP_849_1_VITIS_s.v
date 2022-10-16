// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module kernel0_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        fifo_C_drain_PE_0_088_dout,
        fifo_C_drain_PE_0_088_empty_n,
        fifo_C_drain_PE_0_088_read,
        local_C_V_address0,
        local_C_V_ce0,
        local_C_V_q0,
        local_C_V_address1,
        local_C_V_ce1,
        local_C_V_we1,
        local_C_V_d1
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] fifo_C_drain_PE_0_088_dout;
input   fifo_C_drain_PE_0_088_empty_n;
output   fifo_C_drain_PE_0_088_read;
output  [3:0] local_C_V_address0;
output   local_C_V_ce0;
input  [127:0] local_C_V_q0;
output  [3:0] local_C_V_address1;
output   local_C_V_ce1;
output   local_C_V_we1;
output  [127:0] local_C_V_d1;

reg ap_idle;
reg fifo_C_drain_PE_0_088_read;
reg local_C_V_ce0;
reg local_C_V_ce1;
reg local_C_V_we1;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] icmp_ln1069_reg_361;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln1069_fu_189_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    fifo_C_drain_PE_0_088_blk_n;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
wire   [1:0] trunc_ln1069_fu_243_p1;
reg   [1:0] trunc_ln1069_reg_365;
reg   [3:0] local_C_V_addr_reg_369;
reg   [31:0] ap_phi_mux_v1_V_phi_fu_118_p8;
wire   [31:0] ap_phi_reg_pp0_iter1_v1_V_reg_115;
reg   [31:0] ap_phi_mux_v2_V_13_phi_fu_132_p8;
wire   [31:0] ap_phi_reg_pp0_iter1_v2_V_13_reg_129;
reg   [31:0] ap_phi_mux_v2_V_12_phi_fu_146_p8;
wire   [31:0] ap_phi_reg_pp0_iter1_v2_V_12_reg_143;
reg   [31:0] ap_phi_mux_v2_V_phi_fu_160_p8;
wire   [31:0] data_split_V_0_fu_281_p1;
wire   [31:0] ap_phi_reg_pp0_iter1_v2_V_reg_157;
wire   [63:0] zext_ln859_fu_255_p1;
reg   [3:0] c7_V_fu_80;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_c7_V_load;
wire   [3:0] add_ln870_8_fu_260_p2;
reg   [3:0] c6_V_fu_84;
reg   [3:0] ap_sig_allocacmp_c6_V_load;
wire   [3:0] select_ln1069_13_fu_227_p3;
reg   [6:0] indvar_flatten_fu_88;
reg   [6:0] ap_sig_allocacmp_indvar_flatten_load;
wire   [6:0] add_ln1069_fu_195_p2;
wire   [0:0] icmp_ln1069_13_fu_213_p2;
wire   [3:0] add_ln870_fu_207_p2;
wire   [3:0] select_ln1069_fu_219_p3;
wire   [0:0] tmp_fu_235_p3;
wire   [4:0] tmp_9_fu_247_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

kernel0_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln1069_fu_189_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            c6_V_fu_84 <= select_ln1069_13_fu_227_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            c6_V_fu_84 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln1069_fu_189_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            c7_V_fu_80 <= add_ln870_8_fu_260_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            c7_V_fu_80 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln1069_fu_189_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_88 <= add_ln1069_fu_195_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_88 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln1069_reg_361 <= icmp_ln1069_fu_189_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1069_fu_189_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_C_V_addr_reg_369 <= zext_ln859_fu_255_p1;
        trunc_ln1069_reg_365 <= trunc_ln1069_fu_243_p1;
    end
end

always @ (*) begin
    if (((icmp_ln1069_fu_189_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((((trunc_ln1069_reg_365 == 2'd1) & (icmp_ln1069_reg_361 == 1'd0)) | ((trunc_ln1069_reg_365 == 2'd0) & (icmp_ln1069_reg_361 == 1'd0)) | ((trunc_ln1069_reg_365 == 2'd2) & (icmp_ln1069_reg_361 == 1'd0)))) begin
        ap_phi_mux_v1_V_phi_fu_118_p8 = {{local_C_V_q0[127:96]}};
    end else if (((trunc_ln1069_reg_365 == 2'd3) & (icmp_ln1069_reg_361 == 1'd0))) begin
        ap_phi_mux_v1_V_phi_fu_118_p8 = fifo_C_drain_PE_0_088_dout;
    end else begin
        ap_phi_mux_v1_V_phi_fu_118_p8 = ap_phi_reg_pp0_iter1_v1_V_reg_115;
    end
end

always @ (*) begin
    if (((trunc_ln1069_reg_365 == 2'd1) & (icmp_ln1069_reg_361 == 1'd0))) begin
        ap_phi_mux_v2_V_12_phi_fu_146_p8 = fifo_C_drain_PE_0_088_dout;
    end else if ((((trunc_ln1069_reg_365 == 2'd0) & (icmp_ln1069_reg_361 == 1'd0)) | ((trunc_ln1069_reg_365 == 2'd2) & (icmp_ln1069_reg_361 == 1'd0)) | ((trunc_ln1069_reg_365 == 2'd3) & (icmp_ln1069_reg_361 == 1'd0)))) begin
        ap_phi_mux_v2_V_12_phi_fu_146_p8 = {{local_C_V_q0[63:32]}};
    end else begin
        ap_phi_mux_v2_V_12_phi_fu_146_p8 = ap_phi_reg_pp0_iter1_v2_V_12_reg_143;
    end
end

always @ (*) begin
    if (((trunc_ln1069_reg_365 == 2'd2) & (icmp_ln1069_reg_361 == 1'd0))) begin
        ap_phi_mux_v2_V_13_phi_fu_132_p8 = fifo_C_drain_PE_0_088_dout;
    end else if ((((trunc_ln1069_reg_365 == 2'd1) & (icmp_ln1069_reg_361 == 1'd0)) | ((trunc_ln1069_reg_365 == 2'd0) & (icmp_ln1069_reg_361 == 1'd0)) | ((trunc_ln1069_reg_365 == 2'd3) & (icmp_ln1069_reg_361 == 1'd0)))) begin
        ap_phi_mux_v2_V_13_phi_fu_132_p8 = {{local_C_V_q0[95:64]}};
    end else begin
        ap_phi_mux_v2_V_13_phi_fu_132_p8 = ap_phi_reg_pp0_iter1_v2_V_13_reg_129;
    end
end

always @ (*) begin
    if (((trunc_ln1069_reg_365 == 2'd0) & (icmp_ln1069_reg_361 == 1'd0))) begin
        ap_phi_mux_v2_V_phi_fu_160_p8 = fifo_C_drain_PE_0_088_dout;
    end else if ((((trunc_ln1069_reg_365 == 2'd1) & (icmp_ln1069_reg_361 == 1'd0)) | ((trunc_ln1069_reg_365 == 2'd2) & (icmp_ln1069_reg_361 == 1'd0)) | ((trunc_ln1069_reg_365 == 2'd3) & (icmp_ln1069_reg_361 == 1'd0)))) begin
        ap_phi_mux_v2_V_phi_fu_160_p8 = data_split_V_0_fu_281_p1;
    end else begin
        ap_phi_mux_v2_V_phi_fu_160_p8 = ap_phi_reg_pp0_iter1_v2_V_reg_157;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_c6_V_load = 4'd0;
    end else begin
        ap_sig_allocacmp_c6_V_load = c6_V_fu_84;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_c7_V_load = 4'd0;
    end else begin
        ap_sig_allocacmp_c7_V_load = c7_V_fu_80;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_88;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln1069_reg_361 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo_C_drain_PE_0_088_blk_n = fifo_C_drain_PE_0_088_empty_n;
    end else begin
        fifo_C_drain_PE_0_088_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1069_reg_361 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo_C_drain_PE_0_088_read = 1'b1;
    end else begin
        fifo_C_drain_PE_0_088_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_C_V_ce0 = 1'b1;
    end else begin
        local_C_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_C_V_ce1 = 1'b1;
    end else begin
        local_C_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_C_V_we1 = 1'b1;
    end else begin
        local_C_V_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln1069_fu_195_p2 = (ap_sig_allocacmp_indvar_flatten_load + 7'd1);

assign add_ln870_8_fu_260_p2 = (select_ln1069_fu_219_p3 + 4'd1);

assign add_ln870_fu_207_p2 = (ap_sig_allocacmp_c6_V_load + 4'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((icmp_ln1069_reg_361 == 1'd0) & (fifo_C_drain_PE_0_088_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((icmp_ln1069_reg_361 == 1'd0) & (fifo_C_drain_PE_0_088_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((icmp_ln1069_reg_361 == 1'd0) & (fifo_C_drain_PE_0_088_empty_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign ap_phi_reg_pp0_iter1_v1_V_reg_115 = 'bx;

assign ap_phi_reg_pp0_iter1_v2_V_12_reg_143 = 'bx;

assign ap_phi_reg_pp0_iter1_v2_V_13_reg_129 = 'bx;

assign ap_phi_reg_pp0_iter1_v2_V_reg_157 = 'bx;

assign data_split_V_0_fu_281_p1 = local_C_V_q0[31:0];

assign icmp_ln1069_13_fu_213_p2 = ((ap_sig_allocacmp_c7_V_load == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln1069_fu_189_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 7'd64) ? 1'b1 : 1'b0);

assign local_C_V_address0 = zext_ln859_fu_255_p1;

assign local_C_V_address1 = local_C_V_addr_reg_369;

assign local_C_V_d1 = {{{{ap_phi_mux_v1_V_phi_fu_118_p8}, {ap_phi_mux_v2_V_13_phi_fu_132_p8}}, {ap_phi_mux_v2_V_12_phi_fu_146_p8}}, {ap_phi_mux_v2_V_phi_fu_160_p8}};

assign select_ln1069_13_fu_227_p3 = ((icmp_ln1069_13_fu_213_p2[0:0] == 1'b1) ? add_ln870_fu_207_p2 : ap_sig_allocacmp_c6_V_load);

assign select_ln1069_fu_219_p3 = ((icmp_ln1069_13_fu_213_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_c7_V_load);

assign tmp_9_fu_247_p3 = {{select_ln1069_fu_219_p3}, {tmp_fu_235_p3}};

assign tmp_fu_235_p3 = select_ln1069_13_fu_227_p3[32'd2];

assign trunc_ln1069_fu_243_p1 = select_ln1069_13_fu_227_p3[1:0];

assign zext_ln859_fu_255_p1 = tmp_9_fu_247_p3;

endmodule //kernel0_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s
