// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module kernel0_C_drain_IO_L1_out_boundary_wrapper402_Pipeline_VIT_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        fifo_C_drain_PE_15_01853_dout,
        fifo_C_drain_PE_15_01853_empty_n,
        fifo_C_drain_PE_15_01853_read,
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
input  [15:0] fifo_C_drain_PE_15_01853_dout;
input   fifo_C_drain_PE_15_01853_empty_n;
output   fifo_C_drain_PE_15_01853_read;
output  [3:0] local_C_V_address0;
output   local_C_V_ce0;
input  [255:0] local_C_V_q0;
output  [3:0] local_C_V_address1;
output   local_C_V_ce1;
output   local_C_V_we1;
output  [255:0] local_C_V_d1;

reg ap_idle;
reg fifo_C_drain_PE_15_01853_read;
reg local_C_V_ce0;
reg local_C_V_ce1;
reg local_C_V_we1;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] icmp_ln1069_reg_1334;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln1069_fu_807_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    fifo_C_drain_PE_15_01853_blk_n;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln1069_14_fu_822_p2;
reg   [0:0] icmp_ln1069_14_reg_1338;
reg   [3:0] local_C_V_addr_reg_1343;
reg   [15:0] ap_phi_mux_v1_V_phi_fu_184_p32;
wire   [15:0] ap_phi_reg_pp0_iter1_v1_V_reg_181;
wire   [3:0] trunc_ln891_fu_873_p1;
reg   [15:0] ap_phi_mux_v2_V_415_phi_fu_222_p32;
wire   [15:0] ap_phi_reg_pp0_iter1_v2_V_415_reg_219;
reg   [15:0] ap_phi_mux_v2_V_414_phi_fu_260_p32;
wire   [15:0] ap_phi_reg_pp0_iter1_v2_V_414_reg_257;
reg   [15:0] ap_phi_mux_v2_V_413_phi_fu_298_p32;
wire   [15:0] ap_phi_reg_pp0_iter1_v2_V_413_reg_295;
reg   [15:0] ap_phi_mux_v2_V_412_phi_fu_336_p32;
wire   [15:0] ap_phi_reg_pp0_iter1_v2_V_412_reg_333;
reg   [15:0] ap_phi_mux_v2_V_411_phi_fu_374_p32;
wire   [15:0] ap_phi_reg_pp0_iter1_v2_V_411_reg_371;
reg   [15:0] ap_phi_mux_v2_V_410_phi_fu_412_p32;
wire   [15:0] ap_phi_reg_pp0_iter1_v2_V_410_reg_409;
reg   [15:0] ap_phi_mux_v2_V_409_phi_fu_450_p32;
wire   [15:0] ap_phi_reg_pp0_iter1_v2_V_409_reg_447;
reg   [15:0] ap_phi_mux_v2_V_408_phi_fu_488_p32;
wire   [15:0] ap_phi_reg_pp0_iter1_v2_V_408_reg_485;
reg   [15:0] ap_phi_mux_v2_V_407_phi_fu_526_p32;
wire   [15:0] ap_phi_reg_pp0_iter1_v2_V_407_reg_523;
reg   [15:0] ap_phi_mux_v2_V_406_phi_fu_564_p32;
wire   [15:0] ap_phi_reg_pp0_iter1_v2_V_406_reg_561;
reg   [15:0] ap_phi_mux_v2_V_405_phi_fu_602_p32;
wire   [15:0] ap_phi_reg_pp0_iter1_v2_V_405_reg_599;
reg   [15:0] ap_phi_mux_v2_V_404_phi_fu_640_p32;
wire   [15:0] ap_phi_reg_pp0_iter1_v2_V_404_reg_637;
reg   [15:0] ap_phi_mux_v2_V_403_phi_fu_678_p32;
wire   [15:0] ap_phi_reg_pp0_iter1_v2_V_403_reg_675;
reg   [15:0] ap_phi_mux_v2_V_402_phi_fu_716_p32;
wire   [15:0] ap_phi_reg_pp0_iter1_v2_V_402_reg_713;
reg   [15:0] ap_phi_mux_v2_V_phi_fu_754_p32;
wire   [15:0] data_split_V_0_fu_877_p1;
wire   [15:0] ap_phi_reg_pp0_iter1_v2_V_reg_751;
wire   [63:0] zext_ln1069_fu_836_p1;
reg   [4:0] c7_V_fu_146;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_c7_V_load;
wire   [4:0] add_ln870_fu_841_p2;
reg   [4:0] c6_V_fu_150;
wire   [4:0] select_ln891_10_fu_866_p3;
reg   [8:0] indvar_flatten_fu_154;
reg   [8:0] ap_sig_allocacmp_indvar_flatten_load;
wire   [8:0] add_ln1069_fu_813_p2;
wire   [4:0] select_ln891_fu_828_p3;
wire   [4:0] add_ln870_13_fu_860_p2;
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
        if ((ap_loop_init == 1'b1)) begin
            c6_V_fu_150 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            c6_V_fu_150 <= select_ln891_10_fu_866_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln1069_fu_807_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            c7_V_fu_146 <= add_ln870_fu_841_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            c7_V_fu_146 <= 5'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln1069_fu_807_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_154 <= add_ln1069_fu_813_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_154 <= 9'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1069_fu_807_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln1069_14_reg_1338 <= icmp_ln1069_14_fu_822_p2;
        local_C_V_addr_reg_1343 <= zext_ln1069_fu_836_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln1069_reg_1334 <= icmp_ln1069_fu_807_p2;
    end
end

always @ (*) begin
    if (((icmp_ln1069_fu_807_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd1)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd0)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd2)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd3)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd4)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd5)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd6)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd7)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd8)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd9)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd10)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd11)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd12)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd13)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd14)))) begin
        ap_phi_mux_v1_V_phi_fu_184_p32 = {{local_C_V_q0[255:240]}};
    end else if (((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd15))) begin
        ap_phi_mux_v1_V_phi_fu_184_p32 = fifo_C_drain_PE_15_01853_dout;
    end else begin
        ap_phi_mux_v1_V_phi_fu_184_p32 = ap_phi_reg_pp0_iter1_v1_V_reg_181;
    end
