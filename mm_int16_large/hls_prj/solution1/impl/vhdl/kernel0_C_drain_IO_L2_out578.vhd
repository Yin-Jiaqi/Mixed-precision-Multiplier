-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity kernel0_C_drain_IO_L2_out578 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    fifo_C_drain_C_drain_IO_L2_out_152365_dout : IN STD_LOGIC_VECTOR (255 downto 0);
    fifo_C_drain_C_drain_IO_L2_out_152365_empty_n : IN STD_LOGIC;
    fifo_C_drain_C_drain_IO_L2_out_152365_read : OUT STD_LOGIC;
    fifo_C_drain_C_drain_IO_L2_out_142364_din : OUT STD_LOGIC_VECTOR (255 downto 0);
    fifo_C_drain_C_drain_IO_L2_out_142364_full_n : IN STD_LOGIC;
    fifo_C_drain_C_drain_IO_L2_out_142364_write : OUT STD_LOGIC;
    fifo_C_drain_C_drain_IO_L1_out_14_02318_dout : IN STD_LOGIC_VECTOR (255 downto 0);
    fifo_C_drain_C_drain_IO_L1_out_14_02318_empty_n : IN STD_LOGIC;
    fifo_C_drain_C_drain_IO_L1_out_14_02318_read : OUT STD_LOGIC );
end;


architecture behav of kernel0_C_drain_IO_L2_out578 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv5_D : STD_LOGIC_VECTOR (4 downto 0) := "01101";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv6_30 : STD_LOGIC_VECTOR (5 downto 0) := "110000";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv5_C : STD_LOGIC_VECTOR (4 downto 0) := "01100";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal add_ln1069_fu_115_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln1069_reg_224 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln106933_fu_124_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln106933_reg_229 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1069_fu_109_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln1080_fu_154_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln1080_reg_234 : STD_LOGIC_VECTOR (4 downto 0);
    signal icmp_ln1049_fu_162_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1049_reg_239 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_ap_start : STD_LOGIC;
    signal grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_ap_done : STD_LOGIC;
    signal grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_ap_idle : STD_LOGIC;
    signal grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_ap_ready : STD_LOGIC;
    signal grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_fifo_C_drain_C_drain_IO_L2_out_152365_read : STD_LOGIC;
    signal grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_fifo_C_drain_C_drain_IO_L2_out_142364_din : STD_LOGIC_VECTOR (255 downto 0);
    signal grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_fifo_C_drain_C_drain_IO_L2_out_142364_write : STD_LOGIC;
    signal grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_ap_start : STD_LOGIC;
    signal grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_ap_done : STD_LOGIC;
    signal grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_ap_idle : STD_LOGIC;
    signal grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_ap_ready : STD_LOGIC;
    signal grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_fifo_C_drain_C_drain_IO_L1_out_14_02318_read : STD_LOGIC;
    signal grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_fifo_C_drain_C_drain_IO_L2_out_142364_din : STD_LOGIC_VECTOR (255 downto 0);
    signal grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_fifo_C_drain_C_drain_IO_L2_out_142364_write : STD_LOGIC;
    signal grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_ap_start_reg : STD_LOGIC := '0';
    signal c3_V_1_fu_60 : STD_LOGIC_VECTOR (4 downto 0);
    signal c3_V_fu_168_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_block_state3_on_subcall_done : BOOLEAN;
    signal ap_block_state1 : BOOLEAN;
    signal indvar_flatten15_fu_64 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln1069_fu_179_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal indvar_flatten27_fu_68 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln1083_fu_136_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln1079_fu_130_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln1079_fu_142_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln1080_fu_148_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln1069_17_fu_173_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component kernel0_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        fifo_C_drain_C_drain_IO_L2_out_152365_dout : IN STD_LOGIC_VECTOR (255 downto 0);
        fifo_C_drain_C_drain_IO_L2_out_152365_empty_n : IN STD_LOGIC;
        fifo_C_drain_C_drain_IO_L2_out_152365_read : OUT STD_LOGIC;
        fifo_C_drain_C_drain_IO_L2_out_142364_din : OUT STD_LOGIC_VECTOR (255 downto 0);
        fifo_C_drain_C_drain_IO_L2_out_142364_full_n : IN STD_LOGIC;
        fifo_C_drain_C_drain_IO_L2_out_142364_write : OUT STD_LOGIC );
    end component;


    component kernel0_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        fifo_C_drain_C_drain_IO_L1_out_14_02318_dout : IN STD_LOGIC_VECTOR (255 downto 0);
        fifo_C_drain_C_drain_IO_L1_out_14_02318_empty_n : IN STD_LOGIC;
        fifo_C_drain_C_drain_IO_L1_out_14_02318_read : OUT STD_LOGIC;
        fifo_C_drain_C_drain_IO_L2_out_142364_din : OUT STD_LOGIC_VECTOR (255 downto 0);
        fifo_C_drain_C_drain_IO_L2_out_142364_full_n : IN STD_LOGIC;
        fifo_C_drain_C_drain_IO_L2_out_142364_write : OUT STD_LOGIC );
    end component;



