-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity kernel0_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_gmem_A_AWVALID : OUT STD_LOGIC;
    m_axi_gmem_A_AWREADY : IN STD_LOGIC;
    m_axi_gmem_A_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem_A_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_A_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem_A_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_A_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_A_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_A_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_A_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_A_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_A_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_A_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_A_WVALID : OUT STD_LOGIC;
    m_axi_gmem_A_WREADY : IN STD_LOGIC;
    m_axi_gmem_A_WDATA : OUT STD_LOGIC_VECTOR (511 downto 0);
    m_axi_gmem_A_WSTRB : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem_A_WLAST : OUT STD_LOGIC;
    m_axi_gmem_A_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_A_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_A_ARVALID : OUT STD_LOGIC;
    m_axi_gmem_A_ARREADY : IN STD_LOGIC;
    m_axi_gmem_A_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem_A_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_A_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem_A_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_A_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_A_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_A_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_A_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_A_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_A_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_A_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_A_RVALID : IN STD_LOGIC;
    m_axi_gmem_A_RREADY : OUT STD_LOGIC;
    m_axi_gmem_A_RDATA : IN STD_LOGIC_VECTOR (511 downto 0);
    m_axi_gmem_A_RLAST : IN STD_LOGIC;
    m_axi_gmem_A_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_A_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_A_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_A_BVALID : IN STD_LOGIC;
    m_axi_gmem_A_BREADY : OUT STD_LOGIC;
    m_axi_gmem_A_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_A_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_A_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    fifo_A_A_IO_L3_in_serialize69_din : OUT STD_LOGIC_VECTOR (511 downto 0);
    fifo_A_A_IO_L3_in_serialize69_full_n : IN STD_LOGIC;
    fifo_A_A_IO_L3_in_serialize69_write : OUT STD_LOGIC;
    sext_ln38 : IN STD_LOGIC_VECTOR (57 downto 0) );
end;


