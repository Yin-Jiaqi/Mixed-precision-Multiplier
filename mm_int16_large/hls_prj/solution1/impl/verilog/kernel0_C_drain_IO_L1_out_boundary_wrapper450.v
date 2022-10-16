// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module kernel0_C_drain_IO_L1_out_boundary_wrapper450 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        fifo_C_drain_C_drain_IO_L1_out_0_152109_din,
        fifo_C_drain_C_drain_IO_L1_out_0_152109_full_n,
        fifo_C_drain_C_drain_IO_L1_out_0_152109_write,
        fifo_C_drain_PE_15_01853_dout,
        fifo_C_drain_PE_15_01853_empty_n,
        fifo_C_drain_PE_15_01853_read
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
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [255:0] fifo_C_drain_C_drain_IO_L1_out_0_152109_din;
input   fifo_C_drain_C_drain_IO_L1_out_0_152109_full_n;
output   fifo_C_drain_C_drain_IO_L1_out_0_152109_write;
input  [15:0] fifo_C_drain_PE_15_01853_dout;
input   fifo_C_drain_PE_15_01853_empty_n;
output   fifo_C_drain_PE_15_01853_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fifo_C_drain_C_drain_IO_L1_out_0_152109_write;
reg fifo_C_drain_PE_15_01853_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [3:0] local_C_V_address0;
reg    local_C_V_ce0;
wire   [255:0] local_C_V_q0;
reg    local_C_V_ce1;
reg    local_C_V_we1;
wire    grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_ap_start;
wire    grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_ap_done;
wire    grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_ap_idle;
wire    grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_ap_ready;
wire    grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_fifo_C_drain_PE_15_01853_read;
wire   [3:0] grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_local_C_V_address0;
wire    grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_local_C_V_ce0;
wire   [3:0] grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_local_C_V_address1;
wire    grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_local_C_V_ce1;
wire    grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_local_C_V_we1;
wire   [255:0] grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_local_C_V_d1;
wire    grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_ap_start;
wire    grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_ap_done;
wire    grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_ap_idle;
wire    grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_ap_ready;
wire   [255:0] grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_fifo_C_drain_C_drain_IO_L1_out_0_152109_din;
wire    grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_fifo_C_drain_C_drain_IO_L1_out_0_152109_write;
wire   [3:0] grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_local_C_V_address0;
wire    grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_local_C_V_ce0;
reg    grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_ap_start_reg;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln1069_fu_78_p2;
wire    ap_CS_fsm_state3;
reg    grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg   [4:0] indvar_flatten7_fu_48;
wire   [4:0] add_ln1069_fu_84_p2;
reg    ap_block_state1;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 6'd1;
#0 grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_ap_start_reg = 1'b0;
#0 grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_ap_start_reg = 1'b0;
end

kernel0_C_drain_IO_L1_out_boundary_wrapper322_local_C_V #(
    .DataWidth( 256 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
local_C_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(local_C_V_address0),
    .ce0(local_C_V_ce0),
    .q0(local_C_V_q0),
    .address1(grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_local_C_V_address1),
    .ce1(local_C_V_ce1),
    .we1(local_C_V_we1),
    .d1(grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_local_C_V_d1)
);

kernel0_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1 grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_ap_start),
    .ap_done(grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_ap_done),
    .ap_idle(grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_ap_idle),
    .ap_ready(grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_ap_ready),
    .fifo_C_drain_PE_15_01853_dout(fifo_C_drain_PE_15_01853_dout),
    .fifo_C_drain_PE_15_01853_empty_n(fifo_C_drain_PE_15_01853_empty_n),
    .fifo_C_drain_PE_15_01853_read(grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_fifo_C_drain_PE_15_01853_read),
    .local_C_V_address0(grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_local_C_V_address0),
    .local_C_V_ce0(grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_local_C_V_ce0),
    .local_C_V_q0(local_C_V_q0),
    .local_C_V_address1(grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_local_C_V_address1),
    .local_C_V_ce1(grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_local_C_V_ce1),
    .local_C_V_we1(grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_local_C_V_we1),
    .local_C_V_d1(grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_local_C_V_d1)
);

kernel0_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_ap_start),
    .ap_done(grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_ap_done),
    .ap_idle(grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_ap_idle),
    .ap_ready(grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_ap_ready),
    .fifo_C_drain_C_drain_IO_L1_out_0_152109_din(grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_fifo_C_drain_C_drain_IO_L1_out_0_152109_din),
    .fifo_C_drain_C_drain_IO_L1_out_0_152109_full_n(fifo_C_drain_C_drain_IO_L1_out_0_152109_full_n),
    .fifo_C_drain_C_drain_IO_L1_out_0_152109_write(grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_fifo_C_drain_C_drain_IO_L1_out_0_152109_write),
    .local_C_V_address0(grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_local_C_V_address0),
    .local_C_V_ce0(grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_local_C_V_ce0),
    .local_C_V_q0(local_C_V_q0)
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
        end else if (((icmp_ln1069_fu_78_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln1069_fu_78_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_ap_start_reg <= 1'b1;
        end else if ((grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_ap_ready == 1'b1)) begin
            grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_ap_start_reg <= 1'b1;
        end else if ((grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_ap_ready == 1'b1)) begin
            grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten7_fu_48 <= 5'd0;
    end else if (((icmp_ln1069_fu_78_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        indvar_flatten7_fu_48 <= add_ln1069_fu_84_p2;
    end
end

always @ (*) begin
    if (((ap_done_reg == 1'b1) | (ap_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1069_fu_78_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1069_fu_78_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        fifo_C_drain_C_drain_IO_L1_out_0_152109_write = grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_fifo_C_drain_C_drain_IO_L1_out_0_152109_write;
    end else begin
        fifo_C_drain_C_drain_IO_L1_out_0_152109_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        fifo_C_drain_PE_15_01853_read = grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_fifo_C_drain_PE_15_01853_read;
    end else begin
        fifo_C_drain_PE_15_01853_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        local_C_V_address0 = grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_local_C_V_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        local_C_V_address0 = grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_local_C_V_address0;
    end else begin
        local_C_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        local_C_V_ce0 = grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_local_C_V_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        local_C_V_ce0 = grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_local_C_V_ce0;
    end else begin
        local_C_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        local_C_V_ce1 = grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_local_C_V_ce1;
    end else begin
        local_C_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        local_C_V_we1 = grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_local_C_V_we1;
    end else begin
        local_C_V_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln1069_fu_78_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln1069_fu_84_p2 = (indvar_flatten7_fu_48 + 5'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

assign fifo_C_drain_C_drain_IO_L1_out_0_152109_din = grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_fifo_C_drain_C_drain_IO_L1_out_0_152109_din;

assign grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_ap_start = grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_1_fu_56_ap_start_reg;

assign grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_ap_start = grp_C_drain_IO_L1_out_boundary_wrapper450_Pipeline_VIT_fu_63_ap_start_reg;

assign icmp_ln1069_fu_78_p2 = ((indvar_flatten7_fu_48 == 5'd16) ? 1'b1 : 1'b0);

endmodule //kernel0_C_drain_IO_L1_out_boundary_wrapper450
