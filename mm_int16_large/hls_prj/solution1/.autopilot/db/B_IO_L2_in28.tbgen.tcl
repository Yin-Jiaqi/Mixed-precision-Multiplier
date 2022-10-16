set moduleName B_IO_L2_in28
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
set C_modelName {B_IO_L2_in28}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_B_B_IO_L2_in_01278 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_B_IO_L2_in_11279 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_0_01566 int 512 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_B_B_IO_L2_in_01278", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_B_IO_L2_in_11279", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_0_01566", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
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
	{ fifo_B_B_IO_L2_in_01278_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_B_B_IO_L2_in_01278_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_B_B_IO_L2_in_01278_read sc_out sc_logic 1 signal 0 } 
	{ fifo_B_B_IO_L2_in_11279_din sc_out sc_lv 512 signal 1 } 
	{ fifo_B_B_IO_L2_in_11279_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_B_B_IO_L2_in_11279_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_0_01566_din sc_out sc_lv 512 signal 2 } 
	{ fifo_B_PE_0_01566_full_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_0_01566_write sc_out sc_logic 1 signal 2 } 
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
 	{ "name": "fifo_B_B_IO_L2_in_01278_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_01278", "role": "dout" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_01278_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_01278", "role": "empty_n" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_01278_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_01278", "role": "read" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_11279_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_11279", "role": "din" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_11279_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_11279", "role": "full_n" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_11279_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_11279", "role": "write" }} , 
 	{ "name": "fifo_B_PE_0_01566_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_0_01566", "role": "din" }} , 
 	{ "name": "fifo_B_PE_0_01566_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_01566", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_0_01566_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_01566", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6"],
		"CDFG" : "B_IO_L2_in28",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_01278", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_B_IO_L2_in_inter_trans_fu_160", "Port" : "fifo_B_B_IO_L2_in_01278", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "fifo_B_B_IO_L2_in_11279", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_B_IO_L2_in_inter_trans_fu_160", "Port" : "fifo_B_B_IO_L2_in_11279", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "fifo_B_PE_0_01566", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_B_IO_L2_in_intra_trans_fu_150", "Port" : "fifo_B_PE_0_151821", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_500_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_499_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_498_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_ping_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_pong_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_intra_trans_fu_150", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "B_IO_L2_in_intra_trans",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "259",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "local_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_396_1_V_fu_36", "Port" : "local_B", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "fifo_B_PE_0_151821", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_396_1_V_fu_36", "Port" : "fifo_B_PE_0_151821", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "intra_trans_en_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_intra_trans_fu_150.grp_B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_396_1_V_fu_36", "Parent" : "3", "Child" : ["5"],
		"CDFG" : "B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_396_1_V",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "local_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fifo_B_PE_0_151821", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_151821_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1_VITIS_LOOP_398_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_intra_trans_fu_150.grp_B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_396_1_V_fu_36.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_inter_trans_fu_160", "Parent" : "0", "Child" : ["7", "9"],
		"CDFG" : "B_IO_L2_in_inter_trans",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64", "Port" : "local_B", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fifo_B_B_IO_L2_in_01278", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56", "Port" : "fifo_B_B_IO_L2_in_01278", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "9", "SubInstance" : "grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64", "Port" : "fifo_B_B_IO_L2_in_01278", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fifo_B_B_IO_L2_in_11279", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56", "Port" : "fifo_B_B_IO_L2_in_11279", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_422_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_inter_trans_fu_160.grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56", "Parent" : "6", "Child" : ["8"],
		"CDFG" : "B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_01278", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_01278_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_11279", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_11279_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_437_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_inter_trans_fu_160.grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_inter_trans_fu_160.grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64", "Parent" : "6", "Child" : ["10"],
		"CDFG" : "B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "local_B", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "fifo_B_B_IO_L2_in_01278", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_01278_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_425_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_inter_trans_fu_160.grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"}]}


