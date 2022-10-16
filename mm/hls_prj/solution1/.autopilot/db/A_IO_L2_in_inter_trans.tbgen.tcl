set moduleName A_IO_L2_in_inter_trans
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
set C_modelName {A_IO_L2_in_inter_trans}
set C_modelType { void 0 }
set C_modelArgList {
	{ local_A int 512 regular {array 8 { 3 0 } 0 1 }  }
	{ fifo_A_A_IO_L2_in_072 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_A_IO_L2_in_173 int 512 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "local_A", "interface" : "memory", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_A_A_IO_L2_in_072", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_A_IO_L2_in_173", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ local_A_address1 sc_out sc_lv 3 signal 0 } 
	{ local_A_ce1 sc_out sc_logic 1 signal 0 } 
	{ local_A_we1 sc_out sc_logic 1 signal 0 } 
	{ local_A_d1 sc_out sc_lv 512 signal 0 } 
	{ fifo_A_A_IO_L2_in_072_dout sc_in sc_lv 512 signal 1 } 
	{ fifo_A_A_IO_L2_in_072_empty_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_A_IO_L2_in_072_read sc_out sc_logic 1 signal 1 } 
	{ fifo_A_A_IO_L2_in_173_din sc_out sc_lv 512 signal 2 } 
	{ fifo_A_A_IO_L2_in_173_full_n sc_in sc_logic 1 signal 2 } 
	{ fifo_A_A_IO_L2_in_173_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "local_A_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_A", "role": "address1" }} , 
 	{ "name": "local_A_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A", "role": "ce1" }} , 
 	{ "name": "local_A_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A", "role": "we1" }} , 
 	{ "name": "local_A_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "local_A", "role": "d1" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_072_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_072", "role": "dout" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_072_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_072", "role": "empty_n" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_072_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_072", "role": "read" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_173_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_173", "role": "din" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_173_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_173", "role": "full_n" }} , 
 	{ "name": "fifo_A_A_IO_L2_in_173_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_A_IO_L2_in_173", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3"],
		"CDFG" : "A_IO_L2_in_inter_trans",
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
			{"Name" : "local_A", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_100_2_fu_58", "Port" : "local_A", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fifo_A_A_IO_L2_in_072", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_100_2_fu_58", "Port" : "fifo_A_A_IO_L2_in_072", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "1", "SubInstance" : "grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_112_3_fu_50", "Port" : "fifo_A_A_IO_L2_in_072", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fifo_A_A_IO_L2_in_173", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_112_3_fu_50", "Port" : "fifo_A_A_IO_L2_in_173", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_112_3_fu_50", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_112_3",
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
			{"Name" : "fifo_A_A_IO_L2_in_072", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_072_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_A_IO_L2_in_173", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_173_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_112_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_112_3_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_100_2_fu_58", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_100_2",
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
			{"Name" : "local_A", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "fifo_A_A_IO_L2_in_072", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fifo_A_A_IO_L2_in_072_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_100_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_100_2_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"}]}


set ArgLastReadFirstWriteLatency {
	A_IO_L2_in_inter_trans {
		local_A {Type O LastRead -1 FirstWrite 1}
		fifo_A_A_IO_L2_in_072 {Type I LastRead 1 FirstWrite -1}
		fifo_A_A_IO_L2_in_173 {Type O LastRead -1 FirstWrite 1}}
	A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_112_3 {
		fifo_A_A_IO_L2_in_072 {Type I LastRead 1 FirstWrite -1}
		fifo_A_A_IO_L2_in_173 {Type O LastRead -1 FirstWrite 1}}
	A_IO_L2_in_inter_trans_Pipeline_VITIS_LOOP_100_2 {
		local_A {Type O LastRead -1 FirstWrite 1}
		fifo_A_A_IO_L2_in_072 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "25", "Max" : "25"}
	, {"Name" : "Interval", "Min" : "25", "Max" : "25"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	local_A { ap_memory {  { local_A_address1 MemPortADDR2 1 3 }  { local_A_ce1 MemPortCE2 1 1 }  { local_A_we1 MemPortWE2 1 1 }  { local_A_d1 MemPortDIN2 1 512 } } }
	fifo_A_A_IO_L2_in_072 { ap_fifo {  { fifo_A_A_IO_L2_in_072_dout fifo_data 0 512 }  { fifo_A_A_IO_L2_in_072_empty_n fifo_status 0 1 }  { fifo_A_A_IO_L2_in_072_read fifo_update 1 1 } } }
	fifo_A_A_IO_L2_in_173 { ap_fifo {  { fifo_A_A_IO_L2_in_173_din fifo_data 1 512 }  { fifo_A_A_IO_L2_in_173_full_n fifo_status 0 1 }  { fifo_A_A_IO_L2_in_173_write fifo_update 1 1 } } }
}
