-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity kernel0_C_drain_IO_L1_out_wrapper503 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    fifo_C_drain_C_drain_IO_L1_out_0_152109_dout : IN STD_LOGIC_VECTOR (255 downto 0);
    fifo_C_drain_C_drain_IO_L1_out_0_152109_empty_n : IN STD_LOGIC;
    fifo_C_drain_C_drain_IO_L1_out_0_152109_read : OUT STD_LOGIC;
    fifo_C_drain_C_drain_IO_L1_out_0_142108_din : OUT STD_LOGIC_VECTOR (255 downto 0);
    fifo_C_drain_C_drain_IO_L1_out_0_142108_full_n : IN STD_LOGIC;
    fifo_C_drain_C_drain_IO_L1_out_0_142108_write : OUT STD_LOGIC;
    fifo_C_drain_PE_14_01852_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    fifo_C_drain_PE_14_01852_empty_n : IN STD_LOGIC;
    fifo_C_drain_PE_14_01852_read : OUT STD_LOGIC );
end;


architecture behav of kernel0_C_drain_IO_L1_out_wrapper503 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv4_A : STD_LOGIC_VECTOR (3 downto 0) := "1010";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal grp_C_drain_IO_L1_out_fu_26_ap_start : STD_LOGIC;
    signal grp_C_drain_IO_L1_out_fu_26_ap_done : STD_LOGIC;
    signal grp_C_drain_IO_L1_out_fu_26_ap_idle : STD_LOGIC;
    signal grp_C_drain_IO_L1_out_fu_26_ap_ready : STD_LOGIC;
    signal grp_C_drain_IO_L1_out_fu_26_fifo_C_drain_C_drain_IO_L1_out_0_152109_read : STD_LOGIC;
    signal grp_C_drain_IO_L1_out_fu_26_fifo_C_drain_C_drain_IO_L1_out_0_142108_din : STD_LOGIC_VECTOR (255 downto 0);
    signal grp_C_drain_IO_L1_out_fu_26_fifo_C_drain_C_drain_IO_L1_out_0_142108_write : STD_LOGIC;
    signal grp_C_drain_IO_L1_out_fu_26_fifo_C_drain_PE_14_01852_read : STD_LOGIC;
    signal grp_C_drain_IO_L1_out_fu_26_ap_start_reg : STD_LOGIC := '0';
    signal ap_block_state1_ignore_call6 : BOOLEAN;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component kernel0_C_drain_IO_L1_out IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        idy : IN STD_LOGIC_VECTOR (3 downto 0);
        fifo_C_drain_C_drain_IO_L1_out_0_152109_dout : IN STD_LOGIC_VECTOR (255 downto 0);
        fifo_C_drain_C_drain_IO_L1_out_0_152109_empty_n : IN STD_LOGIC;
        fifo_C_drain_C_drain_IO_L1_out_0_152109_read : OUT STD_LOGIC;
        fifo_C_drain_C_drain_IO_L1_out_0_142108_din : OUT STD_LOGIC_VECTOR (255 downto 0);
        fifo_C_drain_C_drain_IO_L1_out_0_142108_full_n : IN STD_LOGIC;
        fifo_C_drain_C_drain_IO_L1_out_0_142108_write : OUT STD_LOGIC;
        fifo_C_drain_PE_14_01852_dout : IN STD_LOGIC_VECTOR (15 downto 0);
        fifo_C_drain_PE_14_01852_empty_n : IN STD_LOGIC;
        fifo_C_drain_PE_14_01852_read : OUT STD_LOGIC );
    end component;