end

always @ (*) begin
    if (((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd1))) begin
        ap_phi_mux_v2_V_402_phi_fu_716_p32 = fifo_C_drain_PE_15_01853_dout;
    end else if ((((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd0)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd2)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd3)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd4)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd5)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd6)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd7)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd8)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd9)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd10)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd11)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd12)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd13)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd14)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd15)))) begin
        ap_phi_mux_v2_V_402_phi_fu_716_p32 = {{local_C_V_q0[31:16]}};
    end else begin
        ap_phi_mux_v2_V_402_phi_fu_716_p32 = ap_phi_reg_pp0_iter1_v2_V_402_reg_713;
    end
end

always @ (*) begin
    if (((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd2))) begin
        ap_phi_mux_v2_V_403_phi_fu_678_p32 = fifo_C_drain_PE_15_01853_dout;
    end else if ((((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd1)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd0)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd3)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd4)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd5)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd6)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd7)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd8)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd9)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd10)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd11)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd12)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd13)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd14)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd15)))) begin
        ap_phi_mux_v2_V_403_phi_fu_678_p32 = {{local_C_V_q0[47:32]}};
    end else begin
        ap_phi_mux_v2_V_403_phi_fu_678_p32 = ap_phi_reg_pp0_iter1_v2_V_403_reg_675;
    end
end

always @ (*) begin
    if (((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd3))) begin
        ap_phi_mux_v2_V_404_phi_fu_640_p32 = fifo_C_drain_PE_15_01853_dout;
    end else if ((((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd1)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd0)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd2)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd4)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd5)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd6)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd7)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd8)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd9)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd10)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd11)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd12)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd13)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd14)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd15)))) begin
        ap_phi_mux_v2_V_404_phi_fu_640_p32 = {{local_C_V_q0[63:48]}};
    end else begin
        ap_phi_mux_v2_V_404_phi_fu_640_p32 = ap_phi_reg_pp0_iter1_v2_V_404_reg_637;
    end
end

