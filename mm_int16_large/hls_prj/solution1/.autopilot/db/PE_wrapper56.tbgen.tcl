set moduleName PE_wrapper56
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
set C_modelName {PE_wrapper56}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_0_01294 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_0_11295 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_0_01566 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_1_01567 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_0_01838 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_0_01294", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_0_11295", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_0_01566", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_1_01567", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_0_01838", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_0_01294_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_0_01294_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_01294_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_11295_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_0_11295_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_0_11295_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_0_01566_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_0_01566_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_0_01566_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_01567_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_1_01567_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_1_01567_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_0_01838_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_0_01838_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_0_01838_write sc_out sc_logic 1 signal 4 } 
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
 	{ "name": "fifo_A_PE_0_01294_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_0_01294", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_0_01294_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_01294", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_0_01294_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_01294", "role": "read" }} , 
 	{ "name": "fifo_A_PE_0_11295_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_0_11295", "role": "din" }} , 
 	{ "name": "fifo_A_PE_0_11295_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_11295", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_0_11295_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_11295", "role": "write" }} , 
 	{ "name": "fifo_B_PE_0_01566_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_0_01566", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_0_01566_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_01566", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_0_01566_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_01566", "role": "read" }} , 
 	{ "name": "fifo_B_PE_1_01567_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_1_01567", "role": "din" }} , 
 	{ "name": "fifo_B_PE_1_01567_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_01567", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_1_01567_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_01567", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_0_01838_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_01838", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_0_01838_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_01838", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_0_01838_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_01838", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "PE_wrapper56",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "131080", "EstimateLatencyMax" : "131080",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_01294", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_PE_fu_28", "Port" : "fifo_A_PE_0_01294", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "fifo_A_PE_0_11295", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_PE_fu_28", "Port" : "fifo_A_PE_0_11295", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "fifo_B_PE_0_01566", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_PE_fu_28", "Port" : "fifo_B_PE_0_01566", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "fifo_B_PE_1_01567", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_PE_fu_28", "Port" : "fifo_B_PE_1_01567", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "fifo_C_drain_PE_0_01838", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_PE_fu_28", "Port" : "fifo_C_drain_PE_0_01838", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35"],
		"CDFG" : "PE",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "131079", "EstimateLatencyMax" : "131079",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_01294", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_01294_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_11295", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_11295_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_01566", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_01566_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_01567", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_01567_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_01838", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_01838_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_687_1_VITIS_LOOP_689_3_VITIS_LOOP_693_4_VITIS_LOOP_695_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.local_C_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U143", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U144", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U145", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U146", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U147", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U148", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U149", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U150", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U151", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U152", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U153", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U154", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U155", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U156", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U157", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U158", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U159", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U160", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U161", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U162", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U163", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U164", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U165", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U166", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U167", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U168", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U169", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U170", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U171", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U172", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U173", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U174", "Parent" : "1"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper56 {
		fifo_A_PE_0_01294 {Type I LastRead 1 FirstWrite -1}
		fifo_A_PE_0_11295 {Type O LastRead -1 FirstWrite 1}
		fifo_B_PE_0_01566 {Type I LastRead 1 FirstWrite -1}
		fifo_B_PE_1_01567 {Type O LastRead -1 FirstWrite 1}
		fifo_C_drain_PE_0_01838 {Type O LastRead -1 FirstWrite 6}}
	PE {
		fifo_A_PE_0_01294 {Type I LastRead 1 FirstWrite -1}
		fifo_A_PE_0_11295 {Type O LastRead -1 FirstWrite 1}
		fifo_B_PE_0_01566 {Type I LastRead 1 FirstWrite -1}
		fifo_B_PE_1_01567 {Type O LastRead -1 FirstWrite 1}
		fifo_C_drain_PE_0_01838 {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "131080", "Max" : "131080"}
	, {"Name" : "Interval", "Min" : "131080", "Max" : "131080"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_0_01294 { ap_fifo {  { fifo_A_PE_0_01294_dout fifo_data 0 512 }  { fifo_A_PE_0_01294_empty_n fifo_status 0 1 }  { fifo_A_PE_0_01294_read fifo_update 1 1 } } }
	fifo_A_PE_0_11295 { ap_fifo {  { fifo_A_PE_0_11295_din fifo_data 1 512 }  { fifo_A_PE_0_11295_full_n fifo_status 0 1 }  { fifo_A_PE_0_11295_write fifo_update 1 1 } } }
	fifo_B_PE_0_01566 { ap_fifo {  { fifo_B_PE_0_01566_dout fifo_data 0 512 }  { fifo_B_PE_0_01566_empty_n fifo_status 0 1 }  { fifo_B_PE_0_01566_read fifo_update 1 1 } } }
	fifo_B_PE_1_01567 { ap_fifo {  { fifo_B_PE_1_01567_din fifo_data 1 512 }  { fifo_B_PE_1_01567_full_n fifo_status 0 1 }  { fifo_B_PE_1_01567_write fifo_update 1 1 } } }
	fifo_C_drain_PE_0_01838 { ap_fifo {  { fifo_C_drain_PE_0_01838_din fifo_data 1 16 }  { fifo_C_drain_PE_0_01838_full_n fifo_status 0 1 }  { fifo_C_drain_PE_0_01838_write fifo_update 1 1 } } }
}
set moduleName PE_wrapper56
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
set C_modelName {PE_wrapper56}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_A_PE_0_01294 int 512 regular {fifo 0 volatile }  }
	{ fifo_A_PE_0_11295 int 512 regular {fifo 1 volatile }  }
	{ fifo_B_PE_0_01566 int 512 regular {fifo 0 volatile }  }
	{ fifo_B_PE_1_01567 int 512 regular {fifo 1 volatile }  }
	{ fifo_C_drain_PE_0_01838 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_A_PE_0_01294", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_A_PE_0_11295", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_B_PE_0_01566", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_B_PE_1_01567", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_PE_0_01838", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ fifo_A_PE_0_01294_dout sc_in sc_lv 512 signal 0 } 
	{ fifo_A_PE_0_01294_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_01294_read sc_out sc_logic 1 signal 0 } 
	{ fifo_A_PE_0_11295_din sc_out sc_lv 512 signal 1 } 
	{ fifo_A_PE_0_11295_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_A_PE_0_11295_write sc_out sc_logic 1 signal 1 } 
	{ fifo_B_PE_0_01566_dout sc_in sc_lv 512 signal 2 } 
	{ fifo_B_PE_0_01566_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_B_PE_0_01566_read sc_out sc_logic 1 signal 2 } 
	{ fifo_B_PE_1_01567_din sc_out sc_lv 512 signal 3 } 
	{ fifo_B_PE_1_01567_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo_B_PE_1_01567_write sc_out sc_logic 1 signal 3 } 
	{ fifo_C_drain_PE_0_01838_din sc_out sc_lv 16 signal 4 } 
	{ fifo_C_drain_PE_0_01838_full_n sc_in sc_logic 1 signal 4 } 
	{ fifo_C_drain_PE_0_01838_write sc_out sc_logic 1 signal 4 } 
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
 	{ "name": "fifo_A_PE_0_01294_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_0_01294", "role": "dout" }} , 
 	{ "name": "fifo_A_PE_0_01294_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_01294", "role": "empty_n" }} , 
 	{ "name": "fifo_A_PE_0_01294_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_01294", "role": "read" }} , 
 	{ "name": "fifo_A_PE_0_11295_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_A_PE_0_11295", "role": "din" }} , 
 	{ "name": "fifo_A_PE_0_11295_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_11295", "role": "full_n" }} , 
 	{ "name": "fifo_A_PE_0_11295_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_A_PE_0_11295", "role": "write" }} , 
 	{ "name": "fifo_B_PE_0_01566_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_0_01566", "role": "dout" }} , 
 	{ "name": "fifo_B_PE_0_01566_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_01566", "role": "empty_n" }} , 
 	{ "name": "fifo_B_PE_0_01566_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_0_01566", "role": "read" }} , 
 	{ "name": "fifo_B_PE_1_01567_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "fifo_B_PE_1_01567", "role": "din" }} , 
 	{ "name": "fifo_B_PE_1_01567_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_01567", "role": "full_n" }} , 
 	{ "name": "fifo_B_PE_1_01567_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_B_PE_1_01567", "role": "write" }} , 
 	{ "name": "fifo_C_drain_PE_0_01838_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_01838", "role": "din" }} , 
 	{ "name": "fifo_C_drain_PE_0_01838_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_01838", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_PE_0_01838_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_PE_0_01838", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "PE_wrapper56",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "131080", "EstimateLatencyMax" : "131080",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_01294", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_PE_fu_28", "Port" : "fifo_A_PE_0_01294", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "fifo_A_PE_0_11295", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_PE_fu_28", "Port" : "fifo_A_PE_0_11295", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "fifo_B_PE_0_01566", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_PE_fu_28", "Port" : "fifo_B_PE_0_01566", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "fifo_B_PE_1_01567", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_PE_fu_28", "Port" : "fifo_B_PE_1_01567", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "fifo_C_drain_PE_0_01838", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_PE_fu_28", "Port" : "fifo_C_drain_PE_0_01838", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35"],
		"CDFG" : "PE",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "131079", "EstimateLatencyMax" : "131079",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_A_PE_0_01294", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_01294_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_A_PE_0_11295", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fifo_A_PE_0_11295_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_0_01566", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_0_01566_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_B_PE_1_01567", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fifo_B_PE_1_01567_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_PE_0_01838", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_PE_0_01838_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_687_1_VITIS_LOOP_689_3_VITIS_LOOP_693_4_VITIS_LOOP_695_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.local_C_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U143", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U144", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U145", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U146", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U147", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U148", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U149", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U150", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U151", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U152", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U153", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U154", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U155", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U156", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U157", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mul_mul_16s_16s_16_4_1_U158", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U159", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U160", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U161", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U162", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U163", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U164", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U165", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U166", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U167", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U168", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U169", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U170", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U171", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U172", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U173", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.mac_muladd_16s_16s_16ns_16_4_1_U174", "Parent" : "1"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_PE_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	PE_wrapper56 {
		fifo_A_PE_0_01294 {Type I LastRead 1 FirstWrite -1}
		fifo_A_PE_0_11295 {Type O LastRead -1 FirstWrite 1}
		fifo_B_PE_0_01566 {Type I LastRead 1 FirstWrite -1}
		fifo_B_PE_1_01567 {Type O LastRead -1 FirstWrite 1}
		fifo_C_drain_PE_0_01838 {Type O LastRead -1 FirstWrite 6}}
	PE {
		fifo_A_PE_0_01294 {Type I LastRead 1 FirstWrite -1}
		fifo_A_PE_0_11295 {Type O LastRead -1 FirstWrite 1}
		fifo_B_PE_0_01566 {Type I LastRead 1 FirstWrite -1}
		fifo_B_PE_1_01567 {Type O LastRead -1 FirstWrite 1}
		fifo_C_drain_PE_0_01838 {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "131080", "Max" : "131080"}
	, {"Name" : "Interval", "Min" : "131080", "Max" : "131080"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_A_PE_0_01294 { ap_fifo {  { fifo_A_PE_0_01294_dout fifo_data 0 512 }  { fifo_A_PE_0_01294_empty_n fifo_status 0 1 }  { fifo_A_PE_0_01294_read fifo_update 1 1 } } }
	fifo_A_PE_0_11295 { ap_fifo {  { fifo_A_PE_0_11295_din fifo_data 1 512 }  { fifo_A_PE_0_11295_full_n fifo_status 0 1 }  { fifo_A_PE_0_11295_write fifo_update 1 1 } } }
	fifo_B_PE_0_01566 { ap_fifo {  { fifo_B_PE_0_01566_dout fifo_data 0 512 }  { fifo_B_PE_0_01566_empty_n fifo_status 0 1 }  { fifo_B_PE_0_01566_read fifo_update 1 1 } } }
	fifo_B_PE_1_01567 { ap_fifo {  { fifo_B_PE_1_01567_din fifo_data 1 512 }  { fifo_B_PE_1_01567_full_n fifo_status 0 1 }  { fifo_B_PE_1_01567_write fifo_update 1 1 } } }
	fifo_C_drain_PE_0_01838 { ap_fifo {  { fifo_C_drain_PE_0_01838_din fifo_data 1 16 }  { fifo_C_drain_PE_0_01838_full_n fifo_status 0 1 }  { fifo_C_drain_PE_0_01838_write fifo_update 1 1 } } }
}
