set moduleName PE_wrapper7
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
set C_modelName {PE_wrapper7}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_0_076 int 64 regular {fifo 0 volatile }  }
	{ fifo_A_PE_0_177 int 64 regular {fifo 1 volatile }  }
	{ fifo_B_PE_0_082 int 64 regular {fifo 0 volatile }  }
	{ fifo_B_PE_1_083 int 64 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_0_088 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_0_076", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_0_177", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_0_082", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_1_083", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_0_088", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
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
	{ fifo_A_PE_0_076_dout sc_in sc_lv 64 signal 0 } 
	{ fifo_A_PE_0_076_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_076_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_177_din sc_out sc_lv 64 signal 1 } 
	{ fifo_A_PE_0_177_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_0_177_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_0_082_dout sc_in sc_lv 64 signal 2 } 
	{ fifo_B_PE_0_082_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_0_082_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_083_din sc_out sc_lv 64 signal 3 } 
	{ fifo_B_PE_1_083_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_1_083_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_0_088_din sc_out sc_lv 32 signal 4 } 
	{ fifo_C_drain_PE_0_088_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_0_088_write sc_out sc_logic 1 signal 4 } 
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
 	{ "name": "fifo_A_PE_0_076_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fifo_A_PE_0_076", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_0_076_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_076", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_0_076_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_076", "role": "read" }} , 
 	{ "name": "fifo_A_PE_0_177_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fifo_A_PE_0_177", "role": "din" }} , 
 	{ "name": "fifo_A_PE_0_177_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_177", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_0_177_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_177", "role": "write" }} , 
 	{ "name": "fifo_B_PE_0_082_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fifo_B_PE_0_082", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_0_082_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_082", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_0_082_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_082", "role": "read" }} , 
 	{ "name": "fifo_B_PE_1_083_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fifo_B_PE_1_083", "role": "din" }} , 
 	{ "name": "fifo_B_PE_1_083_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_083", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_1_083_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_083", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_0_088_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_088", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_0_088_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_088", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_0_088_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_088", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "PE_wrapper7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32786", "EstimateLatencyMax" : "32786",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_076", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_PE_fu_28", "Port" : "fifo_A_PE_0_076", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "fifo_A_PE_0_177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_PE_fu_28", "Port" : "fifo_A_PE_0_177", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "fifo_B_PE_0_082", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_PE_fu_28", "Port" : "fifo_B_PE_0_082", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "fifo_B_PE_1_083", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_PE_fu_28", "Port" : "fifo_B_PE_1_083", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "fifo_C_drain_PE_0_088", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_PE_fu_28", "Port" : "fifo_C_drain_PE_0_088", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7"],
		"CDFG" : "PE",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32785", "EstimateLatencyMax" : "32785",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_076", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_076_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_177", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_082", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_082_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_083", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_083_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_088", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_088_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_705_1_VITIS_LOOP_707_3_VITIS_LOOP_712_5_VITIS_LOOP_714_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.local_C_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.fadd_32ns_32ns_32_5_full_dsp_1_U60", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.fadd_32ns_32ns_32_5_full_dsp_1_U61", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.fmul_32ns_32ns_32_4_max_dsp_1_U62", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.fmul_32ns_32ns_32_4_max_dsp_1_U63", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper7 {
		fifo_A_PE_0_076 {Type I LastRead 1 FirstWrite -1}
		fifo_A_PE_0_177 {Type O LastRead -1 FirstWrite 1}
		fifo_B_PE_0_082 {Type I LastRead 1 FirstWrite -1}
		fifo_B_PE_1_083 {Type O LastRead -1 FirstWrite 1}
		fifo_C_drain_PE_0_088 {Type O LastRead -1 FirstWrite 16}}
	PE {
		fifo_A_PE_0_076 {Type I LastRead 1 FirstWrite -1}
		fifo_A_PE_0_177 {Type O LastRead -1 FirstWrite 1}
		fifo_B_PE_0_082 {Type I LastRead 1 FirstWrite -1}
		fifo_B_PE_1_083 {Type O LastRead -1 FirstWrite 1}
		fifo_C_drain_PE_0_088 {Type O LastRead -1 FirstWrite 16}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "32786", "Max" : "32786"}
	, {"Name" : "Interval", "Min" : "32786", "Max" : "32786"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_0_076 { ap_fifo {  { fifo_A_PE_0_076_dout fifo_data 0 64 }  { fifo_A_PE_0_076_empty_n fifo_status 0 1 }  { fifo_A_PE_0_076_read fifo_update 1 1 } } }
	fifo_A_PE_0_177 { ap_fifo {  { fifo_A_PE_0_177_din fifo_data 1 64 }  { fifo_A_PE_0_177_full_n fifo_status 0 1 }  { fifo_A_PE_0_177_write fifo_update 1 1 } } }
	fifo_B_PE_0_082 { ap_fifo {  { fifo_B_PE_0_082_dout fifo_data 0 64 }  { fifo_B_PE_0_082_empty_n fifo_status 0 1 }  { fifo_B_PE_0_082_read fifo_update 1 1 } } }
	fifo_B_PE_1_083 { ap_fifo {  { fifo_B_PE_1_083_din fifo_data 1 64 }  { fifo_B_PE_1_083_full_n fifo_status 0 1 }  { fifo_B_PE_1_083_write fifo_update 1 1 } } }
	fifo_C_drain_PE_0_088 { ap_fifo {  { fifo_C_drain_PE_0_088_din fifo_data 1 32 }  { fifo_C_drain_PE_0_088_full_n fifo_status 0 1 }  { fifo_C_drain_PE_0_088_write fifo_update 1 1 } } }
}
