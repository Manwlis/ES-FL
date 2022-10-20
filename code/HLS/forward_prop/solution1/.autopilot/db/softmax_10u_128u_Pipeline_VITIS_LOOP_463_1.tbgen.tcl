set moduleName softmax_10u_128u_Pipeline_VITIS_LOOP_463_1
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
set hasInterrupt 0
set C_modelName {softmax<10u, 128u>_Pipeline_VITIS_LOOP_463_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ biases float 32 regular {array 10 { 1 3 } 1 1 }  }
	{ sum_9_out float 32 regular {pointer 1}  }
	{ sum_8_out float 32 regular {pointer 1}  }
	{ sum_7_out float 32 regular {pointer 1}  }
	{ sum_6_out float 32 regular {pointer 1}  }
	{ sum_5_out float 32 regular {pointer 1}  }
	{ sum_4_out float 32 regular {pointer 1}  }
	{ sum_3_out float 32 regular {pointer 1}  }
	{ sum_2_out float 32 regular {pointer 1}  }
	{ sum_1_out float 32 regular {pointer 1}  }
	{ sum_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "biases", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_9_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_8_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_7_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_6_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_4_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ biases_address0 sc_out sc_lv 4 signal 0 } 
	{ biases_ce0 sc_out sc_logic 1 signal 0 } 
	{ biases_q0 sc_in sc_lv 32 signal 0 } 
	{ sum_9_out sc_out sc_lv 32 signal 1 } 
	{ sum_9_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ sum_8_out sc_out sc_lv 32 signal 2 } 
	{ sum_8_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ sum_7_out sc_out sc_lv 32 signal 3 } 
	{ sum_7_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ sum_6_out sc_out sc_lv 32 signal 4 } 
	{ sum_6_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ sum_5_out sc_out sc_lv 32 signal 5 } 
	{ sum_5_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ sum_4_out sc_out sc_lv 32 signal 6 } 
	{ sum_4_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ sum_3_out sc_out sc_lv 32 signal 7 } 
	{ sum_3_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ sum_2_out sc_out sc_lv 32 signal 8 } 
	{ sum_2_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ sum_1_out sc_out sc_lv 32 signal 9 } 
	{ sum_1_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ sum_out sc_out sc_lv 32 signal 10 } 
	{ sum_out_ap_vld sc_out sc_logic 1 outvld 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "biases_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "biases", "role": "address0" }} , 
 	{ "name": "biases_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "biases", "role": "ce0" }} , 
 	{ "name": "biases_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "biases", "role": "q0" }} , 
 	{ "name": "sum_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_9_out", "role": "default" }} , 
 	{ "name": "sum_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_9_out", "role": "ap_vld" }} , 
 	{ "name": "sum_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_8_out", "role": "default" }} , 
 	{ "name": "sum_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_8_out", "role": "ap_vld" }} , 
 	{ "name": "sum_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_7_out", "role": "default" }} , 
 	{ "name": "sum_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_7_out", "role": "ap_vld" }} , 
 	{ "name": "sum_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_6_out", "role": "default" }} , 
 	{ "name": "sum_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_6_out", "role": "ap_vld" }} , 
 	{ "name": "sum_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_5_out", "role": "default" }} , 
 	{ "name": "sum_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_5_out", "role": "ap_vld" }} , 
 	{ "name": "sum_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_4_out", "role": "default" }} , 
 	{ "name": "sum_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_4_out", "role": "ap_vld" }} , 
 	{ "name": "sum_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_3_out", "role": "default" }} , 
 	{ "name": "sum_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_3_out", "role": "ap_vld" }} , 
 	{ "name": "sum_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_2_out", "role": "default" }} , 
 	{ "name": "sum_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_2_out", "role": "ap_vld" }} , 
 	{ "name": "sum_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_1_out", "role": "default" }} , 
 	{ "name": "sum_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_1_out", "role": "ap_vld" }} , 
 	{ "name": "sum_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_out", "role": "default" }} , 
 	{ "name": "sum_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "softmax_10u_128u_Pipeline_VITIS_LOOP_463_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "biases", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_463_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	softmax_10u_128u_Pipeline_VITIS_LOOP_463_1 {
		biases {Type I LastRead 0 FirstWrite -1}
		sum_9_out {Type O LastRead -1 FirstWrite 0}
		sum_8_out {Type O LastRead -1 FirstWrite 0}
		sum_7_out {Type O LastRead -1 FirstWrite 0}
		sum_6_out {Type O LastRead -1 FirstWrite 0}
		sum_5_out {Type O LastRead -1 FirstWrite 0}
		sum_4_out {Type O LastRead -1 FirstWrite 0}
		sum_3_out {Type O LastRead -1 FirstWrite 0}
		sum_2_out {Type O LastRead -1 FirstWrite 0}
		sum_1_out {Type O LastRead -1 FirstWrite 0}
		sum_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12", "Max" : "12"}
	, {"Name" : "Interval", "Min" : "12", "Max" : "12"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	biases { ap_memory {  { biases_address0 mem_address 1 4 }  { biases_ce0 mem_ce 1 1 }  { biases_q0 in_data 0 32 } } }
	sum_9_out { ap_vld {  { sum_9_out out_data 1 32 }  { sum_9_out_ap_vld out_vld 1 1 } } }
	sum_8_out { ap_vld {  { sum_8_out out_data 1 32 }  { sum_8_out_ap_vld out_vld 1 1 } } }
	sum_7_out { ap_vld {  { sum_7_out out_data 1 32 }  { sum_7_out_ap_vld out_vld 1 1 } } }
	sum_6_out { ap_vld {  { sum_6_out out_data 1 32 }  { sum_6_out_ap_vld out_vld 1 1 } } }
	sum_5_out { ap_vld {  { sum_5_out out_data 1 32 }  { sum_5_out_ap_vld out_vld 1 1 } } }
	sum_4_out { ap_vld {  { sum_4_out out_data 1 32 }  { sum_4_out_ap_vld out_vld 1 1 } } }
	sum_3_out { ap_vld {  { sum_3_out out_data 1 32 }  { sum_3_out_ap_vld out_vld 1 1 } } }
	sum_2_out { ap_vld {  { sum_2_out out_data 1 32 }  { sum_2_out_ap_vld out_vld 1 1 } } }
	sum_1_out { ap_vld {  { sum_1_out out_data 1 32 }  { sum_1_out_ap_vld out_vld 1 1 } } }
	sum_out { ap_vld {  { sum_out out_data 1 32 }  { sum_out_ap_vld out_vld 1 1 } } }
}
