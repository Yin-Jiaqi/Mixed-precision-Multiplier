set moduleName C_drain_IO_L2_out
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
set C_modelName {C_drain_IO_L2_out}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_C_drain_C_drain_IO_L2_out_197 int 128 regular {fifo 0 volatile }  }
	{ fifo_C_drain_C_drain_IO_L2_out_096 int 128 regular {fifo 1 volatile }  }
	{ fifo_C_drain_C_drain_IO_L1_out_0_092 int 128 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_C_drain_C_drain_IO_L2_out_197", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_C_drain_C_drain_IO_L2_out_096", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo_C_drain_C_drain_IO_L1_out_0_092", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} ]}
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
	{ fifo_C_drain_C_drain_IO_L2_out_197_dout sc_in sc_lv 128 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_197_empty_n sc_in sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_197_read sc_out sc_logic 1 signal 0 } 
	{ fifo_C_drain_C_drain_IO_L2_out_096_din sc_out sc_lv 128 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L2_out_096_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L2_out_096_write sc_out sc_logic 1 signal 1 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_092_dout sc_in sc_lv 128 signal 2 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_092_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo_C_drain_C_drain_IO_L1_out_0_092_read sc_out sc_logic 1 signal 2 } 
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
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_197_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_197", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_197_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_197", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_197_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_197", "role": "read" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_096_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_096", "role": "din" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_096_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_096", "role": "full_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L2_out_096_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L2_out_096", "role": "write" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_092_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_092", "role": "dout" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_092_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_092", "role": "empty_n" }} , 
 	{ "name": "fifo_C_drain_C_drain_IO_L1_out_0_092_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_C_drain_C_drain_IO_L1_out_0_092", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3"],
		"CDFG" : "C_drain_IO_L2_out",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1153", "EstimateLatencyMax" : "1153",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_197", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_C_drain_IO_L2_out_Pipeline_VITIS_LOOP_1067_7_VITIS_fu_74", "Port" : "fifo_C_drain_C_drain_IO_L2_out_197", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_096", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_C_drain_IO_L2_out_Pipeline_VITIS_LOOP_1050_4_VITIS_fu_82", "Port" : "fifo_C_drain_C_drain_IO_L2_out_096", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "1", "SubInstance" : "grp_C_drain_IO_L2_out_Pipeline_VITIS_LOOP_1067_7_VITIS_fu_74", "Port" : "fifo_C_drain_C_drain_IO_L2_out_096", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_092", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_C_drain_IO_L2_out_Pipeline_VITIS_LOOP_1050_4_VITIS_fu_82", "Port" : "fifo_C_drain_C_drain_IO_L1_out_0_092", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1043_1_VITIS_LOOP_1044_2_VITIS_LOOP_1047_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_C_drain_IO_L2_out_Pipeline_VITIS_LOOP_1067_7_VITIS_fu_74", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "C_drain_IO_L2_out_Pipeline_VITIS_LOOP_1067_7_VITIS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_197", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_197_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_096", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_096_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1067_7_VITIS_LOOP_1069_8_VITIS_LOOP_1071_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_drain_IO_L2_out_Pipeline_VITIS_LOOP_1067_7_VITIS_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_C_drain_IO_L2_out_Pipeline_VITIS_LOOP_1050_4_VITIS_fu_82", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "C_drain_IO_L2_out_Pipeline_VITIS_LOOP_1050_4_VITIS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_092", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L1_out_0_092_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_C_drain_C_drain_IO_L2_out_096", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fifo_C_drain_C_drain_IO_L2_out_096_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1050_4_VITIS_LOOP_1052_5_VITIS_LOOP_1054_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_drain_IO_L2_out_Pipeline_VITIS_LOOP_1050_4_VITIS_fu_82.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"}]}


set ArgLastReadFirstWriteLatency {
	C_drain_IO_L2_out {
		fifo_C_drain_C_drain_IO_L2_out_197 {Type I LastRead 1 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_096 {Type O LastRead -1 FirstWrite 1}
		fifo_C_drain_C_drain_IO_L1_out_0_092 {Type I LastRead 1 FirstWrite -1}}
	C_drain_IO_L2_out_Pipeline_VITIS_LOOP_1067_7_VITIS {
		fifo_C_drain_C_drain_IO_L2_out_197 {Type I LastRead 1 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_096 {Type O LastRead -1 FirstWrite 1}}
	C_drain_IO_L2_out_Pipeline_VITIS_LOOP_1050_4_VITIS {
		fifo_C_drain_C_drain_IO_L1_out_0_092 {Type I LastRead 1 FirstWrite -1}
		fifo_C_drain_C_drain_IO_L2_out_096 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1153", "Max" : "1153"}
	, {"Name" : "Interval", "Min" : "1153", "Max" : "1153"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fifo_C_drain_C_drain_IO_L2_out_197 { ap_fifo {  { fifo_C_drain_C_drain_IO_L2_out_197_dout fifo_data 0 128 }  { fifo_C_drain_C_drain_IO_L2_out_197_empty_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L2_out_197_read fifo_update 1 1 } } }
	fifo_C_drain_C_drain_IO_L2_out_096 { ap_fifo {  { fifo_C_drain_C_drain_IO_L2_out_096_din fifo_data 1 128 }  { fifo_C_drain_C_drain_IO_L2_out_096_full_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L2_out_096_write fifo_update 1 1 } } }
	fifo_C_drain_C_drain_IO_L1_out_0_092 { ap_fifo {  { fifo_C_drain_C_drain_IO_L1_out_0_092_dout fifo_data 0 128 }  { fifo_C_drain_C_drain_IO_L1_out_0_092_empty_n fifo_status 0 1 }  { fifo_C_drain_C_drain_IO_L1_out_0_092_read fifo_update 1 1 } } }
}
