-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity kernel0_C_drain_IO_L1_out is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    fifo_C_drain_C_drain_IO_L1_out_0_193_dout : IN STD_LOGIC_VECTOR (127 downto 0);
    fifo_C_drain_C_drain_IO_L1_out_0_193_empty_n : IN STD_LOGIC;
    fifo_C_drain_C_drain_IO_L1_out_0_193_read : OUT STD_LOGIC;
    fifo_C_drain_C_drain_IO_L1_out_0_092_din : OUT STD_LOGIC_VECTOR (127 downto 0);
    fifo_C_drain_C_drain_IO_L1_out_0_092_full_n : IN STD_LOGIC;
    fifo_C_drain_C_drain_IO_L1_out_0_092_write : OUT STD_LOGIC;
    fifo_C_drain_PE_0_088_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    fifo_C_drain_PE_0_088_empty_n : IN STD_LOGIC;
    fifo_C_drain_PE_0_088_read : OUT STD_LOGIC );
end;


architecture behav of kernel0_C_drain_IO_L1_out is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal add_ln1069_fu_117_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln1069_reg_155 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal add_ln870_fu_129_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln870_reg_163 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal icmp_ln1049_fu_135_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1049_reg_168 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1069_14_fu_123_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal local_C_V_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal local_C_V_ce0 : STD_LOGIC;
    signal local_C_V_q0 : STD_LOGIC_VECTOR (127 downto 0);
    signal local_C_V_ce1 : STD_LOGIC;
    signal local_C_V_we1 : STD_LOGIC;
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_ap_start : STD_LOGIC;
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_ap_done : STD_LOGIC;
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_ap_idle : STD_LOGIC;
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_ap_ready : STD_LOGIC;
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_fifo_C_drain_PE_0_088_read : STD_LOGIC;
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_local_C_V_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_local_C_V_ce0 : STD_LOGIC;
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_local_C_V_address1 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_local_C_V_ce1 : STD_LOGIC;
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_local_C_V_we1 : STD_LOGIC;
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_local_C_V_d1 : STD_LOGIC_VECTOR (127 downto 0);
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_ap_start : STD_LOGIC;
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_ap_done : STD_LOGIC;
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_ap_idle : STD_LOGIC;
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_ap_ready : STD_LOGIC;
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_fifo_C_drain_C_drain_IO_L1_out_0_193_read : STD_LOGIC;
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_fifo_C_drain_C_drain_IO_L1_out_0_092_din : STD_LOGIC_VECTOR (127 downto 0);
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_fifo_C_drain_C_drain_IO_L1_out_0_092_write : STD_LOGIC;
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_ap_start : STD_LOGIC;
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_ap_done : STD_LOGIC;
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_ap_idle : STD_LOGIC;
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_ap_ready : STD_LOGIC;
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_fifo_C_drain_C_drain_IO_L1_out_0_092_din : STD_LOGIC_VECTOR (127 downto 0);
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_fifo_C_drain_C_drain_IO_L1_out_0_092_write : STD_LOGIC;
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_local_C_V_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_local_C_V_ce0 : STD_LOGIC;
    signal c4_V_reg_70 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_block_state6_on_subcall_done : BOOLEAN;
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_ap_start_reg : STD_LOGIC := '0';
    signal icmp_ln1069_fu_111_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_ap_start_reg : STD_LOGIC := '0';
    signal grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_ap_start_reg : STD_LOGIC := '0';
    signal indvar_flatten23_fu_62 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component kernel0_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        fifo_C_drain_PE_0_088_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        fifo_C_drain_PE_0_088_empty_n : IN STD_LOGIC;
        fifo_C_drain_PE_0_088_read : OUT STD_LOGIC;
        local_C_V_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
        local_C_V_ce0 : OUT STD_LOGIC;
        local_C_V_q0 : IN STD_LOGIC_VECTOR (127 downto 0);
        local_C_V_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
        local_C_V_ce1 : OUT STD_LOGIC;
        local_C_V_we1 : OUT STD_LOGIC;
        local_C_V_d1 : OUT STD_LOGIC_VECTOR (127 downto 0) );
    end component;


    component kernel0_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        fifo_C_drain_C_drain_IO_L1_out_0_193_dout : IN STD_LOGIC_VECTOR (127 downto 0);
        fifo_C_drain_C_drain_IO_L1_out_0_193_empty_n : IN STD_LOGIC;
        fifo_C_drain_C_drain_IO_L1_out_0_193_read : OUT STD_LOGIC;
        fifo_C_drain_C_drain_IO_L1_out_0_092_din : OUT STD_LOGIC_VECTOR (127 downto 0);
        fifo_C_drain_C_drain_IO_L1_out_0_092_full_n : IN STD_LOGIC;
        fifo_C_drain_C_drain_IO_L1_out_0_092_write : OUT STD_LOGIC );
    end component;


    component kernel0_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        fifo_C_drain_C_drain_IO_L1_out_0_092_din : OUT STD_LOGIC_VECTOR (127 downto 0);
        fifo_C_drain_C_drain_IO_L1_out_0_092_full_n : IN STD_LOGIC;
        fifo_C_drain_C_drain_IO_L1_out_0_092_write : OUT STD_LOGIC;
        local_C_V_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
        local_C_V_ce0 : OUT STD_LOGIC;
        local_C_V_q0 : IN STD_LOGIC_VECTOR (127 downto 0) );
    end component;


    component kernel0_C_drain_IO_L1_out_boundary_wrapper12_local_C_V IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (127 downto 0);
        address1 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce1 : IN STD_LOGIC;
        we1 : IN STD_LOGIC;
        d1 : IN STD_LOGIC_VECTOR (127 downto 0) );
    end component;



