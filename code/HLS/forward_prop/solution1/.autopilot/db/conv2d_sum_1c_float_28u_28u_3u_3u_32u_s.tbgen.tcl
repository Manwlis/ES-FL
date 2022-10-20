set moduleName conv2d_sum_1c_float_28u_28u_3u_3u_32u_s
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
set hasInterrupt 0
set C_modelName {conv2d_sum_1c<float, 28u, 28u, 3u, 3u, 32u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_32_padded_window_stream int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 288 { 1 1 } 1 1 }  }
	{ biases float 32 regular {array 32 { 1 1 } 1 1 }  }
	{ kernel_sums136 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_32_padded_window_stream", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "biases", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_sums136", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
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
	{ conv2d_32_padded_window_stream_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_32_padded_window_stream_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_32_padded_window_stream_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_32_padded_window_stream_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_32_padded_window_stream_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 9 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ weights_address1 sc_out sc_lv 9 signal 1 } 
	{ weights_ce1 sc_out sc_logic 1 signal 1 } 
	{ weights_q1 sc_in sc_lv 32 signal 1 } 
	{ biases_address0 sc_out sc_lv 5 signal 2 } 
	{ biases_ce0 sc_out sc_logic 1 signal 2 } 
	{ biases_q0 sc_in sc_lv 32 signal 2 } 
	{ biases_address1 sc_out sc_lv 5 signal 2 } 
	{ biases_ce1 sc_out sc_logic 1 signal 2 } 
	{ biases_q1 sc_in sc_lv 32 signal 2 } 
	{ kernel_sums136_din sc_out sc_lv 32 signal 3 } 
	{ kernel_sums136_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ kernel_sums136_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ kernel_sums136_full_n sc_in sc_logic 1 signal 3 } 
	{ kernel_sums136_write sc_out sc_logic 1 signal 3 } 
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
 	{ "name": "conv2d_32_padded_window_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_32_padded_window_stream", "role": "dout" }} , 
 	{ "name": "conv2d_32_padded_window_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_32_padded_window_stream", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_32_padded_window_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_32_padded_window_stream", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_32_padded_window_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_32_padded_window_stream", "role": "empty_n" }} , 
 	{ "name": "conv2d_32_padded_window_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_32_padded_window_stream", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "weights_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights", "role": "address1" }} , 
 	{ "name": "weights_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce1" }} , 
 	{ "name": "weights_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q1" }} , 
 	{ "name": "biases_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "biases", "role": "address0" }} , 
 	{ "name": "biases_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "biases", "role": "ce0" }} , 
 	{ "name": "biases_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "biases", "role": "q0" }} , 
 	{ "name": "biases_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "biases", "role": "address1" }} , 
 	{ "name": "biases_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "biases", "role": "ce1" }} , 
 	{ "name": "biases_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "biases", "role": "q1" }} , 
 	{ "name": "kernel_sums136_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_sums136", "role": "din" }} , 
 	{ "name": "kernel_sums136_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "kernel_sums136", "role": "num_data_valid" }} , 
 	{ "name": "kernel_sums136_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "kernel_sums136", "role": "fifo_cap" }} , 
 	{ "name": "kernel_sums136_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel_sums136", "role": "full_n" }} , 
 	{ "name": "kernel_sums136_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel_sums136", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_1c_float_28u_28u_3u_3u_32u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25276", "EstimateLatencyMax" : "25276",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv2d_32_padded_window_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs_fu_3496", "Port" : "conv2d_32_padded_window_stream", "Inst_start_state" : "145", "Inst_end_state" : "146"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "biases", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "kernel_sums136", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs_fu_3496", "Port" : "kernel_sums136", "Inst_start_state" : "145", "Inst_end_state" : "146"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs_fu_3496", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"],
		"CDFG" : "conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25131", "EstimateLatencyMax" : "25131",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv2d_32_padded_window_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_32_padded_window_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18401", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18402", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18403", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18404", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18405", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18406", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18407", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18408", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sums136", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "kernel_sums136_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_18409", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18410", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18411", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18412", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18413", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18414", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18415", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18416", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18417", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4066", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18418", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18419", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18420", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18421", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18422", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18423", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18424", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18425", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18426", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4068", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18427", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18428", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18429", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18430", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18431", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18432", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18433", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18434", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18435", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4070", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18436", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18437", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18438", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18439", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18440", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18441", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18442", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18443", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18444", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4072", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18445", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18446", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18447", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18448", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18449", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18450", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18451", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18452", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18453", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4074", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18454", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18455", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18456", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18457", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18458", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18459", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18460", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18461", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18462", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4076", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18463", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18464", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18465", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18466", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18467", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18468", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18469", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18470", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18471", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4078", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18472", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18473", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18474", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18475", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18476", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18477", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18478", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18479", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18480", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4080", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18481", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18482", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18483", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18484", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18485", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18486", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18487", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18488", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18489", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4082", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18490", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18491", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18492", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18493", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18494", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18495", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18496", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18497", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18498", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4084", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18499", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18500", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18501", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18502", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18503", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18504", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18505", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18506", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18507", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4086", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18508", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18509", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18510", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18511", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18512", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18513", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18514", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18515", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18516", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4088", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18517", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18518", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18519", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18520", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18521", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18522", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18523", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18524", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18525", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4090", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18526", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18527", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18528", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18529", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18530", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18531", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18532", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18533", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18534", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4092", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18535", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18536", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18537", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18538", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18539", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18540", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18541", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18542", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18543", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4094", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18544", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18545", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18546", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18547", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18548", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18549", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18550", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18551", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18552", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4096", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18553", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18554", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18555", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18556", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18557", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18558", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18559", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18560", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18561", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4098", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18562", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18563", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18564", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18565", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18566", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18567", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18568", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18569", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18570", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4100", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18571", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18572", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18573", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18574", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18575", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18576", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18577", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18578", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18579", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4102", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18580", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18581", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18582", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18583", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18584", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18585", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18586", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18587", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18588", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4104", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18589", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18590", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18591", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18592", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18593", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18594", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18595", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18596", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18597", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4106", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18598", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18599", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18600", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18601", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18602", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18603", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18604", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18605", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18606", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4108", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18607", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18608", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18609", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18610", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18611", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18612", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18613", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18614", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18615", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4110", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18616", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18617", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18618", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18619", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18620", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18621", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18622", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18623", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18624", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4112", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18625", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18626", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18627", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18628", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18629", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18630", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18631", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18632", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18633", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4114", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18634", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18635", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18636", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18637", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18638", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18639", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18640", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18641", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18642", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4116", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18643", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18644", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18645", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18646", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18647", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18648", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18649", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18650", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18651", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4118", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18652", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18653", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18654", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18655", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18656", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18657", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18658", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18659", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18660", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4120", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18661", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18662", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18663", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18664", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18665", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18666", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18667", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18668", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18669", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4122", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18670", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18671", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18672", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18673", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18674", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18675", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18676", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18677", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18678", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4124", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18679", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18680", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18681", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18682", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18683", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18684", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18685", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18686", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_load_18687", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_sum_4126", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage9", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage9_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs_fu_3496.fadd_32ns_32ns_32_3_full_dsp_1_U150", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs_fu_3496.fadd_32ns_32ns_32_3_full_dsp_1_U151", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs_fu_3496.fadd_32ns_32ns_32_3_full_dsp_1_U152", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs_fu_3496.fadd_32ns_32ns_32_3_full_dsp_1_U153", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs_fu_3496.fadd_32ns_32ns_32_3_full_dsp_1_U154", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs_fu_3496.fadd_32ns_32ns_32_3_full_dsp_1_U155", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs_fu_3496.fadd_32ns_32ns_32_3_full_dsp_1_U156", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs_fu_3496.fadd_32ns_32ns_32_3_full_dsp_1_U157", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs_fu_3496.fadd_32ns_32ns_32_3_full_dsp_1_U158", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs_fu_3496.fmul_32ns_32ns_32_2_max_dsp_1_U159", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs_fu_3496.fmul_32ns_32ns_32_2_max_dsp_1_U160", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs_fu_3496.fmul_32ns_32ns_32_2_max_dsp_1_U161", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs_fu_3496.fmul_32ns_32ns_32_2_max_dsp_1_U162", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs_fu_3496.fmul_32ns_32ns_32_2_max_dsp_1_U163", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs_fu_3496.fmul_32ns_32ns_32_2_max_dsp_1_U164", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs_fu_3496.fmul_32ns_32ns_32_2_max_dsp_1_U165", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs_fu_3496.fmul_32ns_32ns_32_2_max_dsp_1_U166", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs_fu_3496.fmul_32ns_32ns_32_2_max_dsp_1_U167", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs_fu_3496.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_1c_float_28u_28u_3u_3u_32u_s {
		conv2d_32_padded_window_stream {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 144 FirstWrite -1}
		biases {Type I LastRead 144 FirstWrite -1}
		kernel_sums136 {Type O LastRead -1 FirstWrite 42}}
	conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs {
		conv2d_32_padded_window_stream {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_18401 {Type I LastRead 0 FirstWrite -1}
		weights_load_18402 {Type I LastRead 0 FirstWrite -1}
		weights_load_18403 {Type I LastRead 0 FirstWrite -1}
		weights_load_18404 {Type I LastRead 0 FirstWrite -1}
		weights_load_18405 {Type I LastRead 0 FirstWrite -1}
		weights_load_18406 {Type I LastRead 0 FirstWrite -1}
		weights_load_18407 {Type I LastRead 0 FirstWrite -1}
		weights_load_18408 {Type I LastRead 0 FirstWrite -1}
		temp_sum {Type I LastRead 0 FirstWrite -1}
		kernel_sums136 {Type O LastRead -1 FirstWrite 42}
		weights_load_18409 {Type I LastRead 0 FirstWrite -1}
		weights_load_18410 {Type I LastRead 0 FirstWrite -1}
		weights_load_18411 {Type I LastRead 0 FirstWrite -1}
		weights_load_18412 {Type I LastRead 0 FirstWrite -1}
		weights_load_18413 {Type I LastRead 0 FirstWrite -1}
		weights_load_18414 {Type I LastRead 0 FirstWrite -1}
		weights_load_18415 {Type I LastRead 0 FirstWrite -1}
		weights_load_18416 {Type I LastRead 0 FirstWrite -1}
		weights_load_18417 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4066 {Type I LastRead 0 FirstWrite -1}
		weights_load_18418 {Type I LastRead 0 FirstWrite -1}
		weights_load_18419 {Type I LastRead 0 FirstWrite -1}
		weights_load_18420 {Type I LastRead 0 FirstWrite -1}
		weights_load_18421 {Type I LastRead 0 FirstWrite -1}
		weights_load_18422 {Type I LastRead 0 FirstWrite -1}
		weights_load_18423 {Type I LastRead 0 FirstWrite -1}
		weights_load_18424 {Type I LastRead 0 FirstWrite -1}
		weights_load_18425 {Type I LastRead 0 FirstWrite -1}
		weights_load_18426 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4068 {Type I LastRead 0 FirstWrite -1}
		weights_load_18427 {Type I LastRead 0 FirstWrite -1}
		weights_load_18428 {Type I LastRead 0 FirstWrite -1}
		weights_load_18429 {Type I LastRead 0 FirstWrite -1}
		weights_load_18430 {Type I LastRead 0 FirstWrite -1}
		weights_load_18431 {Type I LastRead 0 FirstWrite -1}
		weights_load_18432 {Type I LastRead 0 FirstWrite -1}
		weights_load_18433 {Type I LastRead 0 FirstWrite -1}
		weights_load_18434 {Type I LastRead 0 FirstWrite -1}
		weights_load_18435 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4070 {Type I LastRead 0 FirstWrite -1}
		weights_load_18436 {Type I LastRead 0 FirstWrite -1}
		weights_load_18437 {Type I LastRead 0 FirstWrite -1}
		weights_load_18438 {Type I LastRead 0 FirstWrite -1}
		weights_load_18439 {Type I LastRead 0 FirstWrite -1}
		weights_load_18440 {Type I LastRead 0 FirstWrite -1}
		weights_load_18441 {Type I LastRead 0 FirstWrite -1}
		weights_load_18442 {Type I LastRead 0 FirstWrite -1}
		weights_load_18443 {Type I LastRead 0 FirstWrite -1}
		weights_load_18444 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4072 {Type I LastRead 0 FirstWrite -1}
		weights_load_18445 {Type I LastRead 0 FirstWrite -1}
		weights_load_18446 {Type I LastRead 0 FirstWrite -1}
		weights_load_18447 {Type I LastRead 0 FirstWrite -1}
		weights_load_18448 {Type I LastRead 0 FirstWrite -1}
		weights_load_18449 {Type I LastRead 0 FirstWrite -1}
		weights_load_18450 {Type I LastRead 0 FirstWrite -1}
		weights_load_18451 {Type I LastRead 0 FirstWrite -1}
		weights_load_18452 {Type I LastRead 0 FirstWrite -1}
		weights_load_18453 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4074 {Type I LastRead 0 FirstWrite -1}
		weights_load_18454 {Type I LastRead 0 FirstWrite -1}
		weights_load_18455 {Type I LastRead 0 FirstWrite -1}
		weights_load_18456 {Type I LastRead 0 FirstWrite -1}
		weights_load_18457 {Type I LastRead 0 FirstWrite -1}
		weights_load_18458 {Type I LastRead 0 FirstWrite -1}
		weights_load_18459 {Type I LastRead 0 FirstWrite -1}
		weights_load_18460 {Type I LastRead 0 FirstWrite -1}
		weights_load_18461 {Type I LastRead 0 FirstWrite -1}
		weights_load_18462 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4076 {Type I LastRead 0 FirstWrite -1}
		weights_load_18463 {Type I LastRead 0 FirstWrite -1}
		weights_load_18464 {Type I LastRead 0 FirstWrite -1}
		weights_load_18465 {Type I LastRead 0 FirstWrite -1}
		weights_load_18466 {Type I LastRead 0 FirstWrite -1}
		weights_load_18467 {Type I LastRead 0 FirstWrite -1}
		weights_load_18468 {Type I LastRead 0 FirstWrite -1}
		weights_load_18469 {Type I LastRead 0 FirstWrite -1}
		weights_load_18470 {Type I LastRead 0 FirstWrite -1}
		weights_load_18471 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4078 {Type I LastRead 0 FirstWrite -1}
		weights_load_18472 {Type I LastRead 0 FirstWrite -1}
		weights_load_18473 {Type I LastRead 0 FirstWrite -1}
		weights_load_18474 {Type I LastRead 0 FirstWrite -1}
		weights_load_18475 {Type I LastRead 0 FirstWrite -1}
		weights_load_18476 {Type I LastRead 0 FirstWrite -1}
		weights_load_18477 {Type I LastRead 0 FirstWrite -1}
		weights_load_18478 {Type I LastRead 0 FirstWrite -1}
		weights_load_18479 {Type I LastRead 0 FirstWrite -1}
		weights_load_18480 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4080 {Type I LastRead 0 FirstWrite -1}
		weights_load_18481 {Type I LastRead 0 FirstWrite -1}
		weights_load_18482 {Type I LastRead 0 FirstWrite -1}
		weights_load_18483 {Type I LastRead 0 FirstWrite -1}
		weights_load_18484 {Type I LastRead 0 FirstWrite -1}
		weights_load_18485 {Type I LastRead 0 FirstWrite -1}
		weights_load_18486 {Type I LastRead 0 FirstWrite -1}
		weights_load_18487 {Type I LastRead 0 FirstWrite -1}
		weights_load_18488 {Type I LastRead 0 FirstWrite -1}
		weights_load_18489 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4082 {Type I LastRead 0 FirstWrite -1}
		weights_load_18490 {Type I LastRead 0 FirstWrite -1}
		weights_load_18491 {Type I LastRead 0 FirstWrite -1}
		weights_load_18492 {Type I LastRead 0 FirstWrite -1}
		weights_load_18493 {Type I LastRead 0 FirstWrite -1}
		weights_load_18494 {Type I LastRead 0 FirstWrite -1}
		weights_load_18495 {Type I LastRead 0 FirstWrite -1}
		weights_load_18496 {Type I LastRead 0 FirstWrite -1}
		weights_load_18497 {Type I LastRead 0 FirstWrite -1}
		weights_load_18498 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4084 {Type I LastRead 0 FirstWrite -1}
		weights_load_18499 {Type I LastRead 0 FirstWrite -1}
		weights_load_18500 {Type I LastRead 0 FirstWrite -1}
		weights_load_18501 {Type I LastRead 0 FirstWrite -1}
		weights_load_18502 {Type I LastRead 0 FirstWrite -1}
		weights_load_18503 {Type I LastRead 0 FirstWrite -1}
		weights_load_18504 {Type I LastRead 0 FirstWrite -1}
		weights_load_18505 {Type I LastRead 0 FirstWrite -1}
		weights_load_18506 {Type I LastRead 0 FirstWrite -1}
		weights_load_18507 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4086 {Type I LastRead 0 FirstWrite -1}
		weights_load_18508 {Type I LastRead 0 FirstWrite -1}
		weights_load_18509 {Type I LastRead 0 FirstWrite -1}
		weights_load_18510 {Type I LastRead 0 FirstWrite -1}
		weights_load_18511 {Type I LastRead 0 FirstWrite -1}
		weights_load_18512 {Type I LastRead 0 FirstWrite -1}
		weights_load_18513 {Type I LastRead 0 FirstWrite -1}
		weights_load_18514 {Type I LastRead 0 FirstWrite -1}
		weights_load_18515 {Type I LastRead 0 FirstWrite -1}
		weights_load_18516 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4088 {Type I LastRead 0 FirstWrite -1}
		weights_load_18517 {Type I LastRead 0 FirstWrite -1}
		weights_load_18518 {Type I LastRead 0 FirstWrite -1}
		weights_load_18519 {Type I LastRead 0 FirstWrite -1}
		weights_load_18520 {Type I LastRead 0 FirstWrite -1}
		weights_load_18521 {Type I LastRead 0 FirstWrite -1}
		weights_load_18522 {Type I LastRead 0 FirstWrite -1}
		weights_load_18523 {Type I LastRead 0 FirstWrite -1}
		weights_load_18524 {Type I LastRead 0 FirstWrite -1}
		weights_load_18525 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4090 {Type I LastRead 0 FirstWrite -1}
		weights_load_18526 {Type I LastRead 0 FirstWrite -1}
		weights_load_18527 {Type I LastRead 0 FirstWrite -1}
		weights_load_18528 {Type I LastRead 0 FirstWrite -1}
		weights_load_18529 {Type I LastRead 0 FirstWrite -1}
		weights_load_18530 {Type I LastRead 0 FirstWrite -1}
		weights_load_18531 {Type I LastRead 0 FirstWrite -1}
		weights_load_18532 {Type I LastRead 0 FirstWrite -1}
		weights_load_18533 {Type I LastRead 0 FirstWrite -1}
		weights_load_18534 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4092 {Type I LastRead 0 FirstWrite -1}
		weights_load_18535 {Type I LastRead 0 FirstWrite -1}
		weights_load_18536 {Type I LastRead 0 FirstWrite -1}
		weights_load_18537 {Type I LastRead 0 FirstWrite -1}
		weights_load_18538 {Type I LastRead 0 FirstWrite -1}
		weights_load_18539 {Type I LastRead 0 FirstWrite -1}
		weights_load_18540 {Type I LastRead 0 FirstWrite -1}
		weights_load_18541 {Type I LastRead 0 FirstWrite -1}
		weights_load_18542 {Type I LastRead 0 FirstWrite -1}
		weights_load_18543 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4094 {Type I LastRead 0 FirstWrite -1}
		weights_load_18544 {Type I LastRead 0 FirstWrite -1}
		weights_load_18545 {Type I LastRead 0 FirstWrite -1}
		weights_load_18546 {Type I LastRead 0 FirstWrite -1}
		weights_load_18547 {Type I LastRead 0 FirstWrite -1}
		weights_load_18548 {Type I LastRead 0 FirstWrite -1}
		weights_load_18549 {Type I LastRead 0 FirstWrite -1}
		weights_load_18550 {Type I LastRead 0 FirstWrite -1}
		weights_load_18551 {Type I LastRead 0 FirstWrite -1}
		weights_load_18552 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4096 {Type I LastRead 0 FirstWrite -1}
		weights_load_18553 {Type I LastRead 0 FirstWrite -1}
		weights_load_18554 {Type I LastRead 0 FirstWrite -1}
		weights_load_18555 {Type I LastRead 0 FirstWrite -1}
		weights_load_18556 {Type I LastRead 0 FirstWrite -1}
		weights_load_18557 {Type I LastRead 0 FirstWrite -1}
		weights_load_18558 {Type I LastRead 0 FirstWrite -1}
		weights_load_18559 {Type I LastRead 0 FirstWrite -1}
		weights_load_18560 {Type I LastRead 0 FirstWrite -1}
		weights_load_18561 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4098 {Type I LastRead 0 FirstWrite -1}
		weights_load_18562 {Type I LastRead 0 FirstWrite -1}
		weights_load_18563 {Type I LastRead 0 FirstWrite -1}
		weights_load_18564 {Type I LastRead 0 FirstWrite -1}
		weights_load_18565 {Type I LastRead 0 FirstWrite -1}
		weights_load_18566 {Type I LastRead 0 FirstWrite -1}
		weights_load_18567 {Type I LastRead 0 FirstWrite -1}
		weights_load_18568 {Type I LastRead 0 FirstWrite -1}
		weights_load_18569 {Type I LastRead 0 FirstWrite -1}
		weights_load_18570 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4100 {Type I LastRead 0 FirstWrite -1}
		weights_load_18571 {Type I LastRead 0 FirstWrite -1}
		weights_load_18572 {Type I LastRead 0 FirstWrite -1}
		weights_load_18573 {Type I LastRead 0 FirstWrite -1}
		weights_load_18574 {Type I LastRead 0 FirstWrite -1}
		weights_load_18575 {Type I LastRead 0 FirstWrite -1}
		weights_load_18576 {Type I LastRead 0 FirstWrite -1}
		weights_load_18577 {Type I LastRead 0 FirstWrite -1}
		weights_load_18578 {Type I LastRead 0 FirstWrite -1}
		weights_load_18579 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4102 {Type I LastRead 0 FirstWrite -1}
		weights_load_18580 {Type I LastRead 0 FirstWrite -1}
		weights_load_18581 {Type I LastRead 0 FirstWrite -1}
		weights_load_18582 {Type I LastRead 0 FirstWrite -1}
		weights_load_18583 {Type I LastRead 0 FirstWrite -1}
		weights_load_18584 {Type I LastRead 0 FirstWrite -1}
		weights_load_18585 {Type I LastRead 0 FirstWrite -1}
		weights_load_18586 {Type I LastRead 0 FirstWrite -1}
		weights_load_18587 {Type I LastRead 0 FirstWrite -1}
		weights_load_18588 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4104 {Type I LastRead 0 FirstWrite -1}
		weights_load_18589 {Type I LastRead 0 FirstWrite -1}
		weights_load_18590 {Type I LastRead 0 FirstWrite -1}
		weights_load_18591 {Type I LastRead 0 FirstWrite -1}
		weights_load_18592 {Type I LastRead 0 FirstWrite -1}
		weights_load_18593 {Type I LastRead 0 FirstWrite -1}
		weights_load_18594 {Type I LastRead 0 FirstWrite -1}
		weights_load_18595 {Type I LastRead 0 FirstWrite -1}
		weights_load_18596 {Type I LastRead 0 FirstWrite -1}
		weights_load_18597 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4106 {Type I LastRead 0 FirstWrite -1}
		weights_load_18598 {Type I LastRead 0 FirstWrite -1}
		weights_load_18599 {Type I LastRead 0 FirstWrite -1}
		weights_load_18600 {Type I LastRead 0 FirstWrite -1}
		weights_load_18601 {Type I LastRead 0 FirstWrite -1}
		weights_load_18602 {Type I LastRead 0 FirstWrite -1}
		weights_load_18603 {Type I LastRead 0 FirstWrite -1}
		weights_load_18604 {Type I LastRead 0 FirstWrite -1}
		weights_load_18605 {Type I LastRead 0 FirstWrite -1}
		weights_load_18606 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4108 {Type I LastRead 0 FirstWrite -1}
		weights_load_18607 {Type I LastRead 0 FirstWrite -1}
		weights_load_18608 {Type I LastRead 0 FirstWrite -1}
		weights_load_18609 {Type I LastRead 0 FirstWrite -1}
		weights_load_18610 {Type I LastRead 0 FirstWrite -1}
		weights_load_18611 {Type I LastRead 0 FirstWrite -1}
		weights_load_18612 {Type I LastRead 0 FirstWrite -1}
		weights_load_18613 {Type I LastRead 0 FirstWrite -1}
		weights_load_18614 {Type I LastRead 0 FirstWrite -1}
		weights_load_18615 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4110 {Type I LastRead 0 FirstWrite -1}
		weights_load_18616 {Type I LastRead 0 FirstWrite -1}
		weights_load_18617 {Type I LastRead 0 FirstWrite -1}
		weights_load_18618 {Type I LastRead 0 FirstWrite -1}
		weights_load_18619 {Type I LastRead 0 FirstWrite -1}
		weights_load_18620 {Type I LastRead 0 FirstWrite -1}
		weights_load_18621 {Type I LastRead 0 FirstWrite -1}
		weights_load_18622 {Type I LastRead 0 FirstWrite -1}
		weights_load_18623 {Type I LastRead 0 FirstWrite -1}
		weights_load_18624 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4112 {Type I LastRead 0 FirstWrite -1}
		weights_load_18625 {Type I LastRead 0 FirstWrite -1}
		weights_load_18626 {Type I LastRead 0 FirstWrite -1}
		weights_load_18627 {Type I LastRead 0 FirstWrite -1}
		weights_load_18628 {Type I LastRead 0 FirstWrite -1}
		weights_load_18629 {Type I LastRead 0 FirstWrite -1}
		weights_load_18630 {Type I LastRead 0 FirstWrite -1}
		weights_load_18631 {Type I LastRead 0 FirstWrite -1}
		weights_load_18632 {Type I LastRead 0 FirstWrite -1}
		weights_load_18633 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4114 {Type I LastRead 0 FirstWrite -1}
		weights_load_18634 {Type I LastRead 0 FirstWrite -1}
		weights_load_18635 {Type I LastRead 0 FirstWrite -1}
		weights_load_18636 {Type I LastRead 0 FirstWrite -1}
		weights_load_18637 {Type I LastRead 0 FirstWrite -1}
		weights_load_18638 {Type I LastRead 0 FirstWrite -1}
		weights_load_18639 {Type I LastRead 0 FirstWrite -1}
		weights_load_18640 {Type I LastRead 0 FirstWrite -1}
		weights_load_18641 {Type I LastRead 0 FirstWrite -1}
		weights_load_18642 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4116 {Type I LastRead 0 FirstWrite -1}
		weights_load_18643 {Type I LastRead 0 FirstWrite -1}
		weights_load_18644 {Type I LastRead 0 FirstWrite -1}
		weights_load_18645 {Type I LastRead 0 FirstWrite -1}
		weights_load_18646 {Type I LastRead 0 FirstWrite -1}
		weights_load_18647 {Type I LastRead 0 FirstWrite -1}
		weights_load_18648 {Type I LastRead 0 FirstWrite -1}
		weights_load_18649 {Type I LastRead 0 FirstWrite -1}
		weights_load_18650 {Type I LastRead 0 FirstWrite -1}
		weights_load_18651 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4118 {Type I LastRead 0 FirstWrite -1}
		weights_load_18652 {Type I LastRead 0 FirstWrite -1}
		weights_load_18653 {Type I LastRead 0 FirstWrite -1}
		weights_load_18654 {Type I LastRead 0 FirstWrite -1}
		weights_load_18655 {Type I LastRead 0 FirstWrite -1}
		weights_load_18656 {Type I LastRead 0 FirstWrite -1}
		weights_load_18657 {Type I LastRead 0 FirstWrite -1}
		weights_load_18658 {Type I LastRead 0 FirstWrite -1}
		weights_load_18659 {Type I LastRead 0 FirstWrite -1}
		weights_load_18660 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4120 {Type I LastRead 0 FirstWrite -1}
		weights_load_18661 {Type I LastRead 0 FirstWrite -1}
		weights_load_18662 {Type I LastRead 0 FirstWrite -1}
		weights_load_18663 {Type I LastRead 0 FirstWrite -1}
		weights_load_18664 {Type I LastRead 0 FirstWrite -1}
		weights_load_18665 {Type I LastRead 0 FirstWrite -1}
		weights_load_18666 {Type I LastRead 0 FirstWrite -1}
		weights_load_18667 {Type I LastRead 0 FirstWrite -1}
		weights_load_18668 {Type I LastRead 0 FirstWrite -1}
		weights_load_18669 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4122 {Type I LastRead 0 FirstWrite -1}
		weights_load_18670 {Type I LastRead 0 FirstWrite -1}
		weights_load_18671 {Type I LastRead 0 FirstWrite -1}
		weights_load_18672 {Type I LastRead 0 FirstWrite -1}
		weights_load_18673 {Type I LastRead 0 FirstWrite -1}
		weights_load_18674 {Type I LastRead 0 FirstWrite -1}
		weights_load_18675 {Type I LastRead 0 FirstWrite -1}
		weights_load_18676 {Type I LastRead 0 FirstWrite -1}
		weights_load_18677 {Type I LastRead 0 FirstWrite -1}
		weights_load_18678 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4124 {Type I LastRead 0 FirstWrite -1}
		weights_load_18679 {Type I LastRead 0 FirstWrite -1}
		weights_load_18680 {Type I LastRead 0 FirstWrite -1}
		weights_load_18681 {Type I LastRead 0 FirstWrite -1}
		weights_load_18682 {Type I LastRead 0 FirstWrite -1}
		weights_load_18683 {Type I LastRead 0 FirstWrite -1}
		weights_load_18684 {Type I LastRead 0 FirstWrite -1}
		weights_load_18685 {Type I LastRead 0 FirstWrite -1}
		weights_load_18686 {Type I LastRead 0 FirstWrite -1}
		weights_load_18687 {Type I LastRead 0 FirstWrite -1}
		temp_sum_4126 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "25276", "Max" : "25276"}
	, {"Name" : "Interval", "Min" : "25276", "Max" : "25276"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_32_padded_window_stream { ap_fifo {  { conv2d_32_padded_window_stream_dout fifo_port_we 0 288 }  { conv2d_32_padded_window_stream_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_32_padded_window_stream_fifo_cap fifo_update 0 3 }  { conv2d_32_padded_window_stream_empty_n fifo_status 0 1 }  { conv2d_32_padded_window_stream_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 9 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 }  { weights_address1 MemPortADDR2 1 9 }  { weights_ce1 MemPortCE2 1 1 }  { weights_q1 MemPortDOUT2 0 32 } } }
	biases { ap_memory {  { biases_address0 mem_address 1 5 }  { biases_ce0 mem_ce 1 1 }  { biases_q0 mem_dout 0 32 }  { biases_address1 MemPortADDR2 1 5 }  { biases_ce1 MemPortCE2 1 1 }  { biases_q1 MemPortDOUT2 0 32 } } }
	kernel_sums136 { ap_fifo {  { kernel_sums136_din fifo_port_we 1 32 }  { kernel_sums136_num_data_valid fifo_status_num_data_valid 0 3 }  { kernel_sums136_fifo_cap fifo_update 0 3 }  { kernel_sums136_full_n fifo_status 0 1 }  { kernel_sums136_write fifo_data 1 1 } } }
}
