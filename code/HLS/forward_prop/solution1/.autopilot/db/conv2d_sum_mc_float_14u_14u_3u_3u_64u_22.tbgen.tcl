set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_22
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.22}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_22 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_22 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_22", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_22", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_22_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_22_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_22_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_22_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_22_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_22_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_22_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_22_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_22_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_22_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_22_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_22", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_22_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_22", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_22_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_22", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_22_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_22", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_22_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_22", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_22_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_22", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_22_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_22", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_22_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_22", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_22_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_22", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_22_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_22", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_22",
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
			{"Name" : "conv2d_64_padded_window_stream_22", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_22_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_22", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_22", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_22_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_22", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_22_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_22_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_22", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9201", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9202", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9203", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9204", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9205", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9206", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9207", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9208", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_22", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_9209", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9210", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9211", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9212", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9213", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9214", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9215", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9216", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9217", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9218", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9219", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9220", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9221", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9222", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9223", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9224", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9225", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9226", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9227", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9228", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9229", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9230", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9231", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9232", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9233", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9234", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9235", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9236", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9237", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9238", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9239", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9240", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9241", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9242", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9243", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9244", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9245", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9246", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9247", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9248", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9249", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9250", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9251", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9252", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9253", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9254", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9255", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9256", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9257", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9258", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9259", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9260", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9261", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9262", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9263", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9264", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9265", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9266", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9267", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9268", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9269", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9270", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9271", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9272", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9273", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9274", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9275", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9276", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9277", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9278", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9279", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9280", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9281", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9282", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9283", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9284", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9285", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9286", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9287", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9288", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9289", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9290", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9291", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9292", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9293", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9294", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9295", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9296", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9297", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9298", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9299", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9300", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9301", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9302", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9303", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9304", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9305", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9306", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9307", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9308", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9309", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9310", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9311", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9312", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9313", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9314", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9315", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9316", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9317", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9318", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9319", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9320", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9321", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9322", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9323", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9324", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9325", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9326", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9327", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9328", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9329", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9330", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9331", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9332", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9333", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9334", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9335", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9336", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9337", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9338", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9339", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9340", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9341", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9342", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9343", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9344", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9345", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9346", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9347", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9348", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9349", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9350", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9351", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9352", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9353", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9354", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9355", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9356", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9357", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9358", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9359", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9360", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9361", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9362", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9363", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9364", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9365", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9366", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9367", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9368", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9369", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9370", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9371", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9372", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9373", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9374", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9375", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9376", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9377", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9378", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9379", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9380", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9381", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9382", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9383", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9384", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9385", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9386", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9387", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9388", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9389", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9390", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9391", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9392", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9393", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9394", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9395", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9396", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9397", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9398", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9399", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9400", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9401", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9402", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9403", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9404", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9405", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9406", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9407", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9408", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9409", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9410", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9411", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9412", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9413", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9414", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9415", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9416", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9417", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9418", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9419", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9420", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9421", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9422", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9423", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9424", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9425", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9426", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9427", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9428", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9429", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9430", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9431", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9432", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9433", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9434", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9435", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9436", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9437", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9438", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9439", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9440", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9441", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9442", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9443", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9444", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9445", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9446", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9447", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9448", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9449", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9450", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9451", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9452", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9453", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9454", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9455", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9456", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9457", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9458", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9459", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9460", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9461", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9462", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9463", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9464", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9465", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9466", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9467", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9468", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9469", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9470", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9471", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9472", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9473", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9474", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9475", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9476", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9477", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9478", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9479", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9480", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9481", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9482", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9483", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9484", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9485", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9486", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9487", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9488", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9489", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9490", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9491", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9492", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9493", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9494", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9495", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9496", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9497", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9498", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9499", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9500", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9501", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9502", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9503", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9504", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9505", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9506", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9507", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9508", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9509", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9510", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9511", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9512", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9513", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9514", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9515", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9516", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9517", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9518", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9519", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9520", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9521", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9522", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9523", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9524", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9525", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9526", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9527", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9528", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9529", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9530", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9531", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9532", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9533", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9534", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9535", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9536", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9537", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9538", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9539", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9540", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9541", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9542", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9543", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9544", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9545", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9546", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9547", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9548", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9549", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9550", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9551", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9552", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9553", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9554", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9555", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9556", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9557", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9558", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9559", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9560", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9561", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9562", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9563", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9564", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9565", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9566", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9567", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9568", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9569", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9570", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9571", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9572", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9573", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9574", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9575", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9576", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9577", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9578", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9579", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9580", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9581", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9582", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9583", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9584", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9585", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9586", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9587", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9588", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9589", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9590", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9591", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9592", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9593", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9594", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9595", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9596", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9597", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9598", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9599", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9600", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9601", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9602", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9603", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9604", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9605", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9606", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9607", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9608", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9609", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9610", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9611", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9612", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9613", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9614", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9615", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9616", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9617", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9618", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9619", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9620", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9621", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9622", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9623", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9624", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9625", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9626", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9627", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9628", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9629", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9630", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9631", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9632", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9633", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9634", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9635", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9636", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9637", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9638", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9639", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9640", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9641", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9642", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9643", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9644", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9645", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9646", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9647", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9648", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9649", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9650", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9651", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9652", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9653", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9654", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9655", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9656", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9657", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9658", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9659", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9660", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9661", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9662", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9663", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9664", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9665", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9666", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9667", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9668", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9669", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9670", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9671", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9672", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9673", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9674", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9675", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9676", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9677", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9678", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9679", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9680", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9681", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9682", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9683", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9684", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9685", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9686", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9687", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9688", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9689", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9690", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9691", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9692", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9693", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9694", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9695", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9696", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9697", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9698", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9699", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9700", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9701", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9702", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9703", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9704", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9705", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9706", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9707", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9708", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9709", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9710", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9711", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9712", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9713", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9714", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9715", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9716", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9717", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9718", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9719", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9720", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9721", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9722", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9723", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9724", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9725", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9726", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9727", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9728", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9729", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9730", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9731", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9732", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9733", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9734", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9735", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9736", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9737", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9738", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9739", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9740", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9741", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9742", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9743", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9744", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9745", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9746", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9747", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9748", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9749", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9750", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9751", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9752", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9753", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9754", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9755", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9756", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9757", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9758", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9759", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9760", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9761", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9762", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9763", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9764", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9765", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9766", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9767", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9768", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9769", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9770", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9771", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9772", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9773", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9774", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9775", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_22_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U13712", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_22_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U13713", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_22_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U13714", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_22_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U13715", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_22_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U13716", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_22_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U13717", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_22_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U13718", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_22_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U13719", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_22_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U13720", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_22_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U13721", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_22_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U13722", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_22_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U13723", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_22_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U13724", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_22_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U13725", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_22_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U13726", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_22_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U13727", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_22_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U13728", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_22_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_22 {
		conv2d_64_padded_window_stream_22 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_22 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_22_Pipeline_inputs {
		conv2d_64_padded_window_stream_22 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_9201 {Type I LastRead 0 FirstWrite -1}
		weights_load_9202 {Type I LastRead 0 FirstWrite -1}
		weights_load_9203 {Type I LastRead 0 FirstWrite -1}
		weights_load_9204 {Type I LastRead 0 FirstWrite -1}
		weights_load_9205 {Type I LastRead 0 FirstWrite -1}
		weights_load_9206 {Type I LastRead 0 FirstWrite -1}
		weights_load_9207 {Type I LastRead 0 FirstWrite -1}
		weights_load_9208 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_22 {Type O LastRead -1 FirstWrite 16}
		weights_load_9209 {Type I LastRead 0 FirstWrite -1}
		weights_load_9210 {Type I LastRead 0 FirstWrite -1}
		weights_load_9211 {Type I LastRead 0 FirstWrite -1}
		weights_load_9212 {Type I LastRead 0 FirstWrite -1}
		weights_load_9213 {Type I LastRead 0 FirstWrite -1}
		weights_load_9214 {Type I LastRead 0 FirstWrite -1}
		weights_load_9215 {Type I LastRead 0 FirstWrite -1}
		weights_load_9216 {Type I LastRead 0 FirstWrite -1}
		weights_load_9217 {Type I LastRead 0 FirstWrite -1}
		weights_load_9218 {Type I LastRead 0 FirstWrite -1}
		weights_load_9219 {Type I LastRead 0 FirstWrite -1}
		weights_load_9220 {Type I LastRead 0 FirstWrite -1}
		weights_load_9221 {Type I LastRead 0 FirstWrite -1}
		weights_load_9222 {Type I LastRead 0 FirstWrite -1}
		weights_load_9223 {Type I LastRead 0 FirstWrite -1}
		weights_load_9224 {Type I LastRead 0 FirstWrite -1}
		weights_load_9225 {Type I LastRead 0 FirstWrite -1}
		weights_load_9226 {Type I LastRead 0 FirstWrite -1}
		weights_load_9227 {Type I LastRead 0 FirstWrite -1}
		weights_load_9228 {Type I LastRead 0 FirstWrite -1}
		weights_load_9229 {Type I LastRead 0 FirstWrite -1}
		weights_load_9230 {Type I LastRead 0 FirstWrite -1}
		weights_load_9231 {Type I LastRead 0 FirstWrite -1}
		weights_load_9232 {Type I LastRead 0 FirstWrite -1}
		weights_load_9233 {Type I LastRead 0 FirstWrite -1}
		weights_load_9234 {Type I LastRead 0 FirstWrite -1}
		weights_load_9235 {Type I LastRead 0 FirstWrite -1}
		weights_load_9236 {Type I LastRead 0 FirstWrite -1}
		weights_load_9237 {Type I LastRead 0 FirstWrite -1}
		weights_load_9238 {Type I LastRead 0 FirstWrite -1}
		weights_load_9239 {Type I LastRead 0 FirstWrite -1}
		weights_load_9240 {Type I LastRead 0 FirstWrite -1}
		weights_load_9241 {Type I LastRead 0 FirstWrite -1}
		weights_load_9242 {Type I LastRead 0 FirstWrite -1}
		weights_load_9243 {Type I LastRead 0 FirstWrite -1}
		weights_load_9244 {Type I LastRead 0 FirstWrite -1}
		weights_load_9245 {Type I LastRead 0 FirstWrite -1}
		weights_load_9246 {Type I LastRead 0 FirstWrite -1}
		weights_load_9247 {Type I LastRead 0 FirstWrite -1}
		weights_load_9248 {Type I LastRead 0 FirstWrite -1}
		weights_load_9249 {Type I LastRead 0 FirstWrite -1}
		weights_load_9250 {Type I LastRead 0 FirstWrite -1}
		weights_load_9251 {Type I LastRead 0 FirstWrite -1}
		weights_load_9252 {Type I LastRead 0 FirstWrite -1}
		weights_load_9253 {Type I LastRead 0 FirstWrite -1}
		weights_load_9254 {Type I LastRead 0 FirstWrite -1}
		weights_load_9255 {Type I LastRead 0 FirstWrite -1}
		weights_load_9256 {Type I LastRead 0 FirstWrite -1}
		weights_load_9257 {Type I LastRead 0 FirstWrite -1}
		weights_load_9258 {Type I LastRead 0 FirstWrite -1}
		weights_load_9259 {Type I LastRead 0 FirstWrite -1}
		weights_load_9260 {Type I LastRead 0 FirstWrite -1}
		weights_load_9261 {Type I LastRead 0 FirstWrite -1}
		weights_load_9262 {Type I LastRead 0 FirstWrite -1}
		weights_load_9263 {Type I LastRead 0 FirstWrite -1}
		weights_load_9264 {Type I LastRead 0 FirstWrite -1}
		weights_load_9265 {Type I LastRead 0 FirstWrite -1}
		weights_load_9266 {Type I LastRead 0 FirstWrite -1}
		weights_load_9267 {Type I LastRead 0 FirstWrite -1}
		weights_load_9268 {Type I LastRead 0 FirstWrite -1}
		weights_load_9269 {Type I LastRead 0 FirstWrite -1}
		weights_load_9270 {Type I LastRead 0 FirstWrite -1}
		weights_load_9271 {Type I LastRead 0 FirstWrite -1}
		weights_load_9272 {Type I LastRead 0 FirstWrite -1}
		weights_load_9273 {Type I LastRead 0 FirstWrite -1}
		weights_load_9274 {Type I LastRead 0 FirstWrite -1}
		weights_load_9275 {Type I LastRead 0 FirstWrite -1}
		weights_load_9276 {Type I LastRead 0 FirstWrite -1}
		weights_load_9277 {Type I LastRead 0 FirstWrite -1}
		weights_load_9278 {Type I LastRead 0 FirstWrite -1}
		weights_load_9279 {Type I LastRead 0 FirstWrite -1}
		weights_load_9280 {Type I LastRead 0 FirstWrite -1}
		weights_load_9281 {Type I LastRead 0 FirstWrite -1}
		weights_load_9282 {Type I LastRead 0 FirstWrite -1}
		weights_load_9283 {Type I LastRead 0 FirstWrite -1}
		weights_load_9284 {Type I LastRead 0 FirstWrite -1}
		weights_load_9285 {Type I LastRead 0 FirstWrite -1}
		weights_load_9286 {Type I LastRead 0 FirstWrite -1}
		weights_load_9287 {Type I LastRead 0 FirstWrite -1}
		weights_load_9288 {Type I LastRead 0 FirstWrite -1}
		weights_load_9289 {Type I LastRead 0 FirstWrite -1}
		weights_load_9290 {Type I LastRead 0 FirstWrite -1}
		weights_load_9291 {Type I LastRead 0 FirstWrite -1}
		weights_load_9292 {Type I LastRead 0 FirstWrite -1}
		weights_load_9293 {Type I LastRead 0 FirstWrite -1}
		weights_load_9294 {Type I LastRead 0 FirstWrite -1}
		weights_load_9295 {Type I LastRead 0 FirstWrite -1}
		weights_load_9296 {Type I LastRead 0 FirstWrite -1}
		weights_load_9297 {Type I LastRead 0 FirstWrite -1}
		weights_load_9298 {Type I LastRead 0 FirstWrite -1}
		weights_load_9299 {Type I LastRead 0 FirstWrite -1}
		weights_load_9300 {Type I LastRead 0 FirstWrite -1}
		weights_load_9301 {Type I LastRead 0 FirstWrite -1}
		weights_load_9302 {Type I LastRead 0 FirstWrite -1}
		weights_load_9303 {Type I LastRead 0 FirstWrite -1}
		weights_load_9304 {Type I LastRead 0 FirstWrite -1}
		weights_load_9305 {Type I LastRead 0 FirstWrite -1}
		weights_load_9306 {Type I LastRead 0 FirstWrite -1}
		weights_load_9307 {Type I LastRead 0 FirstWrite -1}
		weights_load_9308 {Type I LastRead 0 FirstWrite -1}
		weights_load_9309 {Type I LastRead 0 FirstWrite -1}
		weights_load_9310 {Type I LastRead 0 FirstWrite -1}
		weights_load_9311 {Type I LastRead 0 FirstWrite -1}
		weights_load_9312 {Type I LastRead 0 FirstWrite -1}
		weights_load_9313 {Type I LastRead 0 FirstWrite -1}
		weights_load_9314 {Type I LastRead 0 FirstWrite -1}
		weights_load_9315 {Type I LastRead 0 FirstWrite -1}
		weights_load_9316 {Type I LastRead 0 FirstWrite -1}
		weights_load_9317 {Type I LastRead 0 FirstWrite -1}
		weights_load_9318 {Type I LastRead 0 FirstWrite -1}
		weights_load_9319 {Type I LastRead 0 FirstWrite -1}
		weights_load_9320 {Type I LastRead 0 FirstWrite -1}
		weights_load_9321 {Type I LastRead 0 FirstWrite -1}
		weights_load_9322 {Type I LastRead 0 FirstWrite -1}
		weights_load_9323 {Type I LastRead 0 FirstWrite -1}
		weights_load_9324 {Type I LastRead 0 FirstWrite -1}
		weights_load_9325 {Type I LastRead 0 FirstWrite -1}
		weights_load_9326 {Type I LastRead 0 FirstWrite -1}
		weights_load_9327 {Type I LastRead 0 FirstWrite -1}
		weights_load_9328 {Type I LastRead 0 FirstWrite -1}
		weights_load_9329 {Type I LastRead 0 FirstWrite -1}
		weights_load_9330 {Type I LastRead 0 FirstWrite -1}
		weights_load_9331 {Type I LastRead 0 FirstWrite -1}
		weights_load_9332 {Type I LastRead 0 FirstWrite -1}
		weights_load_9333 {Type I LastRead 0 FirstWrite -1}
		weights_load_9334 {Type I LastRead 0 FirstWrite -1}
		weights_load_9335 {Type I LastRead 0 FirstWrite -1}
		weights_load_9336 {Type I LastRead 0 FirstWrite -1}
		weights_load_9337 {Type I LastRead 0 FirstWrite -1}
		weights_load_9338 {Type I LastRead 0 FirstWrite -1}
		weights_load_9339 {Type I LastRead 0 FirstWrite -1}
		weights_load_9340 {Type I LastRead 0 FirstWrite -1}
		weights_load_9341 {Type I LastRead 0 FirstWrite -1}
		weights_load_9342 {Type I LastRead 0 FirstWrite -1}
		weights_load_9343 {Type I LastRead 0 FirstWrite -1}
		weights_load_9344 {Type I LastRead 0 FirstWrite -1}
		weights_load_9345 {Type I LastRead 0 FirstWrite -1}
		weights_load_9346 {Type I LastRead 0 FirstWrite -1}
		weights_load_9347 {Type I LastRead 0 FirstWrite -1}
		weights_load_9348 {Type I LastRead 0 FirstWrite -1}
		weights_load_9349 {Type I LastRead 0 FirstWrite -1}
		weights_load_9350 {Type I LastRead 0 FirstWrite -1}
		weights_load_9351 {Type I LastRead 0 FirstWrite -1}
		weights_load_9352 {Type I LastRead 0 FirstWrite -1}
		weights_load_9353 {Type I LastRead 0 FirstWrite -1}
		weights_load_9354 {Type I LastRead 0 FirstWrite -1}
		weights_load_9355 {Type I LastRead 0 FirstWrite -1}
		weights_load_9356 {Type I LastRead 0 FirstWrite -1}
		weights_load_9357 {Type I LastRead 0 FirstWrite -1}
		weights_load_9358 {Type I LastRead 0 FirstWrite -1}
		weights_load_9359 {Type I LastRead 0 FirstWrite -1}
		weights_load_9360 {Type I LastRead 0 FirstWrite -1}
		weights_load_9361 {Type I LastRead 0 FirstWrite -1}
		weights_load_9362 {Type I LastRead 0 FirstWrite -1}
		weights_load_9363 {Type I LastRead 0 FirstWrite -1}
		weights_load_9364 {Type I LastRead 0 FirstWrite -1}
		weights_load_9365 {Type I LastRead 0 FirstWrite -1}
		weights_load_9366 {Type I LastRead 0 FirstWrite -1}
		weights_load_9367 {Type I LastRead 0 FirstWrite -1}
		weights_load_9368 {Type I LastRead 0 FirstWrite -1}
		weights_load_9369 {Type I LastRead 0 FirstWrite -1}
		weights_load_9370 {Type I LastRead 0 FirstWrite -1}
		weights_load_9371 {Type I LastRead 0 FirstWrite -1}
		weights_load_9372 {Type I LastRead 0 FirstWrite -1}
		weights_load_9373 {Type I LastRead 0 FirstWrite -1}
		weights_load_9374 {Type I LastRead 0 FirstWrite -1}
		weights_load_9375 {Type I LastRead 0 FirstWrite -1}
		weights_load_9376 {Type I LastRead 0 FirstWrite -1}
		weights_load_9377 {Type I LastRead 0 FirstWrite -1}
		weights_load_9378 {Type I LastRead 0 FirstWrite -1}
		weights_load_9379 {Type I LastRead 0 FirstWrite -1}
		weights_load_9380 {Type I LastRead 0 FirstWrite -1}
		weights_load_9381 {Type I LastRead 0 FirstWrite -1}
		weights_load_9382 {Type I LastRead 0 FirstWrite -1}
		weights_load_9383 {Type I LastRead 0 FirstWrite -1}
		weights_load_9384 {Type I LastRead 0 FirstWrite -1}
		weights_load_9385 {Type I LastRead 0 FirstWrite -1}
		weights_load_9386 {Type I LastRead 0 FirstWrite -1}
		weights_load_9387 {Type I LastRead 0 FirstWrite -1}
		weights_load_9388 {Type I LastRead 0 FirstWrite -1}
		weights_load_9389 {Type I LastRead 0 FirstWrite -1}
		weights_load_9390 {Type I LastRead 0 FirstWrite -1}
		weights_load_9391 {Type I LastRead 0 FirstWrite -1}
		weights_load_9392 {Type I LastRead 0 FirstWrite -1}
		weights_load_9393 {Type I LastRead 0 FirstWrite -1}
		weights_load_9394 {Type I LastRead 0 FirstWrite -1}
		weights_load_9395 {Type I LastRead 0 FirstWrite -1}
		weights_load_9396 {Type I LastRead 0 FirstWrite -1}
		weights_load_9397 {Type I LastRead 0 FirstWrite -1}
		weights_load_9398 {Type I LastRead 0 FirstWrite -1}
		weights_load_9399 {Type I LastRead 0 FirstWrite -1}
		weights_load_9400 {Type I LastRead 0 FirstWrite -1}
		weights_load_9401 {Type I LastRead 0 FirstWrite -1}
		weights_load_9402 {Type I LastRead 0 FirstWrite -1}
		weights_load_9403 {Type I LastRead 0 FirstWrite -1}
		weights_load_9404 {Type I LastRead 0 FirstWrite -1}
		weights_load_9405 {Type I LastRead 0 FirstWrite -1}
		weights_load_9406 {Type I LastRead 0 FirstWrite -1}
		weights_load_9407 {Type I LastRead 0 FirstWrite -1}
		weights_load_9408 {Type I LastRead 0 FirstWrite -1}
		weights_load_9409 {Type I LastRead 0 FirstWrite -1}
		weights_load_9410 {Type I LastRead 0 FirstWrite -1}
		weights_load_9411 {Type I LastRead 0 FirstWrite -1}
		weights_load_9412 {Type I LastRead 0 FirstWrite -1}
		weights_load_9413 {Type I LastRead 0 FirstWrite -1}
		weights_load_9414 {Type I LastRead 0 FirstWrite -1}
		weights_load_9415 {Type I LastRead 0 FirstWrite -1}
		weights_load_9416 {Type I LastRead 0 FirstWrite -1}
		weights_load_9417 {Type I LastRead 0 FirstWrite -1}
		weights_load_9418 {Type I LastRead 0 FirstWrite -1}
		weights_load_9419 {Type I LastRead 0 FirstWrite -1}
		weights_load_9420 {Type I LastRead 0 FirstWrite -1}
		weights_load_9421 {Type I LastRead 0 FirstWrite -1}
		weights_load_9422 {Type I LastRead 0 FirstWrite -1}
		weights_load_9423 {Type I LastRead 0 FirstWrite -1}
		weights_load_9424 {Type I LastRead 0 FirstWrite -1}
		weights_load_9425 {Type I LastRead 0 FirstWrite -1}
		weights_load_9426 {Type I LastRead 0 FirstWrite -1}
		weights_load_9427 {Type I LastRead 0 FirstWrite -1}
		weights_load_9428 {Type I LastRead 0 FirstWrite -1}
		weights_load_9429 {Type I LastRead 0 FirstWrite -1}
		weights_load_9430 {Type I LastRead 0 FirstWrite -1}
		weights_load_9431 {Type I LastRead 0 FirstWrite -1}
		weights_load_9432 {Type I LastRead 0 FirstWrite -1}
		weights_load_9433 {Type I LastRead 0 FirstWrite -1}
		weights_load_9434 {Type I LastRead 0 FirstWrite -1}
		weights_load_9435 {Type I LastRead 0 FirstWrite -1}
		weights_load_9436 {Type I LastRead 0 FirstWrite -1}
		weights_load_9437 {Type I LastRead 0 FirstWrite -1}
		weights_load_9438 {Type I LastRead 0 FirstWrite -1}
		weights_load_9439 {Type I LastRead 0 FirstWrite -1}
		weights_load_9440 {Type I LastRead 0 FirstWrite -1}
		weights_load_9441 {Type I LastRead 0 FirstWrite -1}
		weights_load_9442 {Type I LastRead 0 FirstWrite -1}
		weights_load_9443 {Type I LastRead 0 FirstWrite -1}
		weights_load_9444 {Type I LastRead 0 FirstWrite -1}
		weights_load_9445 {Type I LastRead 0 FirstWrite -1}
		weights_load_9446 {Type I LastRead 0 FirstWrite -1}
		weights_load_9447 {Type I LastRead 0 FirstWrite -1}
		weights_load_9448 {Type I LastRead 0 FirstWrite -1}
		weights_load_9449 {Type I LastRead 0 FirstWrite -1}
		weights_load_9450 {Type I LastRead 0 FirstWrite -1}
		weights_load_9451 {Type I LastRead 0 FirstWrite -1}
		weights_load_9452 {Type I LastRead 0 FirstWrite -1}
		weights_load_9453 {Type I LastRead 0 FirstWrite -1}
		weights_load_9454 {Type I LastRead 0 FirstWrite -1}
		weights_load_9455 {Type I LastRead 0 FirstWrite -1}
		weights_load_9456 {Type I LastRead 0 FirstWrite -1}
		weights_load_9457 {Type I LastRead 0 FirstWrite -1}
		weights_load_9458 {Type I LastRead 0 FirstWrite -1}
		weights_load_9459 {Type I LastRead 0 FirstWrite -1}
		weights_load_9460 {Type I LastRead 0 FirstWrite -1}
		weights_load_9461 {Type I LastRead 0 FirstWrite -1}
		weights_load_9462 {Type I LastRead 0 FirstWrite -1}
		weights_load_9463 {Type I LastRead 0 FirstWrite -1}
		weights_load_9464 {Type I LastRead 0 FirstWrite -1}
		weights_load_9465 {Type I LastRead 0 FirstWrite -1}
		weights_load_9466 {Type I LastRead 0 FirstWrite -1}
		weights_load_9467 {Type I LastRead 0 FirstWrite -1}
		weights_load_9468 {Type I LastRead 0 FirstWrite -1}
		weights_load_9469 {Type I LastRead 0 FirstWrite -1}
		weights_load_9470 {Type I LastRead 0 FirstWrite -1}
		weights_load_9471 {Type I LastRead 0 FirstWrite -1}
		weights_load_9472 {Type I LastRead 0 FirstWrite -1}
		weights_load_9473 {Type I LastRead 0 FirstWrite -1}
		weights_load_9474 {Type I LastRead 0 FirstWrite -1}
		weights_load_9475 {Type I LastRead 0 FirstWrite -1}
		weights_load_9476 {Type I LastRead 0 FirstWrite -1}
		weights_load_9477 {Type I LastRead 0 FirstWrite -1}
		weights_load_9478 {Type I LastRead 0 FirstWrite -1}
		weights_load_9479 {Type I LastRead 0 FirstWrite -1}
		weights_load_9480 {Type I LastRead 0 FirstWrite -1}
		weights_load_9481 {Type I LastRead 0 FirstWrite -1}
		weights_load_9482 {Type I LastRead 0 FirstWrite -1}
		weights_load_9483 {Type I LastRead 0 FirstWrite -1}
		weights_load_9484 {Type I LastRead 0 FirstWrite -1}
		weights_load_9485 {Type I LastRead 0 FirstWrite -1}
		weights_load_9486 {Type I LastRead 0 FirstWrite -1}
		weights_load_9487 {Type I LastRead 0 FirstWrite -1}
		weights_load_9488 {Type I LastRead 0 FirstWrite -1}
		weights_load_9489 {Type I LastRead 0 FirstWrite -1}
		weights_load_9490 {Type I LastRead 0 FirstWrite -1}
		weights_load_9491 {Type I LastRead 0 FirstWrite -1}
		weights_load_9492 {Type I LastRead 0 FirstWrite -1}
		weights_load_9493 {Type I LastRead 0 FirstWrite -1}
		weights_load_9494 {Type I LastRead 0 FirstWrite -1}
		weights_load_9495 {Type I LastRead 0 FirstWrite -1}
		weights_load_9496 {Type I LastRead 0 FirstWrite -1}
		weights_load_9497 {Type I LastRead 0 FirstWrite -1}
		weights_load_9498 {Type I LastRead 0 FirstWrite -1}
		weights_load_9499 {Type I LastRead 0 FirstWrite -1}
		weights_load_9500 {Type I LastRead 0 FirstWrite -1}
		weights_load_9501 {Type I LastRead 0 FirstWrite -1}
		weights_load_9502 {Type I LastRead 0 FirstWrite -1}
		weights_load_9503 {Type I LastRead 0 FirstWrite -1}
		weights_load_9504 {Type I LastRead 0 FirstWrite -1}
		weights_load_9505 {Type I LastRead 0 FirstWrite -1}
		weights_load_9506 {Type I LastRead 0 FirstWrite -1}
		weights_load_9507 {Type I LastRead 0 FirstWrite -1}
		weights_load_9508 {Type I LastRead 0 FirstWrite -1}
		weights_load_9509 {Type I LastRead 0 FirstWrite -1}
		weights_load_9510 {Type I LastRead 0 FirstWrite -1}
		weights_load_9511 {Type I LastRead 0 FirstWrite -1}
		weights_load_9512 {Type I LastRead 0 FirstWrite -1}
		weights_load_9513 {Type I LastRead 0 FirstWrite -1}
		weights_load_9514 {Type I LastRead 0 FirstWrite -1}
		weights_load_9515 {Type I LastRead 0 FirstWrite -1}
		weights_load_9516 {Type I LastRead 0 FirstWrite -1}
		weights_load_9517 {Type I LastRead 0 FirstWrite -1}
		weights_load_9518 {Type I LastRead 0 FirstWrite -1}
		weights_load_9519 {Type I LastRead 0 FirstWrite -1}
		weights_load_9520 {Type I LastRead 0 FirstWrite -1}
		weights_load_9521 {Type I LastRead 0 FirstWrite -1}
		weights_load_9522 {Type I LastRead 0 FirstWrite -1}
		weights_load_9523 {Type I LastRead 0 FirstWrite -1}
		weights_load_9524 {Type I LastRead 0 FirstWrite -1}
		weights_load_9525 {Type I LastRead 0 FirstWrite -1}
		weights_load_9526 {Type I LastRead 0 FirstWrite -1}
		weights_load_9527 {Type I LastRead 0 FirstWrite -1}
		weights_load_9528 {Type I LastRead 0 FirstWrite -1}
		weights_load_9529 {Type I LastRead 0 FirstWrite -1}
		weights_load_9530 {Type I LastRead 0 FirstWrite -1}
		weights_load_9531 {Type I LastRead 0 FirstWrite -1}
		weights_load_9532 {Type I LastRead 0 FirstWrite -1}
		weights_load_9533 {Type I LastRead 0 FirstWrite -1}
		weights_load_9534 {Type I LastRead 0 FirstWrite -1}
		weights_load_9535 {Type I LastRead 0 FirstWrite -1}
		weights_load_9536 {Type I LastRead 0 FirstWrite -1}
		weights_load_9537 {Type I LastRead 0 FirstWrite -1}
		weights_load_9538 {Type I LastRead 0 FirstWrite -1}
		weights_load_9539 {Type I LastRead 0 FirstWrite -1}
		weights_load_9540 {Type I LastRead 0 FirstWrite -1}
		weights_load_9541 {Type I LastRead 0 FirstWrite -1}
		weights_load_9542 {Type I LastRead 0 FirstWrite -1}
		weights_load_9543 {Type I LastRead 0 FirstWrite -1}
		weights_load_9544 {Type I LastRead 0 FirstWrite -1}
		weights_load_9545 {Type I LastRead 0 FirstWrite -1}
		weights_load_9546 {Type I LastRead 0 FirstWrite -1}
		weights_load_9547 {Type I LastRead 0 FirstWrite -1}
		weights_load_9548 {Type I LastRead 0 FirstWrite -1}
		weights_load_9549 {Type I LastRead 0 FirstWrite -1}
		weights_load_9550 {Type I LastRead 0 FirstWrite -1}
		weights_load_9551 {Type I LastRead 0 FirstWrite -1}
		weights_load_9552 {Type I LastRead 0 FirstWrite -1}
		weights_load_9553 {Type I LastRead 0 FirstWrite -1}
		weights_load_9554 {Type I LastRead 0 FirstWrite -1}
		weights_load_9555 {Type I LastRead 0 FirstWrite -1}
		weights_load_9556 {Type I LastRead 0 FirstWrite -1}
		weights_load_9557 {Type I LastRead 0 FirstWrite -1}
		weights_load_9558 {Type I LastRead 0 FirstWrite -1}
		weights_load_9559 {Type I LastRead 0 FirstWrite -1}
		weights_load_9560 {Type I LastRead 0 FirstWrite -1}
		weights_load_9561 {Type I LastRead 0 FirstWrite -1}
		weights_load_9562 {Type I LastRead 0 FirstWrite -1}
		weights_load_9563 {Type I LastRead 0 FirstWrite -1}
		weights_load_9564 {Type I LastRead 0 FirstWrite -1}
		weights_load_9565 {Type I LastRead 0 FirstWrite -1}
		weights_load_9566 {Type I LastRead 0 FirstWrite -1}
		weights_load_9567 {Type I LastRead 0 FirstWrite -1}
		weights_load_9568 {Type I LastRead 0 FirstWrite -1}
		weights_load_9569 {Type I LastRead 0 FirstWrite -1}
		weights_load_9570 {Type I LastRead 0 FirstWrite -1}
		weights_load_9571 {Type I LastRead 0 FirstWrite -1}
		weights_load_9572 {Type I LastRead 0 FirstWrite -1}
		weights_load_9573 {Type I LastRead 0 FirstWrite -1}
		weights_load_9574 {Type I LastRead 0 FirstWrite -1}
		weights_load_9575 {Type I LastRead 0 FirstWrite -1}
		weights_load_9576 {Type I LastRead 0 FirstWrite -1}
		weights_load_9577 {Type I LastRead 0 FirstWrite -1}
		weights_load_9578 {Type I LastRead 0 FirstWrite -1}
		weights_load_9579 {Type I LastRead 0 FirstWrite -1}
		weights_load_9580 {Type I LastRead 0 FirstWrite -1}
		weights_load_9581 {Type I LastRead 0 FirstWrite -1}
		weights_load_9582 {Type I LastRead 0 FirstWrite -1}
		weights_load_9583 {Type I LastRead 0 FirstWrite -1}
		weights_load_9584 {Type I LastRead 0 FirstWrite -1}
		weights_load_9585 {Type I LastRead 0 FirstWrite -1}
		weights_load_9586 {Type I LastRead 0 FirstWrite -1}
		weights_load_9587 {Type I LastRead 0 FirstWrite -1}
		weights_load_9588 {Type I LastRead 0 FirstWrite -1}
		weights_load_9589 {Type I LastRead 0 FirstWrite -1}
		weights_load_9590 {Type I LastRead 0 FirstWrite -1}
		weights_load_9591 {Type I LastRead 0 FirstWrite -1}
		weights_load_9592 {Type I LastRead 0 FirstWrite -1}
		weights_load_9593 {Type I LastRead 0 FirstWrite -1}
		weights_load_9594 {Type I LastRead 0 FirstWrite -1}
		weights_load_9595 {Type I LastRead 0 FirstWrite -1}
		weights_load_9596 {Type I LastRead 0 FirstWrite -1}
		weights_load_9597 {Type I LastRead 0 FirstWrite -1}
		weights_load_9598 {Type I LastRead 0 FirstWrite -1}
		weights_load_9599 {Type I LastRead 0 FirstWrite -1}
		weights_load_9600 {Type I LastRead 0 FirstWrite -1}
		weights_load_9601 {Type I LastRead 0 FirstWrite -1}
		weights_load_9602 {Type I LastRead 0 FirstWrite -1}
		weights_load_9603 {Type I LastRead 0 FirstWrite -1}
		weights_load_9604 {Type I LastRead 0 FirstWrite -1}
		weights_load_9605 {Type I LastRead 0 FirstWrite -1}
		weights_load_9606 {Type I LastRead 0 FirstWrite -1}
		weights_load_9607 {Type I LastRead 0 FirstWrite -1}
		weights_load_9608 {Type I LastRead 0 FirstWrite -1}
		weights_load_9609 {Type I LastRead 0 FirstWrite -1}
		weights_load_9610 {Type I LastRead 0 FirstWrite -1}
		weights_load_9611 {Type I LastRead 0 FirstWrite -1}
		weights_load_9612 {Type I LastRead 0 FirstWrite -1}
		weights_load_9613 {Type I LastRead 0 FirstWrite -1}
		weights_load_9614 {Type I LastRead 0 FirstWrite -1}
		weights_load_9615 {Type I LastRead 0 FirstWrite -1}
		weights_load_9616 {Type I LastRead 0 FirstWrite -1}
		weights_load_9617 {Type I LastRead 0 FirstWrite -1}
		weights_load_9618 {Type I LastRead 0 FirstWrite -1}
		weights_load_9619 {Type I LastRead 0 FirstWrite -1}
		weights_load_9620 {Type I LastRead 0 FirstWrite -1}
		weights_load_9621 {Type I LastRead 0 FirstWrite -1}
		weights_load_9622 {Type I LastRead 0 FirstWrite -1}
		weights_load_9623 {Type I LastRead 0 FirstWrite -1}
		weights_load_9624 {Type I LastRead 0 FirstWrite -1}
		weights_load_9625 {Type I LastRead 0 FirstWrite -1}
		weights_load_9626 {Type I LastRead 0 FirstWrite -1}
		weights_load_9627 {Type I LastRead 0 FirstWrite -1}
		weights_load_9628 {Type I LastRead 0 FirstWrite -1}
		weights_load_9629 {Type I LastRead 0 FirstWrite -1}
		weights_load_9630 {Type I LastRead 0 FirstWrite -1}
		weights_load_9631 {Type I LastRead 0 FirstWrite -1}
		weights_load_9632 {Type I LastRead 0 FirstWrite -1}
		weights_load_9633 {Type I LastRead 0 FirstWrite -1}
		weights_load_9634 {Type I LastRead 0 FirstWrite -1}
		weights_load_9635 {Type I LastRead 0 FirstWrite -1}
		weights_load_9636 {Type I LastRead 0 FirstWrite -1}
		weights_load_9637 {Type I LastRead 0 FirstWrite -1}
		weights_load_9638 {Type I LastRead 0 FirstWrite -1}
		weights_load_9639 {Type I LastRead 0 FirstWrite -1}
		weights_load_9640 {Type I LastRead 0 FirstWrite -1}
		weights_load_9641 {Type I LastRead 0 FirstWrite -1}
		weights_load_9642 {Type I LastRead 0 FirstWrite -1}
		weights_load_9643 {Type I LastRead 0 FirstWrite -1}
		weights_load_9644 {Type I LastRead 0 FirstWrite -1}
		weights_load_9645 {Type I LastRead 0 FirstWrite -1}
		weights_load_9646 {Type I LastRead 0 FirstWrite -1}
		weights_load_9647 {Type I LastRead 0 FirstWrite -1}
		weights_load_9648 {Type I LastRead 0 FirstWrite -1}
		weights_load_9649 {Type I LastRead 0 FirstWrite -1}
		weights_load_9650 {Type I LastRead 0 FirstWrite -1}
		weights_load_9651 {Type I LastRead 0 FirstWrite -1}
		weights_load_9652 {Type I LastRead 0 FirstWrite -1}
		weights_load_9653 {Type I LastRead 0 FirstWrite -1}
		weights_load_9654 {Type I LastRead 0 FirstWrite -1}
		weights_load_9655 {Type I LastRead 0 FirstWrite -1}
		weights_load_9656 {Type I LastRead 0 FirstWrite -1}
		weights_load_9657 {Type I LastRead 0 FirstWrite -1}
		weights_load_9658 {Type I LastRead 0 FirstWrite -1}
		weights_load_9659 {Type I LastRead 0 FirstWrite -1}
		weights_load_9660 {Type I LastRead 0 FirstWrite -1}
		weights_load_9661 {Type I LastRead 0 FirstWrite -1}
		weights_load_9662 {Type I LastRead 0 FirstWrite -1}
		weights_load_9663 {Type I LastRead 0 FirstWrite -1}
		weights_load_9664 {Type I LastRead 0 FirstWrite -1}
		weights_load_9665 {Type I LastRead 0 FirstWrite -1}
		weights_load_9666 {Type I LastRead 0 FirstWrite -1}
		weights_load_9667 {Type I LastRead 0 FirstWrite -1}
		weights_load_9668 {Type I LastRead 0 FirstWrite -1}
		weights_load_9669 {Type I LastRead 0 FirstWrite -1}
		weights_load_9670 {Type I LastRead 0 FirstWrite -1}
		weights_load_9671 {Type I LastRead 0 FirstWrite -1}
		weights_load_9672 {Type I LastRead 0 FirstWrite -1}
		weights_load_9673 {Type I LastRead 0 FirstWrite -1}
		weights_load_9674 {Type I LastRead 0 FirstWrite -1}
		weights_load_9675 {Type I LastRead 0 FirstWrite -1}
		weights_load_9676 {Type I LastRead 0 FirstWrite -1}
		weights_load_9677 {Type I LastRead 0 FirstWrite -1}
		weights_load_9678 {Type I LastRead 0 FirstWrite -1}
		weights_load_9679 {Type I LastRead 0 FirstWrite -1}
		weights_load_9680 {Type I LastRead 0 FirstWrite -1}
		weights_load_9681 {Type I LastRead 0 FirstWrite -1}
		weights_load_9682 {Type I LastRead 0 FirstWrite -1}
		weights_load_9683 {Type I LastRead 0 FirstWrite -1}
		weights_load_9684 {Type I LastRead 0 FirstWrite -1}
		weights_load_9685 {Type I LastRead 0 FirstWrite -1}
		weights_load_9686 {Type I LastRead 0 FirstWrite -1}
		weights_load_9687 {Type I LastRead 0 FirstWrite -1}
		weights_load_9688 {Type I LastRead 0 FirstWrite -1}
		weights_load_9689 {Type I LastRead 0 FirstWrite -1}
		weights_load_9690 {Type I LastRead 0 FirstWrite -1}
		weights_load_9691 {Type I LastRead 0 FirstWrite -1}
		weights_load_9692 {Type I LastRead 0 FirstWrite -1}
		weights_load_9693 {Type I LastRead 0 FirstWrite -1}
		weights_load_9694 {Type I LastRead 0 FirstWrite -1}
		weights_load_9695 {Type I LastRead 0 FirstWrite -1}
		weights_load_9696 {Type I LastRead 0 FirstWrite -1}
		weights_load_9697 {Type I LastRead 0 FirstWrite -1}
		weights_load_9698 {Type I LastRead 0 FirstWrite -1}
		weights_load_9699 {Type I LastRead 0 FirstWrite -1}
		weights_load_9700 {Type I LastRead 0 FirstWrite -1}
		weights_load_9701 {Type I LastRead 0 FirstWrite -1}
		weights_load_9702 {Type I LastRead 0 FirstWrite -1}
		weights_load_9703 {Type I LastRead 0 FirstWrite -1}
		weights_load_9704 {Type I LastRead 0 FirstWrite -1}
		weights_load_9705 {Type I LastRead 0 FirstWrite -1}
		weights_load_9706 {Type I LastRead 0 FirstWrite -1}
		weights_load_9707 {Type I LastRead 0 FirstWrite -1}
		weights_load_9708 {Type I LastRead 0 FirstWrite -1}
		weights_load_9709 {Type I LastRead 0 FirstWrite -1}
		weights_load_9710 {Type I LastRead 0 FirstWrite -1}
		weights_load_9711 {Type I LastRead 0 FirstWrite -1}
		weights_load_9712 {Type I LastRead 0 FirstWrite -1}
		weights_load_9713 {Type I LastRead 0 FirstWrite -1}
		weights_load_9714 {Type I LastRead 0 FirstWrite -1}
		weights_load_9715 {Type I LastRead 0 FirstWrite -1}
		weights_load_9716 {Type I LastRead 0 FirstWrite -1}
		weights_load_9717 {Type I LastRead 0 FirstWrite -1}
		weights_load_9718 {Type I LastRead 0 FirstWrite -1}
		weights_load_9719 {Type I LastRead 0 FirstWrite -1}
		weights_load_9720 {Type I LastRead 0 FirstWrite -1}
		weights_load_9721 {Type I LastRead 0 FirstWrite -1}
		weights_load_9722 {Type I LastRead 0 FirstWrite -1}
		weights_load_9723 {Type I LastRead 0 FirstWrite -1}
		weights_load_9724 {Type I LastRead 0 FirstWrite -1}
		weights_load_9725 {Type I LastRead 0 FirstWrite -1}
		weights_load_9726 {Type I LastRead 0 FirstWrite -1}
		weights_load_9727 {Type I LastRead 0 FirstWrite -1}
		weights_load_9728 {Type I LastRead 0 FirstWrite -1}
		weights_load_9729 {Type I LastRead 0 FirstWrite -1}
		weights_load_9730 {Type I LastRead 0 FirstWrite -1}
		weights_load_9731 {Type I LastRead 0 FirstWrite -1}
		weights_load_9732 {Type I LastRead 0 FirstWrite -1}
		weights_load_9733 {Type I LastRead 0 FirstWrite -1}
		weights_load_9734 {Type I LastRead 0 FirstWrite -1}
		weights_load_9735 {Type I LastRead 0 FirstWrite -1}
		weights_load_9736 {Type I LastRead 0 FirstWrite -1}
		weights_load_9737 {Type I LastRead 0 FirstWrite -1}
		weights_load_9738 {Type I LastRead 0 FirstWrite -1}
		weights_load_9739 {Type I LastRead 0 FirstWrite -1}
		weights_load_9740 {Type I LastRead 0 FirstWrite -1}
		weights_load_9741 {Type I LastRead 0 FirstWrite -1}
		weights_load_9742 {Type I LastRead 0 FirstWrite -1}
		weights_load_9743 {Type I LastRead 0 FirstWrite -1}
		weights_load_9744 {Type I LastRead 0 FirstWrite -1}
		weights_load_9745 {Type I LastRead 0 FirstWrite -1}
		weights_load_9746 {Type I LastRead 0 FirstWrite -1}
		weights_load_9747 {Type I LastRead 0 FirstWrite -1}
		weights_load_9748 {Type I LastRead 0 FirstWrite -1}
		weights_load_9749 {Type I LastRead 0 FirstWrite -1}
		weights_load_9750 {Type I LastRead 0 FirstWrite -1}
		weights_load_9751 {Type I LastRead 0 FirstWrite -1}
		weights_load_9752 {Type I LastRead 0 FirstWrite -1}
		weights_load_9753 {Type I LastRead 0 FirstWrite -1}
		weights_load_9754 {Type I LastRead 0 FirstWrite -1}
		weights_load_9755 {Type I LastRead 0 FirstWrite -1}
		weights_load_9756 {Type I LastRead 0 FirstWrite -1}
		weights_load_9757 {Type I LastRead 0 FirstWrite -1}
		weights_load_9758 {Type I LastRead 0 FirstWrite -1}
		weights_load_9759 {Type I LastRead 0 FirstWrite -1}
		weights_load_9760 {Type I LastRead 0 FirstWrite -1}
		weights_load_9761 {Type I LastRead 0 FirstWrite -1}
		weights_load_9762 {Type I LastRead 0 FirstWrite -1}
		weights_load_9763 {Type I LastRead 0 FirstWrite -1}
		weights_load_9764 {Type I LastRead 0 FirstWrite -1}
		weights_load_9765 {Type I LastRead 0 FirstWrite -1}
		weights_load_9766 {Type I LastRead 0 FirstWrite -1}
		weights_load_9767 {Type I LastRead 0 FirstWrite -1}
		weights_load_9768 {Type I LastRead 0 FirstWrite -1}
		weights_load_9769 {Type I LastRead 0 FirstWrite -1}
		weights_load_9770 {Type I LastRead 0 FirstWrite -1}
		weights_load_9771 {Type I LastRead 0 FirstWrite -1}
		weights_load_9772 {Type I LastRead 0 FirstWrite -1}
		weights_load_9773 {Type I LastRead 0 FirstWrite -1}
		weights_load_9774 {Type I LastRead 0 FirstWrite -1}
		weights_load_9775 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_22 { ap_fifo {  { conv2d_64_padded_window_stream_22_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_22_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_22_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_22_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_22_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_22 { ap_fifo {  { in_channel_map_stream_22_din fifo_port_we 1 32 }  { in_channel_map_stream_22_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_22_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_22_full_n fifo_status 0 1 }  { in_channel_map_stream_22_write fifo_data 1 1 } } }
}
