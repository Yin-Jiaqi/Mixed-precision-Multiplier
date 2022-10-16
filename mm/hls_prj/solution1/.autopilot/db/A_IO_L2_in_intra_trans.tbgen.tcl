set moduleName A_IO_L2_in_intra_trans
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
set C_modelName {A_IO_L2_in_intra_trans}
set C_modelType { void 0 }
set C_modelArgList {
	{ local_A int 512 regular {array 8 { 1 3 } 1 1 }  }
	{ fifo_A_PE_1_079 int 64 regular {fifo 1 volatile }  }
	{ intra_trans_en_offset uint 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "local_A", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_1_079", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "intra_trans_en_offset", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ local_A_address0 sc_out sc_lv 3 signal 0 } 
	{ local_A_ce0 sc_out sc_logic 1 signal 0 } 
	{ local_A_q0 sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_1_079_din sc_out sc_lv 64 signal 1 } 
	{ fifo_A_PE_1_079_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_1_079_write sc_out sc_logic 1 signal 1 } 
	{ intra_trans_en_offset sc_in sc_lv 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "local_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_A", "role": "address0" }} , 
 	{ "name": "local_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_A", "role": "ce0" }} , 
 	{ "name": "local_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "local_A", "role": "q0" }} , 
 	{ "name": "fifo_A_PE_1_079_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fifo_A_PE_1_079", "role": "din" }} , 
 	{ "name": "fifo_A_PE_1_079_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_079", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_1_079_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_1_079", "role": "write" }} , 
 	{ "name": "intra_trans_en_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "intra_trans_en_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "A_IO_L2_in_intra_trans",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "515",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "local_A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_62_1_VI_fu_36", "Port" : "local_A", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "fifo_A_PE_1_079", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_62_1_VI_fu_36", "Port" : "fifo_A_PE_1_079", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "intra_trans_en_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_62_1_VI_fu_36", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_62_1_VI",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "514", "EstimateLatencyMax" : "514",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "local_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fifo_A_PE_1_079", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_1_079_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_62_1_VITIS_LOOP_64_2_VITIS_LOOP_66_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_62_1_VI_fu_36.mux_83_64_1_1_U17", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_62_1_VI_fu_36.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	A_IO_L2_in_intra_trans {
		local_A {Type I LastRead 0 FirstWrite -1}
		fifo_A_PE_1_079 {Type O LastRead -1 FirstWrite 1}
		intra_trans_en_offset {Type I LastRead 0 FirstWrite -1}}
	A_IO_L2_in_intra_trans_Pipeline_VITIS_LOOP_62_1_VI {
		local_A {Type I LastRead 0 FirstWrite -1}
		fifo_A_PE_1_079 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "515"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "515"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	local_A { ap_memory {  { local_A_address0 mem_address 1 3 }  { local_A_ce0 mem_ce 1 1 }  { local_A_q0 mem_dout 0 512 } } }
	fifo_A_PE_1_079 { ap_fifo {  { fifo_A_PE_1_079_din fifo_data 1 64 }  { fifo_A_PE_1_079_full_n fifo_status 0 1 }  { fifo_A_PE_1_079_write fifo_update 1 1 } } }
	intra_trans_en_offset { ap_none {  { intra_trans_en_offset in_data 0 1 } } }
}