set ArgLastReadFirstWriteLatency {
	B_IO_L2_in28 {
		fifo_B_B_IO_L2_in_01278 {Type I LastRead 1 FirstWrite -1}
		fifo_B_B_IO_L2_in_11279 {Type O LastRead -1 FirstWrite 1}
		fifo_B_PE_0_01566 {Type O LastRead -1 FirstWrite 1}}
	B_IO_L2_in_intra_trans {
		local_B {Type I LastRead 0 FirstWrite -1}
		fifo_B_PE_0_151821 {Type O LastRead -1 FirstWrite 1}
		intra_trans_en_offset {Type I LastRead 0 FirstWrite -1}}
	B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_396_1_V {
		local_B {Type I LastRead 0 FirstWrite -1}
		fifo_B_PE_0_151821 {Type O LastRead -1 FirstWrite 1}}
	B_IO_L2_in_inter_trans {
		idx {Type I LastRead 0 FirstWrite -1}
		local_B {Type O LastRead -1 FirstWrite 1}
		fifo_B_B_IO_L2_in_01278 {Type I LastRead 1 FirstWrite -1}
		fifo_B_B_IO_L2_in_11279 {Type O LastRead -1 FirstWrite 1}}
	B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3 {
		fifo_B_B_IO_L2_in_01278 {Type I LastRead 1 FirstWrite -1}
		fifo_B_B_IO_L2_in_11279 {Type O LastRead -1 FirstWrite 1}}
	B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2 {
		local_B {Type O LastRead -1 FirstWrite 1}
		fifo_B_B_IO_L2_in_01278 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_B_B_IO_L2_in_01278 { ap_fifo {  { fifo_B_B_IO_L2_in_01278_dout fifo_data 0 512 }  { fifo_B_B_IO_L2_in_01278_empty_n fifo_status 0 1 }  { fifo_B_B_IO_L2_in_01278_read fifo_update 1 1 } } }
	fifo_B_B_IO_L2_in_11279 { ap_fifo {  { fifo_B_B_IO_L2_in_11279_din fifo_data 1 512 }  { fifo_B_B_IO_L2_in_11279_full_n fifo_status 0 1 }  { fifo_B_B_IO_L2_in_11279_write fifo_update 1 1 } } }
	fifo_B_PE_0_01566 { ap_fifo {  { fifo_B_PE_0_01566_din fifo_data 1 512 }  { fifo_B_PE_0_01566_full_n fifo_status 0 1 }  { fifo_B_PE_0_01566_write fifo_update 1 1 } } }
}
set moduleName B_IO_L2_in28
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
set C_modelName {B_IO_L2_in28}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_B_B_IO_L2_in_01278 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_B_IO_L2_in_11279 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_0_01566 int 512 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_B_B_IO_L2_in_01278", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_B_IO_L2_in_11279", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_0_01566", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
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
	{ fifo_B_B_IO_L2_in_01278_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_B_B_IO_L2_in_01278_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_B_B_IO_L2_in_01278_read sc_out sc_logic 1 signal 0 } 
	{ fifo_B_B_IO_L2_in_11279_din sc_out sc_lv 512 signal 1 } 
	{ fifo_B_B_IO_L2_in_11279_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_B_B_IO_L2_in_11279_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_0_01566_din sc_out sc_lv 512 signal 2 } 
	{ fifo_B_PE_0_01566_full_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_0_01566_write sc_out sc_logic 1 signal 2 } 
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
 	{ "name": "fifo_B_B_IO_L2_in_01278_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_01278", "role": "dout" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_01278_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_01278", "role": "empty_n" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_01278_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_01278", "role": "read" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_11279_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_11279", "role": "din" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_11279_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_11279", "role": "full_n" }} , 
 	{ "name": "fifo_B_B_IO_L2_in_11279_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_B_IO_L2_in_11279", "role": "write" }} , 
 	{ "name": "fifo_B_PE_0_01566_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_0_01566", "role": "din" }} , 
 	{ "name": "fifo_B_PE_0_01566_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_01566", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_0_01566_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_01566", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6"],
		"CDFG" : "B_IO_L2_in28",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_01278", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_B_IO_L2_in_inter_trans_fu_160", "Port" : "fifo_B_B_IO_L2_in_01278", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "fifo_B_B_IO_L2_in_11279", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_B_IO_L2_in_inter_trans_fu_160", "Port" : "fifo_B_B_IO_L2_in_11279", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "fifo_B_PE_0_01566", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_B_IO_L2_in_intra_trans_fu_150", "Port" : "fifo_B_PE_0_151821", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_500_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_499_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_498_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_ping_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_B_pong_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_intra_trans_fu_150", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "B_IO_L2_in_intra_trans",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "259",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "local_B", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_396_1_V_fu_36", "Port" : "local_B", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "fifo_B_PE_0_151821", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_396_1_V_fu_36", "Port" : "fifo_B_PE_0_151821", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "intra_trans_en_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_intra_trans_fu_150.grp_B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_396_1_V_fu_36", "Parent" : "3", "Child" : ["5"],
		"CDFG" : "B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_396_1_V",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "local_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fifo_B_PE_0_151821", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_151821_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1_VITIS_LOOP_398_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_intra_trans_fu_150.grp_B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_396_1_V_fu_36.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_inter_trans_fu_160", "Parent" : "0", "Child" : ["7", "9"],
		"CDFG" : "B_IO_L2_in_inter_trans",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_B", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64", "Port" : "local_B", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fifo_B_B_IO_L2_in_01278", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56", "Port" : "fifo_B_B_IO_L2_in_01278", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "9", "SubInstance" : "grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64", "Port" : "fifo_B_B_IO_L2_in_01278", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fifo_B_B_IO_L2_in_11279", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56", "Port" : "fifo_B_B_IO_L2_in_11279", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_422_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_inter_trans_fu_160.grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56", "Parent" : "6", "Child" : ["8"],
		"CDFG" : "B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_B_B_IO_L2_in_01278", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_01278_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_B_IO_L2_in_11279", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_11279_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_437_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_inter_trans_fu_160.grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_inter_trans_fu_160.grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64", "Parent" : "6", "Child" : ["10"],
		"CDFG" : "B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "local_B", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "fifo_B_B_IO_L2_in_01278", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fifo_B_B_IO_L2_in_01278_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_425_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_B_IO_L2_in_inter_trans_fu_160.grp_B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2_fu_64.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"}]}


