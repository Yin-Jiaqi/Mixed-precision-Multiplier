-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity kernel0_B_IO_L2_in_inter_trans is
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
end;


architecture behav of kernel0_B_IO_L2_in_inter_trans is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal idx_cast_fu_72_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal idx_cast_reg_114 : STD_LOGIC_VECTOR (4 downto 0);
    signal icmp_ln1049_fu_92_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1049_reg_125 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_fu_84_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_ap_start : STD_LOGIC;
    signal grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_ap_done : STD_LOGIC;
    signal grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_ap_idle : STD_LOGIC;
    signal grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_ap_ready : STD_LOGIC;
    signal grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_fifo_B_B_IO_L2_in_01278_read : STD_LOGIC;
    signal grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_fifo_B_B_IO_L2_in_11279_din : STD_LOGIC_VECTOR (511 downto 0);
    signal grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_fifo_B_B_IO_L2_in_11279_write : STD_LOGIC;
    signal grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_ap_start : STD_LOGIC;
    signal grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_ap_done : STD_LOGIC;
    signal grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_ap_idle : STD_LOGIC;
    signal grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_ap_ready : STD_LOGIC;
    signal grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_fifo_B_B_IO_L2_in_01278_read : STD_LOGIC;
    signal grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_local_B_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_local_B_ce0 : STD_LOGIC;
    signal grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_local_B_we0 : STD_LOGIC;
    signal grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_local_B_d0 : STD_LOGIC_VECTOR (511 downto 0);
    signal grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_ap_start_reg : STD_LOGIC := '0';
    signal c3_V_fu_46 : STD_LOGIC_VECTOR (4 downto 0);
    signal c3_V_4_fu_97_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_block_state3_on_subcall_done : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component kernel0_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        fifo_B_B_IO_L2_in_01278_dout : IN STD_LOGIC_VECTOR (511 downto 0);
        fifo_B_B_IO_L2_in_01278_empty_n : IN STD_LOGIC;
        fifo_B_B_IO_L2_in_01278_read : OUT STD_LOGIC;
        fifo_B_B_IO_L2_in_11279_din : OUT STD_LOGIC_VECTOR (511 downto 0);
        fifo_B_B_IO_L2_in_11279_full_n : IN STD_LOGIC;
        fifo_B_B_IO_L2_in_11279_write : OUT STD_LOGIC );
    end component;


    component kernel0_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        fifo_B_B_IO_L2_in_01278_dout : IN STD_LOGIC_VECTOR (511 downto 0);
        fifo_B_B_IO_L2_in_01278_empty_n : IN STD_LOGIC;
        fifo_B_B_IO_L2_in_01278_read : OUT STD_LOGIC;
        local_B_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
        local_B_ce0 : OUT STD_LOGIC;
        local_B_we0 : OUT STD_LOGIC;
        local_B_d0 : OUT STD_LOGIC_VECTOR (511 downto 0) );
    end component;



