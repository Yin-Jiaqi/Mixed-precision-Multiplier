set moduleName C_drain_IO_L1_out_boundary_wrapper_Pipeline_VITIS_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {C_drain_IO_L1_out_boundary_wrapper_Pipeline_VITIS_.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ local_C_V int 256 regular {array 16 { 1 0 } 1 1 }  }
	{ fifo_C_drain_PE_15_01853 int 16 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "local_C_V", "interface" : "memory", "bitwidth" : 256, "direction" : "READWRITE"} , 
 	{ "Name" : "fifo_C_drain_PE_15_01853", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fifo_C_drain_PE_15_01853_dout sc_in sc_lv 16 signal 1 } 
	{ fifo_C_drain_PE_15_01853_empty_n sc_in sc_logic 1 signal 1 } 
	{ fifo_C_drain_PE_15_01853_read sc_out sc_logic 1 signal 1 } 
	{ local_C_V_address0 sc_out sc_lv 4 signal 0 } 
	{ local_C_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ local_C_V_q0 sc_in sc_lv 256 signal 0 } 
	{ local_C_V_address1 sc_out sc_lv 4 signal 0 } 
	{ local_C_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ local_C_V_we1 sc_out sc_logic 1 signal 0 } 
	{ local_C_V_d1 sc_out sc_lv 256 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_C_drain_PE_15_01853_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_15_01853", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_PE_15_01853_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_15_01853", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_PE_15_01853_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_15_01853", "role": "read" }} , 
 	{ "name": "local_C_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_C_V", "role": "address0" }} , 
 	{ "name": "local_C_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_C_V", "role": "ce0" }} , 
 	{ "name": "local_C_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "local_C_V", "role": "q0" }} , 
 	{ "name": "local_C_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_C_V", "role": "address1" }} , 
 	{ "name": "local_C_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_C_V", "role": "ce1" }} , 
 	{ "name": "local_C_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_C_V", "role": "we1" }} , 
 	{ "name": "local_C_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "local_C_V", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "C_drain_IO_L1_out_boundary_wrapper_Pipeline_VITIS_1",
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
			{"Name" : "local_C_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "fifo_C_drain_PE_15_01853", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_15_01853_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_891_1_VITIS_LOOP_893_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	C_drain_IO_L1_out_boundary_wrapper_Pipeline_VITIS_1 {
		local_C_V {Type IO LastRead 0 FirstWrite 1}
		fifo_C_drain_PE_15_01853 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "258", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "258", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	local_C_V { ap_memory {  { local_C_V_address0 mem_address 1 4 }  { local_C_V_ce0 mem_ce 1 1 }  { local_C_V_q0 mem_dout 0 256 }  { local_C_V_address1 MemPortADDR2 1 4 }  { local_C_V_ce1 MemPortCE2 1 1 }  { local_C_V_we1 MemPortWE2 1 1 }  { local_C_V_d1 MemPortDIN2 1 256 } } }
	fifo_C_drain_PE_15_01853 { ap_fifo {  { fifo_C_drain_PE_15_01853_dout fifo_data 0 16 }  { fifo_C_drain_PE_15_01853_empty_n fifo_status 0 1 }  { fifo_C_drain_PE_15_01853_read fifo_update 1 1 } } }
}
set moduleName C_drain_IO_L1_out_boundary_wrapper_Pipeline_VITIS_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {C_drain_IO_L1_out_boundary_wrapper_Pipeline_VITIS_.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ local_C_V int 256 regular {array 16 { 1 0 } 1 1 }  }
	{ fifo_C_drain_PE_15_01853 int 16 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "local_C_V", "interface" : "memory", "bitwidth" : 256, "direction" : "READWRITE"} , 
 	{ "Name" : "fifo_C_drain_PE_15_01853", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fifo_C_drain_PE_15_01853_dout sc_in sc_lv 16 signal 1 } 
	{ fifo_C_drain_PE_15_01853_empty_n sc_in sc_logic 1 signal 1 } 
	{ fifo_C_drain_PE_15_01853_read sc_out sc_logic 1 signal 1 } 
	{ local_C_V_address0 sc_out sc_lv 4 signal 0 } 
	{ local_C_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ local_C_V_q0 sc_in sc_lv 256 signal 0 } 
	{ local_C_V_address1 sc_out sc_lv 4 signal 0 } 
	{ local_C_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ local_C_V_we1 sc_out sc_logic 1 signal 0 } 
	{ local_C_V_d1 sc_out sc_lv 256 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_C_drain_PE_15_01853_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_15_01853", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_PE_15_01853_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_15_01853", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_PE_15_01853_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_15_01853", "role": "read" }} , 
 	{ "name": "local_C_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_C_V", "role": "address0" }} , 
 	{ "name": "local_C_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_C_V", "role": "ce0" }} , 
 	{ "name": "local_C_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "local_C_V", "role": "q0" }} , 
 	{ "name": "local_C_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_C_V", "role": "address1" }} , 
 	{ "name": "local_C_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_C_V", "role": "ce1" }} , 
 	{ "name": "local_C_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_C_V", "role": "we1" }} , 
 	{ "name": "local_C_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "local_C_V", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "C_drain_IO_L1_out_boundary_wrapper_Pipeline_VITIS_1",
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
			{"Name" : "local_C_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "fifo_C_drain_PE_15_01853", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_15_01853_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_891_1_VITIS_LOOP_893_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	C_drain_IO_L1_out_boundary_wrapper_Pipeline_VITIS_1 {
		local_C_V {Type IO LastRead 0 FirstWrite 1}
		fifo_C_drain_PE_15_01853 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "258", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "258", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	local_C_V { ap_memory {  { local_C_V_address0 mem_address 1 4 }  { local_C_V_ce0 mem_ce 1 1 }  { local_C_V_q0 mem_dout 0 256 }  { local_C_V_address1 MemPortADDR2 1 4 }  { local_C_V_ce1 MemPortCE2 1 1 }  { local_C_V_we1 MemPortWE2 1 1 }  { local_C_V_d1 MemPortDIN2 1 256 } } }
	fifo_C_drain_PE_15_01853 { ap_fifo {  { fifo_C_drain_PE_15_01853_dout fifo_data 0 16 }  { fifo_C_drain_PE_15_01853_empty_n fifo_status 0 1 }  { fifo_C_drain_PE_15_01853_read fifo_update 1 1 } } }
}
