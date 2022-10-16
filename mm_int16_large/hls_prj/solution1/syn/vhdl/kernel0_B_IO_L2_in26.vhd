-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity kernel0_B_IO_L2_in26 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    fifo_B_B_IO_L2_in_01278_dout : IN STD_LOGIC_VECTOR (511 downto 0);
    fifo_B_B_IO_L2_in_01278_empty_n : IN STD_LOGIC;
    fifo_B_B_IO_L2_in_01278_read : OUT STD_LOGIC;
    fifo_B_B_IO_L2_in_11279_din : OUT STD_LOGIC_VECTOR (511 downto 0);
    fifo_B_B_IO_L2_in_11279_full_n : IN STD_LOGIC;
    fifo_B_B_IO_L2_in_11279_write : OUT STD_LOGIC;
    fifo_B_PE_0_01566_din : OUT STD_LOGIC_VECTOR (511 downto 0);
    fifo_B_PE_0_01566_full_n : IN STD_LOGIC;
    fifo_B_PE_0_01566_write : OUT STD_LOGIC );
end;


architecture behav of kernel0_B_IO_L2_in26 is 
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
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv4_4 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv6_20 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";

attribute shreg_extract : string;
    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal add_ln870_fu_185_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln870_reg_235 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal add_ln870_41_fu_197_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln870_41_reg_243 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal add_ln870_42_fu_213_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln870_42_reg_251 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal arb_fu_219_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal local_B_ping_V_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal local_B_ping_V_ce0 : STD_LOGIC;
    signal local_B_ping_V_we0 : STD_LOGIC;
    signal local_B_ping_V_q0 : STD_LOGIC_VECTOR (511 downto 0);
    signal local_B_pong_V_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal local_B_pong_V_ce0 : STD_LOGIC;
    signal local_B_pong_V_we0 : STD_LOGIC;
    signal local_B_pong_V_q0 : STD_LOGIC_VECTOR (511 downto 0);
    signal grp_B_IO_L2_in_intra_trans_fu_150_ap_start : STD_LOGIC;
    signal grp_B_IO_L2_in_intra_trans_fu_150_ap_done : STD_LOGIC;
    signal grp_B_IO_L2_in_intra_trans_fu_150_ap_idle : STD_LOGIC;
    signal grp_B_IO_L2_in_intra_trans_fu_150_ap_ready : STD_LOGIC;
    signal grp_B_IO_L2_in_intra_trans_fu_150_local_B_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_B_IO_L2_in_intra_trans_fu_150_local_B_ce0 : STD_LOGIC;
    signal grp_B_IO_L2_in_intra_trans_fu_150_local_B_q0 : STD_LOGIC_VECTOR (511 downto 0);
    signal grp_B_IO_L2_in_intra_trans_fu_150_fifo_B_PE_0_151821_din : STD_LOGIC_VECTOR (511 downto 0);
    signal grp_B_IO_L2_in_intra_trans_fu_150_fifo_B_PE_0_151821_write : STD_LOGIC;
    signal grp_B_IO_L2_in_intra_trans_fu_150_intra_trans_en_offset : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_B_IO_L2_in_inter_trans_fu_160_ap_start : STD_LOGIC;
    signal grp_B_IO_L2_in_inter_trans_fu_160_ap_done : STD_LOGIC;
    signal grp_B_IO_L2_in_inter_trans_fu_160_ap_idle : STD_LOGIC;
    signal grp_B_IO_L2_in_inter_trans_fu_160_ap_ready : STD_LOGIC;
    signal grp_B_IO_L2_in_inter_trans_fu_160_local_B_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_B_IO_L2_in_inter_trans_fu_160_local_B_ce0 : STD_LOGIC;
    signal grp_B_IO_L2_in_inter_trans_fu_160_local_B_we0 : STD_LOGIC;
    signal grp_B_IO_L2_in_inter_trans_fu_160_local_B_d0 : STD_LOGIC_VECTOR (511 downto 0);
    signal grp_B_IO_L2_in_inter_trans_fu_160_fifo_B_B_IO_L2_in_01278_read : STD_LOGIC;
    signal grp_B_IO_L2_in_inter_trans_fu_160_fifo_B_B_IO_L2_in_11279_din : STD_LOGIC_VECTOR (511 downto 0);
    signal grp_B_IO_L2_in_inter_trans_fu_160_fifo_B_B_IO_L2_in_11279_write : STD_LOGIC;
    signal intra_trans_en_reg_76 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1069_41_fu_191_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal c1_V_reg_90 : STD_LOGIC_VECTOR (2 downto 0);
    signal icmp_ln1069_42_fu_207_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1069_fu_179_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal intra_trans_en_3_reg_101 : STD_LOGIC_VECTOR (0 downto 0);
    signal c2_V_reg_114 : STD_LOGIC_VECTOR (5 downto 0);
    signal arb_2_reg_138 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state5_on_subcall_done : BOOLEAN;
    signal intra_trans_en_4_reg_125 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_mux_arb_2_phi_fu_142_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_B_IO_L2_in_intra_trans_fu_150_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal grp_B_IO_L2_in_inter_trans_fu_160_ap_start_reg : STD_LOGIC := '0';
    signal c0_V_fu_64 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component kernel0_B_IO_L2_in_intra_trans IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        local_B_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
        local_B_ce0 : OUT STD_LOGIC;
        local_B_q0 : IN STD_LOGIC_VECTOR (511 downto 0);
        fifo_B_PE_0_151821_din : OUT STD_LOGIC_VECTOR (511 downto 0);
        fifo_B_PE_0_151821_full_n : IN STD_LOGIC;
        fifo_B_PE_0_151821_write : OUT STD_LOGIC;
        intra_trans_en_offset : IN STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component kernel0_B_IO_L2_in_inter_trans IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        idx : IN STD_LOGIC_VECTOR (3 downto 0);
        local_B_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
        local_B_ce0 : OUT STD_LOGIC;
        local_B_we0 : OUT STD_LOGIC;
        local_B_d0 : OUT STD_LOGIC_VECTOR (511 downto 0);
        fifo_B_B_IO_L2_in_01278_dout : IN STD_LOGIC_VECTOR (511 downto 0);
        fifo_B_B_IO_L2_in_01278_empty_n : IN STD_LOGIC;
        fifo_B_B_IO_L2_in_01278_read : OUT STD_LOGIC;
        fifo_B_B_IO_L2_in_11279_din : OUT STD_LOGIC_VECTOR (511 downto 0);
        fifo_B_B_IO_L2_in_11279_full_n : IN STD_LOGIC;
        fifo_B_B_IO_L2_in_11279_write : OUT STD_LOGIC );
    end component;


    component kernel0_A_IO_L2_in7_local_A_ping_V IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (511 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (511 downto 0) );
    end component;