begin
    grp_C_drain_IO_L1_out_fu_26 : component kernel0_C_drain_IO_L1_out
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_C_drain_IO_L1_out_fu_26_ap_start,
        ap_done => grp_C_drain_IO_L1_out_fu_26_ap_done,
        ap_idle => grp_C_drain_IO_L1_out_fu_26_ap_idle,
        ap_ready => grp_C_drain_IO_L1_out_fu_26_ap_ready,
        idy => ap_const_lv4_A,
        fifo_C_drain_C_drain_IO_L1_out_0_152109_dout => fifo_C_drain_C_drain_IO_L1_out_0_152109_dout,
        fifo_C_drain_C_drain_IO_L1_out_0_152109_empty_n => fifo_C_drain_C_drain_IO_L1_out_0_152109_empty_n,
        fifo_C_drain_C_drain_IO_L1_out_0_152109_read => grp_C_drain_IO_L1_out_fu_26_fifo_C_drain_C_drain_IO_L1_out_0_152109_read,
        fifo_C_drain_C_drain_IO_L1_out_0_142108_din => grp_C_drain_IO_L1_out_fu_26_fifo_C_drain_C_drain_IO_L1_out_0_142108_din,
        fifo_C_drain_C_drain_IO_L1_out_0_142108_full_n => fifo_C_drain_C_drain_IO_L1_out_0_142108_full_n,
        fifo_C_drain_C_drain_IO_L1_out_0_142108_write => grp_C_drain_IO_L1_out_fu_26_fifo_C_drain_C_drain_IO_L1_out_0_142108_write,
        fifo_C_drain_PE_14_01852_dout => fifo_C_drain_PE_14_01852_dout,
        fifo_C_drain_PE_14_01852_empty_n => fifo_C_drain_PE_14_01852_empty_n,
        fifo_C_drain_PE_14_01852_read => grp_C_drain_IO_L1_out_fu_26_fifo_C_drain_PE_14_01852_read);





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
                elsif (((grp_C_drain_IO_L1_out_fu_26_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    grp_C_drain_IO_L1_out_fu_26_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_C_drain_IO_L1_out_fu_26_ap_start_reg <= ap_const_logic_0;
            else
                if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_C_drain_IO_L1_out_fu_26_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_C_drain_IO_L1_out_fu_26_ap_ready = ap_const_logic_1)) then 
                    grp_C_drain_IO_L1_out_fu_26_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, grp_C_drain_IO_L1_out_fu_26_ap_done, ap_CS_fsm_state2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((grp_C_drain_IO_L1_out_fu_26_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
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

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start, ap_done_reg)
    begin
        if (((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state2_blk_assign_proc : process(grp_C_drain_IO_L1_out_fu_26_ap_done)
    begin
        if ((grp_C_drain_IO_L1_out_fu_26_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state2_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state2_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state1_ignore_call6_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1_ignore_call6 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_done_assign_proc : process(ap_done_reg, grp_C_drain_IO_L1_out_fu_26_ap_done, ap_CS_fsm_state2)
    begin
        if (((grp_C_drain_IO_L1_out_fu_26_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
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


    ap_ready_assign_proc : process(grp_C_drain_IO_L1_out_fu_26_ap_done, ap_CS_fsm_state2)
    begin
        if (((grp_C_drain_IO_L1_out_fu_26_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    fifo_C_drain_C_drain_IO_L1_out_0_142108_din <= grp_C_drain_IO_L1_out_fu_26_fifo_C_drain_C_drain_IO_L1_out_0_142108_din;

    fifo_C_drain_C_drain_IO_L1_out_0_142108_write_assign_proc : process(grp_C_drain_IO_L1_out_fu_26_fifo_C_drain_C_drain_IO_L1_out_0_142108_write, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            fifo_C_drain_C_drain_IO_L1_out_0_142108_write <= grp_C_drain_IO_L1_out_fu_26_fifo_C_drain_C_drain_IO_L1_out_0_142108_write;
        else 
            fifo_C_drain_C_drain_IO_L1_out_0_142108_write <= ap_const_logic_0;
        end if; 
    end process;


    fifo_C_drain_C_drain_IO_L1_out_0_152109_read_assign_proc : process(grp_C_drain_IO_L1_out_fu_26_fifo_C_drain_C_drain_IO_L1_out_0_152109_read, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            fifo_C_drain_C_drain_IO_L1_out_0_152109_read <= grp_C_drain_IO_L1_out_fu_26_fifo_C_drain_C_drain_IO_L1_out_0_152109_read;
        else 
            fifo_C_drain_C_drain_IO_L1_out_0_152109_read <= ap_const_logic_0;
        end if; 
    end process;


    fifo_C_drain_PE_14_01852_read_assign_proc : process(grp_C_drain_IO_L1_out_fu_26_fifo_C_drain_PE_14_01852_read, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            fifo_C_drain_PE_14_01852_read <= grp_C_drain_IO_L1_out_fu_26_fifo_C_drain_PE_14_01852_read;
        else 
            fifo_C_drain_PE_14_01852_read <= ap_const_logic_0;
        end if; 
    end process;

    grp_C_drain_IO_L1_out_fu_26_ap_start <= grp_C_drain_IO_L1_out_fu_26_ap_start_reg;
end behav;
