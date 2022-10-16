set moduleName B_IO_L2_in
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {B_IO_L2_in}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_B_B_IO_L2_in_074 int 256 regular {fifo 0 volatile }  }
	{ fifo_B_B_IO_L2_in_175 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_0_082 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_B_B_IO_L2_in_074", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_B_IO_L2_in_175", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_0_082", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ fifo_B_B_IO_L2_in_074_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_B_B_IO_L2_in_074_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_B_B_IO_L2_in_074_read sc_out sc_logic 1 signal 0 } 
	{ fifo_B_B_IO_L2_in_175_din sc_out sc_lv 256 signal 1 } 
	{ fifo_B_B_IO_L2_in_175_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_B_B_IO_L2_in_175_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_0_082_din sc_out sc_lv 32 signal 2 } 
	{ fifo_B_PE_0_082_full_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_0_082_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_074_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_074", "role": "dout" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_074_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_074", "role": "empty_n" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_074_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_074", "role": "read" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_175_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_175", "role": "din" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_175_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_175", "role": "full_n" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_175_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_175", "role": "write" }} , 
 	{ "name": "fifo_B_PE_0_082_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_0_082", "role": "din" }} , 
 	{ "name": "fifo_B_PE_0_082_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_082", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_0_082_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_082", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "7"],
		"CDFG" : "B_IO_L2_in",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1771", "EstimateLatencyMax" : "33775",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_074", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_B_IO_L2_in_inter_trans_fu_150", "Port" : "fifo_B_B_IO_L2_in_074", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "fifo_B_B_IO_L2_in_175", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_B_IO_L2_in_inter_trans_fu_150", "Port" : "fifo_B_B_IO_L2_in_175", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "fifo_B_PE_0_082", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_B_IO_L2_in_intra_trans_fu_140", "Port" : "fifo_B_PE_0_185", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_535_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_534_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_533_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_ping_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_pong_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_intra_trans_fu_140", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "B_IO_L2_in_intra_trans",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "517",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "local_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_422_1_V_fu_36", "Port" : "local_B", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "fifo_B_PE_0_185", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_422_1_V_fu_36", "Port" : "fifo_B_PE_0_185", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "intra_trans_en_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_intra_trans_fu_140.grp_B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_422_1_V_fu_36", "Parent" : "3", "Child" : ["5", "6"],
		"CDFG" : "B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_422_1_V",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "516", "EstimateLatencyMax" : "516",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "local_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fifo_B_PE_0_185", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_185_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_422_1_VITIS_LOOP_424_2_VITIS_LOOP_426_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_intra_trans_fu_140.grp_B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_422_1_V_fu_36.mux_83_32_1_1_U47", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_intra_trans_fu_140.grp_B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_422_1_V_fu_36.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_inter_trans_fu_150", "Parent" : "0", "Child" : ["8", "10"],
		"CDFG" : "B_IO_L2_in_inter_trans",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25", "EstimateLatencyMax" : "25",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "local_B", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_460_2_fu_58", "Port" : "local_B", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fifo_B_B_IO_L2_in_074", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_460_2_fu_58", "Port" : "fifo_B_B_IO_L2_in_074", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "8", "SubInstance" : "grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_472_3_fu_50", "Port" : "fifo_B_B_IO_L2_in_074", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fifo_B_B_IO_L2_in_175", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_472_3_fu_50", "Port" : "fifo_B_B_IO_L2_in_175", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_457_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_inter_trans_fu_150.grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_472_3_fu_50", "Parent" : "7", "Child" : ["9"],
		"CDFG" : "B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_472_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_074", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_074_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_175", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_175_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_472_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_inter_trans_fu_150.grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_472_3_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_inter_trans_fu_150.grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_460_2_fu_58", "Parent" : "7", "Child" : ["11"],
		"CDFG" : "B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_460_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "local_B", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "fifo_B_B_IO_L2_in_074", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_074_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_460_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_inter_trans_fu_150.grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_460_2_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"}]}