begin
    local_B_ping_V_U : component kernel0_A_IO_L2_in7_local_A_ping_V
    generic map (
        DataWidth => 512,
        AddressRange => 16,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => local_B_ping_V_address0,
        ce0 => local_B_ping_V_ce0,
        we0 => local_B_ping_V_we0,
        d0 => grp_B_IO_L2_in_inter_trans_fu_160_local_B_d0,
        q0 => local_B_ping_V_q0);

    local_B_pong_V_U : component kernel0_A_IO_L2_in7_local_A_ping_V
    generic map (
        DataWidth => 512,
        AddressRange => 16,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => local_B_pong_V_address0,
        ce0 => local_B_pong_V_ce0,
        we0 => local_B_pong_V_we0,
        d0 => grp_B_IO_L2_in_inter_trans_fu_160_local_B_d0,
        q0 => local_B_pong_V_q0);

    grp_B_IO_L2_in_intra_trans_fu_150 : component kernel0_B_IO_L2_in_intra_trans
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_B_IO_L2_in_intra_trans_fu_150_ap_start,
        ap_done => grp_B_IO_L2_in_intra_trans_fu_150_ap_done,
        ap_idle => grp_B_IO_L2_in_intra_trans_fu_150_ap_idle,
        ap_ready => grp_B_IO_L2_in_intra_trans_fu_150_ap_ready,
        local_B_address0 => grp_B_IO_L2_in_intra_trans_fu_150_local_B_address0,
        local_B_ce0 => grp_B_IO_L2_in_intra_trans_fu_150_local_B_ce0,
        local_B_q0 => grp_B_IO_L2_in_intra_trans_fu_150_local_B_q0,
        fifo_B_PE_0_151821_din => grp_B_IO_L2_in_intra_trans_fu_150_fifo_B_PE_0_151821_din,
        fifo_B_PE_0_151821_full_n => fifo_B_PE_0_01566_full_n,
        fifo_B_PE_0_151821_write => grp_B_IO_L2_in_intra_trans_fu_150_fifo_B_PE_0_151821_write,
        intra_trans_en_offset => grp_B_IO_L2_in_intra_trans_fu_150_intra_trans_en_offset);

    grp_B_IO_L2_in_inter_trans_fu_160 : component kernel0_B_IO_L2_in_inter_trans
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_B_IO_L2_in_inter_trans_fu_160_ap_start,
        ap_done => grp_B_IO_L2_in_inter_trans_fu_160_ap_done,
        ap_idle => grp_B_IO_L2_in_inter_trans_fu_160_ap_idle,
        ap_ready => grp_B_IO_L2_in_inter_trans_fu_160_ap_ready,
        idx => ap_const_lv4_4,
        local_B_address0 => grp_B_IO_L2_in_inter_trans_fu_160_local_B_address0,
        local_B_ce0 => grp_B_IO_L2_in_inter_trans_fu_160_local_B_ce0,
        local_B_we0 => grp_B_IO_L2_in_inter_trans_fu_160_local_B_we0,
        local_B_d0 => grp_B_IO_L2_in_inter_trans_fu_160_local_B_d0,
        fifo_B_B_IO_L2_in_01278_dout => fifo_B_B_IO_L2_in_01278_dout,
        fifo_B_B_IO_L2_in_01278_empty_n => fifo_B_B_IO_L2_in_01278_empty_n,
        fifo_B_B_IO_L2_in_01278_read => grp_B_IO_L2_in_inter_trans_fu_160_fifo_B_B_IO_L2_in_01278_read,
        fifo_B_B_IO_L2_in_11279_din => grp_B_IO_L2_in_inter_trans_fu_160_fifo_B_B_IO_L2_in_11279_din,
        fifo_B_B_IO_L2_in_11279_full_n => fifo_B_B_IO_L2_in_11279_full_n,
        fifo_B_B_IO_L2_in_11279_write => grp_B_IO_L2_in_inter_trans_fu_160_fifo_B_B_IO_L2_in_11279_write);





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


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_B_IO_L2_in_intra_trans_fu_150_ap_done = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    grp_B_IO_L2_in_inter_trans_fu_160_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_B_IO_L2_in_inter_trans_fu_160_ap_start_reg <= ap_const_logic_0;
            else
                if ((((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_phi_mux_arb_2_phi_fu_142_p4 = ap_const_lv1_1) and (icmp_ln1069_42_fu_207_p2 = ap_const_lv1_0)) or ((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_phi_mux_arb_2_phi_fu_142_p4 = ap_const_lv1_0) and (icmp_ln1069_42_fu_207_p2 = ap_const_lv1_0)))) then 
                    grp_B_IO_L2_in_inter_trans_fu_160_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_B_IO_L2_in_inter_trans_fu_160_ap_ready = ap_const_logic_1)) then 
                    grp_B_IO_L2_in_inter_trans_fu_160_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_B_IO_L2_in_intra_trans_fu_150_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_B_IO_L2_in_intra_trans_fu_150_ap_start_reg <= ap_const_logic_0;
            else
                if ((((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_phi_mux_arb_2_phi_fu_142_p4 = ap_const_lv1_1) and (icmp_ln1069_42_fu_207_p2 = ap_const_lv1_0)) or ((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_phi_mux_arb_2_phi_fu_142_p4 = ap_const_lv1_0) and (icmp_ln1069_42_fu_207_p2 = ap_const_lv1_0)) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln1069_fu_179_p2 = ap_const_lv1_1)))) then 
                    grp_B_IO_L2_in_intra_trans_fu_150_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_B_IO_L2_in_intra_trans_fu_150_ap_ready = ap_const_logic_1)) then 
                    grp_B_IO_L2_in_intra_trans_fu_150_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    arb_2_reg_138_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_boolean_0 = ap_block_state5_on_subcall_done))) then 
                arb_2_reg_138 <= arb_fu_219_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln1069_41_fu_191_p2 = ap_const_lv1_0))) then 
                arb_2_reg_138 <= ap_const_lv1_0;
            end if; 
        end if;
    end process;

    c0_V_fu_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                c0_V_fu_64 <= ap_const_lv3_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln1069_41_fu_191_p2 = ap_const_lv1_1))) then 
                c0_V_fu_64 <= add_ln870_reg_235;
            end if; 
        end if;
    end process;

    c1_V_reg_90_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln1069_fu_179_p2 = ap_const_lv1_0))) then 
                c1_V_reg_90 <= ap_const_lv3_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (icmp_ln1069_42_fu_207_p2 = ap_const_lv1_1))) then 
                c1_V_reg_90 <= add_ln870_41_reg_243;
            end if; 
        end if;
    end process;

    c2_V_reg_114_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_boolean_0 = ap_block_state5_on_subcall_done))) then 
                c2_V_reg_114 <= add_ln870_42_reg_251;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln1069_41_fu_191_p2 = ap_const_lv1_0))) then 
                c2_V_reg_114 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;

    intra_trans_en_3_reg_101_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln1069_fu_179_p2 = ap_const_lv1_0))) then 
                intra_trans_en_3_reg_101 <= intra_trans_en_reg_76;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (icmp_ln1069_42_fu_207_p2 = ap_const_lv1_1))) then 
                intra_trans_en_3_reg_101 <= ap_const_lv1_1;
            end if; 
        end if;
    end process;

    intra_trans_en_4_reg_125_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_boolean_0 = ap_block_state5_on_subcall_done))) then 
                intra_trans_en_4_reg_125 <= ap_const_lv1_1;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln1069_41_fu_191_p2 = ap_const_lv1_0))) then 
                intra_trans_en_4_reg_125 <= intra_trans_en_3_reg_101;
            end if; 
        end if;
    end process;

    intra_trans_en_reg_76_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                intra_trans_en_reg_76 <= ap_const_lv1_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln1069_41_fu_191_p2 = ap_const_lv1_1))) then 
                intra_trans_en_reg_76 <= ap_const_lv1_1;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                add_ln870_41_reg_243 <= add_ln870_41_fu_197_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                add_ln870_42_reg_251 <= add_ln870_42_fu_213_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                add_ln870_reg_235 <= add_ln870_fu_185_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5, grp_B_IO_L2_in_intra_trans_fu_150_ap_done, icmp_ln1069_41_fu_191_p2, icmp_ln1069_42_fu_207_p2, icmp_ln1069_fu_179_p2, ap_block_state5_on_subcall_done, ap_CS_fsm_state6)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln1069_fu_179_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (icmp_ln1069_41_fu_191_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (icmp_ln1069_42_fu_207_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_boolean_0 = ap_block_state5_on_subcall_done))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_B_IO_L2_in_intra_trans_fu_150_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    add_ln870_41_fu_197_p2 <= std_logic_vector(unsigned(c1_V_reg_90) + unsigned(ap_const_lv3_1));
    add_ln870_42_fu_213_p2 <= std_logic_vector(unsigned(c2_V_reg_114) + unsigned(ap_const_lv6_1));
    add_ln870_fu_185_p2 <= std_logic_vector(unsigned(c0_V_fu_64) + unsigned(ap_const_lv3_1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_ST_fsm_state1_blk_assign_proc : process(real_start, ap_done_reg)
    begin
        if (((ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;
    ap_ST_fsm_state3_blk <= ap_const_logic_0;
    ap_ST_fsm_state4_blk <= ap_const_logic_0;

    ap_ST_fsm_state5_blk_assign_proc : process(ap_block_state5_on_subcall_done)
    begin
        if ((ap_const_boolean_1 = ap_block_state5_on_subcall_done)) then 
            ap_ST_fsm_state5_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state5_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state6_blk_assign_proc : process(grp_B_IO_L2_in_intra_trans_fu_150_ap_done)
    begin
        if ((grp_B_IO_L2_in_intra_trans_fu_150_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state6_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state6_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0));
    end process;


    ap_block_state5_on_subcall_done_assign_proc : process(grp_B_IO_L2_in_intra_trans_fu_150_ap_done, grp_B_IO_L2_in_inter_trans_fu_160_ap_done, arb_2_reg_138)
    begin
                ap_block_state5_on_subcall_done <= (((arb_2_reg_138 = ap_const_lv1_1) and (grp_B_IO_L2_in_intra_trans_fu_150_ap_done = ap_const_logic_0)) or ((arb_2_reg_138 = ap_const_lv1_1) and (grp_B_IO_L2_in_inter_trans_fu_160_ap_done = ap_const_logic_0)) or ((arb_2_reg_138 = ap_const_lv1_0) and (grp_B_IO_L2_in_intra_trans_fu_150_ap_done = ap_const_logic_0)) or ((arb_2_reg_138 = ap_const_lv1_0) and (grp_B_IO_L2_in_inter_trans_fu_160_ap_done = ap_const_logic_0)));
    end process;


    ap_done_assign_proc : process(ap_done_reg, grp_B_IO_L2_in_intra_trans_fu_150_ap_done, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_B_IO_L2_in_intra_trans_fu_150_ap_done = ap_const_logic_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (real_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_phi_mux_arb_2_phi_fu_142_p4 <= arb_2_reg_138;
    ap_ready <= internal_ap_ready;
    arb_fu_219_p2 <= (arb_2_reg_138 xor ap_const_lv1_1);

    fifo_B_B_IO_L2_in_01278_read_assign_proc : process(ap_CS_fsm_state5, grp_B_IO_L2_in_inter_trans_fu_160_fifo_B_B_IO_L2_in_01278_read, arb_2_reg_138)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state5) and (arb_2_reg_138 = ap_const_lv1_1)) or ((ap_const_logic_1 = ap_CS_fsm_state5) and (arb_2_reg_138 = ap_const_lv1_0)))) then 
            fifo_B_B_IO_L2_in_01278_read <= grp_B_IO_L2_in_inter_trans_fu_160_fifo_B_B_IO_L2_in_01278_read;
        else 
            fifo_B_B_IO_L2_in_01278_read <= ap_const_logic_0;
        end if; 
    end process;

    fifo_B_B_IO_L2_in_11279_din <= grp_B_IO_L2_in_inter_trans_fu_160_fifo_B_B_IO_L2_in_11279_din;

    fifo_B_B_IO_L2_in_11279_write_assign_proc : process(ap_CS_fsm_state5, grp_B_IO_L2_in_inter_trans_fu_160_fifo_B_B_IO_L2_in_11279_write, arb_2_reg_138)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state5) and (arb_2_reg_138 = ap_const_lv1_1)) or ((ap_const_logic_1 = ap_CS_fsm_state5) and (arb_2_reg_138 = ap_const_lv1_0)))) then 
            fifo_B_B_IO_L2_in_11279_write <= grp_B_IO_L2_in_inter_trans_fu_160_fifo_B_B_IO_L2_in_11279_write;
        else 
            fifo_B_B_IO_L2_in_11279_write <= ap_const_logic_0;
        end if; 
    end process;

    fifo_B_PE_0_01566_din <= grp_B_IO_L2_in_intra_trans_fu_150_fifo_B_PE_0_151821_din;

    fifo_B_PE_0_01566_write_assign_proc : process(ap_CS_fsm_state5, grp_B_IO_L2_in_intra_trans_fu_150_fifo_B_PE_0_151821_write, arb_2_reg_138, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) or ((ap_const_logic_1 = ap_CS_fsm_state5) and (arb_2_reg_138 = ap_const_lv1_1)) or ((ap_const_logic_1 = ap_CS_fsm_state5) and (arb_2_reg_138 = ap_const_lv1_0)))) then 
            fifo_B_PE_0_01566_write <= grp_B_IO_L2_in_intra_trans_fu_150_fifo_B_PE_0_151821_write;
        else 
            fifo_B_PE_0_01566_write <= ap_const_logic_0;
        end if; 
    end process;

    grp_B_IO_L2_in_inter_trans_fu_160_ap_start <= grp_B_IO_L2_in_inter_trans_fu_160_ap_start_reg;
    grp_B_IO_L2_in_intra_trans_fu_150_ap_start <= grp_B_IO_L2_in_intra_trans_fu_150_ap_start_reg;

    grp_B_IO_L2_in_intra_trans_fu_150_intra_trans_en_offset_assign_proc : process(ap_CS_fsm_state5, arb_2_reg_138, intra_trans_en_4_reg_125, ap_CS_fsm_state6)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state5) and (arb_2_reg_138 = ap_const_lv1_1)) or ((ap_const_logic_1 = ap_CS_fsm_state5) and (arb_2_reg_138 = ap_const_lv1_0)))) then 
            grp_B_IO_L2_in_intra_trans_fu_150_intra_trans_en_offset <= intra_trans_en_4_reg_125;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            grp_B_IO_L2_in_intra_trans_fu_150_intra_trans_en_offset <= ap_const_lv1_1;
        else 
            grp_B_IO_L2_in_intra_trans_fu_150_intra_trans_en_offset <= "X";
        end if; 
    end process;


    grp_B_IO_L2_in_intra_trans_fu_150_local_B_q0_assign_proc : process(ap_CS_fsm_state5, local_B_ping_V_q0, local_B_pong_V_q0, arb_2_reg_138, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) and (arb_2_reg_138 = ap_const_lv1_1))) then 
            grp_B_IO_L2_in_intra_trans_fu_150_local_B_q0 <= local_B_pong_V_q0;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state6) or ((ap_const_logic_1 = ap_CS_fsm_state5) and (arb_2_reg_138 = ap_const_lv1_0)))) then 
            grp_B_IO_L2_in_intra_trans_fu_150_local_B_q0 <= local_B_ping_V_q0;
        else 
            grp_B_IO_L2_in_intra_trans_fu_150_local_B_q0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    icmp_ln1069_41_fu_191_p2 <= "1" when (c1_V_reg_90 = ap_const_lv3_4) else "0";
    icmp_ln1069_42_fu_207_p2 <= "1" when (c2_V_reg_114 = ap_const_lv6_20) else "0";
    icmp_ln1069_fu_179_p2 <= "1" when (c0_V_fu_64 = ap_const_lv3_4) else "0";

    internal_ap_ready_assign_proc : process(grp_B_IO_L2_in_intra_trans_fu_150_ap_done, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_B_IO_L2_in_intra_trans_fu_150_ap_done = ap_const_logic_1))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    local_B_ping_V_address0_assign_proc : process(ap_CS_fsm_state5, grp_B_IO_L2_in_intra_trans_fu_150_local_B_address0, grp_B_IO_L2_in_inter_trans_fu_160_local_B_address0, arb_2_reg_138, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) and (arb_2_reg_138 = ap_const_lv1_1))) then 
            local_B_ping_V_address0 <= grp_B_IO_L2_in_inter_trans_fu_160_local_B_address0;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state6) or ((ap_const_logic_1 = ap_CS_fsm_state5) and (arb_2_reg_138 = ap_const_lv1_0)))) then 
            local_B_ping_V_address0 <= grp_B_IO_L2_in_intra_trans_fu_150_local_B_address0;
        else 
            local_B_ping_V_address0 <= "XXXX";
        end if; 
    end process;


    local_B_ping_V_ce0_assign_proc : process(ap_CS_fsm_state5, grp_B_IO_L2_in_intra_trans_fu_150_local_B_ce0, grp_B_IO_L2_in_inter_trans_fu_160_local_B_ce0, arb_2_reg_138, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) and (arb_2_reg_138 = ap_const_lv1_1))) then 
            local_B_ping_V_ce0 <= grp_B_IO_L2_in_inter_trans_fu_160_local_B_ce0;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state6) or ((ap_const_logic_1 = ap_CS_fsm_state5) and (arb_2_reg_138 = ap_const_lv1_0)))) then 
            local_B_ping_V_ce0 <= grp_B_IO_L2_in_intra_trans_fu_150_local_B_ce0;
        else 
            local_B_ping_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    local_B_ping_V_we0_assign_proc : process(ap_CS_fsm_state5, grp_B_IO_L2_in_inter_trans_fu_160_local_B_we0, arb_2_reg_138)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) and (arb_2_reg_138 = ap_const_lv1_1))) then 
            local_B_ping_V_we0 <= grp_B_IO_L2_in_inter_trans_fu_160_local_B_we0;
        else 
            local_B_ping_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    local_B_pong_V_address0_assign_proc : process(ap_CS_fsm_state5, grp_B_IO_L2_in_intra_trans_fu_150_local_B_address0, grp_B_IO_L2_in_inter_trans_fu_160_local_B_address0, arb_2_reg_138)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
            if ((arb_2_reg_138 = ap_const_lv1_0)) then 
                local_B_pong_V_address0 <= grp_B_IO_L2_in_inter_trans_fu_160_local_B_address0;
            elsif ((arb_2_reg_138 = ap_const_lv1_1)) then 
                local_B_pong_V_address0 <= grp_B_IO_L2_in_intra_trans_fu_150_local_B_address0;
            else 
                local_B_pong_V_address0 <= "XXXX";
            end if;
        else 
            local_B_pong_V_address0 <= "XXXX";
        end if; 
    end process;


    local_B_pong_V_ce0_assign_proc : process(ap_CS_fsm_state5, grp_B_IO_L2_in_intra_trans_fu_150_local_B_ce0, grp_B_IO_L2_in_inter_trans_fu_160_local_B_ce0, arb_2_reg_138)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
            if ((arb_2_reg_138 = ap_const_lv1_0)) then 
                local_B_pong_V_ce0 <= grp_B_IO_L2_in_inter_trans_fu_160_local_B_ce0;
            elsif ((arb_2_reg_138 = ap_const_lv1_1)) then 
                local_B_pong_V_ce0 <= grp_B_IO_L2_in_intra_trans_fu_150_local_B_ce0;
            else 
                local_B_pong_V_ce0 <= ap_const_logic_0;
            end if;
        else 
            local_B_pong_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    local_B_pong_V_we0_assign_proc : process(ap_CS_fsm_state5, grp_B_IO_L2_in_inter_trans_fu_160_local_B_we0, arb_2_reg_138)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) and (arb_2_reg_138 = ap_const_lv1_0))) then 
            local_B_pong_V_we0 <= grp_B_IO_L2_in_inter_trans_fu_160_local_B_we0;
        else 
            local_B_pong_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;
