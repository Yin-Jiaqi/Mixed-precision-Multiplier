-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity kernel0_A_IO_L2_in_intra_trans is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    local_A_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    local_A_ce0 : OUT STD_LOGIC;
    local_A_q0 : IN STD_LOGIC_VECTOR (255 downto 0);
    fifo_A_PE_1_079_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    fifo_A_PE_1_079_full_n : IN STD_LOGIC;
    fifo_A_PE_1_079_write : OUT STD_LOGIC;
    intra_trans_en_offset : IN STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of kernel0_A_IO_L2_in_intra_trans is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_ap_start : STD_LOGIC;
    signal grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_ap_done : STD_LOGIC;
    signal grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_ap_idle : STD_LOGIC;
    signal grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_ap_ready : STD_LOGIC;
    signal grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_fifo_A_PE_1_079_din : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_fifo_A_PE_1_079_write : STD_LOGIC;
    signal grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_local_A_address0 : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_local_A_ce0 : STD_LOGIC;
    signal grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_block_state2_on_subcall_done : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component kernel0_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        fifo_A_PE_1_079_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        fifo_A_PE_1_079_full_n : IN STD_LOGIC;
        fifo_A_PE_1_079_write : OUT STD_LOGIC;
        local_A_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
        local_A_ce0 : OUT STD_LOGIC;
        local_A_q0 : IN STD_LOGIC_VECTOR (255 downto 0) );
    end component;



begin
    grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36 : component kernel0_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_ap_start,
        ap_done => grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_ap_done,
        ap_idle => grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_ap_idle,
        ap_ready => grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_ap_ready,
        fifo_A_PE_1_079_din => grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_fifo_A_PE_1_079_din,
        fifo_A_PE_1_079_full_n => fifo_A_PE_1_079_full_n,
        fifo_A_PE_1_079_write => grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_fifo_A_PE_1_079_write,
        local_A_address0 => grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_local_A_address0,
        local_A_ce0 => grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_local_A_ce0,
        local_A_q0 => local_A_q0);





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


    grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_start = ap_const_logic_1) and (intra_trans_en_offset = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_ap_ready = ap_const_logic_1)) then 
                    grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_boolean_0 = ap_block_state2_on_subcall_done) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state2_blk_assign_proc : process(ap_block_state2_on_subcall_done)
    begin
        if ((ap_const_boolean_1 = ap_block_state2_on_subcall_done)) then 
            ap_ST_fsm_state2_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state2_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state2_on_subcall_done_assign_proc : process(intra_trans_en_offset, grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_ap_done)
    begin
                ap_block_state2_on_subcall_done <= ((grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_ap_done = ap_const_logic_0) and (intra_trans_en_offset = ap_const_lv1_1));
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_boolean_0 = ap_block_state2_on_subcall_done) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        if (((ap_const_boolean_0 = ap_block_state2_on_subcall_done) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    fifo_A_PE_1_079_din <= grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_fifo_A_PE_1_079_din;

    fifo_A_PE_1_079_write_assign_proc : process(intra_trans_en_offset, grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_fifo_A_PE_1_079_write, ap_CS_fsm_state2)
    begin
        if (((intra_trans_en_offset = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            fifo_A_PE_1_079_write <= grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_fifo_A_PE_1_079_write;
        else 
            fifo_A_PE_1_079_write <= ap_const_logic_0;
        end if; 
    end process;

    grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_ap_start <= grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_ap_start_reg;
    local_A_address0 <= grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_local_A_address0;
    local_A_ce0 <= grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_72_1_VI_fu_36_local_A_ce0;
end behav;