set ArgLastReadFirstWriteLatency {
	B_IO_L2_in {
		fifo_B_B_IO_L2_in_074 {Type I LastRead 1 FirstWrite -1}
		fifo_B_B_IO_L2_in_175 {Type O LastRead -1 FirstWrite 1}
		fifo_B_PE_0_082 {Type O LastRead -1 FirstWrite 2}}
	B_IO_L2_in_intra_trans {
		local_B {Type I LastRead 2 FirstWrite -1}
		fifo_B_PE_0_185 {Type O LastRead -1 FirstWrite 2}
		intra_trans_en_offset {Type I LastRead 0 FirstWrite -1}}
	B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_422_1_V {
		local_B {Type I LastRead 2 FirstWrite -1}
		fifo_B_PE_0_185 {Type O LastRead -1 FirstWrite 2}}
	B_IO_L2_in_inter_trans {
		local_B {Type O LastRead -1 FirstWrite 1}
		fifo_B_B_IO_L2_in_074 {Type I LastRead 1 FirstWrite -1}
		fifo_B_B_IO_L2_in_175 {Type O LastRead -1 FirstWrite 1}}
	B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_472_3 {
		fifo_B_B_IO_L2_in_074 {Type I LastRead 1 FirstWrite -1}
		fifo_B_B_IO_L2_in_175 {Type O LastRead -1 FirstWrite 1}}
	B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_460_2 {
		local_B {Type O LastRead -1 FirstWrite 1}
		fifo_B_B_IO_L2_in_074 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1771", "Max" : "33775"}
	, {"Name" : "Interval", "Min" : "1771", "Max" : "33775"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_B_B_IO_L2_in_074 { ap_fifo {  { fifo_B_B_IO_L2_in_074_dout fifo_data 0 256 }  { fifo_B_B_IO_L2_in_074_empty_n fifo_status 0 1 }  { fifo_B_B_IO_L2_in_074_read fifo_update 1 1 } } }
	fifo_B_B_IO_L2_in_175 { ap_fifo {  { fifo_B_B_IO_L2_in_175_din fifo_data 1 256 }  { fifo_B_B_IO_L2_in_175_full_n fifo_status 0 1 }  { fifo_B_B_IO_L2_in_175_write fifo_update 1 1 } } }
	fifo_B_PE_0_082 { ap_fifo {  { fifo_B_PE_0_082_din fifo_data 1 32 }  { fifo_B_PE_0_082_full_n fifo_status 0 1 }  { fifo_B_PE_0_082_write fifo_update 1 1 } } }
}
set moduleName B_IO_L2_in
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {B_IO_L2_in}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_B_B_IO_L2_in_074 int 256 regular {fifo 0 volatile }  }
	{ fifo_B_B_IO_L2_in_175 int 256 regular {fifo 1 volatile }  }
	{ fifo_B_PE_0_082 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_B_B_IO_L2_in_074", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_B_IO_L2_in_175", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_0_082", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ fifo_B_B_IO_L2_in_074_dout sc_in sc_lv 256 signal 0 } 
	{ fifo_B_B_IO_L2_in_074_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_B_B_IO_L2_in_074_read sc_out sc_logic 1 signal 0 } 
	{ fifo_B_B_IO_L2_in_175_din sc_out sc_lv 256 signal 1 } 
	{ fifo_B_B_IO_L2_in_175_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_B_B_IO_L2_in_175_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_0_082_din sc_out sc_lv 32 signal 2 } 
	{ fifo_B_PE_0_082_full_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_0_082_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_074_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_074", "role": "dout" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_074_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_074", "role": "empty_n" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_074_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_074", "role": "read" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_175_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_175", "role": "din" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_175_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_175", "role": "full_n" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_175_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_175", "role": "write" }} , 
 	{ "name": "fifo_B_PE_0_082_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_B_PE_0_082", "role": "din" }} , 
 	{ "name": "fifo_B_PE_0_082_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_082", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_0_082_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_082", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "7"],
		"CDFG" : "B_IO_L2_in",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1771", "EstimateLatencyMax" : "33775",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_074", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_B_IO_L2_in_inter_trans_fu_150", "Port" : "fifo_B_B_IO_L2_in_074", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "fifo_B_B_IO_L2_in_175", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_B_IO_L2_in_inter_trans_fu_150", "Port" : "fifo_B_B_IO_L2_in_175", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "fifo_B_PE_0_082", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_B_IO_L2_in_intra_trans_fu_140", "Port" : "fifo_B_PE_0_185", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_535_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_534_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_533_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_ping_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_pong_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_intra_trans_fu_140", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "B_IO_L2_in_intra_trans",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "517",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "local_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_422_1_V_fu_36", "Port" : "local_B", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "fifo_B_PE_0_185", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_422_1_V_fu_36", "Port" : "fifo_B_PE_0_185", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "intra_trans_en_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_intra_trans_fu_140.grp_B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_422_1_V_fu_36", "Parent" : "3", "Child" : ["5", "6"],
		"CDFG" : "B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_422_1_V",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "516", "EstimateLatencyMax" : "516",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "local_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fifo_B_PE_0_185", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_185_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_422_1_VITIS_LOOP_424_2_VITIS_LOOP_426_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_intra_trans_fu_140.grp_B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_422_1_V_fu_36.mux_83_32_1_1_U47", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_intra_trans_fu_140.grp_B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_422_1_V_fu_36.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_inter_trans_fu_150", "Parent" : "0", "Child" : ["8", "10"],
		"CDFG" : "B_IO_L2_in_inter_trans",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25", "EstimateLatencyMax" : "25",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "local_B", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_460_2_fu_58", "Port" : "local_B", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fifo_B_B_IO_L2_in_074", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_472_3_fu_50", "Port" : "fifo_B_B_IO_L2_in_074", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "10", "SubInstance" : "grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_460_2_fu_58", "Port" : "fifo_B_B_IO_L2_in_074", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fifo_B_B_IO_L2_in_175", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_472_3_fu_50", "Port" : "fifo_B_B_IO_L2_in_175", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_457_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_inter_trans_fu_150.grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_472_3_fu_50", "Parent" : "7", "Child" : ["9"],
		"CDFG" : "B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_472_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_074", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_074_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_175", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_175_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_472_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_inter_trans_fu_150.grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_472_3_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_inter_trans_fu_150.grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_460_2_fu_58", "Parent" : "7", "Child" : ["11"],
		"CDFG" : "B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_460_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "local_B", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "fifo_B_B_IO_L2_in_074", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_074_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_460_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_inter_trans_fu_150.grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_460_2_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"}]}