set ArgLastReadFirstWriteLatency {
	B_IO_L2_in28 {
		fifo_B_B_IO_L2_in_01278 {Type I LastRead 1 FirstWrite -1}
		fifo_B_B_IO_L2_in_11279 {Type O LastRead -1 FirstWrite 1}
		fifo_B_PE_0_01566 {Type O LastRead -1 FirstWrite 1}}
	B_IO_L2_in_intra_trans {
		local_B {Type I LastRead 0 FirstWrite -1}
		fifo_B_PE_0_151821 {Type O LastRead -1 FirstWrite 1}
		intra_trans_en_offset {Type I LastRead 0 FirstWrite -1}}
	B_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_396_1_V {
		local_B {Type I LastRead 0 FirstWrite -1}
		fifo_B_PE_0_151821 {Type O LastRead -1 FirstWrite 1}}
	B_IO_L2_in_inter_trans {
		idx {Type I LastRead 0 FirstWrite -1}
		local_B {Type O LastRead -1 FirstWrite 1}
		fifo_B_B_IO_L2_in_01278 {Type I LastRead 1 FirstWrite -1}
		fifo_B_B_IO_L2_in_11279 {Type O LastRead -1 FirstWrite 1}}
	B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_437_3 {
		fifo_B_B_IO_L2_in_01278 {Type I LastRead 1 FirstWrite -1}
		fifo_B_B_IO_L2_in_11279 {Type O LastRead -1 FirstWrite 1}}
	B_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_425_2 {
		local_B {Type O LastRead -1 FirstWrite 1}
		fifo_B_B_IO_L2_in_01278 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_B_B_IO_L2_in_01278 { ap_fifo {  { fifo_B_B_IO_L2_in_01278_dout fifo_data 0 512 }  { fifo_B_B_IO_L2_in_01278_empty_n fifo_status 0 1 }  { fifo_B_B_IO_L2_in_01278_read fifo_update 1 1 } } }
	fifo_B_B_IO_L2_in_11279 { ap_fifo {  { fifo_B_B_IO_L2_in_11279_din fifo_data 1 512 }  { fifo_B_B_IO_L2_in_11279_full_n fifo_status 0 1 }  { fifo_B_B_IO_L2_in_11279_write fifo_update 1 1 } } }
	fifo_B_PE_0_01566 { ap_fifo {  { fifo_B_PE_0_01566_din fifo_data 1 512 }  { fifo_B_PE_0_01566_full_n fifo_status 0 1 }  { fifo_B_PE_0_01566_write fifo_update 1 1 } } }
}
