set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_23
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.23}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_23 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_23 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_23", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_23", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ conv2d_64_padded_window_stream_23_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_23_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_23_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_23_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_23_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_23_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_23_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_23_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_23_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_23_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_23_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_23", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_23_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_23", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_23_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_23", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_23_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_23", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_23_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_23", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_23_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_23", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_23_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_23", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_23_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_23", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_23_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_23", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_23_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_23", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_23",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13138", "EstimateLatencyMax" : "13138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv2d_64_padded_window_stream_23", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_23_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_23", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_23", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_23_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_23", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_23_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_23_Pipeline_inputs",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12561", "EstimateLatencyMax" : "12561",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv2d_64_padded_window_stream_23", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_23_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8626", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8627", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8628", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8629", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8630", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8631", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8632", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8633", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_23", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_23_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_8634", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8635", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8636", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8637", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8638", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8639", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8640", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8641", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8642", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8643", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8644", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8645", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8646", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8647", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8648", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8649", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8650", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8651", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8652", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8653", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8654", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8655", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8656", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8657", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8658", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8659", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8660", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8661", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8662", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8663", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8664", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8665", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8666", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8667", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8668", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8669", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8670", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8671", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8672", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8673", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8674", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8675", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8676", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8677", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8678", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8679", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8680", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8681", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8682", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8683", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8684", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8685", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8686", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8687", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8688", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8689", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8690", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8691", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8692", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8693", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8694", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8695", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8696", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8697", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8698", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8699", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8700", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8701", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8702", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8703", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8704", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8705", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8706", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8707", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8708", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8709", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8710", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8711", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8712", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8713", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8714", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8715", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8716", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8717", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8718", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8719", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8720", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8721", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8722", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8723", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8724", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8725", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8726", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8727", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8728", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8729", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8730", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8731", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8732", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8733", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8734", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8735", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8736", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8737", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8738", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8739", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8740", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8741", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8742", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8743", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8744", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8745", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8746", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8747", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8748", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8749", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8750", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8751", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8752", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8753", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8754", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8755", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8756", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8757", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8758", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8759", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8760", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8761", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8762", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8763", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8764", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8765", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8766", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8767", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8768", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8769", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8770", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8771", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8772", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8773", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8774", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8775", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8776", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8777", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8778", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8779", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8780", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8781", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8782", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8783", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8784", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8785", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8786", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8787", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8788", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8789", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8790", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8791", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8792", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8793", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8794", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8795", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8796", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8797", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8798", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8799", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8800", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8801", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8802", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8803", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8804", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8805", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8806", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8807", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8808", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8809", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8810", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8811", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8812", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8813", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8814", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8815", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8816", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8817", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8818", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8819", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8820", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8821", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8822", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8823", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8824", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8825", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8826", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8827", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8828", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8829", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8830", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8831", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8832", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8833", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8834", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8835", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8836", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8837", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8838", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8839", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8840", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8841", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8842", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8843", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8844", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8845", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8846", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8847", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8848", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8849", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8850", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8851", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8852", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8853", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8854", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8855", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8856", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8857", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8858", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8859", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8860", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8861", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8862", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8863", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8864", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8865", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8866", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8867", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8868", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8869", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8870", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8871", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8872", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8873", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8874", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8875", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8876", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8877", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8878", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8879", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8880", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8881", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8882", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8883", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8884", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8885", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8886", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8887", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8888", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8889", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8890", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8891", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8892", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8893", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8894", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8895", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8896", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8897", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8898", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8899", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8900", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8901", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8902", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8903", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8904", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8905", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8906", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8907", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8908", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8909", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8910", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8911", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8912", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8913", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8914", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8915", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8916", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8917", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8918", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8919", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8920", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8921", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8922", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8923", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8924", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8925", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8926", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8927", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8928", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8929", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8930", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8931", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8932", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8933", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8934", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8935", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8936", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8937", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8938", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8939", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8940", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8941", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8942", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8943", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8944", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8945", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8946", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8947", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8948", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8949", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8950", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8951", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8952", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8953", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8954", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8955", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8956", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8957", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8958", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8959", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8960", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8961", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8962", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8963", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8964", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8965", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8966", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8967", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8968", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8969", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8970", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8971", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8972", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8973", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8974", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8975", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8976", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8977", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8978", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8979", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8980", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8981", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8982", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8983", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8984", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8985", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8986", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8987", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8988", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8989", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8990", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8991", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8992", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8993", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8994", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8995", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8996", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8997", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8998", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8999", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9000", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9001", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9002", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9003", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9004", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9005", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9006", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9007", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9008", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9009", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9010", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9011", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9012", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9013", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9014", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9015", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9016", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9017", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9018", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9019", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9020", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9021", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9022", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9023", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9024", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9025", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9026", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9027", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9028", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9029", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9030", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9031", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9032", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9033", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9034", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9035", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9036", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9037", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9038", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9039", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9040", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9041", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9042", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9043", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9044", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9045", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9046", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9047", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9048", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9049", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9050", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9051", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9052", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9053", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9054", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9055", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9056", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9057", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9058", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9059", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9060", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9061", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9062", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9063", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9064", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9065", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9066", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9067", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9068", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9069", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9070", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9071", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9072", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9073", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9074", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9075", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9076", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9077", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9078", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9079", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9080", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9081", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9082", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9083", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9084", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9085", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9086", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9087", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9088", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9089", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9090", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9091", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9092", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9093", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9094", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9095", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9096", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9097", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9098", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9099", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9100", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9101", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9102", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9103", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9104", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9105", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9106", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9107", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9108", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9109", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9110", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9111", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9112", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9113", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9114", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9115", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9116", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9117", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9118", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9119", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9120", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9121", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9122", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9123", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9124", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9125", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9126", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9127", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9128", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9129", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9130", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9131", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9132", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9133", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9134", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9135", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9136", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9137", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9138", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9139", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9140", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9141", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9142", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9143", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9144", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9145", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9146", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9147", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9148", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9149", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9150", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9151", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9152", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9153", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9154", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9155", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9156", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9157", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9158", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9159", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9160", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9161", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9162", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9163", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9164", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9165", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9166", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9167", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9168", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9169", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9170", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9171", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9172", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9173", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9174", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9175", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9176", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9177", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9178", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9179", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9180", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9181", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9182", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9183", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9184", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9185", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9186", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9187", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9188", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9189", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9190", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9191", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9192", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9193", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9194", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9195", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9196", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9197", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9198", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9199", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9200", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_23_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U14310", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_23_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U14311", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_23_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U14312", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_23_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U14313", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_23_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U14314", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_23_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U14315", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_23_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U14316", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_23_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U14317", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_23_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U14318", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_23_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U14319", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_23_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U14320", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_23_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U14321", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_23_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U14322", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_23_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U14323", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_23_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U14324", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_23_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U14325", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_23_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U14326", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_23_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_23 {
		conv2d_64_padded_window_stream_23 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_23 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_23_Pipeline_inputs {
		conv2d_64_padded_window_stream_23 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_8626 {Type I LastRead 0 FirstWrite -1}
		weights_load_8627 {Type I LastRead 0 FirstWrite -1}
		weights_load_8628 {Type I LastRead 0 FirstWrite -1}
		weights_load_8629 {Type I LastRead 0 FirstWrite -1}
		weights_load_8630 {Type I LastRead 0 FirstWrite -1}
		weights_load_8631 {Type I LastRead 0 FirstWrite -1}
		weights_load_8632 {Type I LastRead 0 FirstWrite -1}
		weights_load_8633 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_23 {Type O LastRead -1 FirstWrite 16}
		weights_load_8634 {Type I LastRead 0 FirstWrite -1}
		weights_load_8635 {Type I LastRead 0 FirstWrite -1}
		weights_load_8636 {Type I LastRead 0 FirstWrite -1}
		weights_load_8637 {Type I LastRead 0 FirstWrite -1}
		weights_load_8638 {Type I LastRead 0 FirstWrite -1}
		weights_load_8639 {Type I LastRead 0 FirstWrite -1}
		weights_load_8640 {Type I LastRead 0 FirstWrite -1}
		weights_load_8641 {Type I LastRead 0 FirstWrite -1}
		weights_load_8642 {Type I LastRead 0 FirstWrite -1}
		weights_load_8643 {Type I LastRead 0 FirstWrite -1}
		weights_load_8644 {Type I LastRead 0 FirstWrite -1}
		weights_load_8645 {Type I LastRead 0 FirstWrite -1}
		weights_load_8646 {Type I LastRead 0 FirstWrite -1}
		weights_load_8647 {Type I LastRead 0 FirstWrite -1}
		weights_load_8648 {Type I LastRead 0 FirstWrite -1}
		weights_load_8649 {Type I LastRead 0 FirstWrite -1}
		weights_load_8650 {Type I LastRead 0 FirstWrite -1}
		weights_load_8651 {Type I LastRead 0 FirstWrite -1}
		weights_load_8652 {Type I LastRead 0 FirstWrite -1}
		weights_load_8653 {Type I LastRead 0 FirstWrite -1}
		weights_load_8654 {Type I LastRead 0 FirstWrite -1}
		weights_load_8655 {Type I LastRead 0 FirstWrite -1}
		weights_load_8656 {Type I LastRead 0 FirstWrite -1}
		weights_load_8657 {Type I LastRead 0 FirstWrite -1}
		weights_load_8658 {Type I LastRead 0 FirstWrite -1}
		weights_load_8659 {Type I LastRead 0 FirstWrite -1}
		weights_load_8660 {Type I LastRead 0 FirstWrite -1}
		weights_load_8661 {Type I LastRead 0 FirstWrite -1}
		weights_load_8662 {Type I LastRead 0 FirstWrite -1}
		weights_load_8663 {Type I LastRead 0 FirstWrite -1}
		weights_load_8664 {Type I LastRead 0 FirstWrite -1}
		weights_load_8665 {Type I LastRead 0 FirstWrite -1}
		weights_load_8666 {Type I LastRead 0 FirstWrite -1}
		weights_load_8667 {Type I LastRead 0 FirstWrite -1}
		weights_load_8668 {Type I LastRead 0 FirstWrite -1}
		weights_load_8669 {Type I LastRead 0 FirstWrite -1}
		weights_load_8670 {Type I LastRead 0 FirstWrite -1}
		weights_load_8671 {Type I LastRead 0 FirstWrite -1}
		weights_load_8672 {Type I LastRead 0 FirstWrite -1}
		weights_load_8673 {Type I LastRead 0 FirstWrite -1}
		weights_load_8674 {Type I LastRead 0 FirstWrite -1}
		weights_load_8675 {Type I LastRead 0 FirstWrite -1}
		weights_load_8676 {Type I LastRead 0 FirstWrite -1}
		weights_load_8677 {Type I LastRead 0 FirstWrite -1}
		weights_load_8678 {Type I LastRead 0 FirstWrite -1}
		weights_load_8679 {Type I LastRead 0 FirstWrite -1}
		weights_load_8680 {Type I LastRead 0 FirstWrite -1}
		weights_load_8681 {Type I LastRead 0 FirstWrite -1}
		weights_load_8682 {Type I LastRead 0 FirstWrite -1}
		weights_load_8683 {Type I LastRead 0 FirstWrite -1}
		weights_load_8684 {Type I LastRead 0 FirstWrite -1}
		weights_load_8685 {Type I LastRead 0 FirstWrite -1}
		weights_load_8686 {Type I LastRead 0 FirstWrite -1}
		weights_load_8687 {Type I LastRead 0 FirstWrite -1}
		weights_load_8688 {Type I LastRead 0 FirstWrite -1}
		weights_load_8689 {Type I LastRead 0 FirstWrite -1}
		weights_load_8690 {Type I LastRead 0 FirstWrite -1}
		weights_load_8691 {Type I LastRead 0 FirstWrite -1}
		weights_load_8692 {Type I LastRead 0 FirstWrite -1}
		weights_load_8693 {Type I LastRead 0 FirstWrite -1}
		weights_load_8694 {Type I LastRead 0 FirstWrite -1}
		weights_load_8695 {Type I LastRead 0 FirstWrite -1}
		weights_load_8696 {Type I LastRead 0 FirstWrite -1}
		weights_load_8697 {Type I LastRead 0 FirstWrite -1}
		weights_load_8698 {Type I LastRead 0 FirstWrite -1}
		weights_load_8699 {Type I LastRead 0 FirstWrite -1}
		weights_load_8700 {Type I LastRead 0 FirstWrite -1}
		weights_load_8701 {Type I LastRead 0 FirstWrite -1}
		weights_load_8702 {Type I LastRead 0 FirstWrite -1}
		weights_load_8703 {Type I LastRead 0 FirstWrite -1}
		weights_load_8704 {Type I LastRead 0 FirstWrite -1}
		weights_load_8705 {Type I LastRead 0 FirstWrite -1}
		weights_load_8706 {Type I LastRead 0 FirstWrite -1}
		weights_load_8707 {Type I LastRead 0 FirstWrite -1}
		weights_load_8708 {Type I LastRead 0 FirstWrite -1}
		weights_load_8709 {Type I LastRead 0 FirstWrite -1}
		weights_load_8710 {Type I LastRead 0 FirstWrite -1}
		weights_load_8711 {Type I LastRead 0 FirstWrite -1}
		weights_load_8712 {Type I LastRead 0 FirstWrite -1}
		weights_load_8713 {Type I LastRead 0 FirstWrite -1}
		weights_load_8714 {Type I LastRead 0 FirstWrite -1}
		weights_load_8715 {Type I LastRead 0 FirstWrite -1}
		weights_load_8716 {Type I LastRead 0 FirstWrite -1}
		weights_load_8717 {Type I LastRead 0 FirstWrite -1}
		weights_load_8718 {Type I LastRead 0 FirstWrite -1}
		weights_load_8719 {Type I LastRead 0 FirstWrite -1}
		weights_load_8720 {Type I LastRead 0 FirstWrite -1}
		weights_load_8721 {Type I LastRead 0 FirstWrite -1}
		weights_load_8722 {Type I LastRead 0 FirstWrite -1}
		weights_load_8723 {Type I LastRead 0 FirstWrite -1}
		weights_load_8724 {Type I LastRead 0 FirstWrite -1}
		weights_load_8725 {Type I LastRead 0 FirstWrite -1}
		weights_load_8726 {Type I LastRead 0 FirstWrite -1}
		weights_load_8727 {Type I LastRead 0 FirstWrite -1}
		weights_load_8728 {Type I LastRead 0 FirstWrite -1}
		weights_load_8729 {Type I LastRead 0 FirstWrite -1}
		weights_load_8730 {Type I LastRead 0 FirstWrite -1}
		weights_load_8731 {Type I LastRead 0 FirstWrite -1}
		weights_load_8732 {Type I LastRead 0 FirstWrite -1}
		weights_load_8733 {Type I LastRead 0 FirstWrite -1}
		weights_load_8734 {Type I LastRead 0 FirstWrite -1}
		weights_load_8735 {Type I LastRead 0 FirstWrite -1}
		weights_load_8736 {Type I LastRead 0 FirstWrite -1}
		weights_load_8737 {Type I LastRead 0 FirstWrite -1}
		weights_load_8738 {Type I LastRead 0 FirstWrite -1}
		weights_load_8739 {Type I LastRead 0 FirstWrite -1}
		weights_load_8740 {Type I LastRead 0 FirstWrite -1}
		weights_load_8741 {Type I LastRead 0 FirstWrite -1}
		weights_load_8742 {Type I LastRead 0 FirstWrite -1}
		weights_load_8743 {Type I LastRead 0 FirstWrite -1}
		weights_load_8744 {Type I LastRead 0 FirstWrite -1}
		weights_load_8745 {Type I LastRead 0 FirstWrite -1}
		weights_load_8746 {Type I LastRead 0 FirstWrite -1}
		weights_load_8747 {Type I LastRead 0 FirstWrite -1}
		weights_load_8748 {Type I LastRead 0 FirstWrite -1}
		weights_load_8749 {Type I LastRead 0 FirstWrite -1}
		weights_load_8750 {Type I LastRead 0 FirstWrite -1}
		weights_load_8751 {Type I LastRead 0 FirstWrite -1}
		weights_load_8752 {Type I LastRead 0 FirstWrite -1}
		weights_load_8753 {Type I LastRead 0 FirstWrite -1}
		weights_load_8754 {Type I LastRead 0 FirstWrite -1}
		weights_load_8755 {Type I LastRead 0 FirstWrite -1}
		weights_load_8756 {Type I LastRead 0 FirstWrite -1}
		weights_load_8757 {Type I LastRead 0 FirstWrite -1}
		weights_load_8758 {Type I LastRead 0 FirstWrite -1}
		weights_load_8759 {Type I LastRead 0 FirstWrite -1}
		weights_load_8760 {Type I LastRead 0 FirstWrite -1}
		weights_load_8761 {Type I LastRead 0 FirstWrite -1}
		weights_load_8762 {Type I LastRead 0 FirstWrite -1}
		weights_load_8763 {Type I LastRead 0 FirstWrite -1}
		weights_load_8764 {Type I LastRead 0 FirstWrite -1}
		weights_load_8765 {Type I LastRead 0 FirstWrite -1}
		weights_load_8766 {Type I LastRead 0 FirstWrite -1}
		weights_load_8767 {Type I LastRead 0 FirstWrite -1}
		weights_load_8768 {Type I LastRead 0 FirstWrite -1}
		weights_load_8769 {Type I LastRead 0 FirstWrite -1}
		weights_load_8770 {Type I LastRead 0 FirstWrite -1}
		weights_load_8771 {Type I LastRead 0 FirstWrite -1}
		weights_load_8772 {Type I LastRead 0 FirstWrite -1}
		weights_load_8773 {Type I LastRead 0 FirstWrite -1}
		weights_load_8774 {Type I LastRead 0 FirstWrite -1}
		weights_load_8775 {Type I LastRead 0 FirstWrite -1}
		weights_load_8776 {Type I LastRead 0 FirstWrite -1}
		weights_load_8777 {Type I LastRead 0 FirstWrite -1}
		weights_load_8778 {Type I LastRead 0 FirstWrite -1}
		weights_load_8779 {Type I LastRead 0 FirstWrite -1}
		weights_load_8780 {Type I LastRead 0 FirstWrite -1}
		weights_load_8781 {Type I LastRead 0 FirstWrite -1}
		weights_load_8782 {Type I LastRead 0 FirstWrite -1}
		weights_load_8783 {Type I LastRead 0 FirstWrite -1}
		weights_load_8784 {Type I LastRead 0 FirstWrite -1}
		weights_load_8785 {Type I LastRead 0 FirstWrite -1}
		weights_load_8786 {Type I LastRead 0 FirstWrite -1}
		weights_load_8787 {Type I LastRead 0 FirstWrite -1}
		weights_load_8788 {Type I LastRead 0 FirstWrite -1}
		weights_load_8789 {Type I LastRead 0 FirstWrite -1}
		weights_load_8790 {Type I LastRead 0 FirstWrite -1}
		weights_load_8791 {Type I LastRead 0 FirstWrite -1}
		weights_load_8792 {Type I LastRead 0 FirstWrite -1}
		weights_load_8793 {Type I LastRead 0 FirstWrite -1}
		weights_load_8794 {Type I LastRead 0 FirstWrite -1}
		weights_load_8795 {Type I LastRead 0 FirstWrite -1}
		weights_load_8796 {Type I LastRead 0 FirstWrite -1}
		weights_load_8797 {Type I LastRead 0 FirstWrite -1}
		weights_load_8798 {Type I LastRead 0 FirstWrite -1}
		weights_load_8799 {Type I LastRead 0 FirstWrite -1}
		weights_load_8800 {Type I LastRead 0 FirstWrite -1}
		weights_load_8801 {Type I LastRead 0 FirstWrite -1}
		weights_load_8802 {Type I LastRead 0 FirstWrite -1}
		weights_load_8803 {Type I LastRead 0 FirstWrite -1}
		weights_load_8804 {Type I LastRead 0 FirstWrite -1}
		weights_load_8805 {Type I LastRead 0 FirstWrite -1}
		weights_load_8806 {Type I LastRead 0 FirstWrite -1}
		weights_load_8807 {Type I LastRead 0 FirstWrite -1}
		weights_load_8808 {Type I LastRead 0 FirstWrite -1}
		weights_load_8809 {Type I LastRead 0 FirstWrite -1}
		weights_load_8810 {Type I LastRead 0 FirstWrite -1}
		weights_load_8811 {Type I LastRead 0 FirstWrite -1}
		weights_load_8812 {Type I LastRead 0 FirstWrite -1}
		weights_load_8813 {Type I LastRead 0 FirstWrite -1}
		weights_load_8814 {Type I LastRead 0 FirstWrite -1}
		weights_load_8815 {Type I LastRead 0 FirstWrite -1}
		weights_load_8816 {Type I LastRead 0 FirstWrite -1}
		weights_load_8817 {Type I LastRead 0 FirstWrite -1}
		weights_load_8818 {Type I LastRead 0 FirstWrite -1}
		weights_load_8819 {Type I LastRead 0 FirstWrite -1}
		weights_load_8820 {Type I LastRead 0 FirstWrite -1}
		weights_load_8821 {Type I LastRead 0 FirstWrite -1}
		weights_load_8822 {Type I LastRead 0 FirstWrite -1}
		weights_load_8823 {Type I LastRead 0 FirstWrite -1}
		weights_load_8824 {Type I LastRead 0 FirstWrite -1}
		weights_load_8825 {Type I LastRead 0 FirstWrite -1}
		weights_load_8826 {Type I LastRead 0 FirstWrite -1}
		weights_load_8827 {Type I LastRead 0 FirstWrite -1}
		weights_load_8828 {Type I LastRead 0 FirstWrite -1}
		weights_load_8829 {Type I LastRead 0 FirstWrite -1}
		weights_load_8830 {Type I LastRead 0 FirstWrite -1}
		weights_load_8831 {Type I LastRead 0 FirstWrite -1}
		weights_load_8832 {Type I LastRead 0 FirstWrite -1}
		weights_load_8833 {Type I LastRead 0 FirstWrite -1}
		weights_load_8834 {Type I LastRead 0 FirstWrite -1}
		weights_load_8835 {Type I LastRead 0 FirstWrite -1}
		weights_load_8836 {Type I LastRead 0 FirstWrite -1}
		weights_load_8837 {Type I LastRead 0 FirstWrite -1}
		weights_load_8838 {Type I LastRead 0 FirstWrite -1}
		weights_load_8839 {Type I LastRead 0 FirstWrite -1}
		weights_load_8840 {Type I LastRead 0 FirstWrite -1}
		weights_load_8841 {Type I LastRead 0 FirstWrite -1}
		weights_load_8842 {Type I LastRead 0 FirstWrite -1}
		weights_load_8843 {Type I LastRead 0 FirstWrite -1}
		weights_load_8844 {Type I LastRead 0 FirstWrite -1}
		weights_load_8845 {Type I LastRead 0 FirstWrite -1}
		weights_load_8846 {Type I LastRead 0 FirstWrite -1}
		weights_load_8847 {Type I LastRead 0 FirstWrite -1}
		weights_load_8848 {Type I LastRead 0 FirstWrite -1}
		weights_load_8849 {Type I LastRead 0 FirstWrite -1}
		weights_load_8850 {Type I LastRead 0 FirstWrite -1}
		weights_load_8851 {Type I LastRead 0 FirstWrite -1}
		weights_load_8852 {Type I LastRead 0 FirstWrite -1}
		weights_load_8853 {Type I LastRead 0 FirstWrite -1}
		weights_load_8854 {Type I LastRead 0 FirstWrite -1}
		weights_load_8855 {Type I LastRead 0 FirstWrite -1}
		weights_load_8856 {Type I LastRead 0 FirstWrite -1}
		weights_load_8857 {Type I LastRead 0 FirstWrite -1}
		weights_load_8858 {Type I LastRead 0 FirstWrite -1}
		weights_load_8859 {Type I LastRead 0 FirstWrite -1}
		weights_load_8860 {Type I LastRead 0 FirstWrite -1}
		weights_load_8861 {Type I LastRead 0 FirstWrite -1}
		weights_load_8862 {Type I LastRead 0 FirstWrite -1}
		weights_load_8863 {Type I LastRead 0 FirstWrite -1}
		weights_load_8864 {Type I LastRead 0 FirstWrite -1}
		weights_load_8865 {Type I LastRead 0 FirstWrite -1}
		weights_load_8866 {Type I LastRead 0 FirstWrite -1}
		weights_load_8867 {Type I LastRead 0 FirstWrite -1}
		weights_load_8868 {Type I LastRead 0 FirstWrite -1}
		weights_load_8869 {Type I LastRead 0 FirstWrite -1}
		weights_load_8870 {Type I LastRead 0 FirstWrite -1}
		weights_load_8871 {Type I LastRead 0 FirstWrite -1}
		weights_load_8872 {Type I LastRead 0 FirstWrite -1}
		weights_load_8873 {Type I LastRead 0 FirstWrite -1}
		weights_load_8874 {Type I LastRead 0 FirstWrite -1}
		weights_load_8875 {Type I LastRead 0 FirstWrite -1}
		weights_load_8876 {Type I LastRead 0 FirstWrite -1}
		weights_load_8877 {Type I LastRead 0 FirstWrite -1}
		weights_load_8878 {Type I LastRead 0 FirstWrite -1}
		weights_load_8879 {Type I LastRead 0 FirstWrite -1}
		weights_load_8880 {Type I LastRead 0 FirstWrite -1}
		weights_load_8881 {Type I LastRead 0 FirstWrite -1}
		weights_load_8882 {Type I LastRead 0 FirstWrite -1}
		weights_load_8883 {Type I LastRead 0 FirstWrite -1}
		weights_load_8884 {Type I LastRead 0 FirstWrite -1}
		weights_load_8885 {Type I LastRead 0 FirstWrite -1}
		weights_load_8886 {Type I LastRead 0 FirstWrite -1}
		weights_load_8887 {Type I LastRead 0 FirstWrite -1}
		weights_load_8888 {Type I LastRead 0 FirstWrite -1}
		weights_load_8889 {Type I LastRead 0 FirstWrite -1}
		weights_load_8890 {Type I LastRead 0 FirstWrite -1}
		weights_load_8891 {Type I LastRead 0 FirstWrite -1}
		weights_load_8892 {Type I LastRead 0 FirstWrite -1}
		weights_load_8893 {Type I LastRead 0 FirstWrite -1}
		weights_load_8894 {Type I LastRead 0 FirstWrite -1}
		weights_load_8895 {Type I LastRead 0 FirstWrite -1}
		weights_load_8896 {Type I LastRead 0 FirstWrite -1}
		weights_load_8897 {Type I LastRead 0 FirstWrite -1}
		weights_load_8898 {Type I LastRead 0 FirstWrite -1}
		weights_load_8899 {Type I LastRead 0 FirstWrite -1}
		weights_load_8900 {Type I LastRead 0 FirstWrite -1}
		weights_load_8901 {Type I LastRead 0 FirstWrite -1}
		weights_load_8902 {Type I LastRead 0 FirstWrite -1}
		weights_load_8903 {Type I LastRead 0 FirstWrite -1}
		weights_load_8904 {Type I LastRead 0 FirstWrite -1}
		weights_load_8905 {Type I LastRead 0 FirstWrite -1}
		weights_load_8906 {Type I LastRead 0 FirstWrite -1}
		weights_load_8907 {Type I LastRead 0 FirstWrite -1}
		weights_load_8908 {Type I LastRead 0 FirstWrite -1}
		weights_load_8909 {Type I LastRead 0 FirstWrite -1}
		weights_load_8910 {Type I LastRead 0 FirstWrite -1}
		weights_load_8911 {Type I LastRead 0 FirstWrite -1}
		weights_load_8912 {Type I LastRead 0 FirstWrite -1}
		weights_load_8913 {Type I LastRead 0 FirstWrite -1}
		weights_load_8914 {Type I LastRead 0 FirstWrite -1}
		weights_load_8915 {Type I LastRead 0 FirstWrite -1}
		weights_load_8916 {Type I LastRead 0 FirstWrite -1}
		weights_load_8917 {Type I LastRead 0 FirstWrite -1}
		weights_load_8918 {Type I LastRead 0 FirstWrite -1}
		weights_load_8919 {Type I LastRead 0 FirstWrite -1}
		weights_load_8920 {Type I LastRead 0 FirstWrite -1}
		weights_load_8921 {Type I LastRead 0 FirstWrite -1}
		weights_load_8922 {Type I LastRead 0 FirstWrite -1}
		weights_load_8923 {Type I LastRead 0 FirstWrite -1}
		weights_load_8924 {Type I LastRead 0 FirstWrite -1}
		weights_load_8925 {Type I LastRead 0 FirstWrite -1}
		weights_load_8926 {Type I LastRead 0 FirstWrite -1}
		weights_load_8927 {Type I LastRead 0 FirstWrite -1}
		weights_load_8928 {Type I LastRead 0 FirstWrite -1}
		weights_load_8929 {Type I LastRead 0 FirstWrite -1}
		weights_load_8930 {Type I LastRead 0 FirstWrite -1}
		weights_load_8931 {Type I LastRead 0 FirstWrite -1}
		weights_load_8932 {Type I LastRead 0 FirstWrite -1}
		weights_load_8933 {Type I LastRead 0 FirstWrite -1}
		weights_load_8934 {Type I LastRead 0 FirstWrite -1}
		weights_load_8935 {Type I LastRead 0 FirstWrite -1}
		weights_load_8936 {Type I LastRead 0 FirstWrite -1}
		weights_load_8937 {Type I LastRead 0 FirstWrite -1}
		weights_load_8938 {Type I LastRead 0 FirstWrite -1}
		weights_load_8939 {Type I LastRead 0 FirstWrite -1}
		weights_load_8940 {Type I LastRead 0 FirstWrite -1}
		weights_load_8941 {Type I LastRead 0 FirstWrite -1}
		weights_load_8942 {Type I LastRead 0 FirstWrite -1}
		weights_load_8943 {Type I LastRead 0 FirstWrite -1}
		weights_load_8944 {Type I LastRead 0 FirstWrite -1}
		weights_load_8945 {Type I LastRead 0 FirstWrite -1}
		weights_load_8946 {Type I LastRead 0 FirstWrite -1}
		weights_load_8947 {Type I LastRead 0 FirstWrite -1}
		weights_load_8948 {Type I LastRead 0 FirstWrite -1}
		weights_load_8949 {Type I LastRead 0 FirstWrite -1}
		weights_load_8950 {Type I LastRead 0 FirstWrite -1}
		weights_load_8951 {Type I LastRead 0 FirstWrite -1}
		weights_load_8952 {Type I LastRead 0 FirstWrite -1}
		weights_load_8953 {Type I LastRead 0 FirstWrite -1}
		weights_load_8954 {Type I LastRead 0 FirstWrite -1}
		weights_load_8955 {Type I LastRead 0 FirstWrite -1}
		weights_load_8956 {Type I LastRead 0 FirstWrite -1}
		weights_load_8957 {Type I LastRead 0 FirstWrite -1}
		weights_load_8958 {Type I LastRead 0 FirstWrite -1}
		weights_load_8959 {Type I LastRead 0 FirstWrite -1}
		weights_load_8960 {Type I LastRead 0 FirstWrite -1}
		weights_load_8961 {Type I LastRead 0 FirstWrite -1}
		weights_load_8962 {Type I LastRead 0 FirstWrite -1}
		weights_load_8963 {Type I LastRead 0 FirstWrite -1}
		weights_load_8964 {Type I LastRead 0 FirstWrite -1}
		weights_load_8965 {Type I LastRead 0 FirstWrite -1}
		weights_load_8966 {Type I LastRead 0 FirstWrite -1}
		weights_load_8967 {Type I LastRead 0 FirstWrite -1}
		weights_load_8968 {Type I LastRead 0 FirstWrite -1}
		weights_load_8969 {Type I LastRead 0 FirstWrite -1}
		weights_load_8970 {Type I LastRead 0 FirstWrite -1}
		weights_load_8971 {Type I LastRead 0 FirstWrite -1}
		weights_load_8972 {Type I LastRead 0 FirstWrite -1}
		weights_load_8973 {Type I LastRead 0 FirstWrite -1}
		weights_load_8974 {Type I LastRead 0 FirstWrite -1}
		weights_load_8975 {Type I LastRead 0 FirstWrite -1}
		weights_load_8976 {Type I LastRead 0 FirstWrite -1}
		weights_load_8977 {Type I LastRead 0 FirstWrite -1}
		weights_load_8978 {Type I LastRead 0 FirstWrite -1}
		weights_load_8979 {Type I LastRead 0 FirstWrite -1}
		weights_load_8980 {Type I LastRead 0 FirstWrite -1}
		weights_load_8981 {Type I LastRead 0 FirstWrite -1}
		weights_load_8982 {Type I LastRead 0 FirstWrite -1}
		weights_load_8983 {Type I LastRead 0 FirstWrite -1}
		weights_load_8984 {Type I LastRead 0 FirstWrite -1}
		weights_load_8985 {Type I LastRead 0 FirstWrite -1}
		weights_load_8986 {Type I LastRead 0 FirstWrite -1}
		weights_load_8987 {Type I LastRead 0 FirstWrite -1}
		weights_load_8988 {Type I LastRead 0 FirstWrite -1}
		weights_load_8989 {Type I LastRead 0 FirstWrite -1}
		weights_load_8990 {Type I LastRead 0 FirstWrite -1}
		weights_load_8991 {Type I LastRead 0 FirstWrite -1}
		weights_load_8992 {Type I LastRead 0 FirstWrite -1}
		weights_load_8993 {Type I LastRead 0 FirstWrite -1}
		weights_load_8994 {Type I LastRead 0 FirstWrite -1}
		weights_load_8995 {Type I LastRead 0 FirstWrite -1}
		weights_load_8996 {Type I LastRead 0 FirstWrite -1}
		weights_load_8997 {Type I LastRead 0 FirstWrite -1}
		weights_load_8998 {Type I LastRead 0 FirstWrite -1}
		weights_load_8999 {Type I LastRead 0 FirstWrite -1}
		weights_load_9000 {Type I LastRead 0 FirstWrite -1}
		weights_load_9001 {Type I LastRead 0 FirstWrite -1}
		weights_load_9002 {Type I LastRead 0 FirstWrite -1}
		weights_load_9003 {Type I LastRead 0 FirstWrite -1}
		weights_load_9004 {Type I LastRead 0 FirstWrite -1}
		weights_load_9005 {Type I LastRead 0 FirstWrite -1}
		weights_load_9006 {Type I LastRead 0 FirstWrite -1}
		weights_load_9007 {Type I LastRead 0 FirstWrite -1}
		weights_load_9008 {Type I LastRead 0 FirstWrite -1}
		weights_load_9009 {Type I LastRead 0 FirstWrite -1}
		weights_load_9010 {Type I LastRead 0 FirstWrite -1}
		weights_load_9011 {Type I LastRead 0 FirstWrite -1}
		weights_load_9012 {Type I LastRead 0 FirstWrite -1}
		weights_load_9013 {Type I LastRead 0 FirstWrite -1}
		weights_load_9014 {Type I LastRead 0 FirstWrite -1}
		weights_load_9015 {Type I LastRead 0 FirstWrite -1}
		weights_load_9016 {Type I LastRead 0 FirstWrite -1}
		weights_load_9017 {Type I LastRead 0 FirstWrite -1}
		weights_load_9018 {Type I LastRead 0 FirstWrite -1}
		weights_load_9019 {Type I LastRead 0 FirstWrite -1}
		weights_load_9020 {Type I LastRead 0 FirstWrite -1}
		weights_load_9021 {Type I LastRead 0 FirstWrite -1}
		weights_load_9022 {Type I LastRead 0 FirstWrite -1}
		weights_load_9023 {Type I LastRead 0 FirstWrite -1}
		weights_load_9024 {Type I LastRead 0 FirstWrite -1}
		weights_load_9025 {Type I LastRead 0 FirstWrite -1}
		weights_load_9026 {Type I LastRead 0 FirstWrite -1}
		weights_load_9027 {Type I LastRead 0 FirstWrite -1}
		weights_load_9028 {Type I LastRead 0 FirstWrite -1}
		weights_load_9029 {Type I LastRead 0 FirstWrite -1}
		weights_load_9030 {Type I LastRead 0 FirstWrite -1}
		weights_load_9031 {Type I LastRead 0 FirstWrite -1}
		weights_load_9032 {Type I LastRead 0 FirstWrite -1}
		weights_load_9033 {Type I LastRead 0 FirstWrite -1}
		weights_load_9034 {Type I LastRead 0 FirstWrite -1}
		weights_load_9035 {Type I LastRead 0 FirstWrite -1}
		weights_load_9036 {Type I LastRead 0 FirstWrite -1}
		weights_load_9037 {Type I LastRead 0 FirstWrite -1}
		weights_load_9038 {Type I LastRead 0 FirstWrite -1}
		weights_load_9039 {Type I LastRead 0 FirstWrite -1}
		weights_load_9040 {Type I LastRead 0 FirstWrite -1}
		weights_load_9041 {Type I LastRead 0 FirstWrite -1}
		weights_load_9042 {Type I LastRead 0 FirstWrite -1}
		weights_load_9043 {Type I LastRead 0 FirstWrite -1}
		weights_load_9044 {Type I LastRead 0 FirstWrite -1}
		weights_load_9045 {Type I LastRead 0 FirstWrite -1}
		weights_load_9046 {Type I LastRead 0 FirstWrite -1}
		weights_load_9047 {Type I LastRead 0 FirstWrite -1}
		weights_load_9048 {Type I LastRead 0 FirstWrite -1}
		weights_load_9049 {Type I LastRead 0 FirstWrite -1}
		weights_load_9050 {Type I LastRead 0 FirstWrite -1}
		weights_load_9051 {Type I LastRead 0 FirstWrite -1}
		weights_load_9052 {Type I LastRead 0 FirstWrite -1}
		weights_load_9053 {Type I LastRead 0 FirstWrite -1}
		weights_load_9054 {Type I LastRead 0 FirstWrite -1}
		weights_load_9055 {Type I LastRead 0 FirstWrite -1}
		weights_load_9056 {Type I LastRead 0 FirstWrite -1}
		weights_load_9057 {Type I LastRead 0 FirstWrite -1}
		weights_load_9058 {Type I LastRead 0 FirstWrite -1}
		weights_load_9059 {Type I LastRead 0 FirstWrite -1}
		weights_load_9060 {Type I LastRead 0 FirstWrite -1}
		weights_load_9061 {Type I LastRead 0 FirstWrite -1}
		weights_load_9062 {Type I LastRead 0 FirstWrite -1}
		weights_load_9063 {Type I LastRead 0 FirstWrite -1}
		weights_load_9064 {Type I LastRead 0 FirstWrite -1}
		weights_load_9065 {Type I LastRead 0 FirstWrite -1}
		weights_load_9066 {Type I LastRead 0 FirstWrite -1}
		weights_load_9067 {Type I LastRead 0 FirstWrite -1}
		weights_load_9068 {Type I LastRead 0 FirstWrite -1}
		weights_load_9069 {Type I LastRead 0 FirstWrite -1}
		weights_load_9070 {Type I LastRead 0 FirstWrite -1}
		weights_load_9071 {Type I LastRead 0 FirstWrite -1}
		weights_load_9072 {Type I LastRead 0 FirstWrite -1}
		weights_load_9073 {Type I LastRead 0 FirstWrite -1}
		weights_load_9074 {Type I LastRead 0 FirstWrite -1}
		weights_load_9075 {Type I LastRead 0 FirstWrite -1}
		weights_load_9076 {Type I LastRead 0 FirstWrite -1}
		weights_load_9077 {Type I LastRead 0 FirstWrite -1}
		weights_load_9078 {Type I LastRead 0 FirstWrite -1}
		weights_load_9079 {Type I LastRead 0 FirstWrite -1}
		weights_load_9080 {Type I LastRead 0 FirstWrite -1}
		weights_load_9081 {Type I LastRead 0 FirstWrite -1}
		weights_load_9082 {Type I LastRead 0 FirstWrite -1}
		weights_load_9083 {Type I LastRead 0 FirstWrite -1}
		weights_load_9084 {Type I LastRead 0 FirstWrite -1}
		weights_load_9085 {Type I LastRead 0 FirstWrite -1}
		weights_load_9086 {Type I LastRead 0 FirstWrite -1}
		weights_load_9087 {Type I LastRead 0 FirstWrite -1}
		weights_load_9088 {Type I LastRead 0 FirstWrite -1}
		weights_load_9089 {Type I LastRead 0 FirstWrite -1}
		weights_load_9090 {Type I LastRead 0 FirstWrite -1}
		weights_load_9091 {Type I LastRead 0 FirstWrite -1}
		weights_load_9092 {Type I LastRead 0 FirstWrite -1}
		weights_load_9093 {Type I LastRead 0 FirstWrite -1}
		weights_load_9094 {Type I LastRead 0 FirstWrite -1}
		weights_load_9095 {Type I LastRead 0 FirstWrite -1}
		weights_load_9096 {Type I LastRead 0 FirstWrite -1}
		weights_load_9097 {Type I LastRead 0 FirstWrite -1}
		weights_load_9098 {Type I LastRead 0 FirstWrite -1}
		weights_load_9099 {Type I LastRead 0 FirstWrite -1}
		weights_load_9100 {Type I LastRead 0 FirstWrite -1}
		weights_load_9101 {Type I LastRead 0 FirstWrite -1}
		weights_load_9102 {Type I LastRead 0 FirstWrite -1}
		weights_load_9103 {Type I LastRead 0 FirstWrite -1}
		weights_load_9104 {Type I LastRead 0 FirstWrite -1}
		weights_load_9105 {Type I LastRead 0 FirstWrite -1}
		weights_load_9106 {Type I LastRead 0 FirstWrite -1}
		weights_load_9107 {Type I LastRead 0 FirstWrite -1}
		weights_load_9108 {Type I LastRead 0 FirstWrite -1}
		weights_load_9109 {Type I LastRead 0 FirstWrite -1}
		weights_load_9110 {Type I LastRead 0 FirstWrite -1}
		weights_load_9111 {Type I LastRead 0 FirstWrite -1}
		weights_load_9112 {Type I LastRead 0 FirstWrite -1}
		weights_load_9113 {Type I LastRead 0 FirstWrite -1}
		weights_load_9114 {Type I LastRead 0 FirstWrite -1}
		weights_load_9115 {Type I LastRead 0 FirstWrite -1}
		weights_load_9116 {Type I LastRead 0 FirstWrite -1}
		weights_load_9117 {Type I LastRead 0 FirstWrite -1}
		weights_load_9118 {Type I LastRead 0 FirstWrite -1}
		weights_load_9119 {Type I LastRead 0 FirstWrite -1}
		weights_load_9120 {Type I LastRead 0 FirstWrite -1}
		weights_load_9121 {Type I LastRead 0 FirstWrite -1}
		weights_load_9122 {Type I LastRead 0 FirstWrite -1}
		weights_load_9123 {Type I LastRead 0 FirstWrite -1}
		weights_load_9124 {Type I LastRead 0 FirstWrite -1}
		weights_load_9125 {Type I LastRead 0 FirstWrite -1}
		weights_load_9126 {Type I LastRead 0 FirstWrite -1}
		weights_load_9127 {Type I LastRead 0 FirstWrite -1}
		weights_load_9128 {Type I LastRead 0 FirstWrite -1}
		weights_load_9129 {Type I LastRead 0 FirstWrite -1}
		weights_load_9130 {Type I LastRead 0 FirstWrite -1}
		weights_load_9131 {Type I LastRead 0 FirstWrite -1}
		weights_load_9132 {Type I LastRead 0 FirstWrite -1}
		weights_load_9133 {Type I LastRead 0 FirstWrite -1}
		weights_load_9134 {Type I LastRead 0 FirstWrite -1}
		weights_load_9135 {Type I LastRead 0 FirstWrite -1}
		weights_load_9136 {Type I LastRead 0 FirstWrite -1}
		weights_load_9137 {Type I LastRead 0 FirstWrite -1}
		weights_load_9138 {Type I LastRead 0 FirstWrite -1}
		weights_load_9139 {Type I LastRead 0 FirstWrite -1}
		weights_load_9140 {Type I LastRead 0 FirstWrite -1}
		weights_load_9141 {Type I LastRead 0 FirstWrite -1}
		weights_load_9142 {Type I LastRead 0 FirstWrite -1}
		weights_load_9143 {Type I LastRead 0 FirstWrite -1}
		weights_load_9144 {Type I LastRead 0 FirstWrite -1}
		weights_load_9145 {Type I LastRead 0 FirstWrite -1}
		weights_load_9146 {Type I LastRead 0 FirstWrite -1}
		weights_load_9147 {Type I LastRead 0 FirstWrite -1}
		weights_load_9148 {Type I LastRead 0 FirstWrite -1}
		weights_load_9149 {Type I LastRead 0 FirstWrite -1}
		weights_load_9150 {Type I LastRead 0 FirstWrite -1}
		weights_load_9151 {Type I LastRead 0 FirstWrite -1}
		weights_load_9152 {Type I LastRead 0 FirstWrite -1}
		weights_load_9153 {Type I LastRead 0 FirstWrite -1}
		weights_load_9154 {Type I LastRead 0 FirstWrite -1}
		weights_load_9155 {Type I LastRead 0 FirstWrite -1}
		weights_load_9156 {Type I LastRead 0 FirstWrite -1}
		weights_load_9157 {Type I LastRead 0 FirstWrite -1}
		weights_load_9158 {Type I LastRead 0 FirstWrite -1}
		weights_load_9159 {Type I LastRead 0 FirstWrite -1}
		weights_load_9160 {Type I LastRead 0 FirstWrite -1}
		weights_load_9161 {Type I LastRead 0 FirstWrite -1}
		weights_load_9162 {Type I LastRead 0 FirstWrite -1}
		weights_load_9163 {Type I LastRead 0 FirstWrite -1}
		weights_load_9164 {Type I LastRead 0 FirstWrite -1}
		weights_load_9165 {Type I LastRead 0 FirstWrite -1}
		weights_load_9166 {Type I LastRead 0 FirstWrite -1}
		weights_load_9167 {Type I LastRead 0 FirstWrite -1}
		weights_load_9168 {Type I LastRead 0 FirstWrite -1}
		weights_load_9169 {Type I LastRead 0 FirstWrite -1}
		weights_load_9170 {Type I LastRead 0 FirstWrite -1}
		weights_load_9171 {Type I LastRead 0 FirstWrite -1}
		weights_load_9172 {Type I LastRead 0 FirstWrite -1}
		weights_load_9173 {Type I LastRead 0 FirstWrite -1}
		weights_load_9174 {Type I LastRead 0 FirstWrite -1}
		weights_load_9175 {Type I LastRead 0 FirstWrite -1}
		weights_load_9176 {Type I LastRead 0 FirstWrite -1}
		weights_load_9177 {Type I LastRead 0 FirstWrite -1}
		weights_load_9178 {Type I LastRead 0 FirstWrite -1}
		weights_load_9179 {Type I LastRead 0 FirstWrite -1}
		weights_load_9180 {Type I LastRead 0 FirstWrite -1}
		weights_load_9181 {Type I LastRead 0 FirstWrite -1}
		weights_load_9182 {Type I LastRead 0 FirstWrite -1}
		weights_load_9183 {Type I LastRead 0 FirstWrite -1}
		weights_load_9184 {Type I LastRead 0 FirstWrite -1}
		weights_load_9185 {Type I LastRead 0 FirstWrite -1}
		weights_load_9186 {Type I LastRead 0 FirstWrite -1}
		weights_load_9187 {Type I LastRead 0 FirstWrite -1}
		weights_load_9188 {Type I LastRead 0 FirstWrite -1}
		weights_load_9189 {Type I LastRead 0 FirstWrite -1}
		weights_load_9190 {Type I LastRead 0 FirstWrite -1}
		weights_load_9191 {Type I LastRead 0 FirstWrite -1}
		weights_load_9192 {Type I LastRead 0 FirstWrite -1}
		weights_load_9193 {Type I LastRead 0 FirstWrite -1}
		weights_load_9194 {Type I LastRead 0 FirstWrite -1}
		weights_load_9195 {Type I LastRead 0 FirstWrite -1}
		weights_load_9196 {Type I LastRead 0 FirstWrite -1}
		weights_load_9197 {Type I LastRead 0 FirstWrite -1}
		weights_load_9198 {Type I LastRead 0 FirstWrite -1}
		weights_load_9199 {Type I LastRead 0 FirstWrite -1}
		weights_load_9200 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_23 { ap_fifo {  { conv2d_64_padded_window_stream_23_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_23_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_23_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_23_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_23_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_23 { ap_fifo {  { in_channel_map_stream_23_din fifo_port_we 1 32 }  { in_channel_map_stream_23_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_23_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_23_full_n fifo_status 0 1 }  { in_channel_map_stream_23_write fifo_data 1 1 } } }
}