always @ (*) begin
    if (((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd4))) begin
        ap_phi_mux_v2_V_405_phi_fu_602_p32 = fifo_C_drain_PE_15_01853_dout;
    end else if ((((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd1)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd0)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd2)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd3)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd5)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd6)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd7)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd8)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd9)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd10)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd11)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd12)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd13)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd14)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd15)))) begin
        ap_phi_mux_v2_V_405_phi_fu_602_p32 = {{local_C_V_q0[79:64]}};
    end else begin
        ap_phi_mux_v2_V_405_phi_fu_602_p32 = ap_phi_reg_pp0_iter1_v2_V_405_reg_599;
    end
end

always @ (*) begin
    if (((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd5))) begin
        ap_phi_mux_v2_V_406_phi_fu_564_p32 = fifo_C_drain_PE_15_01853_dout;
    end else if ((((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd1)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd0)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd2)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd3)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd4)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd6)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd7)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd8)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd9)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd10)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd11)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd12)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd13)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd14)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd15)))) begin
        ap_phi_mux_v2_V_406_phi_fu_564_p32 = {{local_C_V_q0[95:80]}};
    end else begin
        ap_phi_mux_v2_V_406_phi_fu_564_p32 = ap_phi_reg_pp0_iter1_v2_V_406_reg_561;
    end
end

always @ (*) begin
    if (((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd6))) begin
        ap_phi_mux_v2_V_407_phi_fu_526_p32 = fifo_C_drain_PE_15_01853_dout;
    end else if ((((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd1)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd0)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd2)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd3)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd4)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd5)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd7)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd8)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd9)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd10)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd11)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd12)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd13)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd14)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd15)))) begin
        ap_phi_mux_v2_V_407_phi_fu_526_p32 = {{local_C_V_q0[111:96]}};
    end else begin
        ap_phi_mux_v2_V_407_phi_fu_526_p32 = ap_phi_reg_pp0_iter1_v2_V_407_reg_523;
    end
end

always @ (*) begin
    if (((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd7))) begin
        ap_phi_mux_v2_V_408_phi_fu_488_p32 = fifo_C_drain_PE_15_01853_dout;
    end else if ((((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd1)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd0)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd2)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd3)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd4)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd5)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd6)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd8)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd9)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd10)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd11)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd12)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd13)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd14)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd15)))) begin
        ap_phi_mux_v2_V_408_phi_fu_488_p32 = {{local_C_V_q0[127:112]}};
    end else begin
        ap_phi_mux_v2_V_408_phi_fu_488_p32 = ap_phi_reg_pp0_iter1_v2_V_408_reg_485;
    end
end

always @ (*) begin
    if (((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd8))) begin
        ap_phi_mux_v2_V_409_phi_fu_450_p32 = fifo_C_drain_PE_15_01853_dout;
    end else if ((((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd1)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd0)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd2)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd3)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd4)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd5)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd6)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd7)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd9)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd10)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd11)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd12)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd13)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd14)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd15)))) begin
        ap_phi_mux_v2_V_409_phi_fu_450_p32 = {{local_C_V_q0[143:128]}};
    end else begin
        ap_phi_mux_v2_V_409_phi_fu_450_p32 = ap_phi_reg_pp0_iter1_v2_V_409_reg_447;
    end
end

always @ (*) begin
    if (((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd9))) begin
        ap_phi_mux_v2_V_410_phi_fu_412_p32 = fifo_C_drain_PE_15_01853_dout;
    end else if ((((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd1)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd0)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd2)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd3)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd4)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd5)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd6)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd7)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd8)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd10)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd11)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd12)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd13)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd14)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd15)))) begin
        ap_phi_mux_v2_V_410_phi_fu_412_p32 = {{local_C_V_q0[159:144]}};
    end else begin
        ap_phi_mux_v2_V_410_phi_fu_412_p32 = ap_phi_reg_pp0_iter1_v2_V_410_reg_409;
    end
end

always @ (*) begin
    if (((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd10))) begin
        ap_phi_mux_v2_V_411_phi_fu_374_p32 = fifo_C_drain_PE_15_01853_dout;
    end else if ((((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd1)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd0)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd2)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd3)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd4)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd5)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd6)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd7)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd8)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd9)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd11)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd12)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd13)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd14)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd15)))) begin
        ap_phi_mux_v2_V_411_phi_fu_374_p32 = {{local_C_V_q0[175:160]}};
    end else begin
        ap_phi_mux_v2_V_411_phi_fu_374_p32 = ap_phi_reg_pp0_iter1_v2_V_411_reg_371;
    end