set ArgLastReadFirstWriteLatency {
	B_IO_L2_in {
		fifo_B_B_IO_L2_in_074 {Type I LastRead 1 FirstWrite -1}
		fifo_B_B_IO_L2_in_175 {Type O LastRead -1 FirstWrite 1}
		fifo_B_PE_0_082 {Type O LastRead -1 FirstWrite 2}}
	B_IO_L2_in_intra_trans {
		local_B {Type I LastRead 2 FirstWrite -1}
		fifo_B_PE_0_185 {Type O LastRead -1 FirstWrite 2}
		intra_trans_en_offset {Type I LastRead 0 FirstWrite -1}}
	B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_422_1_V {
		local_B {Type I LastRead 2 FirstWrite -1}
		fifo_B_PE_0_185 {Type O LastRead -1 FirstWrite 2}}
	B_IO_L2_in_inter_trans {
		local_B {Type O LastRead -1 FirstWrite 1}
		fifo_B_B_IO_L2_in_074 {Type I LastRead 1 FirstWrite -1}
		fifo_B_B_IO_L2_in_175 {Type O LastRead -1 FirstWrite 1}}
	B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_472_3 {
		fifo_B_B_IO_L2_in_074 {Type I LastRead 1 FirstWrite -1}
		fifo_B_B_IO_L2_in_175 {Type O LastRead -1 FirstWrite 1}}
	B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_460_2 {
		local_B {Type O LastRead -1 FirstWrite 1}
		fifo_B_B_IO_L2_in_074 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1771", "Max" : "33775"}
	, {"Name" : "Interval", "Min" : "1771", "Max" : "33775"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_B_B_IO_L2_in_074 { ap_fifo {  { fifo_B_B_IO_L2_in_074_dout fifo_data 0 256 }  { fifo_B_B_IO_L2_in_074_empty_n fifo_status 0 1 }  { fifo_B_B_IO_L2_in_074_read fifo_update 1 1 } } }
	fifo_B_B_IO_L2_in_175 { ap_fifo {  { fifo_B_B_IO_L2_in_175_din fifo_data 1 256 }  { fifo_B_B_IO_L2_in_175_full_n fifo_status 0 1 }  { fifo_B_B_IO_L2_in_175_write fifo_update 1 1 } } }
	fifo_B_PE_0_082 { ap_fifo {  { fifo_B_PE_0_082_din fifo_data 1 32 }  { fifo_B_PE_0_082_full_n fifo_status 0 1 }  { fifo_B_PE_0_082_write fifo_update 1 1 } } }
}