architecture behav of kernel0_A_IO_L3_in_serialize_Pipeline_VITIS_LOOP_38_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv512_lc_1 : STD_LOGIC_VECTOR (511 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv11_400 : STD_LOGIC_VECTOR (10 downto 0) := "10000000000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";

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
    signal icmp_ln38_reg_115 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln38_fu_80_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal gmem_A_blk_n_R : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal fifo_A_A_IO_L3_in_serialize69_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal fifo_data_reg_119 : STD_LOGIC_VECTOR (511 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal i_V_fu_46 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_V_5 : STD_LOGIC_VECTOR (10 downto 0);
    signal i_V_6_fu_86_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

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
                elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
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
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
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
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    i_V_fu_46_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln38_fu_80_p2 = ap_const_lv1_0))) then 
                    i_V_fu_46 <= i_V_6_fu_86_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_V_fu_46 <= ap_const_lv11_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                icmp_ln38_reg_115 <= icmp_ln38_fu_80_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln38_reg_115 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                fifo_data_reg_119 <= m_axi_gmem_A_RDATA;
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
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, m_axi_gmem_A_RVALID, icmp_ln38_reg_115, fifo_A_A_IO_L3_in_serialize69_full_n)
    begin
                ap_block_pp0_stage0_01001 <= (((fifo_A_A_IO_L3_in_serialize69_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((icmp_ln38_reg_115 = ap_const_lv1_0) and (m_axi_gmem_A_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, m_axi_gmem_A_RVALID, icmp_ln38_reg_115, fifo_A_A_IO_L3_in_serialize69_full_n)
    begin
                ap_block_pp0_stage0_11001 <= (((fifo_A_A_IO_L3_in_serialize69_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((icmp_ln38_reg_115 = ap_const_lv1_0) and (m_axi_gmem_A_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, m_axi_gmem_A_RVALID, icmp_ln38_reg_115, fifo_A_A_IO_L3_in_serialize69_full_n)
    begin
                ap_block_pp0_stage0_subdone <= (((fifo_A_A_IO_L3_in_serialize69_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((icmp_ln38_reg_115 = ap_const_lv1_0) and (m_axi_gmem_A_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)));
    end process;

        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state2_pp0_stage0_iter1_assign_proc : process(m_axi_gmem_A_RVALID, icmp_ln38_reg_115)
    begin
                ap_block_state2_pp0_stage0_iter1 <= ((icmp_ln38_reg_115 = ap_const_lv1_0) and (m_axi_gmem_A_RVALID = ap_const_logic_0));
    end process;


    ap_block_state3_pp0_stage0_iter2_assign_proc : process(fifo_A_A_IO_L3_in_serialize69_full_n)
    begin
                ap_block_state3_pp0_stage0_iter2 <= (fifo_A_A_IO_L3_in_serialize69_full_n = ap_const_logic_0);
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln38_fu_80_p2)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln38_fu_80_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln38_reg_115, ap_block_pp0_stage0_subdone)
    begin
        if (((icmp_ln38_reg_115 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter1_reg)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_V_5_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, i_V_fu_46, ap_loop_init)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_sig_allocacmp_i_V_5 <= ap_const_lv11_0;
        else 
            ap_sig_allocacmp_i_V_5 <= i_V_fu_46;
        end if; 
    end process;


    fifo_A_A_IO_L3_in_serialize69_blk_n_assign_proc : process(ap_enable_reg_pp0_iter2, fifo_A_A_IO_L3_in_serialize69_full_n, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            fifo_A_A_IO_L3_in_serialize69_blk_n <= fifo_A_A_IO_L3_in_serialize69_full_n;
        else 
            fifo_A_A_IO_L3_in_serialize69_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    fifo_A_A_IO_L3_in_serialize69_din <= fifo_data_reg_119;

    fifo_A_A_IO_L3_in_serialize69_write_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            fifo_A_A_IO_L3_in_serialize69_write <= ap_const_logic_1;
        else 
            fifo_A_A_IO_L3_in_serialize69_write <= ap_const_logic_0;
        end if; 
    end process;


    gmem_A_blk_n_R_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, m_axi_gmem_A_RVALID, icmp_ln38_reg_115, ap_block_pp0_stage0)
    begin
        if (((icmp_ln38_reg_115 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            gmem_A_blk_n_R <= m_axi_gmem_A_RVALID;
        else 
            gmem_A_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;

    i_V_6_fu_86_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_V_5) + unsigned(ap_const_lv11_1));
    icmp_ln38_fu_80_p2 <= "1" when (ap_sig_allocacmp_i_V_5 = ap_const_lv11_400) else "0";
    m_axi_gmem_A_ARADDR <= ap_const_lv64_0;
    m_axi_gmem_A_ARBURST <= ap_const_lv2_0;
    m_axi_gmem_A_ARCACHE <= ap_const_lv4_0;
    m_axi_gmem_A_ARID <= ap_const_lv1_0;
    m_axi_gmem_A_ARLEN <= ap_const_lv32_0;
    m_axi_gmem_A_ARLOCK <= ap_const_lv2_0;
    m_axi_gmem_A_ARPROT <= ap_const_lv3_0;
    m_axi_gmem_A_ARQOS <= ap_const_lv4_0;
    m_axi_gmem_A_ARREGION <= ap_const_lv4_0;
    m_axi_gmem_A_ARSIZE <= ap_const_lv3_0;
    m_axi_gmem_A_ARUSER <= ap_const_lv1_0;
    m_axi_gmem_A_ARVALID <= ap_const_logic_0;
    m_axi_gmem_A_AWADDR <= ap_const_lv64_0;
    m_axi_gmem_A_AWBURST <= ap_const_lv2_0;
    m_axi_gmem_A_AWCACHE <= ap_const_lv4_0;
    m_axi_gmem_A_AWID <= ap_const_lv1_0;
    m_axi_gmem_A_AWLEN <= ap_const_lv32_0;
    m_axi_gmem_A_AWLOCK <= ap_const_lv2_0;
    m_axi_gmem_A_AWPROT <= ap_const_lv3_0;
    m_axi_gmem_A_AWQOS <= ap_const_lv4_0;
    m_axi_gmem_A_AWREGION <= ap_const_lv4_0;
    m_axi_gmem_A_AWSIZE <= ap_const_lv3_0;
    m_axi_gmem_A_AWUSER <= ap_const_lv1_0;
    m_axi_gmem_A_AWVALID <= ap_const_logic_0;
    m_axi_gmem_A_BREADY <= ap_const_logic_0;

    m_axi_gmem_A_RREADY_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln38_reg_115, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln38_reg_115 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            m_axi_gmem_A_RREADY <= ap_const_logic_1;
        else 
            m_axi_gmem_A_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_gmem_A_WDATA <= ap_const_lv512_lc_1;
    m_axi_gmem_A_WID <= ap_const_lv1_0;
    m_axi_gmem_A_WLAST <= ap_const_logic_0;
    m_axi_gmem_A_WSTRB <= ap_const_lv64_0;
    m_axi_gmem_A_WUSER <= ap_const_lv1_0;
    m_axi_gmem_A_WVALID <= ap_const_logic_0;
end behav;