end

always @ (*) begin
    if (((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd11))) begin
        ap_phi_mux_v2_V_412_phi_fu_336_p32 = fifo_C_drain_PE_15_01853_dout;
    end else if ((((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd1)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd0)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd2)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd3)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd4)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd5)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd6)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd7)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd8)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd9)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd10)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd12)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd13)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd14)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd15)))) begin
        ap_phi_mux_v2_V_412_phi_fu_336_p32 = {{local_C_V_q0[191:176]}};
    end else begin
        ap_phi_mux_v2_V_412_phi_fu_336_p32 = ap_phi_reg_pp0_iter1_v2_V_412_reg_333;
    end
end

always @ (*) begin
    if (((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd12))) begin
        ap_phi_mux_v2_V_413_phi_fu_298_p32 = fifo_C_drain_PE_15_01853_dout;
    end else if ((((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd1)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd0)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd2)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd3)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd4)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd5)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd6)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd7)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd8)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd9)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd10)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd11)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd13)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd14)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd15)))) begin
        ap_phi_mux_v2_V_413_phi_fu_298_p32 = {{local_C_V_q0[207:192]}};
    end else begin
        ap_phi_mux_v2_V_413_phi_fu_298_p32 = ap_phi_reg_pp0_iter1_v2_V_413_reg_295;
    end
end

always @ (*) begin
    if (((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd13))) begin
        ap_phi_mux_v2_V_414_phi_fu_260_p32 = fifo_C_drain_PE_15_01853_dout;
    end else if ((((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd1)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd0)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd2)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd3)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd4)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd5)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd6)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd7)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd8)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd9)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd10)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd11)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd12)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd14)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd15)))) begin
        ap_phi_mux_v2_V_414_phi_fu_260_p32 = {{local_C_V_q0[223:208]}};
    end else begin
        ap_phi_mux_v2_V_414_phi_fu_260_p32 = ap_phi_reg_pp0_iter1_v2_V_414_reg_257;
    end
end

always @ (*) begin
    if (((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd14))) begin
        ap_phi_mux_v2_V_415_phi_fu_222_p32 = fifo_C_drain_PE_15_01853_dout;
    end else if ((((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd1)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd0)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd2)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd3)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd4)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd5)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd6)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd7)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd8)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd9)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd10)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd11)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd12)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd13)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd15)))) begin
        ap_phi_mux_v2_V_415_phi_fu_222_p32 = {{local_C_V_q0[239:224]}};
    end else begin
        ap_phi_mux_v2_V_415_phi_fu_222_p32 = ap_phi_reg_pp0_iter1_v2_V_415_reg_219;
    end
end

always @ (*) begin
    if (((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd0))) begin
        ap_phi_mux_v2_V_phi_fu_754_p32 = fifo_C_drain_PE_15_01853_dout;
    end else if ((((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd1)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd2)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd3)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd4)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd5)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd6)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd7)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd8)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd9)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd10)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd11)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd12)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd13)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd14)) | ((icmp_ln1069_reg_1334 == 1'd0) & (trunc_ln891_fu_873_p1 == 4'd15)))) begin
        ap_phi_mux_v2_V_phi_fu_754_p32 = data_split_V_0_fu_877_p1;
    end else begin
        ap_phi_mux_v2_V_phi_fu_754_p32 = ap_phi_reg_pp0_iter1_v2_V_reg_751;
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_c7_V_load = 5'd0;
    end else begin
        ap_sig_allocacmp_c7_V_load = c7_V_fu_146;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_154;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln1069_reg_1334 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo_C_drain_PE_15_01853_blk_n = fifo_C_drain_PE_15_01853_empty_n;
    end else begin
        fifo_C_drain_PE_15_01853_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1069_reg_1334 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo_C_drain_PE_15_01853_read = 1'b1;
    end else begin
        fifo_C_drain_PE_15_01853_read = 1'b0;
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

