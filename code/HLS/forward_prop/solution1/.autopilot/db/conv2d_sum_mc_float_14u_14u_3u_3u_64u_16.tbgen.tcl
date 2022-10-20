set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_16
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.16}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_16 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_16 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_16", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_16", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_16_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_16_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_16_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_16_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_16_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_16_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_16_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_16_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_16_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_16_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_16_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_16", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_16_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_16", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_16_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_16", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_16_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_16", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_16_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_16", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_16_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_16", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_16_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_16", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_16_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_16", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_16_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_16", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_16_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_16", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_16",
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
			{"Name" : "conv2d_64_padded_window_stream_16", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_16_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_16", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_16", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_16_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_16", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_16_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_16_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_16", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13226", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13227", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13228", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13229", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13230", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13231", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13232", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13233", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_16", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_13234", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13235", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13236", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13237", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13238", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13239", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13240", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13241", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13242", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13243", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13244", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13245", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13246", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13247", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13248", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13249", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13250", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13251", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13252", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13253", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13254", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13255", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13256", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13257", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13258", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13259", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13260", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13261", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13262", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13263", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13264", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13265", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13266", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13267", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13268", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13269", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13270", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13271", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13272", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13273", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13274", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13275", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13276", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13277", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13278", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13279", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13280", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13281", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13282", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13283", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13284", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13285", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13286", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13287", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13288", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13289", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13290", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13291", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13292", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13293", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13294", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13295", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13296", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13297", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13298", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13299", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13300", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13301", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13302", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13303", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13304", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13305", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13306", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13307", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13308", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13309", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13310", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13311", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13312", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13313", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13314", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13315", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13316", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13317", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13318", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13319", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13320", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13321", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13322", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13323", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13324", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13325", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13326", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13327", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13328", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13329", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13330", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13331", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13332", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13333", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13334", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13335", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13336", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13337", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13338", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13339", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13340", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13341", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13342", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13343", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13344", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13345", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13346", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13347", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13348", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13349", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13350", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13351", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13352", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13353", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13354", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13355", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13356", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13357", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13358", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13359", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13360", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13361", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13362", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13363", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13364", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13365", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13366", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13367", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13368", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13369", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13370", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13371", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13372", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13373", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13374", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13375", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13376", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13377", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13378", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13379", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13380", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13381", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13382", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13383", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13384", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13385", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13386", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13387", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13388", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13389", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13390", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13391", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13392", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13393", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13394", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13395", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13396", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13397", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13398", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13399", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13400", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13401", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13402", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13403", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13404", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13405", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13406", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13407", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13408", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13409", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13410", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13411", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13412", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13413", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13414", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13415", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13416", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13417", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13418", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13419", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13420", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13421", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13422", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13423", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13424", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13425", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13426", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13427", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13428", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13429", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13430", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13431", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13432", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13433", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13434", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13435", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13436", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13437", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13438", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13439", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13440", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13441", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13442", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13443", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13444", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13445", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13446", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13447", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13448", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13449", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13450", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13451", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13452", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13453", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13454", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13455", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13456", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13457", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13458", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13459", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13460", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13461", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13462", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13463", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13464", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13465", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13466", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13467", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13468", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13469", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13470", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13471", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13472", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13473", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13474", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13475", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13476", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13477", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13478", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13479", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13480", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13481", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13482", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13483", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13484", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13485", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13486", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13487", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13488", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13489", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13490", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13491", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13492", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13493", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13494", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13495", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13496", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13497", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13498", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13499", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13500", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13501", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13502", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13503", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13504", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13505", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13506", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13507", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13508", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13509", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13510", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13511", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13512", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13513", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13514", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13515", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13516", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13517", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13518", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13519", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13520", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13521", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13522", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13523", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13524", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13525", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13526", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13527", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13528", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13529", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13530", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13531", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13532", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13533", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13534", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13535", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13536", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13537", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13538", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13539", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13540", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13541", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13542", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13543", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13544", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13545", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13546", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13547", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13548", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13549", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13550", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13551", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13552", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13553", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13554", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13555", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13556", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13557", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13558", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13559", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13560", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13561", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13562", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13563", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13564", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13565", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13566", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13567", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13568", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13569", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13570", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13571", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13572", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13573", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13574", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13575", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13576", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13577", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13578", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13579", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13580", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13581", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13582", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13583", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13584", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13585", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13586", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13587", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13588", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13589", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13590", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13591", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13592", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13593", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13594", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13595", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13596", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13597", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13598", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13599", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13600", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13601", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13602", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13603", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13604", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13605", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13606", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13607", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13608", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13609", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13610", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13611", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13612", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13613", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13614", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13615", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13616", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13617", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13618", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13619", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13620", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13621", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13622", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13623", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13624", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13625", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13626", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13627", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13628", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13629", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13630", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13631", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13632", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13633", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13634", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13635", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13636", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13637", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13638", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13639", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13640", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13641", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13642", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13643", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13644", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13645", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13646", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13647", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13648", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13649", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13650", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13651", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13652", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13653", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13654", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13655", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13656", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13657", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13658", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13659", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13660", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13661", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13662", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13663", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13664", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13665", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13666", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13667", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13668", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13669", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13670", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13671", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13672", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13673", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13674", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13675", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13676", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13677", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13678", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13679", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13680", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13681", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13682", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13683", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13684", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13685", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13686", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13687", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13688", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13689", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13690", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13691", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13692", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13693", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13694", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13695", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13696", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13697", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13698", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13699", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13700", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13701", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13702", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13703", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13704", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13705", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13706", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13707", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13708", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13709", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13710", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13711", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13712", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13713", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13714", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13715", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13716", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13717", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13718", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13719", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13720", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13721", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13722", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13723", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13724", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13725", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13726", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13727", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13728", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13729", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13730", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13731", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13732", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13733", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13734", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13735", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13736", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13737", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13738", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13739", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13740", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13741", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13742", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13743", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13744", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13745", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13746", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13747", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13748", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13749", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13750", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13751", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13752", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13753", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13754", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13755", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13756", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13757", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13758", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13759", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13760", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13761", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13762", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13763", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13764", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13765", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13766", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13767", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13768", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13769", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13770", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13771", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13772", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13773", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13774", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13775", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13776", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13777", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13778", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13779", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13780", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13781", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13782", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13783", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13784", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13785", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13786", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13787", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13788", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13789", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13790", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13791", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13792", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13793", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13794", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13795", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13796", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13797", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13798", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13799", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13800", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_16_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U10124", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_16_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U10125", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_16_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U10126", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_16_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U10127", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_16_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U10128", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_16_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U10129", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_16_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U10130", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_16_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U10131", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_16_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U10132", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_16_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U10133", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_16_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U10134", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_16_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U10135", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_16_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U10136", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_16_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U10137", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_16_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U10138", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_16_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U10139", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_16_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U10140", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_16_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_16 {
		conv2d_64_padded_window_stream_16 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_16 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_16_Pipeline_inputs {
		conv2d_64_padded_window_stream_16 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_13226 {Type I LastRead 0 FirstWrite -1}
		weights_load_13227 {Type I LastRead 0 FirstWrite -1}
		weights_load_13228 {Type I LastRead 0 FirstWrite -1}
		weights_load_13229 {Type I LastRead 0 FirstWrite -1}
		weights_load_13230 {Type I LastRead 0 FirstWrite -1}
		weights_load_13231 {Type I LastRead 0 FirstWrite -1}
		weights_load_13232 {Type I LastRead 0 FirstWrite -1}
		weights_load_13233 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_16 {Type O LastRead -1 FirstWrite 16}
		weights_load_13234 {Type I LastRead 0 FirstWrite -1}
		weights_load_13235 {Type I LastRead 0 FirstWrite -1}
		weights_load_13236 {Type I LastRead 0 FirstWrite -1}
		weights_load_13237 {Type I LastRead 0 FirstWrite -1}
		weights_load_13238 {Type I LastRead 0 FirstWrite -1}
		weights_load_13239 {Type I LastRead 0 FirstWrite -1}
		weights_load_13240 {Type I LastRead 0 FirstWrite -1}
		weights_load_13241 {Type I LastRead 0 FirstWrite -1}
		weights_load_13242 {Type I LastRead 0 FirstWrite -1}
		weights_load_13243 {Type I LastRead 0 FirstWrite -1}
		weights_load_13244 {Type I LastRead 0 FirstWrite -1}
		weights_load_13245 {Type I LastRead 0 FirstWrite -1}
		weights_load_13246 {Type I LastRead 0 FirstWrite -1}
		weights_load_13247 {Type I LastRead 0 FirstWrite -1}
		weights_load_13248 {Type I LastRead 0 FirstWrite -1}
		weights_load_13249 {Type I LastRead 0 FirstWrite -1}
		weights_load_13250 {Type I LastRead 0 FirstWrite -1}
		weights_load_13251 {Type I LastRead 0 FirstWrite -1}
		weights_load_13252 {Type I LastRead 0 FirstWrite -1}
		weights_load_13253 {Type I LastRead 0 FirstWrite -1}
		weights_load_13254 {Type I LastRead 0 FirstWrite -1}
		weights_load_13255 {Type I LastRead 0 FirstWrite -1}
		weights_load_13256 {Type I LastRead 0 FirstWrite -1}
		weights_load_13257 {Type I LastRead 0 FirstWrite -1}
		weights_load_13258 {Type I LastRead 0 FirstWrite -1}
		weights_load_13259 {Type I LastRead 0 FirstWrite -1}
		weights_load_13260 {Type I LastRead 0 FirstWrite -1}
		weights_load_13261 {Type I LastRead 0 FirstWrite -1}
		weights_load_13262 {Type I LastRead 0 FirstWrite -1}
		weights_load_13263 {Type I LastRead 0 FirstWrite -1}
		weights_load_13264 {Type I LastRead 0 FirstWrite -1}
		weights_load_13265 {Type I LastRead 0 FirstWrite -1}
		weights_load_13266 {Type I LastRead 0 FirstWrite -1}
		weights_load_13267 {Type I LastRead 0 FirstWrite -1}
		weights_load_13268 {Type I LastRead 0 FirstWrite -1}
		weights_load_13269 {Type I LastRead 0 FirstWrite -1}
		weights_load_13270 {Type I LastRead 0 FirstWrite -1}
		weights_load_13271 {Type I LastRead 0 FirstWrite -1}
		weights_load_13272 {Type I LastRead 0 FirstWrite -1}
		weights_load_13273 {Type I LastRead 0 FirstWrite -1}
		weights_load_13274 {Type I LastRead 0 FirstWrite -1}
		weights_load_13275 {Type I LastRead 0 FirstWrite -1}
		weights_load_13276 {Type I LastRead 0 FirstWrite -1}
		weights_load_13277 {Type I LastRead 0 FirstWrite -1}
		weights_load_13278 {Type I LastRead 0 FirstWrite -1}
		weights_load_13279 {Type I LastRead 0 FirstWrite -1}
		weights_load_13280 {Type I LastRead 0 FirstWrite -1}
		weights_load_13281 {Type I LastRead 0 FirstWrite -1}
		weights_load_13282 {Type I LastRead 0 FirstWrite -1}
		weights_load_13283 {Type I LastRead 0 FirstWrite -1}
		weights_load_13284 {Type I LastRead 0 FirstWrite -1}
		weights_load_13285 {Type I LastRead 0 FirstWrite -1}
		weights_load_13286 {Type I LastRead 0 FirstWrite -1}
		weights_load_13287 {Type I LastRead 0 FirstWrite -1}
		weights_load_13288 {Type I LastRead 0 FirstWrite -1}
		weights_load_13289 {Type I LastRead 0 FirstWrite -1}
		weights_load_13290 {Type I LastRead 0 FirstWrite -1}
		weights_load_13291 {Type I LastRead 0 FirstWrite -1}
		weights_load_13292 {Type I LastRead 0 FirstWrite -1}
		weights_load_13293 {Type I LastRead 0 FirstWrite -1}
		weights_load_13294 {Type I LastRead 0 FirstWrite -1}
		weights_load_13295 {Type I LastRead 0 FirstWrite -1}
		weights_load_13296 {Type I LastRead 0 FirstWrite -1}
		weights_load_13297 {Type I LastRead 0 FirstWrite -1}
		weights_load_13298 {Type I LastRead 0 FirstWrite -1}
		weights_load_13299 {Type I LastRead 0 FirstWrite -1}
		weights_load_13300 {Type I LastRead 0 FirstWrite -1}
		weights_load_13301 {Type I LastRead 0 FirstWrite -1}
		weights_load_13302 {Type I LastRead 0 FirstWrite -1}
		weights_load_13303 {Type I LastRead 0 FirstWrite -1}
		weights_load_13304 {Type I LastRead 0 FirstWrite -1}
		weights_load_13305 {Type I LastRead 0 FirstWrite -1}
		weights_load_13306 {Type I LastRead 0 FirstWrite -1}
		weights_load_13307 {Type I LastRead 0 FirstWrite -1}
		weights_load_13308 {Type I LastRead 0 FirstWrite -1}
		weights_load_13309 {Type I LastRead 0 FirstWrite -1}
		weights_load_13310 {Type I LastRead 0 FirstWrite -1}
		weights_load_13311 {Type I LastRead 0 FirstWrite -1}
		weights_load_13312 {Type I LastRead 0 FirstWrite -1}
		weights_load_13313 {Type I LastRead 0 FirstWrite -1}
		weights_load_13314 {Type I LastRead 0 FirstWrite -1}
		weights_load_13315 {Type I LastRead 0 FirstWrite -1}
		weights_load_13316 {Type I LastRead 0 FirstWrite -1}
		weights_load_13317 {Type I LastRead 0 FirstWrite -1}
		weights_load_13318 {Type I LastRead 0 FirstWrite -1}
		weights_load_13319 {Type I LastRead 0 FirstWrite -1}
		weights_load_13320 {Type I LastRead 0 FirstWrite -1}
		weights_load_13321 {Type I LastRead 0 FirstWrite -1}
		weights_load_13322 {Type I LastRead 0 FirstWrite -1}
		weights_load_13323 {Type I LastRead 0 FirstWrite -1}
		weights_load_13324 {Type I LastRead 0 FirstWrite -1}
		weights_load_13325 {Type I LastRead 0 FirstWrite -1}
		weights_load_13326 {Type I LastRead 0 FirstWrite -1}
		weights_load_13327 {Type I LastRead 0 FirstWrite -1}
		weights_load_13328 {Type I LastRead 0 FirstWrite -1}
		weights_load_13329 {Type I LastRead 0 FirstWrite -1}
		weights_load_13330 {Type I LastRead 0 FirstWrite -1}
		weights_load_13331 {Type I LastRead 0 FirstWrite -1}
		weights_load_13332 {Type I LastRead 0 FirstWrite -1}
		weights_load_13333 {Type I LastRead 0 FirstWrite -1}
		weights_load_13334 {Type I LastRead 0 FirstWrite -1}
		weights_load_13335 {Type I LastRead 0 FirstWrite -1}
		weights_load_13336 {Type I LastRead 0 FirstWrite -1}
		weights_load_13337 {Type I LastRead 0 FirstWrite -1}
		weights_load_13338 {Type I LastRead 0 FirstWrite -1}
		weights_load_13339 {Type I LastRead 0 FirstWrite -1}
		weights_load_13340 {Type I LastRead 0 FirstWrite -1}
		weights_load_13341 {Type I LastRead 0 FirstWrite -1}
		weights_load_13342 {Type I LastRead 0 FirstWrite -1}
		weights_load_13343 {Type I LastRead 0 FirstWrite -1}
		weights_load_13344 {Type I LastRead 0 FirstWrite -1}
		weights_load_13345 {Type I LastRead 0 FirstWrite -1}
		weights_load_13346 {Type I LastRead 0 FirstWrite -1}
		weights_load_13347 {Type I LastRead 0 FirstWrite -1}
		weights_load_13348 {Type I LastRead 0 FirstWrite -1}
		weights_load_13349 {Type I LastRead 0 FirstWrite -1}
		weights_load_13350 {Type I LastRead 0 FirstWrite -1}
		weights_load_13351 {Type I LastRead 0 FirstWrite -1}
		weights_load_13352 {Type I LastRead 0 FirstWrite -1}
		weights_load_13353 {Type I LastRead 0 FirstWrite -1}
		weights_load_13354 {Type I LastRead 0 FirstWrite -1}
		weights_load_13355 {Type I LastRead 0 FirstWrite -1}
		weights_load_13356 {Type I LastRead 0 FirstWrite -1}
		weights_load_13357 {Type I LastRead 0 FirstWrite -1}
		weights_load_13358 {Type I LastRead 0 FirstWrite -1}
		weights_load_13359 {Type I LastRead 0 FirstWrite -1}
		weights_load_13360 {Type I LastRead 0 FirstWrite -1}
		weights_load_13361 {Type I LastRead 0 FirstWrite -1}
		weights_load_13362 {Type I LastRead 0 FirstWrite -1}
		weights_load_13363 {Type I LastRead 0 FirstWrite -1}
		weights_load_13364 {Type I LastRead 0 FirstWrite -1}
		weights_load_13365 {Type I LastRead 0 FirstWrite -1}
		weights_load_13366 {Type I LastRead 0 FirstWrite -1}
		weights_load_13367 {Type I LastRead 0 FirstWrite -1}
		weights_load_13368 {Type I LastRead 0 FirstWrite -1}
		weights_load_13369 {Type I LastRead 0 FirstWrite -1}
		weights_load_13370 {Type I LastRead 0 FirstWrite -1}
		weights_load_13371 {Type I LastRead 0 FirstWrite -1}
		weights_load_13372 {Type I LastRead 0 FirstWrite -1}
		weights_load_13373 {Type I LastRead 0 FirstWrite -1}
		weights_load_13374 {Type I LastRead 0 FirstWrite -1}
		weights_load_13375 {Type I LastRead 0 FirstWrite -1}
		weights_load_13376 {Type I LastRead 0 FirstWrite -1}
		weights_load_13377 {Type I LastRead 0 FirstWrite -1}
		weights_load_13378 {Type I LastRead 0 FirstWrite -1}
		weights_load_13379 {Type I LastRead 0 FirstWrite -1}
		weights_load_13380 {Type I LastRead 0 FirstWrite -1}
		weights_load_13381 {Type I LastRead 0 FirstWrite -1}
		weights_load_13382 {Type I LastRead 0 FirstWrite -1}
		weights_load_13383 {Type I LastRead 0 FirstWrite -1}
		weights_load_13384 {Type I LastRead 0 FirstWrite -1}
		weights_load_13385 {Type I LastRead 0 FirstWrite -1}
		weights_load_13386 {Type I LastRead 0 FirstWrite -1}
		weights_load_13387 {Type I LastRead 0 FirstWrite -1}
		weights_load_13388 {Type I LastRead 0 FirstWrite -1}
		weights_load_13389 {Type I LastRead 0 FirstWrite -1}
		weights_load_13390 {Type I LastRead 0 FirstWrite -1}
		weights_load_13391 {Type I LastRead 0 FirstWrite -1}
		weights_load_13392 {Type I LastRead 0 FirstWrite -1}
		weights_load_13393 {Type I LastRead 0 FirstWrite -1}
		weights_load_13394 {Type I LastRead 0 FirstWrite -1}
		weights_load_13395 {Type I LastRead 0 FirstWrite -1}
		weights_load_13396 {Type I LastRead 0 FirstWrite -1}
		weights_load_13397 {Type I LastRead 0 FirstWrite -1}
		weights_load_13398 {Type I LastRead 0 FirstWrite -1}
		weights_load_13399 {Type I LastRead 0 FirstWrite -1}
		weights_load_13400 {Type I LastRead 0 FirstWrite -1}
		weights_load_13401 {Type I LastRead 0 FirstWrite -1}
		weights_load_13402 {Type I LastRead 0 FirstWrite -1}
		weights_load_13403 {Type I LastRead 0 FirstWrite -1}
		weights_load_13404 {Type I LastRead 0 FirstWrite -1}
		weights_load_13405 {Type I LastRead 0 FirstWrite -1}
		weights_load_13406 {Type I LastRead 0 FirstWrite -1}
		weights_load_13407 {Type I LastRead 0 FirstWrite -1}
		weights_load_13408 {Type I LastRead 0 FirstWrite -1}
		weights_load_13409 {Type I LastRead 0 FirstWrite -1}
		weights_load_13410 {Type I LastRead 0 FirstWrite -1}
		weights_load_13411 {Type I LastRead 0 FirstWrite -1}
		weights_load_13412 {Type I LastRead 0 FirstWrite -1}
		weights_load_13413 {Type I LastRead 0 FirstWrite -1}
		weights_load_13414 {Type I LastRead 0 FirstWrite -1}
		weights_load_13415 {Type I LastRead 0 FirstWrite -1}
		weights_load_13416 {Type I LastRead 0 FirstWrite -1}
		weights_load_13417 {Type I LastRead 0 FirstWrite -1}
		weights_load_13418 {Type I LastRead 0 FirstWrite -1}
		weights_load_13419 {Type I LastRead 0 FirstWrite -1}
		weights_load_13420 {Type I LastRead 0 FirstWrite -1}
		weights_load_13421 {Type I LastRead 0 FirstWrite -1}
		weights_load_13422 {Type I LastRead 0 FirstWrite -1}
		weights_load_13423 {Type I LastRead 0 FirstWrite -1}
		weights_load_13424 {Type I LastRead 0 FirstWrite -1}
		weights_load_13425 {Type I LastRead 0 FirstWrite -1}
		weights_load_13426 {Type I LastRead 0 FirstWrite -1}
		weights_load_13427 {Type I LastRead 0 FirstWrite -1}
		weights_load_13428 {Type I LastRead 0 FirstWrite -1}
		weights_load_13429 {Type I LastRead 0 FirstWrite -1}
		weights_load_13430 {Type I LastRead 0 FirstWrite -1}
		weights_load_13431 {Type I LastRead 0 FirstWrite -1}
		weights_load_13432 {Type I LastRead 0 FirstWrite -1}
		weights_load_13433 {Type I LastRead 0 FirstWrite -1}
		weights_load_13434 {Type I LastRead 0 FirstWrite -1}
		weights_load_13435 {Type I LastRead 0 FirstWrite -1}
		weights_load_13436 {Type I LastRead 0 FirstWrite -1}
		weights_load_13437 {Type I LastRead 0 FirstWrite -1}
		weights_load_13438 {Type I LastRead 0 FirstWrite -1}
		weights_load_13439 {Type I LastRead 0 FirstWrite -1}
		weights_load_13440 {Type I LastRead 0 FirstWrite -1}
		weights_load_13441 {Type I LastRead 0 FirstWrite -1}
		weights_load_13442 {Type I LastRead 0 FirstWrite -1}
		weights_load_13443 {Type I LastRead 0 FirstWrite -1}
		weights_load_13444 {Type I LastRead 0 FirstWrite -1}
		weights_load_13445 {Type I LastRead 0 FirstWrite -1}
		weights_load_13446 {Type I LastRead 0 FirstWrite -1}
		weights_load_13447 {Type I LastRead 0 FirstWrite -1}
		weights_load_13448 {Type I LastRead 0 FirstWrite -1}
		weights_load_13449 {Type I LastRead 0 FirstWrite -1}
		weights_load_13450 {Type I LastRead 0 FirstWrite -1}
		weights_load_13451 {Type I LastRead 0 FirstWrite -1}
		weights_load_13452 {Type I LastRead 0 FirstWrite -1}
		weights_load_13453 {Type I LastRead 0 FirstWrite -1}
		weights_load_13454 {Type I LastRead 0 FirstWrite -1}
		weights_load_13455 {Type I LastRead 0 FirstWrite -1}
		weights_load_13456 {Type I LastRead 0 FirstWrite -1}
		weights_load_13457 {Type I LastRead 0 FirstWrite -1}
		weights_load_13458 {Type I LastRead 0 FirstWrite -1}
		weights_load_13459 {Type I LastRead 0 FirstWrite -1}
		weights_load_13460 {Type I LastRead 0 FirstWrite -1}
		weights_load_13461 {Type I LastRead 0 FirstWrite -1}
		weights_load_13462 {Type I LastRead 0 FirstWrite -1}
		weights_load_13463 {Type I LastRead 0 FirstWrite -1}
		weights_load_13464 {Type I LastRead 0 FirstWrite -1}
		weights_load_13465 {Type I LastRead 0 FirstWrite -1}
		weights_load_13466 {Type I LastRead 0 FirstWrite -1}
		weights_load_13467 {Type I LastRead 0 FirstWrite -1}
		weights_load_13468 {Type I LastRead 0 FirstWrite -1}
		weights_load_13469 {Type I LastRead 0 FirstWrite -1}
		weights_load_13470 {Type I LastRead 0 FirstWrite -1}
		weights_load_13471 {Type I LastRead 0 FirstWrite -1}
		weights_load_13472 {Type I LastRead 0 FirstWrite -1}
		weights_load_13473 {Type I LastRead 0 FirstWrite -1}
		weights_load_13474 {Type I LastRead 0 FirstWrite -1}
		weights_load_13475 {Type I LastRead 0 FirstWrite -1}
		weights_load_13476 {Type I LastRead 0 FirstWrite -1}
		weights_load_13477 {Type I LastRead 0 FirstWrite -1}
		weights_load_13478 {Type I LastRead 0 FirstWrite -1}
		weights_load_13479 {Type I LastRead 0 FirstWrite -1}
		weights_load_13480 {Type I LastRead 0 FirstWrite -1}
		weights_load_13481 {Type I LastRead 0 FirstWrite -1}
		weights_load_13482 {Type I LastRead 0 FirstWrite -1}
		weights_load_13483 {Type I LastRead 0 FirstWrite -1}
		weights_load_13484 {Type I LastRead 0 FirstWrite -1}
		weights_load_13485 {Type I LastRead 0 FirstWrite -1}
		weights_load_13486 {Type I LastRead 0 FirstWrite -1}
		weights_load_13487 {Type I LastRead 0 FirstWrite -1}
		weights_load_13488 {Type I LastRead 0 FirstWrite -1}
		weights_load_13489 {Type I LastRead 0 FirstWrite -1}
		weights_load_13490 {Type I LastRead 0 FirstWrite -1}
		weights_load_13491 {Type I LastRead 0 FirstWrite -1}
		weights_load_13492 {Type I LastRead 0 FirstWrite -1}
		weights_load_13493 {Type I LastRead 0 FirstWrite -1}
		weights_load_13494 {Type I LastRead 0 FirstWrite -1}
		weights_load_13495 {Type I LastRead 0 FirstWrite -1}
		weights_load_13496 {Type I LastRead 0 FirstWrite -1}
		weights_load_13497 {Type I LastRead 0 FirstWrite -1}
		weights_load_13498 {Type I LastRead 0 FirstWrite -1}
		weights_load_13499 {Type I LastRead 0 FirstWrite -1}
		weights_load_13500 {Type I LastRead 0 FirstWrite -1}
		weights_load_13501 {Type I LastRead 0 FirstWrite -1}
		weights_load_13502 {Type I LastRead 0 FirstWrite -1}
		weights_load_13503 {Type I LastRead 0 FirstWrite -1}
		weights_load_13504 {Type I LastRead 0 FirstWrite -1}
		weights_load_13505 {Type I LastRead 0 FirstWrite -1}
		weights_load_13506 {Type I LastRead 0 FirstWrite -1}
		weights_load_13507 {Type I LastRead 0 FirstWrite -1}
		weights_load_13508 {Type I LastRead 0 FirstWrite -1}
		weights_load_13509 {Type I LastRead 0 FirstWrite -1}
		weights_load_13510 {Type I LastRead 0 FirstWrite -1}
		weights_load_13511 {Type I LastRead 0 FirstWrite -1}
		weights_load_13512 {Type I LastRead 0 FirstWrite -1}
		weights_load_13513 {Type I LastRead 0 FirstWrite -1}
		weights_load_13514 {Type I LastRead 0 FirstWrite -1}
		weights_load_13515 {Type I LastRead 0 FirstWrite -1}
		weights_load_13516 {Type I LastRead 0 FirstWrite -1}
		weights_load_13517 {Type I LastRead 0 FirstWrite -1}
		weights_load_13518 {Type I LastRead 0 FirstWrite -1}
		weights_load_13519 {Type I LastRead 0 FirstWrite -1}
		weights_load_13520 {Type I LastRead 0 FirstWrite -1}
		weights_load_13521 {Type I LastRead 0 FirstWrite -1}
		weights_load_13522 {Type I LastRead 0 FirstWrite -1}
		weights_load_13523 {Type I LastRead 0 FirstWrite -1}
		weights_load_13524 {Type I LastRead 0 FirstWrite -1}
		weights_load_13525 {Type I LastRead 0 FirstWrite -1}
		weights_load_13526 {Type I LastRead 0 FirstWrite -1}
		weights_load_13527 {Type I LastRead 0 FirstWrite -1}
		weights_load_13528 {Type I LastRead 0 FirstWrite -1}
		weights_load_13529 {Type I LastRead 0 FirstWrite -1}
		weights_load_13530 {Type I LastRead 0 FirstWrite -1}
		weights_load_13531 {Type I LastRead 0 FirstWrite -1}
		weights_load_13532 {Type I LastRead 0 FirstWrite -1}
		weights_load_13533 {Type I LastRead 0 FirstWrite -1}
		weights_load_13534 {Type I LastRead 0 FirstWrite -1}
		weights_load_13535 {Type I LastRead 0 FirstWrite -1}
		weights_load_13536 {Type I LastRead 0 FirstWrite -1}
		weights_load_13537 {Type I LastRead 0 FirstWrite -1}
		weights_load_13538 {Type I LastRead 0 FirstWrite -1}
		weights_load_13539 {Type I LastRead 0 FirstWrite -1}
		weights_load_13540 {Type I LastRead 0 FirstWrite -1}
		weights_load_13541 {Type I LastRead 0 FirstWrite -1}
		weights_load_13542 {Type I LastRead 0 FirstWrite -1}
		weights_load_13543 {Type I LastRead 0 FirstWrite -1}
		weights_load_13544 {Type I LastRead 0 FirstWrite -1}
		weights_load_13545 {Type I LastRead 0 FirstWrite -1}
		weights_load_13546 {Type I LastRead 0 FirstWrite -1}
		weights_load_13547 {Type I LastRead 0 FirstWrite -1}
		weights_load_13548 {Type I LastRead 0 FirstWrite -1}
		weights_load_13549 {Type I LastRead 0 FirstWrite -1}
		weights_load_13550 {Type I LastRead 0 FirstWrite -1}
		weights_load_13551 {Type I LastRead 0 FirstWrite -1}
		weights_load_13552 {Type I LastRead 0 FirstWrite -1}
		weights_load_13553 {Type I LastRead 0 FirstWrite -1}
		weights_load_13554 {Type I LastRead 0 FirstWrite -1}
		weights_load_13555 {Type I LastRead 0 FirstWrite -1}
		weights_load_13556 {Type I LastRead 0 FirstWrite -1}
		weights_load_13557 {Type I LastRead 0 FirstWrite -1}
		weights_load_13558 {Type I LastRead 0 FirstWrite -1}
		weights_load_13559 {Type I LastRead 0 FirstWrite -1}
		weights_load_13560 {Type I LastRead 0 FirstWrite -1}
		weights_load_13561 {Type I LastRead 0 FirstWrite -1}
		weights_load_13562 {Type I LastRead 0 FirstWrite -1}
		weights_load_13563 {Type I LastRead 0 FirstWrite -1}
		weights_load_13564 {Type I LastRead 0 FirstWrite -1}
		weights_load_13565 {Type I LastRead 0 FirstWrite -1}
		weights_load_13566 {Type I LastRead 0 FirstWrite -1}
		weights_load_13567 {Type I LastRead 0 FirstWrite -1}
		weights_load_13568 {Type I LastRead 0 FirstWrite -1}
		weights_load_13569 {Type I LastRead 0 FirstWrite -1}
		weights_load_13570 {Type I LastRead 0 FirstWrite -1}
		weights_load_13571 {Type I LastRead 0 FirstWrite -1}
		weights_load_13572 {Type I LastRead 0 FirstWrite -1}
		weights_load_13573 {Type I LastRead 0 FirstWrite -1}
		weights_load_13574 {Type I LastRead 0 FirstWrite -1}
		weights_load_13575 {Type I LastRead 0 FirstWrite -1}
		weights_load_13576 {Type I LastRead 0 FirstWrite -1}
		weights_load_13577 {Type I LastRead 0 FirstWrite -1}
		weights_load_13578 {Type I LastRead 0 FirstWrite -1}
		weights_load_13579 {Type I LastRead 0 FirstWrite -1}
		weights_load_13580 {Type I LastRead 0 FirstWrite -1}
		weights_load_13581 {Type I LastRead 0 FirstWrite -1}
		weights_load_13582 {Type I LastRead 0 FirstWrite -1}
		weights_load_13583 {Type I LastRead 0 FirstWrite -1}
		weights_load_13584 {Type I LastRead 0 FirstWrite -1}
		weights_load_13585 {Type I LastRead 0 FirstWrite -1}
		weights_load_13586 {Type I LastRead 0 FirstWrite -1}
		weights_load_13587 {Type I LastRead 0 FirstWrite -1}
		weights_load_13588 {Type I LastRead 0 FirstWrite -1}
		weights_load_13589 {Type I LastRead 0 FirstWrite -1}
		weights_load_13590 {Type I LastRead 0 FirstWrite -1}
		weights_load_13591 {Type I LastRead 0 FirstWrite -1}
		weights_load_13592 {Type I LastRead 0 FirstWrite -1}
		weights_load_13593 {Type I LastRead 0 FirstWrite -1}
		weights_load_13594 {Type I LastRead 0 FirstWrite -1}
		weights_load_13595 {Type I LastRead 0 FirstWrite -1}
		weights_load_13596 {Type I LastRead 0 FirstWrite -1}
		weights_load_13597 {Type I LastRead 0 FirstWrite -1}
		weights_load_13598 {Type I LastRead 0 FirstWrite -1}
		weights_load_13599 {Type I LastRead 0 FirstWrite -1}
		weights_load_13600 {Type I LastRead 0 FirstWrite -1}
		weights_load_13601 {Type I LastRead 0 FirstWrite -1}
		weights_load_13602 {Type I LastRead 0 FirstWrite -1}
		weights_load_13603 {Type I LastRead 0 FirstWrite -1}
		weights_load_13604 {Type I LastRead 0 FirstWrite -1}
		weights_load_13605 {Type I LastRead 0 FirstWrite -1}
		weights_load_13606 {Type I LastRead 0 FirstWrite -1}
		weights_load_13607 {Type I LastRead 0 FirstWrite -1}
		weights_load_13608 {Type I LastRead 0 FirstWrite -1}
		weights_load_13609 {Type I LastRead 0 FirstWrite -1}
		weights_load_13610 {Type I LastRead 0 FirstWrite -1}
		weights_load_13611 {Type I LastRead 0 FirstWrite -1}
		weights_load_13612 {Type I LastRead 0 FirstWrite -1}
		weights_load_13613 {Type I LastRead 0 FirstWrite -1}
		weights_load_13614 {Type I LastRead 0 FirstWrite -1}
		weights_load_13615 {Type I LastRead 0 FirstWrite -1}
		weights_load_13616 {Type I LastRead 0 FirstWrite -1}
		weights_load_13617 {Type I LastRead 0 FirstWrite -1}
		weights_load_13618 {Type I LastRead 0 FirstWrite -1}
		weights_load_13619 {Type I LastRead 0 FirstWrite -1}
		weights_load_13620 {Type I LastRead 0 FirstWrite -1}
		weights_load_13621 {Type I LastRead 0 FirstWrite -1}
		weights_load_13622 {Type I LastRead 0 FirstWrite -1}
		weights_load_13623 {Type I LastRead 0 FirstWrite -1}
		weights_load_13624 {Type I LastRead 0 FirstWrite -1}
		weights_load_13625 {Type I LastRead 0 FirstWrite -1}
		weights_load_13626 {Type I LastRead 0 FirstWrite -1}
		weights_load_13627 {Type I LastRead 0 FirstWrite -1}
		weights_load_13628 {Type I LastRead 0 FirstWrite -1}
		weights_load_13629 {Type I LastRead 0 FirstWrite -1}
		weights_load_13630 {Type I LastRead 0 FirstWrite -1}
		weights_load_13631 {Type I LastRead 0 FirstWrite -1}
		weights_load_13632 {Type I LastRead 0 FirstWrite -1}
		weights_load_13633 {Type I LastRead 0 FirstWrite -1}
		weights_load_13634 {Type I LastRead 0 FirstWrite -1}
		weights_load_13635 {Type I LastRead 0 FirstWrite -1}
		weights_load_13636 {Type I LastRead 0 FirstWrite -1}
		weights_load_13637 {Type I LastRead 0 FirstWrite -1}
		weights_load_13638 {Type I LastRead 0 FirstWrite -1}
		weights_load_13639 {Type I LastRead 0 FirstWrite -1}
		weights_load_13640 {Type I LastRead 0 FirstWrite -1}
		weights_load_13641 {Type I LastRead 0 FirstWrite -1}
		weights_load_13642 {Type I LastRead 0 FirstWrite -1}
		weights_load_13643 {Type I LastRead 0 FirstWrite -1}
		weights_load_13644 {Type I LastRead 0 FirstWrite -1}
		weights_load_13645 {Type I LastRead 0 FirstWrite -1}
		weights_load_13646 {Type I LastRead 0 FirstWrite -1}
		weights_load_13647 {Type I LastRead 0 FirstWrite -1}
		weights_load_13648 {Type I LastRead 0 FirstWrite -1}
		weights_load_13649 {Type I LastRead 0 FirstWrite -1}
		weights_load_13650 {Type I LastRead 0 FirstWrite -1}
		weights_load_13651 {Type I LastRead 0 FirstWrite -1}
		weights_load_13652 {Type I LastRead 0 FirstWrite -1}
		weights_load_13653 {Type I LastRead 0 FirstWrite -1}
		weights_load_13654 {Type I LastRead 0 FirstWrite -1}
		weights_load_13655 {Type I LastRead 0 FirstWrite -1}
		weights_load_13656 {Type I LastRead 0 FirstWrite -1}
		weights_load_13657 {Type I LastRead 0 FirstWrite -1}
		weights_load_13658 {Type I LastRead 0 FirstWrite -1}
		weights_load_13659 {Type I LastRead 0 FirstWrite -1}
		weights_load_13660 {Type I LastRead 0 FirstWrite -1}
		weights_load_13661 {Type I LastRead 0 FirstWrite -1}
		weights_load_13662 {Type I LastRead 0 FirstWrite -1}
		weights_load_13663 {Type I LastRead 0 FirstWrite -1}
		weights_load_13664 {Type I LastRead 0 FirstWrite -1}
		weights_load_13665 {Type I LastRead 0 FirstWrite -1}
		weights_load_13666 {Type I LastRead 0 FirstWrite -1}
		weights_load_13667 {Type I LastRead 0 FirstWrite -1}
		weights_load_13668 {Type I LastRead 0 FirstWrite -1}
		weights_load_13669 {Type I LastRead 0 FirstWrite -1}
		weights_load_13670 {Type I LastRead 0 FirstWrite -1}
		weights_load_13671 {Type I LastRead 0 FirstWrite -1}
		weights_load_13672 {Type I LastRead 0 FirstWrite -1}
		weights_load_13673 {Type I LastRead 0 FirstWrite -1}
		weights_load_13674 {Type I LastRead 0 FirstWrite -1}
		weights_load_13675 {Type I LastRead 0 FirstWrite -1}
		weights_load_13676 {Type I LastRead 0 FirstWrite -1}
		weights_load_13677 {Type I LastRead 0 FirstWrite -1}
		weights_load_13678 {Type I LastRead 0 FirstWrite -1}
		weights_load_13679 {Type I LastRead 0 FirstWrite -1}
		weights_load_13680 {Type I LastRead 0 FirstWrite -1}
		weights_load_13681 {Type I LastRead 0 FirstWrite -1}
		weights_load_13682 {Type I LastRead 0 FirstWrite -1}
		weights_load_13683 {Type I LastRead 0 FirstWrite -1}
		weights_load_13684 {Type I LastRead 0 FirstWrite -1}
		weights_load_13685 {Type I LastRead 0 FirstWrite -1}
		weights_load_13686 {Type I LastRead 0 FirstWrite -1}
		weights_load_13687 {Type I LastRead 0 FirstWrite -1}
		weights_load_13688 {Type I LastRead 0 FirstWrite -1}
		weights_load_13689 {Type I LastRead 0 FirstWrite -1}
		weights_load_13690 {Type I LastRead 0 FirstWrite -1}
		weights_load_13691 {Type I LastRead 0 FirstWrite -1}
		weights_load_13692 {Type I LastRead 0 FirstWrite -1}
		weights_load_13693 {Type I LastRead 0 FirstWrite -1}
		weights_load_13694 {Type I LastRead 0 FirstWrite -1}
		weights_load_13695 {Type I LastRead 0 FirstWrite -1}
		weights_load_13696 {Type I LastRead 0 FirstWrite -1}
		weights_load_13697 {Type I LastRead 0 FirstWrite -1}
		weights_load_13698 {Type I LastRead 0 FirstWrite -1}
		weights_load_13699 {Type I LastRead 0 FirstWrite -1}
		weights_load_13700 {Type I LastRead 0 FirstWrite -1}
		weights_load_13701 {Type I LastRead 0 FirstWrite -1}
		weights_load_13702 {Type I LastRead 0 FirstWrite -1}
		weights_load_13703 {Type I LastRead 0 FirstWrite -1}
		weights_load_13704 {Type I LastRead 0 FirstWrite -1}
		weights_load_13705 {Type I LastRead 0 FirstWrite -1}
		weights_load_13706 {Type I LastRead 0 FirstWrite -1}
		weights_load_13707 {Type I LastRead 0 FirstWrite -1}
		weights_load_13708 {Type I LastRead 0 FirstWrite -1}
		weights_load_13709 {Type I LastRead 0 FirstWrite -1}
		weights_load_13710 {Type I LastRead 0 FirstWrite -1}
		weights_load_13711 {Type I LastRead 0 FirstWrite -1}
		weights_load_13712 {Type I LastRead 0 FirstWrite -1}
		weights_load_13713 {Type I LastRead 0 FirstWrite -1}
		weights_load_13714 {Type I LastRead 0 FirstWrite -1}
		weights_load_13715 {Type I LastRead 0 FirstWrite -1}
		weights_load_13716 {Type I LastRead 0 FirstWrite -1}
		weights_load_13717 {Type I LastRead 0 FirstWrite -1}
		weights_load_13718 {Type I LastRead 0 FirstWrite -1}
		weights_load_13719 {Type I LastRead 0 FirstWrite -1}
		weights_load_13720 {Type I LastRead 0 FirstWrite -1}
		weights_load_13721 {Type I LastRead 0 FirstWrite -1}
		weights_load_13722 {Type I LastRead 0 FirstWrite -1}
		weights_load_13723 {Type I LastRead 0 FirstWrite -1}
		weights_load_13724 {Type I LastRead 0 FirstWrite -1}
		weights_load_13725 {Type I LastRead 0 FirstWrite -1}
		weights_load_13726 {Type I LastRead 0 FirstWrite -1}
		weights_load_13727 {Type I LastRead 0 FirstWrite -1}
		weights_load_13728 {Type I LastRead 0 FirstWrite -1}
		weights_load_13729 {Type I LastRead 0 FirstWrite -1}
		weights_load_13730 {Type I LastRead 0 FirstWrite -1}
		weights_load_13731 {Type I LastRead 0 FirstWrite -1}
		weights_load_13732 {Type I LastRead 0 FirstWrite -1}
		weights_load_13733 {Type I LastRead 0 FirstWrite -1}
		weights_load_13734 {Type I LastRead 0 FirstWrite -1}
		weights_load_13735 {Type I LastRead 0 FirstWrite -1}
		weights_load_13736 {Type I LastRead 0 FirstWrite -1}
		weights_load_13737 {Type I LastRead 0 FirstWrite -1}
		weights_load_13738 {Type I LastRead 0 FirstWrite -1}
		weights_load_13739 {Type I LastRead 0 FirstWrite -1}
		weights_load_13740 {Type I LastRead 0 FirstWrite -1}
		weights_load_13741 {Type I LastRead 0 FirstWrite -1}
		weights_load_13742 {Type I LastRead 0 FirstWrite -1}
		weights_load_13743 {Type I LastRead 0 FirstWrite -1}
		weights_load_13744 {Type I LastRead 0 FirstWrite -1}
		weights_load_13745 {Type I LastRead 0 FirstWrite -1}
		weights_load_13746 {Type I LastRead 0 FirstWrite -1}
		weights_load_13747 {Type I LastRead 0 FirstWrite -1}
		weights_load_13748 {Type I LastRead 0 FirstWrite -1}
		weights_load_13749 {Type I LastRead 0 FirstWrite -1}
		weights_load_13750 {Type I LastRead 0 FirstWrite -1}
		weights_load_13751 {Type I LastRead 0 FirstWrite -1}
		weights_load_13752 {Type I LastRead 0 FirstWrite -1}
		weights_load_13753 {Type I LastRead 0 FirstWrite -1}
		weights_load_13754 {Type I LastRead 0 FirstWrite -1}
		weights_load_13755 {Type I LastRead 0 FirstWrite -1}
		weights_load_13756 {Type I LastRead 0 FirstWrite -1}
		weights_load_13757 {Type I LastRead 0 FirstWrite -1}
		weights_load_13758 {Type I LastRead 0 FirstWrite -1}
		weights_load_13759 {Type I LastRead 0 FirstWrite -1}
		weights_load_13760 {Type I LastRead 0 FirstWrite -1}
		weights_load_13761 {Type I LastRead 0 FirstWrite -1}
		weights_load_13762 {Type I LastRead 0 FirstWrite -1}
		weights_load_13763 {Type I LastRead 0 FirstWrite -1}
		weights_load_13764 {Type I LastRead 0 FirstWrite -1}
		weights_load_13765 {Type I LastRead 0 FirstWrite -1}
		weights_load_13766 {Type I LastRead 0 FirstWrite -1}
		weights_load_13767 {Type I LastRead 0 FirstWrite -1}
		weights_load_13768 {Type I LastRead 0 FirstWrite -1}
		weights_load_13769 {Type I LastRead 0 FirstWrite -1}
		weights_load_13770 {Type I LastRead 0 FirstWrite -1}
		weights_load_13771 {Type I LastRead 0 FirstWrite -1}
		weights_load_13772 {Type I LastRead 0 FirstWrite -1}
		weights_load_13773 {Type I LastRead 0 FirstWrite -1}
		weights_load_13774 {Type I LastRead 0 FirstWrite -1}
		weights_load_13775 {Type I LastRead 0 FirstWrite -1}
		weights_load_13776 {Type I LastRead 0 FirstWrite -1}
		weights_load_13777 {Type I LastRead 0 FirstWrite -1}
		weights_load_13778 {Type I LastRead 0 FirstWrite -1}
		weights_load_13779 {Type I LastRead 0 FirstWrite -1}
		weights_load_13780 {Type I LastRead 0 FirstWrite -1}
		weights_load_13781 {Type I LastRead 0 FirstWrite -1}
		weights_load_13782 {Type I LastRead 0 FirstWrite -1}
		weights_load_13783 {Type I LastRead 0 FirstWrite -1}
		weights_load_13784 {Type I LastRead 0 FirstWrite -1}
		weights_load_13785 {Type I LastRead 0 FirstWrite -1}
		weights_load_13786 {Type I LastRead 0 FirstWrite -1}
		weights_load_13787 {Type I LastRead 0 FirstWrite -1}
		weights_load_13788 {Type I LastRead 0 FirstWrite -1}
		weights_load_13789 {Type I LastRead 0 FirstWrite -1}
		weights_load_13790 {Type I LastRead 0 FirstWrite -1}
		weights_load_13791 {Type I LastRead 0 FirstWrite -1}
		weights_load_13792 {Type I LastRead 0 FirstWrite -1}
		weights_load_13793 {Type I LastRead 0 FirstWrite -1}
		weights_load_13794 {Type I LastRead 0 FirstWrite -1}
		weights_load_13795 {Type I LastRead 0 FirstWrite -1}
		weights_load_13796 {Type I LastRead 0 FirstWrite -1}
		weights_load_13797 {Type I LastRead 0 FirstWrite -1}
		weights_load_13798 {Type I LastRead 0 FirstWrite -1}
		weights_load_13799 {Type I LastRead 0 FirstWrite -1}
		weights_load_13800 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_16 { ap_fifo {  { conv2d_64_padded_window_stream_16_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_16_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_16_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_16_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_16_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_16 { ap_fifo {  { in_channel_map_stream_16_din fifo_port_we 1 32 }  { in_channel_map_stream_16_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_16_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_16_full_n fifo_status 0 1 }  { in_channel_map_stream_16_write fifo_data 1 1 } } }
}
