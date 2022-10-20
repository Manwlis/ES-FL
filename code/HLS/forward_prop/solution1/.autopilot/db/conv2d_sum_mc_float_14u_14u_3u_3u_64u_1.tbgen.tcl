set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_1
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_1 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_1 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_1", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_1_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_1_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_1_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_1_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_1_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_1_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_1_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_1_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_1_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_1_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_1", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_1", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_1", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_1", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_1", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_1", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_1", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_1", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_1", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_1", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_1",
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
			{"Name" : "conv2d_64_padded_window_stream_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_1_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_1", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_1_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_1", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_1_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_1_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17251", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17252", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17253", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17254", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17255", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17256", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17257", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17258", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_17259", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17260", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17261", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17262", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17263", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17264", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17265", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17266", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17267", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17268", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17269", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17270", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17271", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17272", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17273", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17274", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17275", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17276", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17277", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17278", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17279", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17280", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17281", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17282", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17283", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17284", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17285", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17286", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17287", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17288", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17289", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17290", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17291", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17292", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17293", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17294", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17295", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17296", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17297", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17298", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17299", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17300", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17301", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17302", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17303", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17304", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17305", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17306", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17307", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17308", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17309", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17310", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17311", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17312", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17313", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17314", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17315", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17316", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17317", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17318", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17319", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17320", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17321", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17322", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17323", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17324", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17325", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17326", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17327", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17328", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17329", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17330", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17331", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17332", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17333", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17334", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17335", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17336", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17337", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17338", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17339", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17340", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17341", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17342", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17343", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17344", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17345", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17346", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17347", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17348", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17349", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17350", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17351", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17352", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17353", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17354", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17355", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17356", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17357", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17358", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17359", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17360", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17361", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17362", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17363", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17364", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17365", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17366", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17367", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17368", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17369", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17370", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17371", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17372", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17373", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17374", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17375", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17376", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17377", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17378", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17379", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17380", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17381", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17382", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17383", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17384", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17385", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17386", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17387", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17388", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17389", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17390", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17391", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17392", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17393", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17394", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17395", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17396", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17397", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17398", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17399", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17400", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17401", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17402", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17403", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17404", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17405", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17406", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17407", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17408", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17409", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17410", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17411", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17412", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17413", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17414", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17415", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17416", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17417", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17418", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17419", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17420", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17421", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17422", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17423", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17424", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17425", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17426", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17427", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17428", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17429", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17430", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17431", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17432", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17433", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17434", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17435", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17436", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17437", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17438", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17439", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17440", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17441", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17442", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17443", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17444", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17445", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17446", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17447", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17448", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17449", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17450", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17451", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17452", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17453", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17454", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17455", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17456", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17457", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17458", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17459", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17460", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17461", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17462", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17463", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17464", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17465", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17466", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17467", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17468", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17469", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17470", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17471", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17472", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17473", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17474", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17475", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17476", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17477", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17478", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17479", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17480", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17481", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17482", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17483", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17484", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17485", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17486", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17487", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17488", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17489", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17490", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17491", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17492", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17493", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17494", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17495", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17496", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17497", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17498", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17499", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17500", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17501", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17502", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17503", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17504", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17505", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17506", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17507", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17508", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17509", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17510", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17511", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17512", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17513", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17514", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17515", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17516", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17517", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17518", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17519", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17520", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17521", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17522", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17523", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17524", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17525", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17526", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17527", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17528", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17529", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17530", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17531", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17532", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17533", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17534", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17535", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17536", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17537", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17538", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17539", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17540", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17541", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17542", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17543", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17544", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17545", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17546", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17547", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17548", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17549", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17550", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17551", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17552", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17553", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17554", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17555", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17556", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17557", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17558", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17559", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17560", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17561", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17562", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17563", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17564", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17565", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17566", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17567", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17568", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17569", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17570", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17571", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17572", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17573", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17574", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17575", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17576", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17577", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17578", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17579", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17580", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17581", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17582", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17583", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17584", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17585", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17586", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17587", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17588", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17589", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17590", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17591", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17592", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17593", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17594", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17595", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17596", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17597", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17598", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17599", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17600", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17601", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17602", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17603", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17604", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17605", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17606", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17607", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17608", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17609", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17610", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17611", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17612", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17613", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17614", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17615", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17616", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17617", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17618", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17619", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17620", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17621", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17622", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17623", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17624", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17625", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17626", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17627", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17628", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17629", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17630", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17631", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17632", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17633", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17634", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17635", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17636", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17637", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17638", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17639", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17640", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17641", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17642", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17643", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17644", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17645", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17646", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17647", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17648", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17649", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17650", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17651", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17652", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17653", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17654", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17655", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17656", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17657", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17658", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17659", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17660", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17661", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17662", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17663", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17664", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17665", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17666", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17667", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17668", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17669", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17670", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17671", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17672", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17673", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17674", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17675", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17676", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17677", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17678", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17679", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17680", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17681", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17682", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17683", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17684", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17685", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17686", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17687", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17688", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17689", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17690", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17691", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17692", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17693", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17694", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17695", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17696", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17697", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17698", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17699", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17700", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17701", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17702", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17703", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17704", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17705", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17706", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17707", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17708", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17709", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17710", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17711", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17712", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17713", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17714", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17715", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17716", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17717", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17718", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17719", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17720", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17721", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17722", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17723", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17724", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17725", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17726", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17727", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17728", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17729", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17730", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17731", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17732", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17733", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17734", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17735", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17736", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17737", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17738", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17739", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17740", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17741", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17742", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17743", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17744", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17745", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17746", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17747", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17748", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17749", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17750", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17751", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17752", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17753", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17754", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17755", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17756", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17757", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17758", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17759", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17760", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17761", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17762", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17763", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17764", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17765", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17766", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17767", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17768", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17769", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17770", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17771", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17772", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17773", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17774", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17775", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17776", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17777", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17778", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17779", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17780", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17781", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17782", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17783", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17784", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17785", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17786", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17787", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17788", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17789", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17790", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17791", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17792", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17793", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17794", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17795", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17796", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17797", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17798", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17799", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17800", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17801", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17802", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17803", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17804", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17805", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17806", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17807", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17808", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17809", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17810", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17811", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17812", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17813", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17814", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17815", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17816", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17817", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17818", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17819", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17820", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17821", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17822", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17823", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17824", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17825", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_1_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U1154", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_1_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U1155", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_1_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U1156", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_1_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U1157", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_1_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U1158", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_1_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U1159", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_1_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U1160", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_1_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U1161", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_1_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U1162", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_1_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U1163", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_1_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U1164", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_1_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U1165", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_1_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U1166", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_1_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U1167", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_1_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U1168", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_1_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U1169", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_1_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U1170", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_1_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_1 {
		conv2d_64_padded_window_stream_1 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_1 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_1_Pipeline_inputs {
		conv2d_64_padded_window_stream_1 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_17251 {Type I LastRead 0 FirstWrite -1}
		weights_load_17252 {Type I LastRead 0 FirstWrite -1}
		weights_load_17253 {Type I LastRead 0 FirstWrite -1}
		weights_load_17254 {Type I LastRead 0 FirstWrite -1}
		weights_load_17255 {Type I LastRead 0 FirstWrite -1}
		weights_load_17256 {Type I LastRead 0 FirstWrite -1}
		weights_load_17257 {Type I LastRead 0 FirstWrite -1}
		weights_load_17258 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_1 {Type O LastRead -1 FirstWrite 16}
		weights_load_17259 {Type I LastRead 0 FirstWrite -1}
		weights_load_17260 {Type I LastRead 0 FirstWrite -1}
		weights_load_17261 {Type I LastRead 0 FirstWrite -1}
		weights_load_17262 {Type I LastRead 0 FirstWrite -1}
		weights_load_17263 {Type I LastRead 0 FirstWrite -1}
		weights_load_17264 {Type I LastRead 0 FirstWrite -1}
		weights_load_17265 {Type I LastRead 0 FirstWrite -1}
		weights_load_17266 {Type I LastRead 0 FirstWrite -1}
		weights_load_17267 {Type I LastRead 0 FirstWrite -1}
		weights_load_17268 {Type I LastRead 0 FirstWrite -1}
		weights_load_17269 {Type I LastRead 0 FirstWrite -1}
		weights_load_17270 {Type I LastRead 0 FirstWrite -1}
		weights_load_17271 {Type I LastRead 0 FirstWrite -1}
		weights_load_17272 {Type I LastRead 0 FirstWrite -1}
		weights_load_17273 {Type I LastRead 0 FirstWrite -1}
		weights_load_17274 {Type I LastRead 0 FirstWrite -1}
		weights_load_17275 {Type I LastRead 0 FirstWrite -1}
		weights_load_17276 {Type I LastRead 0 FirstWrite -1}
		weights_load_17277 {Type I LastRead 0 FirstWrite -1}
		weights_load_17278 {Type I LastRead 0 FirstWrite -1}
		weights_load_17279 {Type I LastRead 0 FirstWrite -1}
		weights_load_17280 {Type I LastRead 0 FirstWrite -1}
		weights_load_17281 {Type I LastRead 0 FirstWrite -1}
		weights_load_17282 {Type I LastRead 0 FirstWrite -1}
		weights_load_17283 {Type I LastRead 0 FirstWrite -1}
		weights_load_17284 {Type I LastRead 0 FirstWrite -1}
		weights_load_17285 {Type I LastRead 0 FirstWrite -1}
		weights_load_17286 {Type I LastRead 0 FirstWrite -1}
		weights_load_17287 {Type I LastRead 0 FirstWrite -1}
		weights_load_17288 {Type I LastRead 0 FirstWrite -1}
		weights_load_17289 {Type I LastRead 0 FirstWrite -1}
		weights_load_17290 {Type I LastRead 0 FirstWrite -1}
		weights_load_17291 {Type I LastRead 0 FirstWrite -1}
		weights_load_17292 {Type I LastRead 0 FirstWrite -1}
		weights_load_17293 {Type I LastRead 0 FirstWrite -1}
		weights_load_17294 {Type I LastRead 0 FirstWrite -1}
		weights_load_17295 {Type I LastRead 0 FirstWrite -1}
		weights_load_17296 {Type I LastRead 0 FirstWrite -1}
		weights_load_17297 {Type I LastRead 0 FirstWrite -1}
		weights_load_17298 {Type I LastRead 0 FirstWrite -1}
		weights_load_17299 {Type I LastRead 0 FirstWrite -1}
		weights_load_17300 {Type I LastRead 0 FirstWrite -1}
		weights_load_17301 {Type I LastRead 0 FirstWrite -1}
		weights_load_17302 {Type I LastRead 0 FirstWrite -1}
		weights_load_17303 {Type I LastRead 0 FirstWrite -1}
		weights_load_17304 {Type I LastRead 0 FirstWrite -1}
		weights_load_17305 {Type I LastRead 0 FirstWrite -1}
		weights_load_17306 {Type I LastRead 0 FirstWrite -1}
		weights_load_17307 {Type I LastRead 0 FirstWrite -1}
		weights_load_17308 {Type I LastRead 0 FirstWrite -1}
		weights_load_17309 {Type I LastRead 0 FirstWrite -1}
		weights_load_17310 {Type I LastRead 0 FirstWrite -1}
		weights_load_17311 {Type I LastRead 0 FirstWrite -1}
		weights_load_17312 {Type I LastRead 0 FirstWrite -1}
		weights_load_17313 {Type I LastRead 0 FirstWrite -1}
		weights_load_17314 {Type I LastRead 0 FirstWrite -1}
		weights_load_17315 {Type I LastRead 0 FirstWrite -1}
		weights_load_17316 {Type I LastRead 0 FirstWrite -1}
		weights_load_17317 {Type I LastRead 0 FirstWrite -1}
		weights_load_17318 {Type I LastRead 0 FirstWrite -1}
		weights_load_17319 {Type I LastRead 0 FirstWrite -1}
		weights_load_17320 {Type I LastRead 0 FirstWrite -1}
		weights_load_17321 {Type I LastRead 0 FirstWrite -1}
		weights_load_17322 {Type I LastRead 0 FirstWrite -1}
		weights_load_17323 {Type I LastRead 0 FirstWrite -1}
		weights_load_17324 {Type I LastRead 0 FirstWrite -1}
		weights_load_17325 {Type I LastRead 0 FirstWrite -1}
		weights_load_17326 {Type I LastRead 0 FirstWrite -1}
		weights_load_17327 {Type I LastRead 0 FirstWrite -1}
		weights_load_17328 {Type I LastRead 0 FirstWrite -1}
		weights_load_17329 {Type I LastRead 0 FirstWrite -1}
		weights_load_17330 {Type I LastRead 0 FirstWrite -1}
		weights_load_17331 {Type I LastRead 0 FirstWrite -1}
		weights_load_17332 {Type I LastRead 0 FirstWrite -1}
		weights_load_17333 {Type I LastRead 0 FirstWrite -1}
		weights_load_17334 {Type I LastRead 0 FirstWrite -1}
		weights_load_17335 {Type I LastRead 0 FirstWrite -1}
		weights_load_17336 {Type I LastRead 0 FirstWrite -1}
		weights_load_17337 {Type I LastRead 0 FirstWrite -1}
		weights_load_17338 {Type I LastRead 0 FirstWrite -1}
		weights_load_17339 {Type I LastRead 0 FirstWrite -1}
		weights_load_17340 {Type I LastRead 0 FirstWrite -1}
		weights_load_17341 {Type I LastRead 0 FirstWrite -1}
		weights_load_17342 {Type I LastRead 0 FirstWrite -1}
		weights_load_17343 {Type I LastRead 0 FirstWrite -1}
		weights_load_17344 {Type I LastRead 0 FirstWrite -1}
		weights_load_17345 {Type I LastRead 0 FirstWrite -1}
		weights_load_17346 {Type I LastRead 0 FirstWrite -1}
		weights_load_17347 {Type I LastRead 0 FirstWrite -1}
		weights_load_17348 {Type I LastRead 0 FirstWrite -1}
		weights_load_17349 {Type I LastRead 0 FirstWrite -1}
		weights_load_17350 {Type I LastRead 0 FirstWrite -1}
		weights_load_17351 {Type I LastRead 0 FirstWrite -1}
		weights_load_17352 {Type I LastRead 0 FirstWrite -1}
		weights_load_17353 {Type I LastRead 0 FirstWrite -1}
		weights_load_17354 {Type I LastRead 0 FirstWrite -1}
		weights_load_17355 {Type I LastRead 0 FirstWrite -1}
		weights_load_17356 {Type I LastRead 0 FirstWrite -1}
		weights_load_17357 {Type I LastRead 0 FirstWrite -1}
		weights_load_17358 {Type I LastRead 0 FirstWrite -1}
		weights_load_17359 {Type I LastRead 0 FirstWrite -1}
		weights_load_17360 {Type I LastRead 0 FirstWrite -1}
		weights_load_17361 {Type I LastRead 0 FirstWrite -1}
		weights_load_17362 {Type I LastRead 0 FirstWrite -1}
		weights_load_17363 {Type I LastRead 0 FirstWrite -1}
		weights_load_17364 {Type I LastRead 0 FirstWrite -1}
		weights_load_17365 {Type I LastRead 0 FirstWrite -1}
		weights_load_17366 {Type I LastRead 0 FirstWrite -1}
		weights_load_17367 {Type I LastRead 0 FirstWrite -1}
		weights_load_17368 {Type I LastRead 0 FirstWrite -1}
		weights_load_17369 {Type I LastRead 0 FirstWrite -1}
		weights_load_17370 {Type I LastRead 0 FirstWrite -1}
		weights_load_17371 {Type I LastRead 0 FirstWrite -1}
		weights_load_17372 {Type I LastRead 0 FirstWrite -1}
		weights_load_17373 {Type I LastRead 0 FirstWrite -1}
		weights_load_17374 {Type I LastRead 0 FirstWrite -1}
		weights_load_17375 {Type I LastRead 0 FirstWrite -1}
		weights_load_17376 {Type I LastRead 0 FirstWrite -1}
		weights_load_17377 {Type I LastRead 0 FirstWrite -1}
		weights_load_17378 {Type I LastRead 0 FirstWrite -1}
		weights_load_17379 {Type I LastRead 0 FirstWrite -1}
		weights_load_17380 {Type I LastRead 0 FirstWrite -1}
		weights_load_17381 {Type I LastRead 0 FirstWrite -1}
		weights_load_17382 {Type I LastRead 0 FirstWrite -1}
		weights_load_17383 {Type I LastRead 0 FirstWrite -1}
		weights_load_17384 {Type I LastRead 0 FirstWrite -1}
		weights_load_17385 {Type I LastRead 0 FirstWrite -1}
		weights_load_17386 {Type I LastRead 0 FirstWrite -1}
		weights_load_17387 {Type I LastRead 0 FirstWrite -1}
		weights_load_17388 {Type I LastRead 0 FirstWrite -1}
		weights_load_17389 {Type I LastRead 0 FirstWrite -1}
		weights_load_17390 {Type I LastRead 0 FirstWrite -1}
		weights_load_17391 {Type I LastRead 0 FirstWrite -1}
		weights_load_17392 {Type I LastRead 0 FirstWrite -1}
		weights_load_17393 {Type I LastRead 0 FirstWrite -1}
		weights_load_17394 {Type I LastRead 0 FirstWrite -1}
		weights_load_17395 {Type I LastRead 0 FirstWrite -1}
		weights_load_17396 {Type I LastRead 0 FirstWrite -1}
		weights_load_17397 {Type I LastRead 0 FirstWrite -1}
		weights_load_17398 {Type I LastRead 0 FirstWrite -1}
		weights_load_17399 {Type I LastRead 0 FirstWrite -1}
		weights_load_17400 {Type I LastRead 0 FirstWrite -1}
		weights_load_17401 {Type I LastRead 0 FirstWrite -1}
		weights_load_17402 {Type I LastRead 0 FirstWrite -1}
		weights_load_17403 {Type I LastRead 0 FirstWrite -1}
		weights_load_17404 {Type I LastRead 0 FirstWrite -1}
		weights_load_17405 {Type I LastRead 0 FirstWrite -1}
		weights_load_17406 {Type I LastRead 0 FirstWrite -1}
		weights_load_17407 {Type I LastRead 0 FirstWrite -1}
		weights_load_17408 {Type I LastRead 0 FirstWrite -1}
		weights_load_17409 {Type I LastRead 0 FirstWrite -1}
		weights_load_17410 {Type I LastRead 0 FirstWrite -1}
		weights_load_17411 {Type I LastRead 0 FirstWrite -1}
		weights_load_17412 {Type I LastRead 0 FirstWrite -1}
		weights_load_17413 {Type I LastRead 0 FirstWrite -1}
		weights_load_17414 {Type I LastRead 0 FirstWrite -1}
		weights_load_17415 {Type I LastRead 0 FirstWrite -1}
		weights_load_17416 {Type I LastRead 0 FirstWrite -1}
		weights_load_17417 {Type I LastRead 0 FirstWrite -1}
		weights_load_17418 {Type I LastRead 0 FirstWrite -1}
		weights_load_17419 {Type I LastRead 0 FirstWrite -1}
		weights_load_17420 {Type I LastRead 0 FirstWrite -1}
		weights_load_17421 {Type I LastRead 0 FirstWrite -1}
		weights_load_17422 {Type I LastRead 0 FirstWrite -1}
		weights_load_17423 {Type I LastRead 0 FirstWrite -1}
		weights_load_17424 {Type I LastRead 0 FirstWrite -1}
		weights_load_17425 {Type I LastRead 0 FirstWrite -1}
		weights_load_17426 {Type I LastRead 0 FirstWrite -1}
		weights_load_17427 {Type I LastRead 0 FirstWrite -1}
		weights_load_17428 {Type I LastRead 0 FirstWrite -1}
		weights_load_17429 {Type I LastRead 0 FirstWrite -1}
		weights_load_17430 {Type I LastRead 0 FirstWrite -1}
		weights_load_17431 {Type I LastRead 0 FirstWrite -1}
		weights_load_17432 {Type I LastRead 0 FirstWrite -1}
		weights_load_17433 {Type I LastRead 0 FirstWrite -1}
		weights_load_17434 {Type I LastRead 0 FirstWrite -1}
		weights_load_17435 {Type I LastRead 0 FirstWrite -1}
		weights_load_17436 {Type I LastRead 0 FirstWrite -1}
		weights_load_17437 {Type I LastRead 0 FirstWrite -1}
		weights_load_17438 {Type I LastRead 0 FirstWrite -1}
		weights_load_17439 {Type I LastRead 0 FirstWrite -1}
		weights_load_17440 {Type I LastRead 0 FirstWrite -1}
		weights_load_17441 {Type I LastRead 0 FirstWrite -1}
		weights_load_17442 {Type I LastRead 0 FirstWrite -1}
		weights_load_17443 {Type I LastRead 0 FirstWrite -1}
		weights_load_17444 {Type I LastRead 0 FirstWrite -1}
		weights_load_17445 {Type I LastRead 0 FirstWrite -1}
		weights_load_17446 {Type I LastRead 0 FirstWrite -1}
		weights_load_17447 {Type I LastRead 0 FirstWrite -1}
		weights_load_17448 {Type I LastRead 0 FirstWrite -1}
		weights_load_17449 {Type I LastRead 0 FirstWrite -1}
		weights_load_17450 {Type I LastRead 0 FirstWrite -1}
		weights_load_17451 {Type I LastRead 0 FirstWrite -1}
		weights_load_17452 {Type I LastRead 0 FirstWrite -1}
		weights_load_17453 {Type I LastRead 0 FirstWrite -1}
		weights_load_17454 {Type I LastRead 0 FirstWrite -1}
		weights_load_17455 {Type I LastRead 0 FirstWrite -1}
		weights_load_17456 {Type I LastRead 0 FirstWrite -1}
		weights_load_17457 {Type I LastRead 0 FirstWrite -1}
		weights_load_17458 {Type I LastRead 0 FirstWrite -1}
		weights_load_17459 {Type I LastRead 0 FirstWrite -1}
		weights_load_17460 {Type I LastRead 0 FirstWrite -1}
		weights_load_17461 {Type I LastRead 0 FirstWrite -1}
		weights_load_17462 {Type I LastRead 0 FirstWrite -1}
		weights_load_17463 {Type I LastRead 0 FirstWrite -1}
		weights_load_17464 {Type I LastRead 0 FirstWrite -1}
		weights_load_17465 {Type I LastRead 0 FirstWrite -1}
		weights_load_17466 {Type I LastRead 0 FirstWrite -1}
		weights_load_17467 {Type I LastRead 0 FirstWrite -1}
		weights_load_17468 {Type I LastRead 0 FirstWrite -1}
		weights_load_17469 {Type I LastRead 0 FirstWrite -1}
		weights_load_17470 {Type I LastRead 0 FirstWrite -1}
		weights_load_17471 {Type I LastRead 0 FirstWrite -1}
		weights_load_17472 {Type I LastRead 0 FirstWrite -1}
		weights_load_17473 {Type I LastRead 0 FirstWrite -1}
		weights_load_17474 {Type I LastRead 0 FirstWrite -1}
		weights_load_17475 {Type I LastRead 0 FirstWrite -1}
		weights_load_17476 {Type I LastRead 0 FirstWrite -1}
		weights_load_17477 {Type I LastRead 0 FirstWrite -1}
		weights_load_17478 {Type I LastRead 0 FirstWrite -1}
		weights_load_17479 {Type I LastRead 0 FirstWrite -1}
		weights_load_17480 {Type I LastRead 0 FirstWrite -1}
		weights_load_17481 {Type I LastRead 0 FirstWrite -1}
		weights_load_17482 {Type I LastRead 0 FirstWrite -1}
		weights_load_17483 {Type I LastRead 0 FirstWrite -1}
		weights_load_17484 {Type I LastRead 0 FirstWrite -1}
		weights_load_17485 {Type I LastRead 0 FirstWrite -1}
		weights_load_17486 {Type I LastRead 0 FirstWrite -1}
		weights_load_17487 {Type I LastRead 0 FirstWrite -1}
		weights_load_17488 {Type I LastRead 0 FirstWrite -1}
		weights_load_17489 {Type I LastRead 0 FirstWrite -1}
		weights_load_17490 {Type I LastRead 0 FirstWrite -1}
		weights_load_17491 {Type I LastRead 0 FirstWrite -1}
		weights_load_17492 {Type I LastRead 0 FirstWrite -1}
		weights_load_17493 {Type I LastRead 0 FirstWrite -1}
		weights_load_17494 {Type I LastRead 0 FirstWrite -1}
		weights_load_17495 {Type I LastRead 0 FirstWrite -1}
		weights_load_17496 {Type I LastRead 0 FirstWrite -1}
		weights_load_17497 {Type I LastRead 0 FirstWrite -1}
		weights_load_17498 {Type I LastRead 0 FirstWrite -1}
		weights_load_17499 {Type I LastRead 0 FirstWrite -1}
		weights_load_17500 {Type I LastRead 0 FirstWrite -1}
		weights_load_17501 {Type I LastRead 0 FirstWrite -1}
		weights_load_17502 {Type I LastRead 0 FirstWrite -1}
		weights_load_17503 {Type I LastRead 0 FirstWrite -1}
		weights_load_17504 {Type I LastRead 0 FirstWrite -1}
		weights_load_17505 {Type I LastRead 0 FirstWrite -1}
		weights_load_17506 {Type I LastRead 0 FirstWrite -1}
		weights_load_17507 {Type I LastRead 0 FirstWrite -1}
		weights_load_17508 {Type I LastRead 0 FirstWrite -1}
		weights_load_17509 {Type I LastRead 0 FirstWrite -1}
		weights_load_17510 {Type I LastRead 0 FirstWrite -1}
		weights_load_17511 {Type I LastRead 0 FirstWrite -1}
		weights_load_17512 {Type I LastRead 0 FirstWrite -1}
		weights_load_17513 {Type I LastRead 0 FirstWrite -1}
		weights_load_17514 {Type I LastRead 0 FirstWrite -1}
		weights_load_17515 {Type I LastRead 0 FirstWrite -1}
		weights_load_17516 {Type I LastRead 0 FirstWrite -1}
		weights_load_17517 {Type I LastRead 0 FirstWrite -1}
		weights_load_17518 {Type I LastRead 0 FirstWrite -1}
		weights_load_17519 {Type I LastRead 0 FirstWrite -1}
		weights_load_17520 {Type I LastRead 0 FirstWrite -1}
		weights_load_17521 {Type I LastRead 0 FirstWrite -1}
		weights_load_17522 {Type I LastRead 0 FirstWrite -1}
		weights_load_17523 {Type I LastRead 0 FirstWrite -1}
		weights_load_17524 {Type I LastRead 0 FirstWrite -1}
		weights_load_17525 {Type I LastRead 0 FirstWrite -1}
		weights_load_17526 {Type I LastRead 0 FirstWrite -1}
		weights_load_17527 {Type I LastRead 0 FirstWrite -1}
		weights_load_17528 {Type I LastRead 0 FirstWrite -1}
		weights_load_17529 {Type I LastRead 0 FirstWrite -1}
		weights_load_17530 {Type I LastRead 0 FirstWrite -1}
		weights_load_17531 {Type I LastRead 0 FirstWrite -1}
		weights_load_17532 {Type I LastRead 0 FirstWrite -1}
		weights_load_17533 {Type I LastRead 0 FirstWrite -1}
		weights_load_17534 {Type I LastRead 0 FirstWrite -1}
		weights_load_17535 {Type I LastRead 0 FirstWrite -1}
		weights_load_17536 {Type I LastRead 0 FirstWrite -1}
		weights_load_17537 {Type I LastRead 0 FirstWrite -1}
		weights_load_17538 {Type I LastRead 0 FirstWrite -1}
		weights_load_17539 {Type I LastRead 0 FirstWrite -1}
		weights_load_17540 {Type I LastRead 0 FirstWrite -1}
		weights_load_17541 {Type I LastRead 0 FirstWrite -1}
		weights_load_17542 {Type I LastRead 0 FirstWrite -1}
		weights_load_17543 {Type I LastRead 0 FirstWrite -1}
		weights_load_17544 {Type I LastRead 0 FirstWrite -1}
		weights_load_17545 {Type I LastRead 0 FirstWrite -1}
		weights_load_17546 {Type I LastRead 0 FirstWrite -1}
		weights_load_17547 {Type I LastRead 0 FirstWrite -1}
		weights_load_17548 {Type I LastRead 0 FirstWrite -1}
		weights_load_17549 {Type I LastRead 0 FirstWrite -1}
		weights_load_17550 {Type I LastRead 0 FirstWrite -1}
		weights_load_17551 {Type I LastRead 0 FirstWrite -1}
		weights_load_17552 {Type I LastRead 0 FirstWrite -1}
		weights_load_17553 {Type I LastRead 0 FirstWrite -1}
		weights_load_17554 {Type I LastRead 0 FirstWrite -1}
		weights_load_17555 {Type I LastRead 0 FirstWrite -1}
		weights_load_17556 {Type I LastRead 0 FirstWrite -1}
		weights_load_17557 {Type I LastRead 0 FirstWrite -1}
		weights_load_17558 {Type I LastRead 0 FirstWrite -1}
		weights_load_17559 {Type I LastRead 0 FirstWrite -1}
		weights_load_17560 {Type I LastRead 0 FirstWrite -1}
		weights_load_17561 {Type I LastRead 0 FirstWrite -1}
		weights_load_17562 {Type I LastRead 0 FirstWrite -1}
		weights_load_17563 {Type I LastRead 0 FirstWrite -1}
		weights_load_17564 {Type I LastRead 0 FirstWrite -1}
		weights_load_17565 {Type I LastRead 0 FirstWrite -1}
		weights_load_17566 {Type I LastRead 0 FirstWrite -1}
		weights_load_17567 {Type I LastRead 0 FirstWrite -1}
		weights_load_17568 {Type I LastRead 0 FirstWrite -1}
		weights_load_17569 {Type I LastRead 0 FirstWrite -1}
		weights_load_17570 {Type I LastRead 0 FirstWrite -1}
		weights_load_17571 {Type I LastRead 0 FirstWrite -1}
		weights_load_17572 {Type I LastRead 0 FirstWrite -1}
		weights_load_17573 {Type I LastRead 0 FirstWrite -1}
		weights_load_17574 {Type I LastRead 0 FirstWrite -1}
		weights_load_17575 {Type I LastRead 0 FirstWrite -1}
		weights_load_17576 {Type I LastRead 0 FirstWrite -1}
		weights_load_17577 {Type I LastRead 0 FirstWrite -1}
		weights_load_17578 {Type I LastRead 0 FirstWrite -1}
		weights_load_17579 {Type I LastRead 0 FirstWrite -1}
		weights_load_17580 {Type I LastRead 0 FirstWrite -1}
		weights_load_17581 {Type I LastRead 0 FirstWrite -1}
		weights_load_17582 {Type I LastRead 0 FirstWrite -1}
		weights_load_17583 {Type I LastRead 0 FirstWrite -1}
		weights_load_17584 {Type I LastRead 0 FirstWrite -1}
		weights_load_17585 {Type I LastRead 0 FirstWrite -1}
		weights_load_17586 {Type I LastRead 0 FirstWrite -1}
		weights_load_17587 {Type I LastRead 0 FirstWrite -1}
		weights_load_17588 {Type I LastRead 0 FirstWrite -1}
		weights_load_17589 {Type I LastRead 0 FirstWrite -1}
		weights_load_17590 {Type I LastRead 0 FirstWrite -1}
		weights_load_17591 {Type I LastRead 0 FirstWrite -1}
		weights_load_17592 {Type I LastRead 0 FirstWrite -1}
		weights_load_17593 {Type I LastRead 0 FirstWrite -1}
		weights_load_17594 {Type I LastRead 0 FirstWrite -1}
		weights_load_17595 {Type I LastRead 0 FirstWrite -1}
		weights_load_17596 {Type I LastRead 0 FirstWrite -1}
		weights_load_17597 {Type I LastRead 0 FirstWrite -1}
		weights_load_17598 {Type I LastRead 0 FirstWrite -1}
		weights_load_17599 {Type I LastRead 0 FirstWrite -1}
		weights_load_17600 {Type I LastRead 0 FirstWrite -1}
		weights_load_17601 {Type I LastRead 0 FirstWrite -1}
		weights_load_17602 {Type I LastRead 0 FirstWrite -1}
		weights_load_17603 {Type I LastRead 0 FirstWrite -1}
		weights_load_17604 {Type I LastRead 0 FirstWrite -1}
		weights_load_17605 {Type I LastRead 0 FirstWrite -1}
		weights_load_17606 {Type I LastRead 0 FirstWrite -1}
		weights_load_17607 {Type I LastRead 0 FirstWrite -1}
		weights_load_17608 {Type I LastRead 0 FirstWrite -1}
		weights_load_17609 {Type I LastRead 0 FirstWrite -1}
		weights_load_17610 {Type I LastRead 0 FirstWrite -1}
		weights_load_17611 {Type I LastRead 0 FirstWrite -1}
		weights_load_17612 {Type I LastRead 0 FirstWrite -1}
		weights_load_17613 {Type I LastRead 0 FirstWrite -1}
		weights_load_17614 {Type I LastRead 0 FirstWrite -1}
		weights_load_17615 {Type I LastRead 0 FirstWrite -1}
		weights_load_17616 {Type I LastRead 0 FirstWrite -1}
		weights_load_17617 {Type I LastRead 0 FirstWrite -1}
		weights_load_17618 {Type I LastRead 0 FirstWrite -1}
		weights_load_17619 {Type I LastRead 0 FirstWrite -1}
		weights_load_17620 {Type I LastRead 0 FirstWrite -1}
		weights_load_17621 {Type I LastRead 0 FirstWrite -1}
		weights_load_17622 {Type I LastRead 0 FirstWrite -1}
		weights_load_17623 {Type I LastRead 0 FirstWrite -1}
		weights_load_17624 {Type I LastRead 0 FirstWrite -1}
		weights_load_17625 {Type I LastRead 0 FirstWrite -1}
		weights_load_17626 {Type I LastRead 0 FirstWrite -1}
		weights_load_17627 {Type I LastRead 0 FirstWrite -1}
		weights_load_17628 {Type I LastRead 0 FirstWrite -1}
		weights_load_17629 {Type I LastRead 0 FirstWrite -1}
		weights_load_17630 {Type I LastRead 0 FirstWrite -1}
		weights_load_17631 {Type I LastRead 0 FirstWrite -1}
		weights_load_17632 {Type I LastRead 0 FirstWrite -1}
		weights_load_17633 {Type I LastRead 0 FirstWrite -1}
		weights_load_17634 {Type I LastRead 0 FirstWrite -1}
		weights_load_17635 {Type I LastRead 0 FirstWrite -1}
		weights_load_17636 {Type I LastRead 0 FirstWrite -1}
		weights_load_17637 {Type I LastRead 0 FirstWrite -1}
		weights_load_17638 {Type I LastRead 0 FirstWrite -1}
		weights_load_17639 {Type I LastRead 0 FirstWrite -1}
		weights_load_17640 {Type I LastRead 0 FirstWrite -1}
		weights_load_17641 {Type I LastRead 0 FirstWrite -1}
		weights_load_17642 {Type I LastRead 0 FirstWrite -1}
		weights_load_17643 {Type I LastRead 0 FirstWrite -1}
		weights_load_17644 {Type I LastRead 0 FirstWrite -1}
		weights_load_17645 {Type I LastRead 0 FirstWrite -1}
		weights_load_17646 {Type I LastRead 0 FirstWrite -1}
		weights_load_17647 {Type I LastRead 0 FirstWrite -1}
		weights_load_17648 {Type I LastRead 0 FirstWrite -1}
		weights_load_17649 {Type I LastRead 0 FirstWrite -1}
		weights_load_17650 {Type I LastRead 0 FirstWrite -1}
		weights_load_17651 {Type I LastRead 0 FirstWrite -1}
		weights_load_17652 {Type I LastRead 0 FirstWrite -1}
		weights_load_17653 {Type I LastRead 0 FirstWrite -1}
		weights_load_17654 {Type I LastRead 0 FirstWrite -1}
		weights_load_17655 {Type I LastRead 0 FirstWrite -1}
		weights_load_17656 {Type I LastRead 0 FirstWrite -1}
		weights_load_17657 {Type I LastRead 0 FirstWrite -1}
		weights_load_17658 {Type I LastRead 0 FirstWrite -1}
		weights_load_17659 {Type I LastRead 0 FirstWrite -1}
		weights_load_17660 {Type I LastRead 0 FirstWrite -1}
		weights_load_17661 {Type I LastRead 0 FirstWrite -1}
		weights_load_17662 {Type I LastRead 0 FirstWrite -1}
		weights_load_17663 {Type I LastRead 0 FirstWrite -1}
		weights_load_17664 {Type I LastRead 0 FirstWrite -1}
		weights_load_17665 {Type I LastRead 0 FirstWrite -1}
		weights_load_17666 {Type I LastRead 0 FirstWrite -1}
		weights_load_17667 {Type I LastRead 0 FirstWrite -1}
		weights_load_17668 {Type I LastRead 0 FirstWrite -1}
		weights_load_17669 {Type I LastRead 0 FirstWrite -1}
		weights_load_17670 {Type I LastRead 0 FirstWrite -1}
		weights_load_17671 {Type I LastRead 0 FirstWrite -1}
		weights_load_17672 {Type I LastRead 0 FirstWrite -1}
		weights_load_17673 {Type I LastRead 0 FirstWrite -1}
		weights_load_17674 {Type I LastRead 0 FirstWrite -1}
		weights_load_17675 {Type I LastRead 0 FirstWrite -1}
		weights_load_17676 {Type I LastRead 0 FirstWrite -1}
		weights_load_17677 {Type I LastRead 0 FirstWrite -1}
		weights_load_17678 {Type I LastRead 0 FirstWrite -1}
		weights_load_17679 {Type I LastRead 0 FirstWrite -1}
		weights_load_17680 {Type I LastRead 0 FirstWrite -1}
		weights_load_17681 {Type I LastRead 0 FirstWrite -1}
		weights_load_17682 {Type I LastRead 0 FirstWrite -1}
		weights_load_17683 {Type I LastRead 0 FirstWrite -1}
		weights_load_17684 {Type I LastRead 0 FirstWrite -1}
		weights_load_17685 {Type I LastRead 0 FirstWrite -1}
		weights_load_17686 {Type I LastRead 0 FirstWrite -1}
		weights_load_17687 {Type I LastRead 0 FirstWrite -1}
		weights_load_17688 {Type I LastRead 0 FirstWrite -1}
		weights_load_17689 {Type I LastRead 0 FirstWrite -1}
		weights_load_17690 {Type I LastRead 0 FirstWrite -1}
		weights_load_17691 {Type I LastRead 0 FirstWrite -1}
		weights_load_17692 {Type I LastRead 0 FirstWrite -1}
		weights_load_17693 {Type I LastRead 0 FirstWrite -1}
		weights_load_17694 {Type I LastRead 0 FirstWrite -1}
		weights_load_17695 {Type I LastRead 0 FirstWrite -1}
		weights_load_17696 {Type I LastRead 0 FirstWrite -1}
		weights_load_17697 {Type I LastRead 0 FirstWrite -1}
		weights_load_17698 {Type I LastRead 0 FirstWrite -1}
		weights_load_17699 {Type I LastRead 0 FirstWrite -1}
		weights_load_17700 {Type I LastRead 0 FirstWrite -1}
		weights_load_17701 {Type I LastRead 0 FirstWrite -1}
		weights_load_17702 {Type I LastRead 0 FirstWrite -1}
		weights_load_17703 {Type I LastRead 0 FirstWrite -1}
		weights_load_17704 {Type I LastRead 0 FirstWrite -1}
		weights_load_17705 {Type I LastRead 0 FirstWrite -1}
		weights_load_17706 {Type I LastRead 0 FirstWrite -1}
		weights_load_17707 {Type I LastRead 0 FirstWrite -1}
		weights_load_17708 {Type I LastRead 0 FirstWrite -1}
		weights_load_17709 {Type I LastRead 0 FirstWrite -1}
		weights_load_17710 {Type I LastRead 0 FirstWrite -1}
		weights_load_17711 {Type I LastRead 0 FirstWrite -1}
		weights_load_17712 {Type I LastRead 0 FirstWrite -1}
		weights_load_17713 {Type I LastRead 0 FirstWrite -1}
		weights_load_17714 {Type I LastRead 0 FirstWrite -1}
		weights_load_17715 {Type I LastRead 0 FirstWrite -1}
		weights_load_17716 {Type I LastRead 0 FirstWrite -1}
		weights_load_17717 {Type I LastRead 0 FirstWrite -1}
		weights_load_17718 {Type I LastRead 0 FirstWrite -1}
		weights_load_17719 {Type I LastRead 0 FirstWrite -1}
		weights_load_17720 {Type I LastRead 0 FirstWrite -1}
		weights_load_17721 {Type I LastRead 0 FirstWrite -1}
		weights_load_17722 {Type I LastRead 0 FirstWrite -1}
		weights_load_17723 {Type I LastRead 0 FirstWrite -1}
		weights_load_17724 {Type I LastRead 0 FirstWrite -1}
		weights_load_17725 {Type I LastRead 0 FirstWrite -1}
		weights_load_17726 {Type I LastRead 0 FirstWrite -1}
		weights_load_17727 {Type I LastRead 0 FirstWrite -1}
		weights_load_17728 {Type I LastRead 0 FirstWrite -1}
		weights_load_17729 {Type I LastRead 0 FirstWrite -1}
		weights_load_17730 {Type I LastRead 0 FirstWrite -1}
		weights_load_17731 {Type I LastRead 0 FirstWrite -1}
		weights_load_17732 {Type I LastRead 0 FirstWrite -1}
		weights_load_17733 {Type I LastRead 0 FirstWrite -1}
		weights_load_17734 {Type I LastRead 0 FirstWrite -1}
		weights_load_17735 {Type I LastRead 0 FirstWrite -1}
		weights_load_17736 {Type I LastRead 0 FirstWrite -1}
		weights_load_17737 {Type I LastRead 0 FirstWrite -1}
		weights_load_17738 {Type I LastRead 0 FirstWrite -1}
		weights_load_17739 {Type I LastRead 0 FirstWrite -1}
		weights_load_17740 {Type I LastRead 0 FirstWrite -1}
		weights_load_17741 {Type I LastRead 0 FirstWrite -1}
		weights_load_17742 {Type I LastRead 0 FirstWrite -1}
		weights_load_17743 {Type I LastRead 0 FirstWrite -1}
		weights_load_17744 {Type I LastRead 0 FirstWrite -1}
		weights_load_17745 {Type I LastRead 0 FirstWrite -1}
		weights_load_17746 {Type I LastRead 0 FirstWrite -1}
		weights_load_17747 {Type I LastRead 0 FirstWrite -1}
		weights_load_17748 {Type I LastRead 0 FirstWrite -1}
		weights_load_17749 {Type I LastRead 0 FirstWrite -1}
		weights_load_17750 {Type I LastRead 0 FirstWrite -1}
		weights_load_17751 {Type I LastRead 0 FirstWrite -1}
		weights_load_17752 {Type I LastRead 0 FirstWrite -1}
		weights_load_17753 {Type I LastRead 0 FirstWrite -1}
		weights_load_17754 {Type I LastRead 0 FirstWrite -1}
		weights_load_17755 {Type I LastRead 0 FirstWrite -1}
		weights_load_17756 {Type I LastRead 0 FirstWrite -1}
		weights_load_17757 {Type I LastRead 0 FirstWrite -1}
		weights_load_17758 {Type I LastRead 0 FirstWrite -1}
		weights_load_17759 {Type I LastRead 0 FirstWrite -1}
		weights_load_17760 {Type I LastRead 0 FirstWrite -1}
		weights_load_17761 {Type I LastRead 0 FirstWrite -1}
		weights_load_17762 {Type I LastRead 0 FirstWrite -1}
		weights_load_17763 {Type I LastRead 0 FirstWrite -1}
		weights_load_17764 {Type I LastRead 0 FirstWrite -1}
		weights_load_17765 {Type I LastRead 0 FirstWrite -1}
		weights_load_17766 {Type I LastRead 0 FirstWrite -1}
		weights_load_17767 {Type I LastRead 0 FirstWrite -1}
		weights_load_17768 {Type I LastRead 0 FirstWrite -1}
		weights_load_17769 {Type I LastRead 0 FirstWrite -1}
		weights_load_17770 {Type I LastRead 0 FirstWrite -1}
		weights_load_17771 {Type I LastRead 0 FirstWrite -1}
		weights_load_17772 {Type I LastRead 0 FirstWrite -1}
		weights_load_17773 {Type I LastRead 0 FirstWrite -1}
		weights_load_17774 {Type I LastRead 0 FirstWrite -1}
		weights_load_17775 {Type I LastRead 0 FirstWrite -1}
		weights_load_17776 {Type I LastRead 0 FirstWrite -1}
		weights_load_17777 {Type I LastRead 0 FirstWrite -1}
		weights_load_17778 {Type I LastRead 0 FirstWrite -1}
		weights_load_17779 {Type I LastRead 0 FirstWrite -1}
		weights_load_17780 {Type I LastRead 0 FirstWrite -1}
		weights_load_17781 {Type I LastRead 0 FirstWrite -1}
		weights_load_17782 {Type I LastRead 0 FirstWrite -1}
		weights_load_17783 {Type I LastRead 0 FirstWrite -1}
		weights_load_17784 {Type I LastRead 0 FirstWrite -1}
		weights_load_17785 {Type I LastRead 0 FirstWrite -1}
		weights_load_17786 {Type I LastRead 0 FirstWrite -1}
		weights_load_17787 {Type I LastRead 0 FirstWrite -1}
		weights_load_17788 {Type I LastRead 0 FirstWrite -1}
		weights_load_17789 {Type I LastRead 0 FirstWrite -1}
		weights_load_17790 {Type I LastRead 0 FirstWrite -1}
		weights_load_17791 {Type I LastRead 0 FirstWrite -1}
		weights_load_17792 {Type I LastRead 0 FirstWrite -1}
		weights_load_17793 {Type I LastRead 0 FirstWrite -1}
		weights_load_17794 {Type I LastRead 0 FirstWrite -1}
		weights_load_17795 {Type I LastRead 0 FirstWrite -1}
		weights_load_17796 {Type I LastRead 0 FirstWrite -1}
		weights_load_17797 {Type I LastRead 0 FirstWrite -1}
		weights_load_17798 {Type I LastRead 0 FirstWrite -1}
		weights_load_17799 {Type I LastRead 0 FirstWrite -1}
		weights_load_17800 {Type I LastRead 0 FirstWrite -1}
		weights_load_17801 {Type I LastRead 0 FirstWrite -1}
		weights_load_17802 {Type I LastRead 0 FirstWrite -1}
		weights_load_17803 {Type I LastRead 0 FirstWrite -1}
		weights_load_17804 {Type I LastRead 0 FirstWrite -1}
		weights_load_17805 {Type I LastRead 0 FirstWrite -1}
		weights_load_17806 {Type I LastRead 0 FirstWrite -1}
		weights_load_17807 {Type I LastRead 0 FirstWrite -1}
		weights_load_17808 {Type I LastRead 0 FirstWrite -1}
		weights_load_17809 {Type I LastRead 0 FirstWrite -1}
		weights_load_17810 {Type I LastRead 0 FirstWrite -1}
		weights_load_17811 {Type I LastRead 0 FirstWrite -1}
		weights_load_17812 {Type I LastRead 0 FirstWrite -1}
		weights_load_17813 {Type I LastRead 0 FirstWrite -1}
		weights_load_17814 {Type I LastRead 0 FirstWrite -1}
		weights_load_17815 {Type I LastRead 0 FirstWrite -1}
		weights_load_17816 {Type I LastRead 0 FirstWrite -1}
		weights_load_17817 {Type I LastRead 0 FirstWrite -1}
		weights_load_17818 {Type I LastRead 0 FirstWrite -1}
		weights_load_17819 {Type I LastRead 0 FirstWrite -1}
		weights_load_17820 {Type I LastRead 0 FirstWrite -1}
		weights_load_17821 {Type I LastRead 0 FirstWrite -1}
		weights_load_17822 {Type I LastRead 0 FirstWrite -1}
		weights_load_17823 {Type I LastRead 0 FirstWrite -1}
		weights_load_17824 {Type I LastRead 0 FirstWrite -1}
		weights_load_17825 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_1 { ap_fifo {  { conv2d_64_padded_window_stream_1_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_1_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_1_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_1_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_1_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_1 { ap_fifo {  { in_channel_map_stream_1_din fifo_port_we 1 32 }  { in_channel_map_stream_1_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_1_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_1_full_n fifo_status 0 1 }  { in_channel_map_stream_1_write fifo_data 1 1 } } }
}
