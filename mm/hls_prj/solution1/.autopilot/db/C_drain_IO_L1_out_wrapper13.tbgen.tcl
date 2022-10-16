set moduleName C_drain_IO_L1_out_wrapper13
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
set C_modelName {C_drain_IO_L1_out_wrapper13}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_C_drain_C_drain_IO_L1_out_0_193 int 128 regular {fifo 0 volatile }  }
	{ fifo_C_drain_C_drain_IO_L1_out_0_092 int 128 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_0_088 int 32 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_C_drain_C_drain_IO_L1_out_0_193", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_drain_C_drain_IO_L1_out_0_092", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_0_088", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
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
	{ fifo_C_drain_C_drain_IO_L1_out_0_193_dout sc_in sc_lv 128 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_193_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_193_read sc_out sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_092_din sc_out sc_lv 128 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_092_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_092_write sc_out sc_logic 1 signal 1 } 
	{ fifo_C_drain_PE_0_088_dout sc_in sc_lv 32 signal 2 } 
	{ fifo_C_drain_PE_0_088_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_C_drain_PE_0_088_read sc_out sc_logic 1 signal 2 } 
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
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_193_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_193", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_193_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_193", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_193_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_193", "role": "read" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_092_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_092", "role": "din" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_092_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_092", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_092_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_092", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_0_088_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_088", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_PE_0_088_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_088", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_PE_0_088_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_088", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "C_drain_IO_L1_out_wrapper13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1762", "EstimateLatencyMax" : "1762",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_193", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_C_drain_IO_L1_out_fu_24", "Port" : "fifo_C_drain_C_drain_IO_L1_out_0_193", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_092", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_C_drain_IO_L1_out_fu_24", "Port" : "fifo_C_drain_C_drain_IO_L1_out_0_092", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "fifo_C_drain_PE_0_088", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_C_drain_IO_L1_out_fu_24", "Port" : "fifo_C_drain_PE_0_088", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_C_drain_IO_L1_out_fu_24", "Parent" : "0", "Child" : ["2", "3", "5", "7"],
		"CDFG" : "C_drain_IO_L1_out",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1761", "EstimateLatencyMax" : "1761",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_193", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88", "Port" : "fifo_C_drain_C_drain_IO_L1_out_0_193", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_092", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88", "Port" : "fifo_C_drain_C_drain_IO_L1_out_0_092", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "7", "SubInstance" : "grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96", "Port" : "fifo_C_drain_C_drain_IO_L1_out_0_092", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "fifo_C_drain_PE_0_088", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81", "Port" : "fifo_C_drain_PE_0_088", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_882_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_953_1_VITIS_LOOP_954_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_drain_IO_L1_out_fu_24.local_C_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_drain_IO_L1_out_fu_24.grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81", "Parent" : "1", "Child" : ["4"],
		"CDFG" : "C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "local_C_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "fifo_C_drain_PE_0_088", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_088_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_849_1_VITIS_LOOP_851_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_drain_IO_L1_out_fu_24.grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s_fu_81.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_drain_IO_L1_out_fu_24.grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s",
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
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_193", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_193_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_092", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_092_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_899_4_VITIS_LOOP_901_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_drain_IO_L1_out_fu_24.grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s_fu_88.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_drain_IO_L1_out_fu_24.grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96", "Parent" : "1", "Child" : ["8"],
		"CDFG" : "C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s",
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
			{"Name" : "local_C_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_092", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_092_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_885_2_VITIS_LOOP_887_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_drain_IO_L1_out_fu_24.grp_C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"}]}


set ArgLastReadFirstWriteLatency {
	C_drain_IO_L1_out_wrapper13 {
		fifo_C_drain_C_drain_IO_L1_out_0_193 {Type I LastRead 1 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_092 {Type O LastRead -1 FirstWrite 1}
		fifo_C_drain_PE_0_088 {Type I LastRead 1 FirstWrite -1}}
	C_drain_IO_L1_out {
		fifo_C_drain_C_drain_IO_L1_out_0_193 {Type I LastRead 1 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_092 {Type O LastRead -1 FirstWrite 1}
		fifo_C_drain_PE_0_088 {Type I LastRead 1 FirstWrite -1}}
	C_drain_IO_L1_out_Pipeline_VITIS_LOOP_849_1_VITIS_s {
		local_C_V {Type IO LastRead 0 FirstWrite 1}
		fifo_C_drain_PE_0_088 {Type I LastRead 1 FirstWrite -1}}
	C_drain_IO_L1_out_Pipeline_VITIS_LOOP_899_4_VITIS_s {
		fifo_C_drain_C_drain_IO_L1_out_0_193 {Type I LastRead 1 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_092 {Type O LastRead -1 FirstWrite 1}}
	C_drain_IO_L1_out_Pipeline_VITIS_LOOP_885_2_VITIS_s {
		local_C_V {Type I LastRead 0 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L1_out_0_092 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1762", "Max" : "1762"}
	, {"Name" : "Interval", "Min" : "1762", "Max" : "1762"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_C_drain_C_drain_IO_L1_out_0_193 { ap_fifo {  { fifo_C_drain_C_drain_IO_L1_out_0_193_dout fifo_data 0 128 }  { fifo_C_drain_C_drain_IO_L1_out_0_193_empty_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L1_out_0_193_read fifo_update 1 1 } } }
	fifo_C_drain_C_drain_IO_L1_out_0_092 { ap_fifo {  { fifo_C_drain_C_drain_IO_L1_out_0_092_din fifo_data 1 128 }  { fifo_C_drain_C_drain_IO_L1_out_0_092_full_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L1_out_0_092_write fifo_update 1 1 } } }
	fifo_C_drain_PE_0_088 { ap_fifo {  { fifo_C_drain_PE_0_088_dout fifo_data 0 32 }  { fifo_C_drain_PE_0_088_empty_n fifo_status 0 1 }  { fifo_C_drain_PE_0_088_read fifo_update 1 1 } } }
}