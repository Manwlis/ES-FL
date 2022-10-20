set moduleName softmax_error_propagation_10u_128u_Pipeline_input
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
set C_modelName {softmax_error_propagation<10u, 128u>_Pipeline_input}
set C_modelType { void 0 }
set C_modelArgList {
	{ weights int 320 regular {array 128 { 1 3 } 1 1 }  }
	{ output_error_load float 32 regular  }
	{ output_error_load_1 float 32 regular  }
	{ output_error_load_2 float 32 regular  }
	{ output_error_load_3 float 32 regular  }
	{ output_error_load_4 float 32 regular  }
	{ output_error_load_5 float 32 regular  }
	{ output_error_load_6 float 32 regular  }
	{ output_error_load_7 float 32 regular  }
	{ output_error_load_8 float 32 regular  }
	{ output_error_load_9 float 32 regular  }
	{ softmax_input_error_stream16 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 320, "direction" : "READONLY"} , 
 	{ "Name" : "output_error_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_error_load_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_error_load_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_error_load_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_error_load_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_error_load_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_error_load_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_error_load_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_error_load_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_error_load_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "softmax_input_error_stream16", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ softmax_input_error_stream16_din sc_out sc_lv 32 signal 11 } 
	{ softmax_input_error_stream16_num_data_valid sc_in sc_lv 2 signal 11 } 
	{ softmax_input_error_stream16_fifo_cap sc_in sc_lv 2 signal 11 } 
	{ softmax_input_error_stream16_full_n sc_in sc_logic 1 signal 11 } 
	{ softmax_input_error_stream16_write sc_out sc_logic 1 signal 11 } 
	{ weights_address0 sc_out sc_lv 7 signal 0 } 
	{ weights_ce0 sc_out sc_logic 1 signal 0 } 
	{ weights_q0 sc_in sc_lv 320 signal 0 } 
	{ output_error_load sc_in sc_lv 32 signal 1 } 
	{ output_error_load_1 sc_in sc_lv 32 signal 2 } 
	{ output_error_load_2 sc_in sc_lv 32 signal 3 } 
	{ output_error_load_3 sc_in sc_lv 32 signal 4 } 
	{ output_error_load_4 sc_in sc_lv 32 signal 5 } 
	{ output_error_load_5 sc_in sc_lv 32 signal 6 } 
	{ output_error_load_6 sc_in sc_lv 32 signal 7 } 
	{ output_error_load_7 sc_in sc_lv 32 signal 8 } 
	{ output_error_load_8 sc_in sc_lv 32 signal 9 } 
	{ output_error_load_9 sc_in sc_lv 32 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "softmax_input_error_stream16_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "softmax_input_error_stream16", "role": "din" }} , 
 	{ "name": "softmax_input_error_stream16_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "softmax_input_error_stream16", "role": "num_data_valid" }} , 
 	{ "name": "softmax_input_error_stream16_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "softmax_input_error_stream16", "role": "fifo_cap" }} , 
 	{ "name": "softmax_input_error_stream16_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "softmax_input_error_stream16", "role": "full_n" }} , 
 	{ "name": "softmax_input_error_stream16_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "softmax_input_error_stream16", "role": "write" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":320, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "output_error_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_error_load", "role": "default" }} , 
 	{ "name": "output_error_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_error_load_1", "role": "default" }} , 
 	{ "name": "output_error_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_error_load_2", "role": "default" }} , 
 	{ "name": "output_error_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_error_load_3", "role": "default" }} , 
 	{ "name": "output_error_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_error_load_4", "role": "default" }} , 
 	{ "name": "output_error_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_error_load_5", "role": "default" }} , 
 	{ "name": "output_error_load_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_error_load_6", "role": "default" }} , 
 	{ "name": "output_error_load_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_error_load_7", "role": "default" }} , 
 	{ "name": "output_error_load_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_error_load_8", "role": "default" }} , 
 	{ "name": "output_error_load_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_error_load_9", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"],
		"CDFG" : "softmax_error_propagation_10u_128u_Pipeline_input",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "150", "EstimateLatencyMax" : "150",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_error_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_error_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_error_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_error_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_error_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_error_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_error_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_error_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_error_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_error_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "softmax_input_error_stream16", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "softmax_input_error_stream16_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "input", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter21", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter21", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U30", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U31", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U32", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U33", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U34", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U35", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U36", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U37", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U38", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U39", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U40", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U41", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U42", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U43", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U44", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U45", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U46", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U47", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U48", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	softmax_error_propagation_10u_128u_Pipeline_input {
		weights {Type I LastRead 0 FirstWrite -1}
		output_error_load {Type I LastRead 0 FirstWrite -1}
		output_error_load_1 {Type I LastRead 0 FirstWrite -1}
		output_error_load_2 {Type I LastRead 0 FirstWrite -1}
		output_error_load_3 {Type I LastRead 0 FirstWrite -1}
		output_error_load_4 {Type I LastRead 0 FirstWrite -1}
		output_error_load_5 {Type I LastRead 0 FirstWrite -1}
		output_error_load_6 {Type I LastRead 0 FirstWrite -1}
		output_error_load_7 {Type I LastRead 0 FirstWrite -1}
		output_error_load_8 {Type I LastRead 0 FirstWrite -1}
		output_error_load_9 {Type I LastRead 0 FirstWrite -1}
		softmax_input_error_stream16 {Type O LastRead -1 FirstWrite 21}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "150", "Max" : "150"}
	, {"Name" : "Interval", "Min" : "150", "Max" : "150"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	weights { ap_memory {  { weights_address0 mem_address 1 7 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 in_data 0 320 } } }
	output_error_load { ap_none {  { output_error_load in_data 0 32 } } }
	output_error_load_1 { ap_none {  { output_error_load_1 in_data 0 32 } } }
	output_error_load_2 { ap_none {  { output_error_load_2 in_data 0 32 } } }
	output_error_load_3 { ap_none {  { output_error_load_3 in_data 0 32 } } }
	output_error_load_4 { ap_none {  { output_error_load_4 in_data 0 32 } } }
	output_error_load_5 { ap_none {  { output_error_load_5 in_data 0 32 } } }
	output_error_load_6 { ap_none {  { output_error_load_6 in_data 0 32 } } }
	output_error_load_7 { ap_none {  { output_error_load_7 in_data 0 32 } } }
	output_error_load_8 { ap_none {  { output_error_load_8 in_data 0 32 } } }
	output_error_load_9 { ap_none {  { output_error_load_9 in_data 0 32 } } }
	softmax_input_error_stream16 { ap_fifo {  { softmax_input_error_stream16_din fifo_port_we 1 32 }  { softmax_input_error_stream16_num_data_valid fifo_status_num_data_valid 0 2 }  { softmax_input_error_stream16_fifo_cap fifo_update 0 2 }  { softmax_input_error_stream16_full_n fifo_status 0 1 }  { softmax_input_error_stream16_write fifo_data 1 1 } } }
}