begin
    grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72 : component kernel0_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_ap_start,
        ap_done => grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_ap_done,
        ap_idle => grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_ap_idle,
        ap_ready => grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_ap_ready,
        fifo_C_drain_C_drain_IO_L2_out_152365_dout => fifo_C_drain_C_drain_IO_L2_out_152365_dout,
        fifo_C_drain_C_drain_IO_L2_out_152365_empty_n => fifo_C_drain_C_drain_IO_L2_out_152365_empty_n,
        fifo_C_drain_C_drain_IO_L2_out_152365_read => grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_fifo_C_drain_C_drain_IO_L2_out_152365_read,
        fifo_C_drain_C_drain_IO_L2_out_142364_din => grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_fifo_C_drain_C_drain_IO_L2_out_142364_din,
        fifo_C_drain_C_drain_IO_L2_out_142364_full_n => fifo_C_drain_C_drain_IO_L2_out_142364_full_n,
        fifo_C_drain_C_drain_IO_L2_out_142364_write => grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_fifo_C_drain_C_drain_IO_L2_out_142364_write);

    grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80 : component kernel0_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_ap_start,
        ap_done => grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_ap_done,
        ap_idle => grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_ap_idle,
        ap_ready => grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_ap_ready,
        fifo_C_drain_C_drain_IO_L1_out_14_02318_dout => fifo_C_drain_C_drain_IO_L1_out_14_02318_dout,
        fifo_C_drain_C_drain_IO_L1_out_14_02318_empty_n => fifo_C_drain_C_drain_IO_L1_out_14_02318_empty_n,
        fifo_C_drain_C_drain_IO_L1_out_14_02318_read => grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_fifo_C_drain_C_drain_IO_L1_out_14_02318_read,
        fifo_C_drain_C_drain_IO_L2_out_142364_din => grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_fifo_C_drain_C_drain_IO_L2_out_142364_din,
        fifo_C_drain_C_drain_IO_L2_out_142364_full_n => fifo_C_drain_C_drain_IO_L2_out_142364_full_n,
        fifo_C_drain_C_drain_IO_L2_out_142364_write => grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_fifo_C_drain_C_drain_IO_L2_out_142364_write);





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
                elsif (((icmp_ln1069_fu_109_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_ap_start_reg <= ap_const_logic_0;
            else
                if (((icmp_ln1049_fu_162_p2 = ap_const_lv1_1) and (icmp_ln1069_fu_109_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_ap_ready = ap_const_logic_1)) then 
                    grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_ap_start_reg <= ap_const_logic_0;
            else
                if (((icmp_ln1049_fu_162_p2 = ap_const_lv1_0) and (icmp_ln1069_fu_109_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_ap_ready = ap_const_logic_1)) then 
                    grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    c3_V_1_fu_60_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                c3_V_1_fu_60 <= ap_const_lv5_D;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_boolean_0 = ap_block_state3_on_subcall_done))) then 
                c3_V_1_fu_60 <= c3_V_fu_168_p2;
            end if; 
        end if;
    end process;

    indvar_flatten15_fu_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                indvar_flatten15_fu_64 <= ap_const_lv5_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_boolean_0 = ap_block_state3_on_subcall_done))) then 
                indvar_flatten15_fu_64 <= select_ln1069_fu_179_p3;
            end if; 
        end if;
    end process;

    indvar_flatten27_fu_68_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                indvar_flatten27_fu_68 <= ap_const_lv6_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_boolean_0 = ap_block_state3_on_subcall_done))) then 
                indvar_flatten27_fu_68 <= add_ln1069_reg_224;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                add_ln1069_reg_224 <= add_ln1069_fu_115_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln1069_fu_109_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                icmp_ln1049_reg_239 <= icmp_ln1049_fu_162_p2;
                icmp_ln106933_reg_229 <= icmp_ln106933_fu_124_p2;
                select_ln1080_reg_234 <= select_ln1080_fu_154_p3;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln1069_fu_109_p2, ap_CS_fsm_state3, ap_block_state3_on_subcall_done)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln1069_fu_109_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
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
    add_ln1069_17_fu_173_p2 <= std_logic_vector(unsigned(indvar_flatten15_fu_64) + unsigned(ap_const_lv5_1));
    add_ln1069_fu_115_p2 <= std_logic_vector(unsigned(indvar_flatten27_fu_68) + unsigned(ap_const_lv6_1));
    and_ln1079_fu_142_p2 <= (xor_ln1079_fu_130_p2 and icmp_ln1083_fu_136_p2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start, ap_done_reg)
    begin
        if (((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) then 
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


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state3_on_subcall_done_assign_proc : process(icmp_ln1049_reg_239, grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_ap_done, grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_ap_done)
    begin
                ap_block_state3_on_subcall_done <= (((grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_ap_done = ap_const_logic_0) and (icmp_ln1049_reg_239 = ap_const_lv1_1)) or ((grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_ap_done = ap_const_logic_0) and (icmp_ln1049_reg_239 = ap_const_lv1_0)));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state2, icmp_ln1069_fu_109_p2)
    begin
        if (((icmp_ln1069_fu_109_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln1069_fu_109_p2)
    begin
        if (((icmp_ln1069_fu_109_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    c3_V_fu_168_p2 <= std_logic_vector(unsigned(select_ln1080_reg_234) + unsigned(ap_const_lv5_1));

    fifo_C_drain_C_drain_IO_L1_out_14_02318_read_assign_proc : process(icmp_ln1049_reg_239, grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_fifo_C_drain_C_drain_IO_L1_out_14_02318_read, ap_CS_fsm_state3)
    begin
        if (((icmp_ln1049_reg_239 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            fifo_C_drain_C_drain_IO_L1_out_14_02318_read <= grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_fifo_C_drain_C_drain_IO_L1_out_14_02318_read;
        else 
            fifo_C_drain_C_drain_IO_L1_out_14_02318_read <= ap_const_logic_0;
        end if; 
    end process;


    fifo_C_drain_C_drain_IO_L2_out_142364_din_assign_proc : process(icmp_ln1049_reg_239, grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_fifo_C_drain_C_drain_IO_L2_out_142364_din, grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_fifo_C_drain_C_drain_IO_L2_out_142364_din, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
            if ((icmp_ln1049_reg_239 = ap_const_lv1_1)) then 
                fifo_C_drain_C_drain_IO_L2_out_142364_din <= grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_fifo_C_drain_C_drain_IO_L2_out_142364_din;
            elsif ((icmp_ln1049_reg_239 = ap_const_lv1_0)) then 
                fifo_C_drain_C_drain_IO_L2_out_142364_din <= grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_fifo_C_drain_C_drain_IO_L2_out_142364_din;
            else 
                fifo_C_drain_C_drain_IO_L2_out_142364_din <= grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_fifo_C_drain_C_drain_IO_L2_out_142364_din;
            end if;
        else 
            fifo_C_drain_C_drain_IO_L2_out_142364_din <= grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_fifo_C_drain_C_drain_IO_L2_out_142364_din;
        end if; 
    end process;


    fifo_C_drain_C_drain_IO_L2_out_142364_write_assign_proc : process(icmp_ln1049_reg_239, grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_fifo_C_drain_C_drain_IO_L2_out_142364_write, grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_fifo_C_drain_C_drain_IO_L2_out_142364_write, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
            if ((icmp_ln1049_reg_239 = ap_const_lv1_1)) then 
                fifo_C_drain_C_drain_IO_L2_out_142364_write <= grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_fifo_C_drain_C_drain_IO_L2_out_142364_write;
            elsif ((icmp_ln1049_reg_239 = ap_const_lv1_0)) then 
                fifo_C_drain_C_drain_IO_L2_out_142364_write <= grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_fifo_C_drain_C_drain_IO_L2_out_142364_write;
            else 
                fifo_C_drain_C_drain_IO_L2_out_142364_write <= ap_const_logic_0;
            end if;
        else 
            fifo_C_drain_C_drain_IO_L2_out_142364_write <= ap_const_logic_0;
        end if; 
    end process;


    fifo_C_drain_C_drain_IO_L2_out_152365_read_assign_proc : process(icmp_ln1049_reg_239, grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_fifo_C_drain_C_drain_IO_L2_out_152365_read, ap_CS_fsm_state3)
    begin
        if (((icmp_ln1049_reg_239 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            fifo_C_drain_C_drain_IO_L2_out_152365_read <= grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_fifo_C_drain_C_drain_IO_L2_out_152365_read;
        else 
            fifo_C_drain_C_drain_IO_L2_out_152365_read <= ap_const_logic_0;
        end if; 
    end process;

    grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_ap_start <= grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1086_4_VI_fu_80_ap_start_reg;
    grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_ap_start <= grp_C_drain_IO_L2_out578_Pipeline_VITIS_LOOP_1101_6_VI_fu_72_ap_start_reg;
    icmp_ln1049_fu_162_p2 <= "1" when (select_ln1080_fu_154_p3 = ap_const_lv5_D) else "0";
    icmp_ln106933_fu_124_p2 <= "1" when (indvar_flatten15_fu_64 = ap_const_lv5_C) else "0";
    icmp_ln1069_fu_109_p2 <= "1" when (indvar_flatten27_fu_68 = ap_const_lv6_30) else "0";
    icmp_ln1083_fu_136_p2 <= "1" when (c3_V_1_fu_60 = ap_const_lv5_10) else "0";
    or_ln1080_fu_148_p2 <= (icmp_ln106933_fu_124_p2 or and_ln1079_fu_142_p2);
    select_ln1069_fu_179_p3 <= 
        ap_const_lv5_1 when (icmp_ln106933_reg_229(0) = '1') else 
        add_ln1069_17_fu_173_p2;
    select_ln1080_fu_154_p3 <= 
        ap_const_lv5_D when (or_ln1080_fu_148_p2(0) = '1') else 
        c3_V_1_fu_60;
    xor_ln1079_fu_130_p2 <= (icmp_ln106933_fu_124_p2 xor ap_const_lv1_1);
end behav;