assign add_ln1069_fu_813_p2 = (ap_sig_allocacmp_indvar_flatten_load + 9'd1);

assign add_ln870_13_fu_860_p2 = (c6_V_fu_150 + 5'd1);

assign add_ln870_fu_841_p2 = (select_ln891_fu_828_p3 + 5'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((icmp_ln1069_reg_1334 == 1'd0) & (fifo_C_drain_PE_15_01853_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((icmp_ln1069_reg_1334 == 1'd0) & (fifo_C_drain_PE_15_01853_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((icmp_ln1069_reg_1334 == 1'd0) & (fifo_C_drain_PE_15_01853_empty_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign ap_phi_reg_pp0_iter1_v1_V_reg_181 = 'bx;

assign ap_phi_reg_pp0_iter1_v2_V_402_reg_713 = 'bx;

assign ap_phi_reg_pp0_iter1_v2_V_403_reg_675 = 'bx;

assign ap_phi_reg_pp0_iter1_v2_V_404_reg_637 = 'bx;

assign ap_phi_reg_pp0_iter1_v2_V_405_reg_599 = 'bx;

assign ap_phi_reg_pp0_iter1_v2_V_406_reg_561 = 'bx;

assign ap_phi_reg_pp0_iter1_v2_V_407_reg_523 = 'bx;

assign ap_phi_reg_pp0_iter1_v2_V_408_reg_485 = 'bx;

assign ap_phi_reg_pp0_iter1_v2_V_409_reg_447 = 'bx;

assign ap_phi_reg_pp0_iter1_v2_V_410_reg_409 = 'bx;

assign ap_phi_reg_pp0_iter1_v2_V_411_reg_371 = 'bx;

assign ap_phi_reg_pp0_iter1_v2_V_412_reg_333 = 'bx;

assign ap_phi_reg_pp0_iter1_v2_V_413_reg_295 = 'bx;

assign ap_phi_reg_pp0_iter1_v2_V_414_reg_257 = 'bx;

assign ap_phi_reg_pp0_iter1_v2_V_415_reg_219 = 'bx;

assign ap_phi_reg_pp0_iter1_v2_V_reg_751 = 'bx;

assign data_split_V_0_fu_877_p1 = local_C_V_q0[15:0];

assign icmp_ln1069_14_fu_822_p2 = ((ap_sig_allocacmp_c7_V_load == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln1069_fu_807_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 9'd256) ? 1'b1 : 1'b0);

assign local_C_V_address0 = zext_ln1069_fu_836_p1;

assign local_C_V_address1 = local_C_V_addr_reg_1343;

assign local_C_V_d1 = {{{{{{{{{{{{{{{{ap_phi_mux_v1_V_phi_fu_184_p32}, {ap_phi_mux_v2_V_415_phi_fu_222_p32}}, {ap_phi_mux_v2_V_414_phi_fu_260_p32}}, {ap_phi_mux_v2_V_413_phi_fu_298_p32}}, {ap_phi_mux_v2_V_412_phi_fu_336_p32}}, {ap_phi_mux_v2_V_411_phi_fu_374_p32}}, {ap_phi_mux_v2_V_410_phi_fu_412_p32}}, {ap_phi_mux_v2_V_409_phi_fu_450_p32}}, {ap_phi_mux_v2_V_408_phi_fu_488_p32}}, {ap_phi_mux_v2_V_407_phi_fu_526_p32}}, {ap_phi_mux_v2_V_406_phi_fu_564_p32}}, {ap_phi_mux_v2_V_405_phi_fu_602_p32}}, {ap_phi_mux_v2_V_404_phi_fu_640_p32}}, {ap_phi_mux_v2_V_403_phi_fu_678_p32}}, {ap_phi_mux_v2_V_402_phi_fu_716_p32}}, {ap_phi_mux_v2_V_phi_fu_754_p32}};

assign select_ln891_10_fu_866_p3 = ((icmp_ln1069_14_reg_1338[0:0] == 1'b1) ? add_ln870_13_fu_860_p2 : c6_V_fu_150);

assign select_ln891_fu_828_p3 = ((icmp_ln1069_14_fu_822_p2[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_c7_V_load);

assign trunc_ln891_fu_873_p1 = select_ln891_10_fu_866_p3[3:0];

assign zext_ln1069_fu_836_p1 = select_ln891_fu_828_p3;

endmodule //kernel0_C_drain_IO_L1_out_boundary_wrapper402_Pipeline_VIT_1
