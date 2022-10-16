// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module kernel0_C_drain_IO_L1_out_wrapper356 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        fifo_C_drain_C_drain_IO_L1_out_0_152109_dout,
        fifo_C_drain_C_drain_IO_L1_out_0_152109_empty_n,
        fifo_C_drain_C_drain_IO_L1_out_0_152109_read,
        fifo_C_drain_C_drain_IO_L1_out_0_142108_din,
        fifo_C_drain_C_drain_IO_L1_out_0_142108_full_n,
        fifo_C_drain_C_drain_IO_L1_out_0_142108_write,
        fifo_C_drain_PE_14_01852_dout,
        fifo_C_drain_PE_14_01852_empty_n,
        fifo_C_drain_PE_14_01852_read
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [255:0] fifo_C_drain_C_drain_IO_L1_out_0_152109_dout;
input   fifo_C_drain_C_drain_IO_L1_out_0_152109_empty_n;
output   fifo_C_drain_C_drain_IO_L1_out_0_152109_read;
output  [255:0] fifo_C_drain_C_drain_IO_L1_out_0_142108_din;
input   fifo_C_drain_C_drain_IO_L1_out_0_142108_full_n;
output   fifo_C_drain_C_drain_IO_L1_out_0_142108_write;
input  [15:0] fifo_C_drain_PE_14_01852_dout;
input   fifo_C_drain_PE_14_01852_empty_n;
output   fifo_C_drain_PE_14_01852_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fifo_C_drain_C_drain_IO_L1_out_0_152109_read;
reg fifo_C_drain_C_drain_IO_L1_out_0_142108_write;
reg fifo_C_drain_PE_14_01852_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    grp_C_drain_IO_L1_out_fu_26_ap_start;
wire    grp_C_drain_IO_L1_out_fu_26_ap_done;
wire    grp_C_drain_IO_L1_out_fu_26_ap_idle;
wire    grp_C_drain_IO_L1_out_fu_26_ap_ready;
wire    grp_C_drain_IO_L1_out_fu_26_fifo_C_drain_C_drain_IO_L1_out_0_152109_read;
wire   [255:0] grp_C_drain_IO_L1_out_fu_26_fifo_C_drain_C_drain_IO_L1_out_0_142108_din;
wire    grp_C_drain_IO_L1_out_fu_26_fifo_C_drain_C_drain_IO_L1_out_0_142108_write;
wire    grp_C_drain_IO_L1_out_fu_26_fifo_C_drain_PE_14_01852_read;
reg    grp_C_drain_IO_L1_out_fu_26_ap_start_reg;
reg    ap_block_state1_ignore_call6;
wire    ap_CS_fsm_state2;
reg   [1:0] ap_NS_fsm;
reg    ap_block_state1;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_C_drain_IO_L1_out_fu_26_ap_start_reg = 1'b0;
end

kernel0_C_drain_IO_L1_out grp_C_drain_IO_L1_out_fu_26(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_C_drain_IO_L1_out_fu_26_ap_start),
    .ap_done(grp_C_drain_IO_L1_out_fu_26_ap_done),
    .ap_idle(grp_C_drain_IO_L1_out_fu_26_ap_idle),
    .ap_ready(grp_C_drain_IO_L1_out_fu_26_ap_ready),
    .idy(4'd13),
    .fifo_C_drain_C_drain_IO_L1_out_0_152109_dout(fifo_C_drain_C_drain_IO_L1_out_0_152109_dout),
    .fifo_C_drain_C_drain_IO_L1_out_0_152109_empty_n(fifo_C_drain_C_drain_IO_L1_out_0_152109_empty_n),
    .fifo_C_drain_C_drain_IO_L1_out_0_152109_read(grp_C_drain_IO_L1_out_fu_26_fifo_C_drain_C_drain_IO_L1_out_0_152109_read),
    .fifo_C_drain_C_drain_IO_L1_out_0_142108_din(grp_C_drain_IO_L1_out_fu_26_fifo_C_drain_C_drain_IO_L1_out_0_142108_din),
    .fifo_C_drain_C_drain_IO_L1_out_0_142108_full_n(fifo_C_drain_C_drain_IO_L1_out_0_142108_full_n),
    .fifo_C_drain_C_drain_IO_L1_out_0_142108_write(grp_C_drain_IO_L1_out_fu_26_fifo_C_drain_C_drain_IO_L1_out_0_142108_write),
    .fifo_C_drain_PE_14_01852_dout(fifo_C_drain_PE_14_01852_dout),
    .fifo_C_drain_PE_14_01852_empty_n(fifo_C_drain_PE_14_01852_empty_n),
    .fifo_C_drain_PE_14_01852_read(grp_C_drain_IO_L1_out_fu_26_fifo_C_drain_PE_14_01852_read)
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
        end else if (((grp_C_drain_IO_L1_out_fu_26_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_C_drain_IO_L1_out_fu_26_ap_start_reg <= 1'b0;
    end else begin
        if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_C_drain_IO_L1_out_fu_26_ap_start_reg <= 1'b1;
        end else if ((grp_C_drain_IO_L1_out_fu_26_ap_ready == 1'b1)) begin
            grp_C_drain_IO_L1_out_fu_26_ap_start_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((grp_C_drain_IO_L1_out_fu_26_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

always @ (*) begin
    if (((grp_C_drain_IO_L1_out_fu_26_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((grp_C_drain_IO_L1_out_fu_26_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        fifo_C_drain_C_drain_IO_L1_out_0_142108_write = grp_C_drain_IO_L1_out_fu_26_fifo_C_drain_C_drain_IO_L1_out_0_142108_write;
    end else begin
        fifo_C_drain_C_drain_IO_L1_out_0_142108_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        fifo_C_drain_C_drain_IO_L1_out_0_152109_read = grp_C_drain_IO_L1_out_fu_26_fifo_C_drain_C_drain_IO_L1_out_0_152109_read;
    end else begin
        fifo_C_drain_C_drain_IO_L1_out_0_152109_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        fifo_C_drain_PE_14_01852_read = grp_C_drain_IO_L1_out_fu_26_fifo_C_drain_PE_14_01852_read;
    end else begin
        fifo_C_drain_PE_14_01852_read = 1'b0;
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
            if (((grp_C_drain_IO_L1_out_fu_26_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state1_ignore_call6 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign fifo_C_drain_C_drain_IO_L1_out_0_142108_din = grp_C_drain_IO_L1_out_fu_26_fifo_C_drain_C_drain_IO_L1_out_0_142108_din;

assign grp_C_drain_IO_L1_out_fu_26_ap_start = grp_C_drain_IO_L1_out_fu_26_ap_start_reg;

endmodule //kernel0_C_drain_IO_L1_out_wrapper356