begin
    grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56 : component kernel0_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_ap_start,
        ap_done => grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_ap_done,
        ap_idle => grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_ap_idle,
        ap_ready => grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_ap_ready,
        fifo_B_B_IO_L2_in_01278_dout => fifo_B_B_IO_L2_in_01278_dout,
        fifo_B_B_IO_L2_in_01278_empty_n => fifo_B_B_IO_L2_in_01278_empty_n,
        fifo_B_B_IO_L2_in_01278_read => grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_fifo_B_B_IO_L2_in_01278_read,
        fifo_B_B_IO_L2_in_11279_din => grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_fifo_B_B_IO_L2_in_11279_din,
        fifo_B_B_IO_L2_in_11279_full_n => fifo_B_B_IO_L2_in_11279_full_n,
        fifo_B_B_IO_L2_in_11279_write => grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_fifo_B_B_IO_L2_in_11279_write);

    grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64 : component kernel0_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_ap_start,
        ap_done => grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_ap_done,
        ap_idle => grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_ap_idle,
        ap_ready => grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_ap_ready,
        fifo_B_B_IO_L2_in_01278_dout => fifo_B_B_IO_L2_in_01278_dout,
        fifo_B_B_IO_L2_in_01278_empty_n => fifo_B_B_IO_L2_in_01278_empty_n,
        fifo_B_B_IO_L2_in_01278_read => grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_fifo_B_B_IO_L2_in_01278_read,
        local_B_address0 => grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_local_B_address0,
        local_B_ce0 => grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_local_B_ce0,
        local_B_we0 => grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_local_B_we0,
        local_B_d0 => grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_local_B_d0);





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


    grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_ap_start_reg <= ap_const_logic_0;
            else
                if (((tmp_fu_84_p3 = ap_const_lv1_0) and (icmp_ln1049_fu_92_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_ap_ready = ap_const_logic_1)) then 
                    grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_ap_start_reg <= ap_const_logic_0;
            else
                if (((tmp_fu_84_p3 = ap_const_lv1_0) and (icmp_ln1049_fu_92_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_ap_ready = ap_const_logic_1)) then 
                    grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    c3_V_fu_46_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                c3_V_fu_46 <= idx_cast_fu_72_p1;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_boolean_0 = ap_block_state3_on_subcall_done))) then 
                c3_V_fu_46 <= c3_V_4_fu_97_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_fu_84_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                icmp_ln1049_reg_125 <= icmp_ln1049_fu_92_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                    idx_cast_reg_114(3 downto 0) <= idx_cast_fu_72_p1(3 downto 0);
            end if;
        end if;
    end process;
    idx_cast_reg_114(4) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, tmp_fu_84_p3, ap_CS_fsm_state3, ap_block_state3_on_subcall_done)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((tmp_fu_84_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_boolean_0 = ap_block_state3_on_subcall_done))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;

    ap_ST_fsm_state3_blk_assign_proc : process(ap_block_state3_on_subcall_done)
    begin
        if ((ap_const_boolean_1 = ap_block_state3_on_subcall_done)) then 
            ap_ST_fsm_state3_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state3_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state3_on_subcall_done_assign_proc : process(icmp_ln1049_reg_125, grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_ap_done, grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_ap_done)
    begin
                ap_block_state3_on_subcall_done <= (((grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_ap_done = ap_const_logic_0) and (icmp_ln1049_reg_125 = ap_const_lv1_0)) or ((grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_ap_done = ap_const_logic_0) and (icmp_ln1049_reg_125 = ap_const_lv1_1)));
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, tmp_fu_84_p3)
    begin
        if ((((tmp_fu_84_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, tmp_fu_84_p3)
    begin
        if (((tmp_fu_84_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    c3_V_4_fu_97_p2 <= std_logic_vector(unsigned(c3_V_fu_46) + unsigned(ap_const_lv5_1));

    fifo_B_B_IO_L2_in_01278_read_assign_proc : process(icmp_ln1049_reg_125, grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_fifo_B_B_IO_L2_in_01278_read, grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_fifo_B_B_IO_L2_in_01278_read, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
            if ((icmp_ln1049_reg_125 = ap_const_lv1_1)) then 
                fifo_B_B_IO_L2_in_01278_read <= grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_fifo_B_B_IO_L2_in_01278_read;
            elsif ((icmp_ln1049_reg_125 = ap_const_lv1_0)) then 
                fifo_B_B_IO_L2_in_01278_read <= grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_fifo_B_B_IO_L2_in_01278_read;
            else 
                fifo_B_B_IO_L2_in_01278_read <= ap_const_logic_0;
            end if;
        else 
            fifo_B_B_IO_L2_in_01278_read <= ap_const_logic_0;
        end if; 
    end process;

    fifo_B_B_IO_L2_in_11279_din <= grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_fifo_B_B_IO_L2_in_11279_din;

    fifo_B_B_IO_L2_in_11279_write_assign_proc : process(icmp_ln1049_reg_125, grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_fifo_B_B_IO_L2_in_11279_write, ap_CS_fsm_state3)
    begin
        if (((icmp_ln1049_reg_125 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            fifo_B_B_IO_L2_in_11279_write <= grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_fifo_B_B_IO_L2_in_11279_write;
        else 
            fifo_B_B_IO_L2_in_11279_write <= ap_const_logic_0;
        end if; 
    end process;

    grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_ap_start <= grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_ap_start_reg;
    grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_ap_start <= grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56_ap_start_reg;
    icmp_ln1049_fu_92_p2 <= "1" when (c3_V_fu_46 = idx_cast_reg_114) else "0";
    idx_cast_fu_72_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(idx),5));
    local_B_address0 <= grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_local_B_address0;
    local_B_ce0 <= grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_local_B_ce0;
    local_B_d0 <= grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_local_B_d0;
    local_B_we0 <= grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64_local_B_we0;
    tmp_fu_84_p3 <= c3_V_fu_46(4 downto 4);
end behav;
