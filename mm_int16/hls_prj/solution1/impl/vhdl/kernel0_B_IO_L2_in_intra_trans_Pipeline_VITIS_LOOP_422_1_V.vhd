-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity kernel0_B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_422_1_V is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    fifo_B_PE_0_185_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    fifo_B_PE_0_185_full_n : IN STD_LOGIC;
    fifo_B_PE_0_185_write : OUT STD_LOGIC;
    local_B_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    local_B_ce0 : OUT STD_LOGIC;
    local_B_q0 : IN STD_LOGIC_VECTOR (255 downto 0) );
end;


architecture behav of kernel0_B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_422_1_V is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv10_200 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv8_40 : STD_LOGIC_VECTOR (7 downto 0) := "01000000";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_40 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000000";
    constant ap_const_lv32_5F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001011111";
    constant ap_const_lv32_60 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001100000";
    constant ap_const_lv32_7F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001111111";
    constant ap_const_lv32_80 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010000000";
    constant ap_const_lv32_9F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010011111";
    constant ap_const_lv32_A0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010100000";
    constant ap_const_lv32_BF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010111111";
    constant ap_const_lv32_C0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000011000000";
    constant ap_const_lv32_DF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000011011111";
    constant ap_const_lv32_E0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000011100000";
    constant ap_const_lv32_FF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000011111111";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal icmp_ln1069_reg_783 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1069_reg_783_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln1069_fu_182_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal fifo_B_PE_0_185_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln1069_11_fu_200_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1069_11_reg_787 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1069_11_reg_787_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln106929_fu_212_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln106929_reg_802 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln422_fu_218_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln422_reg_806 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln422_reg_806_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln422_fu_350_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal trunc_ln422_reg_824 : STD_LOGIC_VECTOR (2 downto 0);
    signal p_cast_fu_301_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv_i46_mid1_fu_327_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_cast1_fu_370_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal c7_V_fu_98 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_c7_V_load : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln870_fu_236_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal c6_V_fu_102 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln1069_18_fu_375_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal indvar_flatten_fu_106 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_sig_allocacmp_indvar_flatten_load : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln1069_19_fu_250_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal c5_V_fu_110 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln422_2_fu_343_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal indvar_flatten34_fu_114 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_sig_allocacmp_indvar_flatten34_load : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln1069_6_fu_188_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal p_0_fu_726_p10 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal xor_ln422_fu_206_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln870_fu_230_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln870_8_fu_224_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln1069_fu_244_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_fu_279_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_fu_291_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal zext_ln1069_fu_287_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal empty_168_fu_295_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln870_fu_306_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_2_fu_319_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln422_1_fu_332_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln422_fu_312_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln870_7_fu_354_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal empty_170_fu_360_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal zext_ln422_fu_339_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal empty_171_fu_364_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal data_split_V_1_mid_fu_462_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal data_split_V_1_fu_392_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal data_split_V_2_mid_fu_479_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal data_split_V_2_fu_402_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal data_split_V_3_mid_fu_496_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal data_split_V_3_fu_412_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal data_split_V_4_mid_fu_513_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal data_split_V_4_fu_422_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal data_split_V_5_mid_fu_530_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal data_split_V_5_fu_432_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal data_split_V_6_mid_fu_547_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal data_split_V_6_fu_442_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal data_split_V_7_mid_fu_564_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal data_split_V_7_fu_452_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln1069_2_fu_585_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln1069_3_fu_589_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln1069_fu_581_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln422_10_fu_593_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal data_split_V_1_mid1_fu_607_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln422_3_fu_472_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal data_split_V_2_mid1_fu_624_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln422_4_fu_489_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal data_split_V_3_mid1_fu_641_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln422_5_fu_506_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal data_split_V_4_mid1_fu_658_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln422_6_fu_523_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal data_split_V_5_mid1_fu_675_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln422_7_fu_540_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal data_split_V_6_mid1_fu_692_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln422_8_fu_557_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal data_split_V_7_mid1_fu_709_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln422_9_fu_574_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_0_fu_726_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_0_fu_726_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_0_fu_726_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_0_fu_726_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_0_fu_726_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_0_fu_726_p6 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_0_fu_726_p7 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_0_fu_726_p8 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_condition_165 : BOOLEAN;
    signal ap_condition_105 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

    component kernel0_mux_83_32_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        din4_WIDTH : INTEGER;
        din5_WIDTH : INTEGER;
        din6_WIDTH : INTEGER;
        din7_WIDTH : INTEGER;
        din8_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        din2 : IN STD_LOGIC_VECTOR (31 downto 0);
        din3 : IN STD_LOGIC_VECTOR (31 downto 0);
        din4 : IN STD_LOGIC_VECTOR (31 downto 0);
        din5 : IN STD_LOGIC_VECTOR (31 downto 0);
        din6 : IN STD_LOGIC_VECTOR (31 downto 0);
        din7 : IN STD_LOGIC_VECTOR (31 downto 0);
        din8 : IN STD_LOGIC_VECTOR (2 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component kernel0_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    mux_83_32_1_1_U47 : component kernel0_mux_83_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 32,
        din4_WIDTH => 32,
        din5_WIDTH => 32,
        din6_WIDTH => 32,
        din7_WIDTH => 32,
        din8_WIDTH => 3,
        dout_WIDTH => 32)
    port map (
        din0 => p_0_fu_726_p1,
        din1 => p_0_fu_726_p2,
        din2 => p_0_fu_726_p3,
        din3 => p_0_fu_726_p4,
        din4 => p_0_fu_726_p5,
        din5 => p_0_fu_726_p6,
        din6 => p_0_fu_726_p7,
        din7 => p_0_fu_726_p8,
        din8 => trunc_ln422_reg_824,
        dout => p_0_fu_726_p10);

    flow_control_loop_pipe_sequential_init_U : component kernel0_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
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
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready_pp0_iter2_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_loop_exit_ready_pp0_iter2_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                ap_loop_exit_ready_pp0_iter2_reg <= ap_const_logic_0;
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
            end if; 
        end if;
    end process;

    c5_V_fu_110_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    c5_V_fu_110 <= ap_const_lv4_0;
                elsif (((icmp_ln1069_reg_783 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    c5_V_fu_110 <= select_ln422_2_fu_343_p3;
                end if;
            end if; 
        end if;
    end process;

    c6_V_fu_102_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    c6_V_fu_102 <= ap_const_lv4_0;
                elsif (((icmp_ln1069_reg_783 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    c6_V_fu_102 <= select_ln1069_18_fu_375_p3;
                end if;
            end if; 
        end if;
    end process;

    c7_V_fu_98_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln1069_fu_182_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    c7_V_fu_98 <= select_ln870_fu_236_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    c7_V_fu_98 <= ap_const_lv4_0;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten34_fu_114_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln1069_fu_182_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    indvar_flatten34_fu_114 <= add_ln1069_6_fu_188_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten34_fu_114 <= ap_const_lv10_0;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten_fu_106_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln1069_fu_182_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    indvar_flatten_fu_106 <= select_ln1069_19_fu_250_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten_fu_106 <= ap_const_lv8_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln1069_fu_182_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                and_ln422_reg_806 <= and_ln422_fu_218_p2;
                icmp_ln106929_reg_802 <= icmp_ln106929_fu_212_p2;
                icmp_ln1069_11_reg_787 <= icmp_ln1069_11_fu_200_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                and_ln422_reg_806_pp0_iter1_reg <= and_ln422_reg_806;
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                icmp_ln1069_11_reg_787_pp0_iter1_reg <= icmp_ln1069_11_reg_787;
                icmp_ln1069_reg_783 <= icmp_ln1069_fu_182_p2;
                icmp_ln1069_reg_783_pp0_iter1_reg <= icmp_ln1069_reg_783;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln1069_reg_783 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                trunc_ln422_reg_824 <= trunc_ln422_fu_350_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln1069_6_fu_188_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten34_load) + unsigned(ap_const_lv10_1));
    add_ln1069_fu_244_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten_load) + unsigned(ap_const_lv8_1));
    add_ln870_7_fu_354_p2 <= std_logic_vector(unsigned(select_ln422_fu_312_p3) + unsigned(ap_const_lv4_1));
    add_ln870_8_fu_224_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_c7_V_load) + unsigned(ap_const_lv4_1));
    add_ln870_fu_306_p2 <= std_logic_vector(unsigned(c5_V_fu_110) + unsigned(ap_const_lv4_1));
    and_ln422_fu_218_p2 <= (xor_ln422_fu_206_p2 and icmp_ln106929_fu_212_p2);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter2, fifo_B_PE_0_185_full_n, icmp_ln1069_reg_783_pp0_iter1_reg)
    begin
                ap_block_pp0_stage0_01001 <= ((icmp_ln1069_reg_783_pp0_iter1_reg = ap_const_lv1_0) and (fifo_B_PE_0_185_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter2, fifo_B_PE_0_185_full_n, icmp_ln1069_reg_783_pp0_iter1_reg)
    begin
                ap_block_pp0_stage0_11001 <= ((icmp_ln1069_reg_783_pp0_iter1_reg = ap_const_lv1_0) and (fifo_B_PE_0_185_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter2, fifo_B_PE_0_185_full_n, icmp_ln1069_reg_783_pp0_iter1_reg)
    begin
                ap_block_pp0_stage0_subdone <= ((icmp_ln1069_reg_783_pp0_iter1_reg = ap_const_lv1_0) and (fifo_B_PE_0_185_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1));
    end process;

        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_pp0_stage0_iter2_assign_proc : process(fifo_B_PE_0_185_full_n, icmp_ln1069_reg_783_pp0_iter1_reg)
    begin
                ap_block_state3_pp0_stage0_iter2 <= ((icmp_ln1069_reg_783_pp0_iter1_reg = ap_const_lv1_0) and (fifo_B_PE_0_185_full_n = ap_const_logic_0));
    end process;


    ap_condition_105_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
                ap_condition_105 <= ((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_condition_165_assign_proc : process(icmp_ln1069_reg_783, icmp_ln1069_11_reg_787, icmp_ln106929_reg_802)
    begin
                ap_condition_165 <= ((icmp_ln106929_reg_802 = ap_const_lv1_1) and (icmp_ln1069_11_reg_787 = ap_const_lv1_0) and (icmp_ln1069_reg_783 = ap_const_lv1_0));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln1069_fu_182_p2)
    begin
        if (((icmp_ln1069_fu_182_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter2_reg)
    begin
        if (((ap_loop_exit_ready_pp0_iter2_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_c7_V_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, c7_V_fu_98, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_c7_V_load <= ap_const_lv4_0;
        else 
            ap_sig_allocacmp_c7_V_load <= c7_V_fu_98;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten34_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten34_fu_114)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_indvar_flatten34_load <= ap_const_lv10_0;
        else 
            ap_sig_allocacmp_indvar_flatten34_load <= indvar_flatten34_fu_114;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten_fu_106)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_indvar_flatten_load <= ap_const_lv8_0;
        else 
            ap_sig_allocacmp_indvar_flatten_load <= indvar_flatten_fu_106;
        end if; 
    end process;

    conv_i46_mid1_fu_327_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_2_fu_319_p3),64));
    data_split_V_1_fu_392_p4 <= local_B_q0(63 downto 32);
    data_split_V_1_mid1_fu_607_p4 <= local_B_q0(63 downto 32);
    data_split_V_1_mid_fu_462_p4 <= local_B_q0(63 downto 32);
    data_split_V_2_fu_402_p4 <= local_B_q0(95 downto 64);
    data_split_V_2_mid1_fu_624_p4 <= local_B_q0(95 downto 64);
    data_split_V_2_mid_fu_479_p4 <= local_B_q0(95 downto 64);
    data_split_V_3_fu_412_p4 <= local_B_q0(127 downto 96);
    data_split_V_3_mid1_fu_641_p4 <= local_B_q0(127 downto 96);
    data_split_V_3_mid_fu_496_p4 <= local_B_q0(127 downto 96);
    data_split_V_4_fu_422_p4 <= local_B_q0(159 downto 128);
    data_split_V_4_mid1_fu_658_p4 <= local_B_q0(159 downto 128);
    data_split_V_4_mid_fu_513_p4 <= local_B_q0(159 downto 128);
    data_split_V_5_fu_432_p4 <= local_B_q0(191 downto 160);
    data_split_V_5_mid1_fu_675_p4 <= local_B_q0(191 downto 160);
    data_split_V_5_mid_fu_530_p4 <= local_B_q0(191 downto 160);
    data_split_V_6_fu_442_p4 <= local_B_q0(223 downto 192);
    data_split_V_6_mid1_fu_692_p4 <= local_B_q0(223 downto 192);
    data_split_V_6_mid_fu_547_p4 <= local_B_q0(223 downto 192);
    data_split_V_7_fu_452_p4 <= local_B_q0(255 downto 224);
    data_split_V_7_mid1_fu_709_p4 <= local_B_q0(255 downto 224);
    data_split_V_7_mid_fu_564_p4 <= local_B_q0(255 downto 224);
    empty_168_fu_295_p2 <= std_logic_vector(unsigned(empty_fu_291_p1) + unsigned(zext_ln1069_fu_287_p1));
    empty_170_fu_360_p1 <= add_ln870_7_fu_354_p2(3 - 1 downto 0);
    empty_171_fu_364_p2 <= std_logic_vector(unsigned(empty_170_fu_360_p1) + unsigned(zext_ln422_fu_339_p1));
    empty_fu_291_p1 <= c6_V_fu_102(3 - 1 downto 0);

    fifo_B_PE_0_185_blk_n_assign_proc : process(ap_enable_reg_pp0_iter2, fifo_B_PE_0_185_full_n, icmp_ln1069_reg_783_pp0_iter1_reg, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (icmp_ln1069_reg_783_pp0_iter1_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            fifo_B_PE_0_185_blk_n <= fifo_B_PE_0_185_full_n;
        else 
            fifo_B_PE_0_185_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    fifo_B_PE_0_185_din <= p_0_fu_726_p10;

    fifo_B_PE_0_185_write_assign_proc : process(ap_enable_reg_pp0_iter2, icmp_ln1069_reg_783_pp0_iter1_reg, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln1069_reg_783_pp0_iter1_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            fifo_B_PE_0_185_write <= ap_const_logic_1;
        else 
            fifo_B_PE_0_185_write <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln106929_fu_212_p2 <= "1" when (ap_sig_allocacmp_c7_V_load = ap_const_lv4_8) else "0";
    icmp_ln1069_11_fu_200_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten_load = ap_const_lv8_40) else "0";
    icmp_ln1069_fu_182_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten34_load = ap_const_lv10_200) else "0";

    local_B_address0_assign_proc : process(icmp_ln1069_reg_783, icmp_ln1069_11_reg_787, icmp_ln106929_reg_802, p_cast_fu_301_p1, conv_i46_mid1_fu_327_p1, p_cast1_fu_370_p1, ap_condition_165, ap_condition_105)
    begin
        if ((ap_const_boolean_1 = ap_condition_105)) then
            if ((ap_const_boolean_1 = ap_condition_165)) then 
                local_B_address0 <= p_cast1_fu_370_p1(3 - 1 downto 0);
            elsif (((icmp_ln1069_11_reg_787 = ap_const_lv1_1) and (icmp_ln1069_reg_783 = ap_const_lv1_0))) then 
                local_B_address0 <= conv_i46_mid1_fu_327_p1(3 - 1 downto 0);
            elsif (((icmp_ln106929_reg_802 = ap_const_lv1_0) and (icmp_ln1069_11_reg_787 = ap_const_lv1_0))) then 
                local_B_address0 <= p_cast_fu_301_p1(3 - 1 downto 0);
            else 
                local_B_address0 <= "XXX";
            end if;
        else 
            local_B_address0 <= "XXX";
        end if; 
    end process;


    local_B_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln1069_reg_783, ap_block_pp0_stage0_11001, icmp_ln1069_11_reg_787, icmp_ln106929_reg_802)
    begin
        if ((((icmp_ln106929_reg_802 = ap_const_lv1_1) and (icmp_ln1069_11_reg_787 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln1069_reg_783 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((icmp_ln1069_11_reg_787 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln1069_reg_783 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((icmp_ln106929_reg_802 = ap_const_lv1_0) and (icmp_ln1069_11_reg_787 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            local_B_ce0 <= ap_const_logic_1;
        else 
            local_B_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    or_ln870_fu_230_p2 <= (icmp_ln1069_11_fu_200_p2 or and_ln422_fu_218_p2);
    p_0_fu_726_p1 <= 
        trunc_ln1069_fu_581_p1 when (and_ln422_reg_806_pp0_iter1_reg(0) = '1') else 
        select_ln422_10_fu_593_p3;
    p_0_fu_726_p2 <= 
        data_split_V_1_mid1_fu_607_p4 when (and_ln422_reg_806_pp0_iter1_reg(0) = '1') else 
        select_ln422_3_fu_472_p3;
    p_0_fu_726_p3 <= 
        data_split_V_2_mid1_fu_624_p4 when (and_ln422_reg_806_pp0_iter1_reg(0) = '1') else 
        select_ln422_4_fu_489_p3;
    p_0_fu_726_p4 <= 
        data_split_V_3_mid1_fu_641_p4 when (and_ln422_reg_806_pp0_iter1_reg(0) = '1') else 
        select_ln422_5_fu_506_p3;
    p_0_fu_726_p5 <= 
        data_split_V_4_mid1_fu_658_p4 when (and_ln422_reg_806_pp0_iter1_reg(0) = '1') else 
        select_ln422_6_fu_523_p3;
    p_0_fu_726_p6 <= 
        data_split_V_5_mid1_fu_675_p4 when (and_ln422_reg_806_pp0_iter1_reg(0) = '1') else 
        select_ln422_7_fu_540_p3;
    p_0_fu_726_p7 <= 
        data_split_V_6_mid1_fu_692_p4 when (and_ln422_reg_806_pp0_iter1_reg(0) = '1') else 
        select_ln422_8_fu_557_p3;
    p_0_fu_726_p8 <= 
        data_split_V_7_mid1_fu_709_p4 when (and_ln422_reg_806_pp0_iter1_reg(0) = '1') else 
        select_ln422_9_fu_574_p3;
    p_cast1_fu_370_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(empty_171_fu_364_p2),64));
    p_cast_fu_301_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(empty_168_fu_295_p2),64));
    select_ln1069_18_fu_375_p3 <= 
        add_ln870_7_fu_354_p2 when (and_ln422_reg_806(0) = '1') else 
        select_ln422_fu_312_p3;
    select_ln1069_19_fu_250_p3 <= 
        ap_const_lv8_1 when (icmp_ln1069_11_fu_200_p2(0) = '1') else 
        add_ln1069_fu_244_p2;
    select_ln422_10_fu_593_p3 <= 
        trunc_ln1069_2_fu_585_p1 when (icmp_ln1069_11_reg_787_pp0_iter1_reg(0) = '1') else 
        trunc_ln1069_3_fu_589_p1;
    select_ln422_1_fu_332_p3 <= 
        tmp_2_fu_319_p3 when (icmp_ln1069_11_reg_787(0) = '1') else 
        tmp_fu_279_p3;
    select_ln422_2_fu_343_p3 <= 
        add_ln870_fu_306_p2 when (icmp_ln1069_11_reg_787(0) = '1') else 
        c5_V_fu_110;
    select_ln422_3_fu_472_p3 <= 
        data_split_V_1_mid_fu_462_p4 when (icmp_ln1069_11_reg_787_pp0_iter1_reg(0) = '1') else 
        data_split_V_1_fu_392_p4;
    select_ln422_4_fu_489_p3 <= 
        data_split_V_2_mid_fu_479_p4 when (icmp_ln1069_11_reg_787_pp0_iter1_reg(0) = '1') else 
        data_split_V_2_fu_402_p4;
    select_ln422_5_fu_506_p3 <= 
        data_split_V_3_mid_fu_496_p4 when (icmp_ln1069_11_reg_787_pp0_iter1_reg(0) = '1') else 
        data_split_V_3_fu_412_p4;
    select_ln422_6_fu_523_p3 <= 
        data_split_V_4_mid_fu_513_p4 when (icmp_ln1069_11_reg_787_pp0_iter1_reg(0) = '1') else 
        data_split_V_4_fu_422_p4;
    select_ln422_7_fu_540_p3 <= 
        data_split_V_5_mid_fu_530_p4 when (icmp_ln1069_11_reg_787_pp0_iter1_reg(0) = '1') else 
        data_split_V_5_fu_432_p4;
    select_ln422_8_fu_557_p3 <= 
        data_split_V_6_mid_fu_547_p4 when (icmp_ln1069_11_reg_787_pp0_iter1_reg(0) = '1') else 
        data_split_V_6_fu_442_p4;
    select_ln422_9_fu_574_p3 <= 
        data_split_V_7_mid_fu_564_p4 when (icmp_ln1069_11_reg_787_pp0_iter1_reg(0) = '1') else 
        data_split_V_7_fu_452_p4;
    select_ln422_fu_312_p3 <= 
        ap_const_lv4_0 when (icmp_ln1069_11_reg_787(0) = '1') else 
        c6_V_fu_102;
    select_ln870_fu_236_p3 <= 
        ap_const_lv4_1 when (or_ln870_fu_230_p2(0) = '1') else 
        add_ln870_8_fu_224_p2;
    tmp_2_fu_319_p3 <= add_ln870_fu_306_p2(3 downto 3);
    tmp_fu_279_p3 <= c5_V_fu_110(3 downto 3);
    trunc_ln1069_2_fu_585_p1 <= local_B_q0(32 - 1 downto 0);
    trunc_ln1069_3_fu_589_p1 <= local_B_q0(32 - 1 downto 0);
    trunc_ln1069_fu_581_p1 <= local_B_q0(32 - 1 downto 0);
    trunc_ln422_fu_350_p1 <= select_ln422_2_fu_343_p3(3 - 1 downto 0);
    xor_ln422_fu_206_p2 <= (icmp_ln1069_11_fu_200_p2 xor ap_const_lv1_1);
    zext_ln1069_fu_287_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_279_p3),3));
    zext_ln422_fu_339_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln422_1_fu_332_p3),3));
end behav;