set moduleName mem
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {mem}
set C_modelType { void 0 }
set C_modelArgList {
	{ addr uint 7 regular  }
	{ we uint 1 regular  }
	{ re uint 1 regular  }
	{ out_r int 8 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "addr", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY", "bitSlice":[{"low":0,"up":6,"cElement": [{"cName": "addr","cData": "uint7","bit_use": { "low": 0,"up": 6},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "we", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "we","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "re", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "re","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "out_r", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "out","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 11
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ addr sc_in sc_lv 7 signal 0 } 
	{ we sc_in sc_lv 1 signal 1 } 
	{ re sc_in sc_lv 1 signal 2 } 
	{ out_r sc_out sc_lv 8 signal 3 } 
	{ out_r_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "addr", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "addr", "role": "default" }} , 
 	{ "name": "we", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "we", "role": "default" }} , 
 	{ "name": "re", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "re", "role": "default" }} , 
 	{ "name": "out_r", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_r", "role": "default" }} , 
 	{ "name": "out_r_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_r", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "mem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_10", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_12", "FromFinalSV" : "1", "FromAddress" : "saved_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_58", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_58", "ToFinalSV" : "3", "ToAddress" : "saved_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "7", "II" : "1", "Pragma" : "(Mem/.settings/mem.c:6:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_10", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_12", "FromFinalSV" : "1", "FromAddress" : "saved_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_69", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_69", "ToFinalSV" : "3", "ToAddress" : "saved_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "7", "II" : "1", "Pragma" : "(Mem/.settings/mem.c:6:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_58", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_58", "FromFinalSV" : "3", "FromAddress" : "saved_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_10", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_12", "ToFinalSV" : "1", "ToAddress" : "saved_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "7", "II" : "1", "Pragma" : "(Mem/.settings/mem.c:6:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_58", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_58", "FromFinalSV" : "3", "FromAddress" : "saved_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_69", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_69", "ToFinalSV" : "3", "ToAddress" : "saved_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "7", "II" : "1", "Pragma" : "(Mem/.settings/mem.c:6:1)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_69", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_69", "FromFinalSV" : "3", "FromAddress" : "saved_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_10", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_12", "ToFinalSV" : "1", "ToAddress" : "saved_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "7", "II" : "1", "Pragma" : "(Mem/.settings/mem.c:6:1)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_69", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_69", "FromFinalSV" : "3", "FromAddress" : "saved_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_58", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_58", "ToFinalSV" : "3", "ToAddress" : "saved_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "7", "II" : "1", "Pragma" : "(Mem/.settings/mem.c:6:1)", "Type" : "WAW"}],
		"Port" : [
			{"Name" : "addr", "Type" : "None", "Direction" : "I"},
			{"Name" : "we", "Type" : "None", "Direction" : "I"},
			{"Name" : "re", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "saved", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "store", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tempOutAddr", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevAddr", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tempOutVal", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.saved_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mem {
		addr {Type I LastRead 0 FirstWrite -1}
		we {Type I LastRead 0 FirstWrite -1}
		re {Type I LastRead 0 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 3}
		saved {Type IO LastRead -1 FirstWrite -1}
		store {Type IO LastRead -1 FirstWrite -1}
		tempOutAddr {Type IO LastRead -1 FirstWrite -1}
		prevAddr {Type IO LastRead -1 FirstWrite -1}
		tempOutVal {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	addr { ap_none {  { addr in_data 0 7 } } }
	we { ap_none {  { we in_data 0 1 } } }
	re { ap_none {  { re in_data 0 1 } } }
	out_r { ap_vld {  { out_r out_data 1 8 }  { out_r_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