begin
    local_C_V_U : component kernel0_C_drain_IO_L1_out_boundary_wrapper12_local_C_V
    generic map (
        DataWidth => 128,
        AddressRange => 16,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => local_C_V_address0,
        ce0 => local_C_V_ce0,
        q0 => local_C_V_q0,
        address1 => grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_local_C_V_address1,
        ce1 => local_C_V_ce1,
        we1 => local_C_V_we1,
        d1 => grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_local_C_V_d1);

    grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81 : component kernel0_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_ap_start,
        ap_done => grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_ap_done,
        ap_idle => grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_ap_idle,
        ap_ready => grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_ap_ready,
        fifo_C_drain_PE_0_088_dout => fifo_C_drain_PE_0_088_dout,
        fifo_C_drain_PE_0_088_empty_n => fifo_C_drain_PE_0_088_empty_n,
        fifo_C_drain_PE_0_088_read => grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_fifo_C_drain_PE_0_088_read,
        local_C_V_address0 => grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_local_C_V_address0,
        local_C_V_ce0 => grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_local_C_V_ce0,
        local_C_V_q0 => local_C_V_q0,
        local_C_V_address1 => grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_local_C_V_address1,
        local_C_V_ce1 => grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_local_C_V_ce1,
        local_C_V_we1 => grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_local_C_V_we1,
        local_C_V_d1 => grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_local_C_V_d1);

    grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88 : component kernel0_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_ap_start,
        ap_done => grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_ap_done,
        ap_idle => grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_ap_idle,
        ap_ready => grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_ap_ready,
        fifo_C_drain_C_drain_IO_L1_out_0_193_dout => fifo_C_drain_C_drain_IO_L1_out_0_193_dout,
        fifo_C_drain_C_drain_IO_L1_out_0_193_empty_n => fifo_C_drain_C_drain_IO_L1_out_0_193_empty_n,
        fifo_C_drain_C_drain_IO_L1_out_0_193_read => grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_fifo_C_drain_C_drain_IO_L1_out_0_193_read,
        fifo_C_drain_C_drain_IO_L1_out_0_092_din => grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_fifo_C_drain_C_drain_IO_L1_out_0_092_din,
        fifo_C_drain_C_drain_IO_L1_out_0_092_full_n => fifo_C_drain_C_drain_IO_L1_out_0_092_full_n,
        fifo_C_drain_C_drain_IO_L1_out_0_092_write => grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_fifo_C_drain_C_drain_IO_L1_out_0_092_write);

    grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96 : component kernel0_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_ap_start,
        ap_done => grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_ap_done,
        ap_idle => grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_ap_idle,
        ap_ready => grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_ap_ready,
        fifo_C_drain_C_drain_IO_L1_out_0_092_din => grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_fifo_C_drain_C_drain_IO_L1_out_0_092_din,
        fifo_C_drain_C_drain_IO_L1_out_0_092_full_n => fifo_C_drain_C_drain_IO_L1_out_0_092_full_n,
        fifo_C_drain_C_drain_IO_L1_out_0_092_write => grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_fifo_C_drain_C_drain_IO_L1_out_0_092_write,
        local_C_V_address0 => grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_local_C_V_address0,
        local_C_V_ce0 => grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_local_C_V_ce0,
        local_C_V_q0 => local_C_V_q0);





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


    grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln1069_fu_111_p2 = ap_const_lv1_0))) then 
                    grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_ap_ready = ap_const_logic_1)) then 
                    grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_ap_start_reg <= ap_const_logic_0;
            else
                if (((icmp_ln1069_14_fu_123_p2 = ap_const_lv1_0) and (icmp_ln1049_fu_135_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                    grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_ap_ready = ap_const_logic_1)) then 
                    grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_ap_start_reg <= ap_const_logic_0;
            else
                if (((icmp_ln1069_14_fu_123_p2 = ap_const_lv1_0) and (icmp_ln1049_fu_135_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                    grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_ap_ready = ap_const_logic_1)) then 
                    grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    c4_V_reg_70_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                c4_V_reg_70 <= ap_const_lv2_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_boolean_0 = ap_block_state6_on_subcall_done))) then 
                c4_V_reg_70 <= add_ln870_reg_163;
            end if; 
        end if;
    end process;

    indvar_flatten23_fu_62_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                indvar_flatten23_fu_62 <= ap_const_lv5_0;
            elsif (((icmp_ln1069_14_fu_123_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                indvar_flatten23_fu_62 <= add_ln1069_reg_155;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                add_ln1069_reg_155 <= add_ln1069_fu_117_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                add_ln870_reg_163 <= add_ln870_fu_129_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln1069_14_fu_123_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                icmp_ln1049_reg_168 <= icmp_ln1049_fu_135_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state5, icmp_ln1069_14_fu_123_p2, grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_ap_done, ap_CS_fsm_state6, ap_block_state6_on_subcall_done, icmp_ln1069_fu_111_p2, ap_CS_fsm_state3)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln1069_fu_111_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                if (((icmp_ln1069_14_fu_123_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_boolean_0 = ap_block_state6_on_subcall_done))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    add_ln1069_fu_117_p2 <= std_logic_vector(unsigned(indvar_flatten23_fu_62) + unsigned(ap_const_lv5_1));
    add_ln870_fu_129_p2 <= std_logic_vector(unsigned(c4_V_reg_70) + unsigned(ap_const_lv2_1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;

    ap_ST_fsm_state3_blk_assign_proc : process(grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_ap_done)
    begin
        if ((grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state3_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state3_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state4_blk <= ap_const_logic_0;
    ap_ST_fsm_state5_blk <= ap_const_logic_0;

    ap_ST_fsm_state6_blk_assign_proc : process(ap_block_state6_on_subcall_done)
    begin
        if ((ap_const_boolean_1 = ap_block_state6_on_subcall_done)) then 
            ap_ST_fsm_state6_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state6_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state6_on_subcall_done_assign_proc : process(icmp_ln1049_reg_168, grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_ap_done, grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_ap_done)
    begin
                ap_block_state6_on_subcall_done <= (((icmp_ln1049_reg_168 = ap_const_lv1_1) and (grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_ap_done = ap_const_logic_0)) or ((grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_ap_done = ap_const_logic_0) and (icmp_ln1049_reg_168 = ap_const_lv1_0)));
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln1069_fu_111_p2)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln1069_fu_111_p2 = ap_const_lv1_1)) or ((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln1069_fu_111_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln1069_fu_111_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    fifo_C_drain_C_drain_IO_L1_out_0_092_din_assign_proc : process(icmp_ln1049_reg_168, grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_fifo_C_drain_C_drain_IO_L1_out_0_092_din, grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_fifo_C_drain_C_drain_IO_L1_out_0_092_din, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
            if ((icmp_ln1049_reg_168 = ap_const_lv1_1)) then 
                fifo_C_drain_C_drain_IO_L1_out_0_092_din <= grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_fifo_C_drain_C_drain_IO_L1_out_0_092_din;
            elsif ((icmp_ln1049_reg_168 = ap_const_lv1_0)) then 
                fifo_C_drain_C_drain_IO_L1_out_0_092_din <= grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_fifo_C_drain_C_drain_IO_L1_out_0_092_din;
            else 
                fifo_C_drain_C_drain_IO_L1_out_0_092_din <= grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_fifo_C_drain_C_drain_IO_L1_out_0_092_din;
            end if;
        else 
            fifo_C_drain_C_drain_IO_L1_out_0_092_din <= grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_fifo_C_drain_C_drain_IO_L1_out_0_092_din;
        end if; 
    end process;


    fifo_C_drain_C_drain_IO_L1_out_0_092_write_assign_proc : process(icmp_ln1049_reg_168, grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_fifo_C_drain_C_drain_IO_L1_out_0_092_write, grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_fifo_C_drain_C_drain_IO_L1_out_0_092_write, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
            if ((icmp_ln1049_reg_168 = ap_const_lv1_1)) then 
                fifo_C_drain_C_drain_IO_L1_out_0_092_write <= grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_fifo_C_drain_C_drain_IO_L1_out_0_092_write;
            elsif ((icmp_ln1049_reg_168 = ap_const_lv1_0)) then 
                fifo_C_drain_C_drain_IO_L1_out_0_092_write <= grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_fifo_C_drain_C_drain_IO_L1_out_0_092_write;
            else 
                fifo_C_drain_C_drain_IO_L1_out_0_092_write <= ap_const_logic_0;
            end if;
        else 
            fifo_C_drain_C_drain_IO_L1_out_0_092_write <= ap_const_logic_0;
        end if; 
    end process;


    fifo_C_drain_C_drain_IO_L1_out_0_193_read_assign_proc : process(icmp_ln1049_reg_168, grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_fifo_C_drain_C_drain_IO_L1_out_0_193_read, ap_CS_fsm_state6)
    begin
        if (((icmp_ln1049_reg_168 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            fifo_C_drain_C_drain_IO_L1_out_0_193_read <= grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_fifo_C_drain_C_drain_IO_L1_out_0_193_read;
        else 
            fifo_C_drain_C_drain_IO_L1_out_0_193_read <= ap_const_logic_0;
        end if; 
    end process;


    fifo_C_drain_PE_0_088_read_assign_proc : process(grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_fifo_C_drain_PE_0_088_read, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            fifo_C_drain_PE_0_088_read <= grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_fifo_C_drain_PE_0_088_read;
        else 
            fifo_C_drain_PE_0_088_read <= ap_const_logic_0;
        end if; 
    end process;

    grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_ap_start <= grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_ap_start_reg;
    grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_ap_start <= grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_ap_start_reg;
    grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_ap_start <= grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88_ap_start_reg;
    icmp_ln1049_fu_135_p2 <= "1" when (c4_V_reg_70 = ap_const_lv2_0) else "0";
    icmp_ln1069_14_fu_123_p2 <= "1" when (c4_V_reg_70 = ap_const_lv2_2) else "0";
    icmp_ln1069_fu_111_p2 <= "1" when (indvar_flatten23_fu_62 = ap_const_lv5_10) else "0";

    local_C_V_address0_assign_proc : process(icmp_ln1049_reg_168, grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_local_C_V_address0, grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_local_C_V_address0, ap_CS_fsm_state6, ap_CS_fsm_state3)
    begin
        if (((icmp_ln1049_reg_168 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            local_C_V_address0 <= grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_local_C_V_address0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            local_C_V_address0 <= grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_local_C_V_address0;
        else 
            local_C_V_address0 <= "XXXX";
        end if; 
    end process;


    local_C_V_ce0_assign_proc : process(icmp_ln1049_reg_168, grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_local_C_V_ce0, grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_local_C_V_ce0, ap_CS_fsm_state6, ap_CS_fsm_state3)
    begin
        if (((icmp_ln1049_reg_168 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            local_C_V_ce0 <= grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96_local_C_V_ce0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            local_C_V_ce0 <= grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_local_C_V_ce0;
        else 
            local_C_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    local_C_V_ce1_assign_proc : process(grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_local_C_V_ce1, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            local_C_V_ce1 <= grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_local_C_V_ce1;
        else 
            local_C_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    local_C_V_we1_assign_proc : process(grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_local_C_V_we1, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            local_C_V_we1 <= grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81_local_C_V_we1;
        else 
            local_C_V_we1 <= ap_const_logic_0;
        end if; 
    end process;

end behav;
