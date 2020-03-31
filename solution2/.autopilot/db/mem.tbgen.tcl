set moduleName mem
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "mem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "addr", "Type" : "None", "Direction" : "I"},
			{"Name" : "we", "Type" : "None", "Direction" : "I"},
			{"Name" : "re", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "saved_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_43", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_44", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_45", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_46", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_47", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_48", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_49", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_50", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_51", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_52", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_53", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_54", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_55", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_56", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_57", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_58", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_59", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_60", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_61", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_62", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_63", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_64", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_65", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_66", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_67", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_68", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_69", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_70", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_71", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_72", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_73", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_74", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_75", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_76", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_77", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_78", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_79", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_80", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_81", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_82", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_83", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_84", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_85", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_86", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_87", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_88", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_89", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_90", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_91", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_92", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_93", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_94", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_95", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_96", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_97", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_98", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_99", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_152", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_151", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_150", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_149", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_148", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_147", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_146", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_145", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_144", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_143", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_142", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_141", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_140", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_139", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_138", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_137", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_136", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_135", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_134", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_133", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_132", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_131", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_130", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_129", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_128", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_127", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved_126", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "saved", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tempOutAddr", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tempOutVal", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	mem {
		addr {Type I LastRead 0 FirstWrite -1}
		we {Type I LastRead 0 FirstWrite -1}
		re {Type I LastRead 0 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 1}
		saved_0 {Type IO LastRead -1 FirstWrite -1}
		saved_1 {Type IO LastRead -1 FirstWrite -1}
		saved_2 {Type IO LastRead -1 FirstWrite -1}
		saved_3 {Type IO LastRead -1 FirstWrite -1}
		saved_4 {Type IO LastRead -1 FirstWrite -1}
		saved_5 {Type IO LastRead -1 FirstWrite -1}
		saved_6 {Type IO LastRead -1 FirstWrite -1}
		saved_7 {Type IO LastRead -1 FirstWrite -1}
		saved_8 {Type IO LastRead -1 FirstWrite -1}
		saved_9 {Type IO LastRead -1 FirstWrite -1}
		saved_10 {Type IO LastRead -1 FirstWrite -1}
		saved_11 {Type IO LastRead -1 FirstWrite -1}
		saved_12 {Type IO LastRead -1 FirstWrite -1}
		saved_13 {Type IO LastRead -1 FirstWrite -1}
		saved_14 {Type IO LastRead -1 FirstWrite -1}
		saved_15 {Type IO LastRead -1 FirstWrite -1}
		saved_16 {Type IO LastRead -1 FirstWrite -1}
		saved_17 {Type IO LastRead -1 FirstWrite -1}
		saved_18 {Type IO LastRead -1 FirstWrite -1}
		saved_19 {Type IO LastRead -1 FirstWrite -1}
		saved_20 {Type IO LastRead -1 FirstWrite -1}
		saved_21 {Type IO LastRead -1 FirstWrite -1}
		saved_22 {Type IO LastRead -1 FirstWrite -1}
		saved_23 {Type IO LastRead -1 FirstWrite -1}
		saved_24 {Type IO LastRead -1 FirstWrite -1}
		saved_25 {Type IO LastRead -1 FirstWrite -1}
		saved_26 {Type IO LastRead -1 FirstWrite -1}
		saved_27 {Type IO LastRead -1 FirstWrite -1}
		saved_28 {Type IO LastRead -1 FirstWrite -1}
		saved_29 {Type IO LastRead -1 FirstWrite -1}
		saved_30 {Type IO LastRead -1 FirstWrite -1}
		saved_31 {Type IO LastRead -1 FirstWrite -1}
		saved_32 {Type IO LastRead -1 FirstWrite -1}
		saved_33 {Type IO LastRead -1 FirstWrite -1}
		saved_34 {Type IO LastRead -1 FirstWrite -1}
		saved_35 {Type IO LastRead -1 FirstWrite -1}
		saved_36 {Type IO LastRead -1 FirstWrite -1}
		saved_37 {Type IO LastRead -1 FirstWrite -1}
		saved_38 {Type IO LastRead -1 FirstWrite -1}
		saved_39 {Type IO LastRead -1 FirstWrite -1}
		saved_40 {Type IO LastRead -1 FirstWrite -1}
		saved_41 {Type IO LastRead -1 FirstWrite -1}
		saved_42 {Type IO LastRead -1 FirstWrite -1}
		saved_43 {Type IO LastRead -1 FirstWrite -1}
		saved_44 {Type IO LastRead -1 FirstWrite -1}
		saved_45 {Type IO LastRead -1 FirstWrite -1}
		saved_46 {Type IO LastRead -1 FirstWrite -1}
		saved_47 {Type IO LastRead -1 FirstWrite -1}
		saved_48 {Type IO LastRead -1 FirstWrite -1}
		saved_49 {Type IO LastRead -1 FirstWrite -1}
		saved_50 {Type IO LastRead -1 FirstWrite -1}
		saved_51 {Type IO LastRead -1 FirstWrite -1}
		saved_52 {Type IO LastRead -1 FirstWrite -1}
		saved_53 {Type IO LastRead -1 FirstWrite -1}
		saved_54 {Type IO LastRead -1 FirstWrite -1}
		saved_55 {Type IO LastRead -1 FirstWrite -1}
		saved_56 {Type IO LastRead -1 FirstWrite -1}
		saved_57 {Type IO LastRead -1 FirstWrite -1}
		saved_58 {Type IO LastRead -1 FirstWrite -1}
		saved_59 {Type IO LastRead -1 FirstWrite -1}
		saved_60 {Type IO LastRead -1 FirstWrite -1}
		saved_61 {Type IO LastRead -1 FirstWrite -1}
		saved_62 {Type IO LastRead -1 FirstWrite -1}
		saved_63 {Type IO LastRead -1 FirstWrite -1}
		saved_64 {Type IO LastRead -1 FirstWrite -1}
		saved_65 {Type IO LastRead -1 FirstWrite -1}
		saved_66 {Type IO LastRead -1 FirstWrite -1}
		saved_67 {Type IO LastRead -1 FirstWrite -1}
		saved_68 {Type IO LastRead -1 FirstWrite -1}
		saved_69 {Type IO LastRead -1 FirstWrite -1}
		saved_70 {Type IO LastRead -1 FirstWrite -1}
		saved_71 {Type IO LastRead -1 FirstWrite -1}
		saved_72 {Type IO LastRead -1 FirstWrite -1}
		saved_73 {Type IO LastRead -1 FirstWrite -1}
		saved_74 {Type IO LastRead -1 FirstWrite -1}
		saved_75 {Type IO LastRead -1 FirstWrite -1}
		saved_76 {Type IO LastRead -1 FirstWrite -1}
		saved_77 {Type IO LastRead -1 FirstWrite -1}
		saved_78 {Type IO LastRead -1 FirstWrite -1}
		saved_79 {Type IO LastRead -1 FirstWrite -1}
		saved_80 {Type IO LastRead -1 FirstWrite -1}
		saved_81 {Type IO LastRead -1 FirstWrite -1}
		saved_82 {Type IO LastRead -1 FirstWrite -1}
		saved_83 {Type IO LastRead -1 FirstWrite -1}
		saved_84 {Type IO LastRead -1 FirstWrite -1}
		saved_85 {Type IO LastRead -1 FirstWrite -1}
		saved_86 {Type IO LastRead -1 FirstWrite -1}
		saved_87 {Type IO LastRead -1 FirstWrite -1}
		saved_88 {Type IO LastRead -1 FirstWrite -1}
		saved_89 {Type IO LastRead -1 FirstWrite -1}
		saved_90 {Type IO LastRead -1 FirstWrite -1}
		saved_91 {Type IO LastRead -1 FirstWrite -1}
		saved_92 {Type IO LastRead -1 FirstWrite -1}
		saved_93 {Type IO LastRead -1 FirstWrite -1}
		saved_94 {Type IO LastRead -1 FirstWrite -1}
		saved_95 {Type IO LastRead -1 FirstWrite -1}
		saved_96 {Type IO LastRead -1 FirstWrite -1}
		saved_97 {Type IO LastRead -1 FirstWrite -1}
		saved_98 {Type IO LastRead -1 FirstWrite -1}
		saved_99 {Type IO LastRead -1 FirstWrite -1}
		saved_152 {Type IO LastRead -1 FirstWrite -1}
		saved_151 {Type IO LastRead -1 FirstWrite -1}
		saved_150 {Type IO LastRead -1 FirstWrite -1}
		saved_149 {Type IO LastRead -1 FirstWrite -1}
		saved_148 {Type IO LastRead -1 FirstWrite -1}
		saved_147 {Type IO LastRead -1 FirstWrite -1}
		saved_146 {Type IO LastRead -1 FirstWrite -1}
		saved_145 {Type IO LastRead -1 FirstWrite -1}
		saved_144 {Type IO LastRead -1 FirstWrite -1}
		saved_143 {Type IO LastRead -1 FirstWrite -1}
		saved_142 {Type IO LastRead -1 FirstWrite -1}
		saved_141 {Type IO LastRead -1 FirstWrite -1}
		saved_140 {Type IO LastRead -1 FirstWrite -1}
		saved_139 {Type IO LastRead -1 FirstWrite -1}
		saved_138 {Type IO LastRead -1 FirstWrite -1}
		saved_137 {Type IO LastRead -1 FirstWrite -1}
		saved_136 {Type IO LastRead -1 FirstWrite -1}
		saved_135 {Type IO LastRead -1 FirstWrite -1}
		saved_134 {Type IO LastRead -1 FirstWrite -1}
		saved_133 {Type IO LastRead -1 FirstWrite -1}
		saved_132 {Type IO LastRead -1 FirstWrite -1}
		saved_131 {Type IO LastRead -1 FirstWrite -1}
		saved_130 {Type IO LastRead -1 FirstWrite -1}
		saved_129 {Type IO LastRead -1 FirstWrite -1}
		saved_128 {Type IO LastRead -1 FirstWrite -1}
		saved_127 {Type IO LastRead -1 FirstWrite -1}
		saved_126 {Type IO LastRead -1 FirstWrite -1}
		saved {Type IO LastRead -1 FirstWrite -1}
		tempOutAddr {Type IO LastRead -1 FirstWrite -1}
		tempOutVal {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
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
