set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_27
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.27}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_27 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_27 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_27", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_27", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_27_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_27_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_27_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_27_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_27_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_27_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_27_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_27_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_27_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_27_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_27_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_27", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_27_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_27", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_27_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_27", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_27_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_27", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_27_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_27", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_27_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_27", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_27_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_27", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_27_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_27", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_27_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_27", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_27_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_27", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_27",
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
			{"Name" : "conv2d_64_padded_window_stream_27", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_27_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_27", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_27", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_27_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_27", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_27_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_27_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_27", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_27_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6326", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6327", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6328", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6329", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6330", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6331", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6332", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6333", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_27", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_27_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_6334", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6335", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6336", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6337", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6338", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6339", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6340", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6341", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6342", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6343", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6344", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6345", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6346", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6347", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6348", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6349", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6350", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6351", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6352", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6353", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6354", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6355", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6356", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6357", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6358", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6359", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6360", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6361", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6362", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6363", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6364", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6365", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6366", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6367", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6368", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6369", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6370", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6371", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6372", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6373", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6374", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6375", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6376", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6377", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6378", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6379", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6380", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6381", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6382", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6383", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6384", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6385", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6386", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6387", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6388", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6389", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6390", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6391", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6392", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6393", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6394", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6395", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6396", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6397", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6398", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6399", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6400", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6401", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6402", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6403", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6404", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6405", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6406", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6407", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6408", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6409", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6410", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6411", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6412", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6413", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6414", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6415", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6416", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6417", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6418", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6419", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6420", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6421", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6422", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6423", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6424", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6425", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6426", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6427", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6428", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6429", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6430", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6431", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6432", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6433", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6434", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6435", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6436", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6437", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6438", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6439", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6440", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6441", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6442", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6443", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6444", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6445", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6446", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6447", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6448", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6449", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6450", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6451", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6452", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6453", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6454", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6455", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6456", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6457", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6458", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6459", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6460", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6461", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6462", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6463", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6464", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6465", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6466", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6467", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6468", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6469", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6470", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6471", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6472", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6473", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6474", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6475", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6476", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6477", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6478", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6479", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6480", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6481", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6482", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6483", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6484", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6485", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6486", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6487", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6488", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6489", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6490", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6491", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6492", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6493", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6494", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6495", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6496", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6497", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6498", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6499", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6500", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6501", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6502", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6503", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6504", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6505", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6506", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6507", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6508", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6509", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6510", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6511", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6512", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6513", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6514", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6515", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6516", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6517", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6518", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6519", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6520", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6521", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6522", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6523", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6524", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6525", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6526", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6527", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6528", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6529", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6530", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6531", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6532", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6533", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6534", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6535", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6536", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6537", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6538", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6539", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6540", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6541", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6542", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6543", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6544", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6545", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6546", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6547", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6548", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6549", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6550", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6551", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6552", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6553", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6554", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6555", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6556", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6557", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6558", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6559", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6560", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6561", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6562", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6563", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6564", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6565", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6566", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6567", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6568", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6569", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6570", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6571", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6572", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6573", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6574", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6575", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6576", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6577", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6578", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6579", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6580", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6581", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6582", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6583", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6584", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6585", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6586", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6587", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6588", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6589", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6590", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6591", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6592", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6593", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6594", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6595", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6596", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6597", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6598", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6599", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6600", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6601", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6602", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6603", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6604", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6605", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6606", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6607", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6608", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6609", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6610", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6611", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6612", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6613", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6614", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6615", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6616", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6617", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6618", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6619", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6620", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6621", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6622", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6623", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6624", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6625", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6626", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6627", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6628", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6629", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6630", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6631", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6632", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6633", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6634", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6635", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6636", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6637", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6638", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6639", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6640", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6641", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6642", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6643", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6644", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6645", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6646", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6647", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6648", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6649", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6650", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6651", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6652", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6653", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6654", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6655", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6656", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6657", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6658", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6659", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6660", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6661", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6662", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6663", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6664", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6665", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6666", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6667", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6668", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6669", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6670", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6671", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6672", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6673", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6674", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6675", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6676", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6677", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6678", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6679", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6680", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6681", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6682", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6683", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6684", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6685", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6686", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6687", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6688", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6689", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6690", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6691", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6692", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6693", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6694", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6695", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6696", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6697", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6698", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6699", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6700", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6701", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6702", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6703", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6704", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6705", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6706", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6707", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6708", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6709", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6710", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6711", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6712", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6713", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6714", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6715", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6716", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6717", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6718", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6719", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6720", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6721", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6722", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6723", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6724", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6725", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6726", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6727", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6728", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6729", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6730", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6731", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6732", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6733", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6734", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6735", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6736", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6737", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6738", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6739", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6740", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6741", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6742", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6743", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6744", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6745", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6746", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6747", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6748", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6749", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6750", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6751", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6752", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6753", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6754", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6755", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6756", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6757", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6758", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6759", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6760", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6761", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6762", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6763", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6764", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6765", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6766", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6767", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6768", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6769", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6770", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6771", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6772", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6773", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6774", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6775", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6776", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6777", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6778", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6779", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6780", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6781", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6782", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6783", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6784", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6785", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6786", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6787", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6788", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6789", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6790", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6791", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6792", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6793", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6794", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6795", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6796", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6797", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6798", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6799", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6800", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6801", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6802", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6803", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6804", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6805", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6806", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6807", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6808", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6809", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6810", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6811", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6812", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6813", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6814", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6815", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6816", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6817", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6818", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6819", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6820", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6821", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6822", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6823", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6824", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6825", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6826", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6827", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6828", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6829", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6830", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6831", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6832", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6833", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6834", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6835", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6836", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6837", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6838", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6839", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6840", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6841", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6842", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6843", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6844", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6845", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6846", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6847", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6848", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6849", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6850", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6851", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6852", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6853", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6854", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6855", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6856", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6857", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6858", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6859", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6860", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6861", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6862", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6863", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6864", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6865", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6866", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6867", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6868", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6869", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6870", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6871", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6872", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6873", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6874", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6875", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6876", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6877", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6878", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6879", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6880", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6881", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6882", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6883", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6884", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6885", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6886", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6887", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6888", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6889", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6890", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6891", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6892", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6893", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6894", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6895", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6896", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6897", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6898", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6899", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6900", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_27_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U16702", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_27_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U16703", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_27_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U16704", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_27_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U16705", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_27_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U16706", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_27_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U16707", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_27_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U16708", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_27_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U16709", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_27_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U16710", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_27_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U16711", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_27_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U16712", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_27_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U16713", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_27_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U16714", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_27_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U16715", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_27_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U16716", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_27_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U16717", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_27_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U16718", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_27_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_27 {
		conv2d_64_padded_window_stream_27 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_27 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_27_Pipeline_inputs {
		conv2d_64_padded_window_stream_27 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_6326 {Type I LastRead 0 FirstWrite -1}
		weights_load_6327 {Type I LastRead 0 FirstWrite -1}
		weights_load_6328 {Type I LastRead 0 FirstWrite -1}
		weights_load_6329 {Type I LastRead 0 FirstWrite -1}
		weights_load_6330 {Type I LastRead 0 FirstWrite -1}
		weights_load_6331 {Type I LastRead 0 FirstWrite -1}
		weights_load_6332 {Type I LastRead 0 FirstWrite -1}
		weights_load_6333 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_27 {Type O LastRead -1 FirstWrite 16}
		weights_load_6334 {Type I LastRead 0 FirstWrite -1}
		weights_load_6335 {Type I LastRead 0 FirstWrite -1}
		weights_load_6336 {Type I LastRead 0 FirstWrite -1}
		weights_load_6337 {Type I LastRead 0 FirstWrite -1}
		weights_load_6338 {Type I LastRead 0 FirstWrite -1}
		weights_load_6339 {Type I LastRead 0 FirstWrite -1}
		weights_load_6340 {Type I LastRead 0 FirstWrite -1}
		weights_load_6341 {Type I LastRead 0 FirstWrite -1}
		weights_load_6342 {Type I LastRead 0 FirstWrite -1}
		weights_load_6343 {Type I LastRead 0 FirstWrite -1}
		weights_load_6344 {Type I LastRead 0 FirstWrite -1}
		weights_load_6345 {Type I LastRead 0 FirstWrite -1}
		weights_load_6346 {Type I LastRead 0 FirstWrite -1}
		weights_load_6347 {Type I LastRead 0 FirstWrite -1}
		weights_load_6348 {Type I LastRead 0 FirstWrite -1}
		weights_load_6349 {Type I LastRead 0 FirstWrite -1}
		weights_load_6350 {Type I LastRead 0 FirstWrite -1}
		weights_load_6351 {Type I LastRead 0 FirstWrite -1}
		weights_load_6352 {Type I LastRead 0 FirstWrite -1}
		weights_load_6353 {Type I LastRead 0 FirstWrite -1}
		weights_load_6354 {Type I LastRead 0 FirstWrite -1}
		weights_load_6355 {Type I LastRead 0 FirstWrite -1}
		weights_load_6356 {Type I LastRead 0 FirstWrite -1}
		weights_load_6357 {Type I LastRead 0 FirstWrite -1}
		weights_load_6358 {Type I LastRead 0 FirstWrite -1}
		weights_load_6359 {Type I LastRead 0 FirstWrite -1}
		weights_load_6360 {Type I LastRead 0 FirstWrite -1}
		weights_load_6361 {Type I LastRead 0 FirstWrite -1}
		weights_load_6362 {Type I LastRead 0 FirstWrite -1}
		weights_load_6363 {Type I LastRead 0 FirstWrite -1}
		weights_load_6364 {Type I LastRead 0 FirstWrite -1}
		weights_load_6365 {Type I LastRead 0 FirstWrite -1}
		weights_load_6366 {Type I LastRead 0 FirstWrite -1}
		weights_load_6367 {Type I LastRead 0 FirstWrite -1}
		weights_load_6368 {Type I LastRead 0 FirstWrite -1}
		weights_load_6369 {Type I LastRead 0 FirstWrite -1}
		weights_load_6370 {Type I LastRead 0 FirstWrite -1}
		weights_load_6371 {Type I LastRead 0 FirstWrite -1}
		weights_load_6372 {Type I LastRead 0 FirstWrite -1}
		weights_load_6373 {Type I LastRead 0 FirstWrite -1}
		weights_load_6374 {Type I LastRead 0 FirstWrite -1}
		weights_load_6375 {Type I LastRead 0 FirstWrite -1}
		weights_load_6376 {Type I LastRead 0 FirstWrite -1}
		weights_load_6377 {Type I LastRead 0 FirstWrite -1}
		weights_load_6378 {Type I LastRead 0 FirstWrite -1}
		weights_load_6379 {Type I LastRead 0 FirstWrite -1}
		weights_load_6380 {Type I LastRead 0 FirstWrite -1}
		weights_load_6381 {Type I LastRead 0 FirstWrite -1}
		weights_load_6382 {Type I LastRead 0 FirstWrite -1}
		weights_load_6383 {Type I LastRead 0 FirstWrite -1}
		weights_load_6384 {Type I LastRead 0 FirstWrite -1}
		weights_load_6385 {Type I LastRead 0 FirstWrite -1}
		weights_load_6386 {Type I LastRead 0 FirstWrite -1}
		weights_load_6387 {Type I LastRead 0 FirstWrite -1}
		weights_load_6388 {Type I LastRead 0 FirstWrite -1}
		weights_load_6389 {Type I LastRead 0 FirstWrite -1}
		weights_load_6390 {Type I LastRead 0 FirstWrite -1}
		weights_load_6391 {Type I LastRead 0 FirstWrite -1}
		weights_load_6392 {Type I LastRead 0 FirstWrite -1}
		weights_load_6393 {Type I LastRead 0 FirstWrite -1}
		weights_load_6394 {Type I LastRead 0 FirstWrite -1}
		weights_load_6395 {Type I LastRead 0 FirstWrite -1}
		weights_load_6396 {Type I LastRead 0 FirstWrite -1}
		weights_load_6397 {Type I LastRead 0 FirstWrite -1}
		weights_load_6398 {Type I LastRead 0 FirstWrite -1}
		weights_load_6399 {Type I LastRead 0 FirstWrite -1}
		weights_load_6400 {Type I LastRead 0 FirstWrite -1}
		weights_load_6401 {Type I LastRead 0 FirstWrite -1}
		weights_load_6402 {Type I LastRead 0 FirstWrite -1}
		weights_load_6403 {Type I LastRead 0 FirstWrite -1}
		weights_load_6404 {Type I LastRead 0 FirstWrite -1}
		weights_load_6405 {Type I LastRead 0 FirstWrite -1}
		weights_load_6406 {Type I LastRead 0 FirstWrite -1}
		weights_load_6407 {Type I LastRead 0 FirstWrite -1}
		weights_load_6408 {Type I LastRead 0 FirstWrite -1}
		weights_load_6409 {Type I LastRead 0 FirstWrite -1}
		weights_load_6410 {Type I LastRead 0 FirstWrite -1}
		weights_load_6411 {Type I LastRead 0 FirstWrite -1}
		weights_load_6412 {Type I LastRead 0 FirstWrite -1}
		weights_load_6413 {Type I LastRead 0 FirstWrite -1}
		weights_load_6414 {Type I LastRead 0 FirstWrite -1}
		weights_load_6415 {Type I LastRead 0 FirstWrite -1}
		weights_load_6416 {Type I LastRead 0 FirstWrite -1}
		weights_load_6417 {Type I LastRead 0 FirstWrite -1}
		weights_load_6418 {Type I LastRead 0 FirstWrite -1}
		weights_load_6419 {Type I LastRead 0 FirstWrite -1}
		weights_load_6420 {Type I LastRead 0 FirstWrite -1}
		weights_load_6421 {Type I LastRead 0 FirstWrite -1}
		weights_load_6422 {Type I LastRead 0 FirstWrite -1}
		weights_load_6423 {Type I LastRead 0 FirstWrite -1}
		weights_load_6424 {Type I LastRead 0 FirstWrite -1}
		weights_load_6425 {Type I LastRead 0 FirstWrite -1}
		weights_load_6426 {Type I LastRead 0 FirstWrite -1}
		weights_load_6427 {Type I LastRead 0 FirstWrite -1}
		weights_load_6428 {Type I LastRead 0 FirstWrite -1}
		weights_load_6429 {Type I LastRead 0 FirstWrite -1}
		weights_load_6430 {Type I LastRead 0 FirstWrite -1}
		weights_load_6431 {Type I LastRead 0 FirstWrite -1}
		weights_load_6432 {Type I LastRead 0 FirstWrite -1}
		weights_load_6433 {Type I LastRead 0 FirstWrite -1}
		weights_load_6434 {Type I LastRead 0 FirstWrite -1}
		weights_load_6435 {Type I LastRead 0 FirstWrite -1}
		weights_load_6436 {Type I LastRead 0 FirstWrite -1}
		weights_load_6437 {Type I LastRead 0 FirstWrite -1}
		weights_load_6438 {Type I LastRead 0 FirstWrite -1}
		weights_load_6439 {Type I LastRead 0 FirstWrite -1}
		weights_load_6440 {Type I LastRead 0 FirstWrite -1}
		weights_load_6441 {Type I LastRead 0 FirstWrite -1}
		weights_load_6442 {Type I LastRead 0 FirstWrite -1}
		weights_load_6443 {Type I LastRead 0 FirstWrite -1}
		weights_load_6444 {Type I LastRead 0 FirstWrite -1}
		weights_load_6445 {Type I LastRead 0 FirstWrite -1}
		weights_load_6446 {Type I LastRead 0 FirstWrite -1}
		weights_load_6447 {Type I LastRead 0 FirstWrite -1}
		weights_load_6448 {Type I LastRead 0 FirstWrite -1}
		weights_load_6449 {Type I LastRead 0 FirstWrite -1}
		weights_load_6450 {Type I LastRead 0 FirstWrite -1}
		weights_load_6451 {Type I LastRead 0 FirstWrite -1}
		weights_load_6452 {Type I LastRead 0 FirstWrite -1}
		weights_load_6453 {Type I LastRead 0 FirstWrite -1}
		weights_load_6454 {Type I LastRead 0 FirstWrite -1}
		weights_load_6455 {Type I LastRead 0 FirstWrite -1}
		weights_load_6456 {Type I LastRead 0 FirstWrite -1}
		weights_load_6457 {Type I LastRead 0 FirstWrite -1}
		weights_load_6458 {Type I LastRead 0 FirstWrite -1}
		weights_load_6459 {Type I LastRead 0 FirstWrite -1}
		weights_load_6460 {Type I LastRead 0 FirstWrite -1}
		weights_load_6461 {Type I LastRead 0 FirstWrite -1}
		weights_load_6462 {Type I LastRead 0 FirstWrite -1}
		weights_load_6463 {Type I LastRead 0 FirstWrite -1}
		weights_load_6464 {Type I LastRead 0 FirstWrite -1}
		weights_load_6465 {Type I LastRead 0 FirstWrite -1}
		weights_load_6466 {Type I LastRead 0 FirstWrite -1}
		weights_load_6467 {Type I LastRead 0 FirstWrite -1}
		weights_load_6468 {Type I LastRead 0 FirstWrite -1}
		weights_load_6469 {Type I LastRead 0 FirstWrite -1}
		weights_load_6470 {Type I LastRead 0 FirstWrite -1}
		weights_load_6471 {Type I LastRead 0 FirstWrite -1}
		weights_load_6472 {Type I LastRead 0 FirstWrite -1}
		weights_load_6473 {Type I LastRead 0 FirstWrite -1}
		weights_load_6474 {Type I LastRead 0 FirstWrite -1}
		weights_load_6475 {Type I LastRead 0 FirstWrite -1}
		weights_load_6476 {Type I LastRead 0 FirstWrite -1}
		weights_load_6477 {Type I LastRead 0 FirstWrite -1}
		weights_load_6478 {Type I LastRead 0 FirstWrite -1}
		weights_load_6479 {Type I LastRead 0 FirstWrite -1}
		weights_load_6480 {Type I LastRead 0 FirstWrite -1}
		weights_load_6481 {Type I LastRead 0 FirstWrite -1}
		weights_load_6482 {Type I LastRead 0 FirstWrite -1}
		weights_load_6483 {Type I LastRead 0 FirstWrite -1}
		weights_load_6484 {Type I LastRead 0 FirstWrite -1}
		weights_load_6485 {Type I LastRead 0 FirstWrite -1}
		weights_load_6486 {Type I LastRead 0 FirstWrite -1}
		weights_load_6487 {Type I LastRead 0 FirstWrite -1}
		weights_load_6488 {Type I LastRead 0 FirstWrite -1}
		weights_load_6489 {Type I LastRead 0 FirstWrite -1}
		weights_load_6490 {Type I LastRead 0 FirstWrite -1}
		weights_load_6491 {Type I LastRead 0 FirstWrite -1}
		weights_load_6492 {Type I LastRead 0 FirstWrite -1}
		weights_load_6493 {Type I LastRead 0 FirstWrite -1}
		weights_load_6494 {Type I LastRead 0 FirstWrite -1}
		weights_load_6495 {Type I LastRead 0 FirstWrite -1}
		weights_load_6496 {Type I LastRead 0 FirstWrite -1}
		weights_load_6497 {Type I LastRead 0 FirstWrite -1}
		weights_load_6498 {Type I LastRead 0 FirstWrite -1}
		weights_load_6499 {Type I LastRead 0 FirstWrite -1}
		weights_load_6500 {Type I LastRead 0 FirstWrite -1}
		weights_load_6501 {Type I LastRead 0 FirstWrite -1}
		weights_load_6502 {Type I LastRead 0 FirstWrite -1}
		weights_load_6503 {Type I LastRead 0 FirstWrite -1}
		weights_load_6504 {Type I LastRead 0 FirstWrite -1}
		weights_load_6505 {Type I LastRead 0 FirstWrite -1}
		weights_load_6506 {Type I LastRead 0 FirstWrite -1}
		weights_load_6507 {Type I LastRead 0 FirstWrite -1}
		weights_load_6508 {Type I LastRead 0 FirstWrite -1}
		weights_load_6509 {Type I LastRead 0 FirstWrite -1}
		weights_load_6510 {Type I LastRead 0 FirstWrite -1}
		weights_load_6511 {Type I LastRead 0 FirstWrite -1}
		weights_load_6512 {Type I LastRead 0 FirstWrite -1}
		weights_load_6513 {Type I LastRead 0 FirstWrite -1}
		weights_load_6514 {Type I LastRead 0 FirstWrite -1}
		weights_load_6515 {Type I LastRead 0 FirstWrite -1}
		weights_load_6516 {Type I LastRead 0 FirstWrite -1}
		weights_load_6517 {Type I LastRead 0 FirstWrite -1}
		weights_load_6518 {Type I LastRead 0 FirstWrite -1}
		weights_load_6519 {Type I LastRead 0 FirstWrite -1}
		weights_load_6520 {Type I LastRead 0 FirstWrite -1}
		weights_load_6521 {Type I LastRead 0 FirstWrite -1}
		weights_load_6522 {Type I LastRead 0 FirstWrite -1}
		weights_load_6523 {Type I LastRead 0 FirstWrite -1}
		weights_load_6524 {Type I LastRead 0 FirstWrite -1}
		weights_load_6525 {Type I LastRead 0 FirstWrite -1}
		weights_load_6526 {Type I LastRead 0 FirstWrite -1}
		weights_load_6527 {Type I LastRead 0 FirstWrite -1}
		weights_load_6528 {Type I LastRead 0 FirstWrite -1}
		weights_load_6529 {Type I LastRead 0 FirstWrite -1}
		weights_load_6530 {Type I LastRead 0 FirstWrite -1}
		weights_load_6531 {Type I LastRead 0 FirstWrite -1}
		weights_load_6532 {Type I LastRead 0 FirstWrite -1}
		weights_load_6533 {Type I LastRead 0 FirstWrite -1}
		weights_load_6534 {Type I LastRead 0 FirstWrite -1}
		weights_load_6535 {Type I LastRead 0 FirstWrite -1}
		weights_load_6536 {Type I LastRead 0 FirstWrite -1}
		weights_load_6537 {Type I LastRead 0 FirstWrite -1}
		weights_load_6538 {Type I LastRead 0 FirstWrite -1}
		weights_load_6539 {Type I LastRead 0 FirstWrite -1}
		weights_load_6540 {Type I LastRead 0 FirstWrite -1}
		weights_load_6541 {Type I LastRead 0 FirstWrite -1}
		weights_load_6542 {Type I LastRead 0 FirstWrite -1}
		weights_load_6543 {Type I LastRead 0 FirstWrite -1}
		weights_load_6544 {Type I LastRead 0 FirstWrite -1}
		weights_load_6545 {Type I LastRead 0 FirstWrite -1}
		weights_load_6546 {Type I LastRead 0 FirstWrite -1}
		weights_load_6547 {Type I LastRead 0 FirstWrite -1}
		weights_load_6548 {Type I LastRead 0 FirstWrite -1}
		weights_load_6549 {Type I LastRead 0 FirstWrite -1}
		weights_load_6550 {Type I LastRead 0 FirstWrite -1}
		weights_load_6551 {Type I LastRead 0 FirstWrite -1}
		weights_load_6552 {Type I LastRead 0 FirstWrite -1}
		weights_load_6553 {Type I LastRead 0 FirstWrite -1}
		weights_load_6554 {Type I LastRead 0 FirstWrite -1}
		weights_load_6555 {Type I LastRead 0 FirstWrite -1}
		weights_load_6556 {Type I LastRead 0 FirstWrite -1}
		weights_load_6557 {Type I LastRead 0 FirstWrite -1}
		weights_load_6558 {Type I LastRead 0 FirstWrite -1}
		weights_load_6559 {Type I LastRead 0 FirstWrite -1}
		weights_load_6560 {Type I LastRead 0 FirstWrite -1}
		weights_load_6561 {Type I LastRead 0 FirstWrite -1}
		weights_load_6562 {Type I LastRead 0 FirstWrite -1}
		weights_load_6563 {Type I LastRead 0 FirstWrite -1}
		weights_load_6564 {Type I LastRead 0 FirstWrite -1}
		weights_load_6565 {Type I LastRead 0 FirstWrite -1}
		weights_load_6566 {Type I LastRead 0 FirstWrite -1}
		weights_load_6567 {Type I LastRead 0 FirstWrite -1}
		weights_load_6568 {Type I LastRead 0 FirstWrite -1}
		weights_load_6569 {Type I LastRead 0 FirstWrite -1}
		weights_load_6570 {Type I LastRead 0 FirstWrite -1}
		weights_load_6571 {Type I LastRead 0 FirstWrite -1}
		weights_load_6572 {Type I LastRead 0 FirstWrite -1}
		weights_load_6573 {Type I LastRead 0 FirstWrite -1}
		weights_load_6574 {Type I LastRead 0 FirstWrite -1}
		weights_load_6575 {Type I LastRead 0 FirstWrite -1}
		weights_load_6576 {Type I LastRead 0 FirstWrite -1}
		weights_load_6577 {Type I LastRead 0 FirstWrite -1}
		weights_load_6578 {Type I LastRead 0 FirstWrite -1}
		weights_load_6579 {Type I LastRead 0 FirstWrite -1}
		weights_load_6580 {Type I LastRead 0 FirstWrite -1}
		weights_load_6581 {Type I LastRead 0 FirstWrite -1}
		weights_load_6582 {Type I LastRead 0 FirstWrite -1}
		weights_load_6583 {Type I LastRead 0 FirstWrite -1}
		weights_load_6584 {Type I LastRead 0 FirstWrite -1}
		weights_load_6585 {Type I LastRead 0 FirstWrite -1}
		weights_load_6586 {Type I LastRead 0 FirstWrite -1}
		weights_load_6587 {Type I LastRead 0 FirstWrite -1}
		weights_load_6588 {Type I LastRead 0 FirstWrite -1}
		weights_load_6589 {Type I LastRead 0 FirstWrite -1}
		weights_load_6590 {Type I LastRead 0 FirstWrite -1}
		weights_load_6591 {Type I LastRead 0 FirstWrite -1}
		weights_load_6592 {Type I LastRead 0 FirstWrite -1}
		weights_load_6593 {Type I LastRead 0 FirstWrite -1}
		weights_load_6594 {Type I LastRead 0 FirstWrite -1}
		weights_load_6595 {Type I LastRead 0 FirstWrite -1}
		weights_load_6596 {Type I LastRead 0 FirstWrite -1}
		weights_load_6597 {Type I LastRead 0 FirstWrite -1}
		weights_load_6598 {Type I LastRead 0 FirstWrite -1}
		weights_load_6599 {Type I LastRead 0 FirstWrite -1}
		weights_load_6600 {Type I LastRead 0 FirstWrite -1}
		weights_load_6601 {Type I LastRead 0 FirstWrite -1}
		weights_load_6602 {Type I LastRead 0 FirstWrite -1}
		weights_load_6603 {Type I LastRead 0 FirstWrite -1}
		weights_load_6604 {Type I LastRead 0 FirstWrite -1}
		weights_load_6605 {Type I LastRead 0 FirstWrite -1}
		weights_load_6606 {Type I LastRead 0 FirstWrite -1}
		weights_load_6607 {Type I LastRead 0 FirstWrite -1}
		weights_load_6608 {Type I LastRead 0 FirstWrite -1}
		weights_load_6609 {Type I LastRead 0 FirstWrite -1}
		weights_load_6610 {Type I LastRead 0 FirstWrite -1}
		weights_load_6611 {Type I LastRead 0 FirstWrite -1}
		weights_load_6612 {Type I LastRead 0 FirstWrite -1}
		weights_load_6613 {Type I LastRead 0 FirstWrite -1}
		weights_load_6614 {Type I LastRead 0 FirstWrite -1}
		weights_load_6615 {Type I LastRead 0 FirstWrite -1}
		weights_load_6616 {Type I LastRead 0 FirstWrite -1}
		weights_load_6617 {Type I LastRead 0 FirstWrite -1}
		weights_load_6618 {Type I LastRead 0 FirstWrite -1}
		weights_load_6619 {Type I LastRead 0 FirstWrite -1}
		weights_load_6620 {Type I LastRead 0 FirstWrite -1}
		weights_load_6621 {Type I LastRead 0 FirstWrite -1}
		weights_load_6622 {Type I LastRead 0 FirstWrite -1}
		weights_load_6623 {Type I LastRead 0 FirstWrite -1}
		weights_load_6624 {Type I LastRead 0 FirstWrite -1}
		weights_load_6625 {Type I LastRead 0 FirstWrite -1}
		weights_load_6626 {Type I LastRead 0 FirstWrite -1}
		weights_load_6627 {Type I LastRead 0 FirstWrite -1}
		weights_load_6628 {Type I LastRead 0 FirstWrite -1}
		weights_load_6629 {Type I LastRead 0 FirstWrite -1}
		weights_load_6630 {Type I LastRead 0 FirstWrite -1}
		weights_load_6631 {Type I LastRead 0 FirstWrite -1}
		weights_load_6632 {Type I LastRead 0 FirstWrite -1}
		weights_load_6633 {Type I LastRead 0 FirstWrite -1}
		weights_load_6634 {Type I LastRead 0 FirstWrite -1}
		weights_load_6635 {Type I LastRead 0 FirstWrite -1}
		weights_load_6636 {Type I LastRead 0 FirstWrite -1}
		weights_load_6637 {Type I LastRead 0 FirstWrite -1}
		weights_load_6638 {Type I LastRead 0 FirstWrite -1}
		weights_load_6639 {Type I LastRead 0 FirstWrite -1}
		weights_load_6640 {Type I LastRead 0 FirstWrite -1}
		weights_load_6641 {Type I LastRead 0 FirstWrite -1}
		weights_load_6642 {Type I LastRead 0 FirstWrite -1}
		weights_load_6643 {Type I LastRead 0 FirstWrite -1}
		weights_load_6644 {Type I LastRead 0 FirstWrite -1}
		weights_load_6645 {Type I LastRead 0 FirstWrite -1}
		weights_load_6646 {Type I LastRead 0 FirstWrite -1}
		weights_load_6647 {Type I LastRead 0 FirstWrite -1}
		weights_load_6648 {Type I LastRead 0 FirstWrite -1}
		weights_load_6649 {Type I LastRead 0 FirstWrite -1}
		weights_load_6650 {Type I LastRead 0 FirstWrite -1}
		weights_load_6651 {Type I LastRead 0 FirstWrite -1}
		weights_load_6652 {Type I LastRead 0 FirstWrite -1}
		weights_load_6653 {Type I LastRead 0 FirstWrite -1}
		weights_load_6654 {Type I LastRead 0 FirstWrite -1}
		weights_load_6655 {Type I LastRead 0 FirstWrite -1}
		weights_load_6656 {Type I LastRead 0 FirstWrite -1}
		weights_load_6657 {Type I LastRead 0 FirstWrite -1}
		weights_load_6658 {Type I LastRead 0 FirstWrite -1}
		weights_load_6659 {Type I LastRead 0 FirstWrite -1}
		weights_load_6660 {Type I LastRead 0 FirstWrite -1}
		weights_load_6661 {Type I LastRead 0 FirstWrite -1}
		weights_load_6662 {Type I LastRead 0 FirstWrite -1}
		weights_load_6663 {Type I LastRead 0 FirstWrite -1}
		weights_load_6664 {Type I LastRead 0 FirstWrite -1}
		weights_load_6665 {Type I LastRead 0 FirstWrite -1}
		weights_load_6666 {Type I LastRead 0 FirstWrite -1}
		weights_load_6667 {Type I LastRead 0 FirstWrite -1}
		weights_load_6668 {Type I LastRead 0 FirstWrite -1}
		weights_load_6669 {Type I LastRead 0 FirstWrite -1}
		weights_load_6670 {Type I LastRead 0 FirstWrite -1}
		weights_load_6671 {Type I LastRead 0 FirstWrite -1}
		weights_load_6672 {Type I LastRead 0 FirstWrite -1}
		weights_load_6673 {Type I LastRead 0 FirstWrite -1}
		weights_load_6674 {Type I LastRead 0 FirstWrite -1}
		weights_load_6675 {Type I LastRead 0 FirstWrite -1}
		weights_load_6676 {Type I LastRead 0 FirstWrite -1}
		weights_load_6677 {Type I LastRead 0 FirstWrite -1}
		weights_load_6678 {Type I LastRead 0 FirstWrite -1}
		weights_load_6679 {Type I LastRead 0 FirstWrite -1}
		weights_load_6680 {Type I LastRead 0 FirstWrite -1}
		weights_load_6681 {Type I LastRead 0 FirstWrite -1}
		weights_load_6682 {Type I LastRead 0 FirstWrite -1}
		weights_load_6683 {Type I LastRead 0 FirstWrite -1}
		weights_load_6684 {Type I LastRead 0 FirstWrite -1}
		weights_load_6685 {Type I LastRead 0 FirstWrite -1}
		weights_load_6686 {Type I LastRead 0 FirstWrite -1}
		weights_load_6687 {Type I LastRead 0 FirstWrite -1}
		weights_load_6688 {Type I LastRead 0 FirstWrite -1}
		weights_load_6689 {Type I LastRead 0 FirstWrite -1}
		weights_load_6690 {Type I LastRead 0 FirstWrite -1}
		weights_load_6691 {Type I LastRead 0 FirstWrite -1}
		weights_load_6692 {Type I LastRead 0 FirstWrite -1}
		weights_load_6693 {Type I LastRead 0 FirstWrite -1}
		weights_load_6694 {Type I LastRead 0 FirstWrite -1}
		weights_load_6695 {Type I LastRead 0 FirstWrite -1}
		weights_load_6696 {Type I LastRead 0 FirstWrite -1}
		weights_load_6697 {Type I LastRead 0 FirstWrite -1}
		weights_load_6698 {Type I LastRead 0 FirstWrite -1}
		weights_load_6699 {Type I LastRead 0 FirstWrite -1}
		weights_load_6700 {Type I LastRead 0 FirstWrite -1}
		weights_load_6701 {Type I LastRead 0 FirstWrite -1}
		weights_load_6702 {Type I LastRead 0 FirstWrite -1}
		weights_load_6703 {Type I LastRead 0 FirstWrite -1}
		weights_load_6704 {Type I LastRead 0 FirstWrite -1}
		weights_load_6705 {Type I LastRead 0 FirstWrite -1}
		weights_load_6706 {Type I LastRead 0 FirstWrite -1}
		weights_load_6707 {Type I LastRead 0 FirstWrite -1}
		weights_load_6708 {Type I LastRead 0 FirstWrite -1}
		weights_load_6709 {Type I LastRead 0 FirstWrite -1}
		weights_load_6710 {Type I LastRead 0 FirstWrite -1}
		weights_load_6711 {Type I LastRead 0 FirstWrite -1}
		weights_load_6712 {Type I LastRead 0 FirstWrite -1}
		weights_load_6713 {Type I LastRead 0 FirstWrite -1}
		weights_load_6714 {Type I LastRead 0 FirstWrite -1}
		weights_load_6715 {Type I LastRead 0 FirstWrite -1}
		weights_load_6716 {Type I LastRead 0 FirstWrite -1}
		weights_load_6717 {Type I LastRead 0 FirstWrite -1}
		weights_load_6718 {Type I LastRead 0 FirstWrite -1}
		weights_load_6719 {Type I LastRead 0 FirstWrite -1}
		weights_load_6720 {Type I LastRead 0 FirstWrite -1}
		weights_load_6721 {Type I LastRead 0 FirstWrite -1}
		weights_load_6722 {Type I LastRead 0 FirstWrite -1}
		weights_load_6723 {Type I LastRead 0 FirstWrite -1}
		weights_load_6724 {Type I LastRead 0 FirstWrite -1}
		weights_load_6725 {Type I LastRead 0 FirstWrite -1}
		weights_load_6726 {Type I LastRead 0 FirstWrite -1}
		weights_load_6727 {Type I LastRead 0 FirstWrite -1}
		weights_load_6728 {Type I LastRead 0 FirstWrite -1}
		weights_load_6729 {Type I LastRead 0 FirstWrite -1}
		weights_load_6730 {Type I LastRead 0 FirstWrite -1}
		weights_load_6731 {Type I LastRead 0 FirstWrite -1}
		weights_load_6732 {Type I LastRead 0 FirstWrite -1}
		weights_load_6733 {Type I LastRead 0 FirstWrite -1}
		weights_load_6734 {Type I LastRead 0 FirstWrite -1}
		weights_load_6735 {Type I LastRead 0 FirstWrite -1}
		weights_load_6736 {Type I LastRead 0 FirstWrite -1}
		weights_load_6737 {Type I LastRead 0 FirstWrite -1}
		weights_load_6738 {Type I LastRead 0 FirstWrite -1}
		weights_load_6739 {Type I LastRead 0 FirstWrite -1}
		weights_load_6740 {Type I LastRead 0 FirstWrite -1}
		weights_load_6741 {Type I LastRead 0 FirstWrite -1}
		weights_load_6742 {Type I LastRead 0 FirstWrite -1}
		weights_load_6743 {Type I LastRead 0 FirstWrite -1}
		weights_load_6744 {Type I LastRead 0 FirstWrite -1}
		weights_load_6745 {Type I LastRead 0 FirstWrite -1}
		weights_load_6746 {Type I LastRead 0 FirstWrite -1}
		weights_load_6747 {Type I LastRead 0 FirstWrite -1}
		weights_load_6748 {Type I LastRead 0 FirstWrite -1}
		weights_load_6749 {Type I LastRead 0 FirstWrite -1}
		weights_load_6750 {Type I LastRead 0 FirstWrite -1}
		weights_load_6751 {Type I LastRead 0 FirstWrite -1}
		weights_load_6752 {Type I LastRead 0 FirstWrite -1}
		weights_load_6753 {Type I LastRead 0 FirstWrite -1}
		weights_load_6754 {Type I LastRead 0 FirstWrite -1}
		weights_load_6755 {Type I LastRead 0 FirstWrite -1}
		weights_load_6756 {Type I LastRead 0 FirstWrite -1}
		weights_load_6757 {Type I LastRead 0 FirstWrite -1}
		weights_load_6758 {Type I LastRead 0 FirstWrite -1}
		weights_load_6759 {Type I LastRead 0 FirstWrite -1}
		weights_load_6760 {Type I LastRead 0 FirstWrite -1}
		weights_load_6761 {Type I LastRead 0 FirstWrite -1}
		weights_load_6762 {Type I LastRead 0 FirstWrite -1}
		weights_load_6763 {Type I LastRead 0 FirstWrite -1}
		weights_load_6764 {Type I LastRead 0 FirstWrite -1}
		weights_load_6765 {Type I LastRead 0 FirstWrite -1}
		weights_load_6766 {Type I LastRead 0 FirstWrite -1}
		weights_load_6767 {Type I LastRead 0 FirstWrite -1}
		weights_load_6768 {Type I LastRead 0 FirstWrite -1}
		weights_load_6769 {Type I LastRead 0 FirstWrite -1}
		weights_load_6770 {Type I LastRead 0 FirstWrite -1}
		weights_load_6771 {Type I LastRead 0 FirstWrite -1}
		weights_load_6772 {Type I LastRead 0 FirstWrite -1}
		weights_load_6773 {Type I LastRead 0 FirstWrite -1}
		weights_load_6774 {Type I LastRead 0 FirstWrite -1}
		weights_load_6775 {Type I LastRead 0 FirstWrite -1}
		weights_load_6776 {Type I LastRead 0 FirstWrite -1}
		weights_load_6777 {Type I LastRead 0 FirstWrite -1}
		weights_load_6778 {Type I LastRead 0 FirstWrite -1}
		weights_load_6779 {Type I LastRead 0 FirstWrite -1}
		weights_load_6780 {Type I LastRead 0 FirstWrite -1}
		weights_load_6781 {Type I LastRead 0 FirstWrite -1}
		weights_load_6782 {Type I LastRead 0 FirstWrite -1}
		weights_load_6783 {Type I LastRead 0 FirstWrite -1}
		weights_load_6784 {Type I LastRead 0 FirstWrite -1}
		weights_load_6785 {Type I LastRead 0 FirstWrite -1}
		weights_load_6786 {Type I LastRead 0 FirstWrite -1}
		weights_load_6787 {Type I LastRead 0 FirstWrite -1}
		weights_load_6788 {Type I LastRead 0 FirstWrite -1}
		weights_load_6789 {Type I LastRead 0 FirstWrite -1}
		weights_load_6790 {Type I LastRead 0 FirstWrite -1}
		weights_load_6791 {Type I LastRead 0 FirstWrite -1}
		weights_load_6792 {Type I LastRead 0 FirstWrite -1}
		weights_load_6793 {Type I LastRead 0 FirstWrite -1}
		weights_load_6794 {Type I LastRead 0 FirstWrite -1}
		weights_load_6795 {Type I LastRead 0 FirstWrite -1}
		weights_load_6796 {Type I LastRead 0 FirstWrite -1}
		weights_load_6797 {Type I LastRead 0 FirstWrite -1}
		weights_load_6798 {Type I LastRead 0 FirstWrite -1}
		weights_load_6799 {Type I LastRead 0 FirstWrite -1}
		weights_load_6800 {Type I LastRead 0 FirstWrite -1}
		weights_load_6801 {Type I LastRead 0 FirstWrite -1}
		weights_load_6802 {Type I LastRead 0 FirstWrite -1}
		weights_load_6803 {Type I LastRead 0 FirstWrite -1}
		weights_load_6804 {Type I LastRead 0 FirstWrite -1}
		weights_load_6805 {Type I LastRead 0 FirstWrite -1}
		weights_load_6806 {Type I LastRead 0 FirstWrite -1}
		weights_load_6807 {Type I LastRead 0 FirstWrite -1}
		weights_load_6808 {Type I LastRead 0 FirstWrite -1}
		weights_load_6809 {Type I LastRead 0 FirstWrite -1}
		weights_load_6810 {Type I LastRead 0 FirstWrite -1}
		weights_load_6811 {Type I LastRead 0 FirstWrite -1}
		weights_load_6812 {Type I LastRead 0 FirstWrite -1}
		weights_load_6813 {Type I LastRead 0 FirstWrite -1}
		weights_load_6814 {Type I LastRead 0 FirstWrite -1}
		weights_load_6815 {Type I LastRead 0 FirstWrite -1}
		weights_load_6816 {Type I LastRead 0 FirstWrite -1}
		weights_load_6817 {Type I LastRead 0 FirstWrite -1}
		weights_load_6818 {Type I LastRead 0 FirstWrite -1}
		weights_load_6819 {Type I LastRead 0 FirstWrite -1}
		weights_load_6820 {Type I LastRead 0 FirstWrite -1}
		weights_load_6821 {Type I LastRead 0 FirstWrite -1}
		weights_load_6822 {Type I LastRead 0 FirstWrite -1}
		weights_load_6823 {Type I LastRead 0 FirstWrite -1}
		weights_load_6824 {Type I LastRead 0 FirstWrite -1}
		weights_load_6825 {Type I LastRead 0 FirstWrite -1}
		weights_load_6826 {Type I LastRead 0 FirstWrite -1}
		weights_load_6827 {Type I LastRead 0 FirstWrite -1}
		weights_load_6828 {Type I LastRead 0 FirstWrite -1}
		weights_load_6829 {Type I LastRead 0 FirstWrite -1}
		weights_load_6830 {Type I LastRead 0 FirstWrite -1}
		weights_load_6831 {Type I LastRead 0 FirstWrite -1}
		weights_load_6832 {Type I LastRead 0 FirstWrite -1}
		weights_load_6833 {Type I LastRead 0 FirstWrite -1}
		weights_load_6834 {Type I LastRead 0 FirstWrite -1}
		weights_load_6835 {Type I LastRead 0 FirstWrite -1}
		weights_load_6836 {Type I LastRead 0 FirstWrite -1}
		weights_load_6837 {Type I LastRead 0 FirstWrite -1}
		weights_load_6838 {Type I LastRead 0 FirstWrite -1}
		weights_load_6839 {Type I LastRead 0 FirstWrite -1}
		weights_load_6840 {Type I LastRead 0 FirstWrite -1}
		weights_load_6841 {Type I LastRead 0 FirstWrite -1}
		weights_load_6842 {Type I LastRead 0 FirstWrite -1}
		weights_load_6843 {Type I LastRead 0 FirstWrite -1}
		weights_load_6844 {Type I LastRead 0 FirstWrite -1}
		weights_load_6845 {Type I LastRead 0 FirstWrite -1}
		weights_load_6846 {Type I LastRead 0 FirstWrite -1}
		weights_load_6847 {Type I LastRead 0 FirstWrite -1}
		weights_load_6848 {Type I LastRead 0 FirstWrite -1}
		weights_load_6849 {Type I LastRead 0 FirstWrite -1}
		weights_load_6850 {Type I LastRead 0 FirstWrite -1}
		weights_load_6851 {Type I LastRead 0 FirstWrite -1}
		weights_load_6852 {Type I LastRead 0 FirstWrite -1}
		weights_load_6853 {Type I LastRead 0 FirstWrite -1}
		weights_load_6854 {Type I LastRead 0 FirstWrite -1}
		weights_load_6855 {Type I LastRead 0 FirstWrite -1}
		weights_load_6856 {Type I LastRead 0 FirstWrite -1}
		weights_load_6857 {Type I LastRead 0 FirstWrite -1}
		weights_load_6858 {Type I LastRead 0 FirstWrite -1}
		weights_load_6859 {Type I LastRead 0 FirstWrite -1}
		weights_load_6860 {Type I LastRead 0 FirstWrite -1}
		weights_load_6861 {Type I LastRead 0 FirstWrite -1}
		weights_load_6862 {Type I LastRead 0 FirstWrite -1}
		weights_load_6863 {Type I LastRead 0 FirstWrite -1}
		weights_load_6864 {Type I LastRead 0 FirstWrite -1}
		weights_load_6865 {Type I LastRead 0 FirstWrite -1}
		weights_load_6866 {Type I LastRead 0 FirstWrite -1}
		weights_load_6867 {Type I LastRead 0 FirstWrite -1}
		weights_load_6868 {Type I LastRead 0 FirstWrite -1}
		weights_load_6869 {Type I LastRead 0 FirstWrite -1}
		weights_load_6870 {Type I LastRead 0 FirstWrite -1}
		weights_load_6871 {Type I LastRead 0 FirstWrite -1}
		weights_load_6872 {Type I LastRead 0 FirstWrite -1}
		weights_load_6873 {Type I LastRead 0 FirstWrite -1}
		weights_load_6874 {Type I LastRead 0 FirstWrite -1}
		weights_load_6875 {Type I LastRead 0 FirstWrite -1}
		weights_load_6876 {Type I LastRead 0 FirstWrite -1}
		weights_load_6877 {Type I LastRead 0 FirstWrite -1}
		weights_load_6878 {Type I LastRead 0 FirstWrite -1}
		weights_load_6879 {Type I LastRead 0 FirstWrite -1}
		weights_load_6880 {Type I LastRead 0 FirstWrite -1}
		weights_load_6881 {Type I LastRead 0 FirstWrite -1}
		weights_load_6882 {Type I LastRead 0 FirstWrite -1}
		weights_load_6883 {Type I LastRead 0 FirstWrite -1}
		weights_load_6884 {Type I LastRead 0 FirstWrite -1}
		weights_load_6885 {Type I LastRead 0 FirstWrite -1}
		weights_load_6886 {Type I LastRead 0 FirstWrite -1}
		weights_load_6887 {Type I LastRead 0 FirstWrite -1}
		weights_load_6888 {Type I LastRead 0 FirstWrite -1}
		weights_load_6889 {Type I LastRead 0 FirstWrite -1}
		weights_load_6890 {Type I LastRead 0 FirstWrite -1}
		weights_load_6891 {Type I LastRead 0 FirstWrite -1}
		weights_load_6892 {Type I LastRead 0 FirstWrite -1}
		weights_load_6893 {Type I LastRead 0 FirstWrite -1}
		weights_load_6894 {Type I LastRead 0 FirstWrite -1}
		weights_load_6895 {Type I LastRead 0 FirstWrite -1}
		weights_load_6896 {Type I LastRead 0 FirstWrite -1}
		weights_load_6897 {Type I LastRead 0 FirstWrite -1}
		weights_load_6898 {Type I LastRead 0 FirstWrite -1}
		weights_load_6899 {Type I LastRead 0 FirstWrite -1}
		weights_load_6900 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_27 { ap_fifo {  { conv2d_64_padded_window_stream_27_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_27_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_27_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_27_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_27_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_27 { ap_fifo {  { in_channel_map_stream_27_din fifo_port_we 1 32 }  { in_channel_map_stream_27_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_27_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_27_full_n fifo_status 0 1 }  { in_channel_map_stream_27_write fifo_data 1 1 } } }
}
