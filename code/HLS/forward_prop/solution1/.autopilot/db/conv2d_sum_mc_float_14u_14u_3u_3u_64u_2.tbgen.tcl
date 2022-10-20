set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_2
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.2}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_2 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_2 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_2", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_2_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_2_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_2_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_2_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_2_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_2_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_2_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_2_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_2_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_2_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_2", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_2", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_2", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_2", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_2", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_2", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_2", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_2", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_2", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_2", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_2",
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
			{"Name" : "conv2d_64_padded_window_stream_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_2_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_2", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_2_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_2", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_2_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_2_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10926", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10927", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10928", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10929", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10930", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10931", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10932", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10933", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_10934", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10935", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10936", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10937", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10938", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10939", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10940", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10941", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10942", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10943", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10944", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10945", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10946", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10947", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10948", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10949", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10950", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10951", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10952", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10953", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10954", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10955", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10956", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10957", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10958", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10959", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10960", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10961", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10962", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10963", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10964", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10965", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10966", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10967", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10968", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10969", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10970", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10971", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10972", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10973", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10974", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10975", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10976", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10977", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10978", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10979", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10980", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10981", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10982", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10983", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10984", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10985", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10986", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10987", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10988", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10989", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10990", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10991", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10992", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10993", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10994", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10995", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10996", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10997", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10998", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10999", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11000", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11001", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11002", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11003", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11004", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11005", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11006", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11007", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11008", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11009", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11010", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11011", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11012", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11013", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11014", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11015", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11016", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11017", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11018", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11019", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11020", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11021", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11022", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11023", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11024", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11025", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11026", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11027", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11028", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11029", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11030", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11031", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11032", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11033", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11034", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11035", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11036", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11037", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11038", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11039", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11040", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11041", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11042", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11043", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11044", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11045", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11046", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11047", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11048", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11049", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11050", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11051", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11052", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11053", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11054", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11055", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11056", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11057", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11058", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11059", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11060", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11061", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11062", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11063", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11064", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11065", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11066", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11067", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11068", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11069", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11070", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11071", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11072", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11073", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11074", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11075", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11076", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11077", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11078", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11079", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11080", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11081", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11082", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11083", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11084", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11085", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11086", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11087", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11088", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11089", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11090", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11091", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11092", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11093", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11094", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11095", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11096", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11097", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11098", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11099", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11100", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11101", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11102", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11103", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11104", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11105", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11106", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11107", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11108", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11109", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11110", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11111", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11112", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11113", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11114", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11115", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11116", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11117", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11118", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11119", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11120", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11121", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11122", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11123", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11124", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11125", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11126", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11127", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11128", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11129", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11130", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11131", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11132", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11133", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11134", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11135", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11136", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11137", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11138", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11139", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11140", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11141", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11142", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11143", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11144", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11145", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11146", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11147", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11148", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11149", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11150", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11151", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11152", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11153", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11154", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11155", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11156", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11157", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11158", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11159", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11160", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11161", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11162", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11163", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11164", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11165", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11166", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11167", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11168", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11169", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11170", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11171", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11172", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11173", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11174", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11175", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11176", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11177", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11178", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11179", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11180", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11181", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11182", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11183", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11184", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11185", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11186", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11187", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11188", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11189", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11190", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11191", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11192", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11193", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11194", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11195", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11196", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11197", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11198", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11199", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11200", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11201", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11202", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11203", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11204", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11205", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11206", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11207", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11208", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11209", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11210", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11211", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11212", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11213", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11214", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11215", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11216", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11217", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11218", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11219", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11220", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11221", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11222", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11223", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11224", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11225", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11226", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11227", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11228", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11229", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11230", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11231", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11232", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11233", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11234", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11235", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11236", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11237", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11238", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11239", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11240", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11241", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11242", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11243", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11244", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11245", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11246", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11247", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11248", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11249", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11250", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11251", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11252", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11253", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11254", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11255", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11256", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11257", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11258", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11259", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11260", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11261", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11262", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11263", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11264", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11265", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11266", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11267", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11268", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11269", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11270", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11271", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11272", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11273", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11274", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11275", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11276", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11277", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11278", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11279", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11280", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11281", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11282", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11283", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11284", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11285", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11286", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11287", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11288", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11289", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11290", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11291", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11292", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11293", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11294", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11295", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11296", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11297", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11298", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11299", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11300", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11301", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11302", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11303", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11304", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11305", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11306", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11307", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11308", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11309", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11310", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11311", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11312", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11313", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11314", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11315", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11316", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11317", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11318", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11319", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11320", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11321", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11322", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11323", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11324", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11325", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11326", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11327", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11328", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11329", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11330", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11331", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11332", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11333", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11334", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11335", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11336", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11337", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11338", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11339", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11340", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11341", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11342", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11343", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11344", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11345", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11346", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11347", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11348", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11349", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11350", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11351", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11352", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11353", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11354", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11355", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11356", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11357", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11358", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11359", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11360", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11361", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11362", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11363", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11364", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11365", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11366", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11367", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11368", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11369", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11370", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11371", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11372", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11373", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11374", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11375", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11376", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11377", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11378", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11379", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11380", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11381", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11382", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11383", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11384", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11385", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11386", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11387", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11388", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11389", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11390", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11391", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11392", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11393", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11394", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11395", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11396", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11397", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11398", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11399", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11400", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11401", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11402", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11403", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11404", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11405", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11406", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11407", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11408", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11409", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11410", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11411", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11412", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11413", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11414", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11415", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11416", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11417", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11418", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11419", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11420", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11421", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11422", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11423", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11424", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11425", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11426", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11427", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11428", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11429", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11430", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11431", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11432", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11433", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11434", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11435", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11436", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11437", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11438", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11439", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11440", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11441", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11442", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11443", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11444", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11445", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11446", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11447", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11448", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11449", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11450", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11451", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11452", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11453", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11454", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11455", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11456", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11457", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11458", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11459", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11460", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11461", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11462", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11463", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11464", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11465", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11466", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11467", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11468", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11469", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11470", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11471", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11472", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11473", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11474", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11475", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11476", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11477", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11478", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11479", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11480", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11481", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11482", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11483", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11484", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11485", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11486", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11487", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11488", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11489", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11490", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11491", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11492", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11493", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11494", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11495", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11496", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11497", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11498", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11499", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11500", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_2_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U1752", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_2_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U1753", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_2_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U1754", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_2_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U1755", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_2_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U1756", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_2_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U1757", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_2_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U1758", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_2_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U1759", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_2_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U1760", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_2_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U1761", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_2_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U1762", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_2_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U1763", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_2_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U1764", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_2_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U1765", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_2_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U1766", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_2_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U1767", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_2_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U1768", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_2_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_2 {
		conv2d_64_padded_window_stream_2 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_2 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_2_Pipeline_inputs {
		conv2d_64_padded_window_stream_2 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_10926 {Type I LastRead 0 FirstWrite -1}
		weights_load_10927 {Type I LastRead 0 FirstWrite -1}
		weights_load_10928 {Type I LastRead 0 FirstWrite -1}
		weights_load_10929 {Type I LastRead 0 FirstWrite -1}
		weights_load_10930 {Type I LastRead 0 FirstWrite -1}
		weights_load_10931 {Type I LastRead 0 FirstWrite -1}
		weights_load_10932 {Type I LastRead 0 FirstWrite -1}
		weights_load_10933 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_2 {Type O LastRead -1 FirstWrite 16}
		weights_load_10934 {Type I LastRead 0 FirstWrite -1}
		weights_load_10935 {Type I LastRead 0 FirstWrite -1}
		weights_load_10936 {Type I LastRead 0 FirstWrite -1}
		weights_load_10937 {Type I LastRead 0 FirstWrite -1}
		weights_load_10938 {Type I LastRead 0 FirstWrite -1}
		weights_load_10939 {Type I LastRead 0 FirstWrite -1}
		weights_load_10940 {Type I LastRead 0 FirstWrite -1}
		weights_load_10941 {Type I LastRead 0 FirstWrite -1}
		weights_load_10942 {Type I LastRead 0 FirstWrite -1}
		weights_load_10943 {Type I LastRead 0 FirstWrite -1}
		weights_load_10944 {Type I LastRead 0 FirstWrite -1}
		weights_load_10945 {Type I LastRead 0 FirstWrite -1}
		weights_load_10946 {Type I LastRead 0 FirstWrite -1}
		weights_load_10947 {Type I LastRead 0 FirstWrite -1}
		weights_load_10948 {Type I LastRead 0 FirstWrite -1}
		weights_load_10949 {Type I LastRead 0 FirstWrite -1}
		weights_load_10950 {Type I LastRead 0 FirstWrite -1}
		weights_load_10951 {Type I LastRead 0 FirstWrite -1}
		weights_load_10952 {Type I LastRead 0 FirstWrite -1}
		weights_load_10953 {Type I LastRead 0 FirstWrite -1}
		weights_load_10954 {Type I LastRead 0 FirstWrite -1}
		weights_load_10955 {Type I LastRead 0 FirstWrite -1}
		weights_load_10956 {Type I LastRead 0 FirstWrite -1}
		weights_load_10957 {Type I LastRead 0 FirstWrite -1}
		weights_load_10958 {Type I LastRead 0 FirstWrite -1}
		weights_load_10959 {Type I LastRead 0 FirstWrite -1}
		weights_load_10960 {Type I LastRead 0 FirstWrite -1}
		weights_load_10961 {Type I LastRead 0 FirstWrite -1}
		weights_load_10962 {Type I LastRead 0 FirstWrite -1}
		weights_load_10963 {Type I LastRead 0 FirstWrite -1}
		weights_load_10964 {Type I LastRead 0 FirstWrite -1}
		weights_load_10965 {Type I LastRead 0 FirstWrite -1}
		weights_load_10966 {Type I LastRead 0 FirstWrite -1}
		weights_load_10967 {Type I LastRead 0 FirstWrite -1}
		weights_load_10968 {Type I LastRead 0 FirstWrite -1}
		weights_load_10969 {Type I LastRead 0 FirstWrite -1}
		weights_load_10970 {Type I LastRead 0 FirstWrite -1}
		weights_load_10971 {Type I LastRead 0 FirstWrite -1}
		weights_load_10972 {Type I LastRead 0 FirstWrite -1}
		weights_load_10973 {Type I LastRead 0 FirstWrite -1}
		weights_load_10974 {Type I LastRead 0 FirstWrite -1}
		weights_load_10975 {Type I LastRead 0 FirstWrite -1}
		weights_load_10976 {Type I LastRead 0 FirstWrite -1}
		weights_load_10977 {Type I LastRead 0 FirstWrite -1}
		weights_load_10978 {Type I LastRead 0 FirstWrite -1}
		weights_load_10979 {Type I LastRead 0 FirstWrite -1}
		weights_load_10980 {Type I LastRead 0 FirstWrite -1}
		weights_load_10981 {Type I LastRead 0 FirstWrite -1}
		weights_load_10982 {Type I LastRead 0 FirstWrite -1}
		weights_load_10983 {Type I LastRead 0 FirstWrite -1}
		weights_load_10984 {Type I LastRead 0 FirstWrite -1}
		weights_load_10985 {Type I LastRead 0 FirstWrite -1}
		weights_load_10986 {Type I LastRead 0 FirstWrite -1}
		weights_load_10987 {Type I LastRead 0 FirstWrite -1}
		weights_load_10988 {Type I LastRead 0 FirstWrite -1}
		weights_load_10989 {Type I LastRead 0 FirstWrite -1}
		weights_load_10990 {Type I LastRead 0 FirstWrite -1}
		weights_load_10991 {Type I LastRead 0 FirstWrite -1}
		weights_load_10992 {Type I LastRead 0 FirstWrite -1}
		weights_load_10993 {Type I LastRead 0 FirstWrite -1}
		weights_load_10994 {Type I LastRead 0 FirstWrite -1}
		weights_load_10995 {Type I LastRead 0 FirstWrite -1}
		weights_load_10996 {Type I LastRead 0 FirstWrite -1}
		weights_load_10997 {Type I LastRead 0 FirstWrite -1}
		weights_load_10998 {Type I LastRead 0 FirstWrite -1}
		weights_load_10999 {Type I LastRead 0 FirstWrite -1}
		weights_load_11000 {Type I LastRead 0 FirstWrite -1}
		weights_load_11001 {Type I LastRead 0 FirstWrite -1}
		weights_load_11002 {Type I LastRead 0 FirstWrite -1}
		weights_load_11003 {Type I LastRead 0 FirstWrite -1}
		weights_load_11004 {Type I LastRead 0 FirstWrite -1}
		weights_load_11005 {Type I LastRead 0 FirstWrite -1}
		weights_load_11006 {Type I LastRead 0 FirstWrite -1}
		weights_load_11007 {Type I LastRead 0 FirstWrite -1}
		weights_load_11008 {Type I LastRead 0 FirstWrite -1}
		weights_load_11009 {Type I LastRead 0 FirstWrite -1}
		weights_load_11010 {Type I LastRead 0 FirstWrite -1}
		weights_load_11011 {Type I LastRead 0 FirstWrite -1}
		weights_load_11012 {Type I LastRead 0 FirstWrite -1}
		weights_load_11013 {Type I LastRead 0 FirstWrite -1}
		weights_load_11014 {Type I LastRead 0 FirstWrite -1}
		weights_load_11015 {Type I LastRead 0 FirstWrite -1}
		weights_load_11016 {Type I LastRead 0 FirstWrite -1}
		weights_load_11017 {Type I LastRead 0 FirstWrite -1}
		weights_load_11018 {Type I LastRead 0 FirstWrite -1}
		weights_load_11019 {Type I LastRead 0 FirstWrite -1}
		weights_load_11020 {Type I LastRead 0 FirstWrite -1}
		weights_load_11021 {Type I LastRead 0 FirstWrite -1}
		weights_load_11022 {Type I LastRead 0 FirstWrite -1}
		weights_load_11023 {Type I LastRead 0 FirstWrite -1}
		weights_load_11024 {Type I LastRead 0 FirstWrite -1}
		weights_load_11025 {Type I LastRead 0 FirstWrite -1}
		weights_load_11026 {Type I LastRead 0 FirstWrite -1}
		weights_load_11027 {Type I LastRead 0 FirstWrite -1}
		weights_load_11028 {Type I LastRead 0 FirstWrite -1}
		weights_load_11029 {Type I LastRead 0 FirstWrite -1}
		weights_load_11030 {Type I LastRead 0 FirstWrite -1}
		weights_load_11031 {Type I LastRead 0 FirstWrite -1}
		weights_load_11032 {Type I LastRead 0 FirstWrite -1}
		weights_load_11033 {Type I LastRead 0 FirstWrite -1}
		weights_load_11034 {Type I LastRead 0 FirstWrite -1}
		weights_load_11035 {Type I LastRead 0 FirstWrite -1}
		weights_load_11036 {Type I LastRead 0 FirstWrite -1}
		weights_load_11037 {Type I LastRead 0 FirstWrite -1}
		weights_load_11038 {Type I LastRead 0 FirstWrite -1}
		weights_load_11039 {Type I LastRead 0 FirstWrite -1}
		weights_load_11040 {Type I LastRead 0 FirstWrite -1}
		weights_load_11041 {Type I LastRead 0 FirstWrite -1}
		weights_load_11042 {Type I LastRead 0 FirstWrite -1}
		weights_load_11043 {Type I LastRead 0 FirstWrite -1}
		weights_load_11044 {Type I LastRead 0 FirstWrite -1}
		weights_load_11045 {Type I LastRead 0 FirstWrite -1}
		weights_load_11046 {Type I LastRead 0 FirstWrite -1}
		weights_load_11047 {Type I LastRead 0 FirstWrite -1}
		weights_load_11048 {Type I LastRead 0 FirstWrite -1}
		weights_load_11049 {Type I LastRead 0 FirstWrite -1}
		weights_load_11050 {Type I LastRead 0 FirstWrite -1}
		weights_load_11051 {Type I LastRead 0 FirstWrite -1}
		weights_load_11052 {Type I LastRead 0 FirstWrite -1}
		weights_load_11053 {Type I LastRead 0 FirstWrite -1}
		weights_load_11054 {Type I LastRead 0 FirstWrite -1}
		weights_load_11055 {Type I LastRead 0 FirstWrite -1}
		weights_load_11056 {Type I LastRead 0 FirstWrite -1}
		weights_load_11057 {Type I LastRead 0 FirstWrite -1}
		weights_load_11058 {Type I LastRead 0 FirstWrite -1}
		weights_load_11059 {Type I LastRead 0 FirstWrite -1}
		weights_load_11060 {Type I LastRead 0 FirstWrite -1}
		weights_load_11061 {Type I LastRead 0 FirstWrite -1}
		weights_load_11062 {Type I LastRead 0 FirstWrite -1}
		weights_load_11063 {Type I LastRead 0 FirstWrite -1}
		weights_load_11064 {Type I LastRead 0 FirstWrite -1}
		weights_load_11065 {Type I LastRead 0 FirstWrite -1}
		weights_load_11066 {Type I LastRead 0 FirstWrite -1}
		weights_load_11067 {Type I LastRead 0 FirstWrite -1}
		weights_load_11068 {Type I LastRead 0 FirstWrite -1}
		weights_load_11069 {Type I LastRead 0 FirstWrite -1}
		weights_load_11070 {Type I LastRead 0 FirstWrite -1}
		weights_load_11071 {Type I LastRead 0 FirstWrite -1}
		weights_load_11072 {Type I LastRead 0 FirstWrite -1}
		weights_load_11073 {Type I LastRead 0 FirstWrite -1}
		weights_load_11074 {Type I LastRead 0 FirstWrite -1}
		weights_load_11075 {Type I LastRead 0 FirstWrite -1}
		weights_load_11076 {Type I LastRead 0 FirstWrite -1}
		weights_load_11077 {Type I LastRead 0 FirstWrite -1}
		weights_load_11078 {Type I LastRead 0 FirstWrite -1}
		weights_load_11079 {Type I LastRead 0 FirstWrite -1}
		weights_load_11080 {Type I LastRead 0 FirstWrite -1}
		weights_load_11081 {Type I LastRead 0 FirstWrite -1}
		weights_load_11082 {Type I LastRead 0 FirstWrite -1}
		weights_load_11083 {Type I LastRead 0 FirstWrite -1}
		weights_load_11084 {Type I LastRead 0 FirstWrite -1}
		weights_load_11085 {Type I LastRead 0 FirstWrite -1}
		weights_load_11086 {Type I LastRead 0 FirstWrite -1}
		weights_load_11087 {Type I LastRead 0 FirstWrite -1}
		weights_load_11088 {Type I LastRead 0 FirstWrite -1}
		weights_load_11089 {Type I LastRead 0 FirstWrite -1}
		weights_load_11090 {Type I LastRead 0 FirstWrite -1}
		weights_load_11091 {Type I LastRead 0 FirstWrite -1}
		weights_load_11092 {Type I LastRead 0 FirstWrite -1}
		weights_load_11093 {Type I LastRead 0 FirstWrite -1}
		weights_load_11094 {Type I LastRead 0 FirstWrite -1}
		weights_load_11095 {Type I LastRead 0 FirstWrite -1}
		weights_load_11096 {Type I LastRead 0 FirstWrite -1}
		weights_load_11097 {Type I LastRead 0 FirstWrite -1}
		weights_load_11098 {Type I LastRead 0 FirstWrite -1}
		weights_load_11099 {Type I LastRead 0 FirstWrite -1}
		weights_load_11100 {Type I LastRead 0 FirstWrite -1}
		weights_load_11101 {Type I LastRead 0 FirstWrite -1}
		weights_load_11102 {Type I LastRead 0 FirstWrite -1}
		weights_load_11103 {Type I LastRead 0 FirstWrite -1}
		weights_load_11104 {Type I LastRead 0 FirstWrite -1}
		weights_load_11105 {Type I LastRead 0 FirstWrite -1}
		weights_load_11106 {Type I LastRead 0 FirstWrite -1}
		weights_load_11107 {Type I LastRead 0 FirstWrite -1}
		weights_load_11108 {Type I LastRead 0 FirstWrite -1}
		weights_load_11109 {Type I LastRead 0 FirstWrite -1}
		weights_load_11110 {Type I LastRead 0 FirstWrite -1}
		weights_load_11111 {Type I LastRead 0 FirstWrite -1}
		weights_load_11112 {Type I LastRead 0 FirstWrite -1}
		weights_load_11113 {Type I LastRead 0 FirstWrite -1}
		weights_load_11114 {Type I LastRead 0 FirstWrite -1}
		weights_load_11115 {Type I LastRead 0 FirstWrite -1}
		weights_load_11116 {Type I LastRead 0 FirstWrite -1}
		weights_load_11117 {Type I LastRead 0 FirstWrite -1}
		weights_load_11118 {Type I LastRead 0 FirstWrite -1}
		weights_load_11119 {Type I LastRead 0 FirstWrite -1}
		weights_load_11120 {Type I LastRead 0 FirstWrite -1}
		weights_load_11121 {Type I LastRead 0 FirstWrite -1}
		weights_load_11122 {Type I LastRead 0 FirstWrite -1}
		weights_load_11123 {Type I LastRead 0 FirstWrite -1}
		weights_load_11124 {Type I LastRead 0 FirstWrite -1}
		weights_load_11125 {Type I LastRead 0 FirstWrite -1}
		weights_load_11126 {Type I LastRead 0 FirstWrite -1}
		weights_load_11127 {Type I LastRead 0 FirstWrite -1}
		weights_load_11128 {Type I LastRead 0 FirstWrite -1}
		weights_load_11129 {Type I LastRead 0 FirstWrite -1}
		weights_load_11130 {Type I LastRead 0 FirstWrite -1}
		weights_load_11131 {Type I LastRead 0 FirstWrite -1}
		weights_load_11132 {Type I LastRead 0 FirstWrite -1}
		weights_load_11133 {Type I LastRead 0 FirstWrite -1}
		weights_load_11134 {Type I LastRead 0 FirstWrite -1}
		weights_load_11135 {Type I LastRead 0 FirstWrite -1}
		weights_load_11136 {Type I LastRead 0 FirstWrite -1}
		weights_load_11137 {Type I LastRead 0 FirstWrite -1}
		weights_load_11138 {Type I LastRead 0 FirstWrite -1}
		weights_load_11139 {Type I LastRead 0 FirstWrite -1}
		weights_load_11140 {Type I LastRead 0 FirstWrite -1}
		weights_load_11141 {Type I LastRead 0 FirstWrite -1}
		weights_load_11142 {Type I LastRead 0 FirstWrite -1}
		weights_load_11143 {Type I LastRead 0 FirstWrite -1}
		weights_load_11144 {Type I LastRead 0 FirstWrite -1}
		weights_load_11145 {Type I LastRead 0 FirstWrite -1}
		weights_load_11146 {Type I LastRead 0 FirstWrite -1}
		weights_load_11147 {Type I LastRead 0 FirstWrite -1}
		weights_load_11148 {Type I LastRead 0 FirstWrite -1}
		weights_load_11149 {Type I LastRead 0 FirstWrite -1}
		weights_load_11150 {Type I LastRead 0 FirstWrite -1}
		weights_load_11151 {Type I LastRead 0 FirstWrite -1}
		weights_load_11152 {Type I LastRead 0 FirstWrite -1}
		weights_load_11153 {Type I LastRead 0 FirstWrite -1}
		weights_load_11154 {Type I LastRead 0 FirstWrite -1}
		weights_load_11155 {Type I LastRead 0 FirstWrite -1}
		weights_load_11156 {Type I LastRead 0 FirstWrite -1}
		weights_load_11157 {Type I LastRead 0 FirstWrite -1}
		weights_load_11158 {Type I LastRead 0 FirstWrite -1}
		weights_load_11159 {Type I LastRead 0 FirstWrite -1}
		weights_load_11160 {Type I LastRead 0 FirstWrite -1}
		weights_load_11161 {Type I LastRead 0 FirstWrite -1}
		weights_load_11162 {Type I LastRead 0 FirstWrite -1}
		weights_load_11163 {Type I LastRead 0 FirstWrite -1}
		weights_load_11164 {Type I LastRead 0 FirstWrite -1}
		weights_load_11165 {Type I LastRead 0 FirstWrite -1}
		weights_load_11166 {Type I LastRead 0 FirstWrite -1}
		weights_load_11167 {Type I LastRead 0 FirstWrite -1}
		weights_load_11168 {Type I LastRead 0 FirstWrite -1}
		weights_load_11169 {Type I LastRead 0 FirstWrite -1}
		weights_load_11170 {Type I LastRead 0 FirstWrite -1}
		weights_load_11171 {Type I LastRead 0 FirstWrite -1}
		weights_load_11172 {Type I LastRead 0 FirstWrite -1}
		weights_load_11173 {Type I LastRead 0 FirstWrite -1}
		weights_load_11174 {Type I LastRead 0 FirstWrite -1}
		weights_load_11175 {Type I LastRead 0 FirstWrite -1}
		weights_load_11176 {Type I LastRead 0 FirstWrite -1}
		weights_load_11177 {Type I LastRead 0 FirstWrite -1}
		weights_load_11178 {Type I LastRead 0 FirstWrite -1}
		weights_load_11179 {Type I LastRead 0 FirstWrite -1}
		weights_load_11180 {Type I LastRead 0 FirstWrite -1}
		weights_load_11181 {Type I LastRead 0 FirstWrite -1}
		weights_load_11182 {Type I LastRead 0 FirstWrite -1}
		weights_load_11183 {Type I LastRead 0 FirstWrite -1}
		weights_load_11184 {Type I LastRead 0 FirstWrite -1}
		weights_load_11185 {Type I LastRead 0 FirstWrite -1}
		weights_load_11186 {Type I LastRead 0 FirstWrite -1}
		weights_load_11187 {Type I LastRead 0 FirstWrite -1}
		weights_load_11188 {Type I LastRead 0 FirstWrite -1}
		weights_load_11189 {Type I LastRead 0 FirstWrite -1}
		weights_load_11190 {Type I LastRead 0 FirstWrite -1}
		weights_load_11191 {Type I LastRead 0 FirstWrite -1}
		weights_load_11192 {Type I LastRead 0 FirstWrite -1}
		weights_load_11193 {Type I LastRead 0 FirstWrite -1}
		weights_load_11194 {Type I LastRead 0 FirstWrite -1}
		weights_load_11195 {Type I LastRead 0 FirstWrite -1}
		weights_load_11196 {Type I LastRead 0 FirstWrite -1}
		weights_load_11197 {Type I LastRead 0 FirstWrite -1}
		weights_load_11198 {Type I LastRead 0 FirstWrite -1}
		weights_load_11199 {Type I LastRead 0 FirstWrite -1}
		weights_load_11200 {Type I LastRead 0 FirstWrite -1}
		weights_load_11201 {Type I LastRead 0 FirstWrite -1}
		weights_load_11202 {Type I LastRead 0 FirstWrite -1}
		weights_load_11203 {Type I LastRead 0 FirstWrite -1}
		weights_load_11204 {Type I LastRead 0 FirstWrite -1}
		weights_load_11205 {Type I LastRead 0 FirstWrite -1}
		weights_load_11206 {Type I LastRead 0 FirstWrite -1}
		weights_load_11207 {Type I LastRead 0 FirstWrite -1}
		weights_load_11208 {Type I LastRead 0 FirstWrite -1}
		weights_load_11209 {Type I LastRead 0 FirstWrite -1}
		weights_load_11210 {Type I LastRead 0 FirstWrite -1}
		weights_load_11211 {Type I LastRead 0 FirstWrite -1}
		weights_load_11212 {Type I LastRead 0 FirstWrite -1}
		weights_load_11213 {Type I LastRead 0 FirstWrite -1}
		weights_load_11214 {Type I LastRead 0 FirstWrite -1}
		weights_load_11215 {Type I LastRead 0 FirstWrite -1}
		weights_load_11216 {Type I LastRead 0 FirstWrite -1}
		weights_load_11217 {Type I LastRead 0 FirstWrite -1}
		weights_load_11218 {Type I LastRead 0 FirstWrite -1}
		weights_load_11219 {Type I LastRead 0 FirstWrite -1}
		weights_load_11220 {Type I LastRead 0 FirstWrite -1}
		weights_load_11221 {Type I LastRead 0 FirstWrite -1}
		weights_load_11222 {Type I LastRead 0 FirstWrite -1}
		weights_load_11223 {Type I LastRead 0 FirstWrite -1}
		weights_load_11224 {Type I LastRead 0 FirstWrite -1}
		weights_load_11225 {Type I LastRead 0 FirstWrite -1}
		weights_load_11226 {Type I LastRead 0 FirstWrite -1}
		weights_load_11227 {Type I LastRead 0 FirstWrite -1}
		weights_load_11228 {Type I LastRead 0 FirstWrite -1}
		weights_load_11229 {Type I LastRead 0 FirstWrite -1}
		weights_load_11230 {Type I LastRead 0 FirstWrite -1}
		weights_load_11231 {Type I LastRead 0 FirstWrite -1}
		weights_load_11232 {Type I LastRead 0 FirstWrite -1}
		weights_load_11233 {Type I LastRead 0 FirstWrite -1}
		weights_load_11234 {Type I LastRead 0 FirstWrite -1}
		weights_load_11235 {Type I LastRead 0 FirstWrite -1}
		weights_load_11236 {Type I LastRead 0 FirstWrite -1}
		weights_load_11237 {Type I LastRead 0 FirstWrite -1}
		weights_load_11238 {Type I LastRead 0 FirstWrite -1}
		weights_load_11239 {Type I LastRead 0 FirstWrite -1}
		weights_load_11240 {Type I LastRead 0 FirstWrite -1}
		weights_load_11241 {Type I LastRead 0 FirstWrite -1}
		weights_load_11242 {Type I LastRead 0 FirstWrite -1}
		weights_load_11243 {Type I LastRead 0 FirstWrite -1}
		weights_load_11244 {Type I LastRead 0 FirstWrite -1}
		weights_load_11245 {Type I LastRead 0 FirstWrite -1}
		weights_load_11246 {Type I LastRead 0 FirstWrite -1}
		weights_load_11247 {Type I LastRead 0 FirstWrite -1}
		weights_load_11248 {Type I LastRead 0 FirstWrite -1}
		weights_load_11249 {Type I LastRead 0 FirstWrite -1}
		weights_load_11250 {Type I LastRead 0 FirstWrite -1}
		weights_load_11251 {Type I LastRead 0 FirstWrite -1}
		weights_load_11252 {Type I LastRead 0 FirstWrite -1}
		weights_load_11253 {Type I LastRead 0 FirstWrite -1}
		weights_load_11254 {Type I LastRead 0 FirstWrite -1}
		weights_load_11255 {Type I LastRead 0 FirstWrite -1}
		weights_load_11256 {Type I LastRead 0 FirstWrite -1}
		weights_load_11257 {Type I LastRead 0 FirstWrite -1}
		weights_load_11258 {Type I LastRead 0 FirstWrite -1}
		weights_load_11259 {Type I LastRead 0 FirstWrite -1}
		weights_load_11260 {Type I LastRead 0 FirstWrite -1}
		weights_load_11261 {Type I LastRead 0 FirstWrite -1}
		weights_load_11262 {Type I LastRead 0 FirstWrite -1}
		weights_load_11263 {Type I LastRead 0 FirstWrite -1}
		weights_load_11264 {Type I LastRead 0 FirstWrite -1}
		weights_load_11265 {Type I LastRead 0 FirstWrite -1}
		weights_load_11266 {Type I LastRead 0 FirstWrite -1}
		weights_load_11267 {Type I LastRead 0 FirstWrite -1}
		weights_load_11268 {Type I LastRead 0 FirstWrite -1}
		weights_load_11269 {Type I LastRead 0 FirstWrite -1}
		weights_load_11270 {Type I LastRead 0 FirstWrite -1}
		weights_load_11271 {Type I LastRead 0 FirstWrite -1}
		weights_load_11272 {Type I LastRead 0 FirstWrite -1}
		weights_load_11273 {Type I LastRead 0 FirstWrite -1}
		weights_load_11274 {Type I LastRead 0 FirstWrite -1}
		weights_load_11275 {Type I LastRead 0 FirstWrite -1}
		weights_load_11276 {Type I LastRead 0 FirstWrite -1}
		weights_load_11277 {Type I LastRead 0 FirstWrite -1}
		weights_load_11278 {Type I LastRead 0 FirstWrite -1}
		weights_load_11279 {Type I LastRead 0 FirstWrite -1}
		weights_load_11280 {Type I LastRead 0 FirstWrite -1}
		weights_load_11281 {Type I LastRead 0 FirstWrite -1}
		weights_load_11282 {Type I LastRead 0 FirstWrite -1}
		weights_load_11283 {Type I LastRead 0 FirstWrite -1}
		weights_load_11284 {Type I LastRead 0 FirstWrite -1}
		weights_load_11285 {Type I LastRead 0 FirstWrite -1}
		weights_load_11286 {Type I LastRead 0 FirstWrite -1}
		weights_load_11287 {Type I LastRead 0 FirstWrite -1}
		weights_load_11288 {Type I LastRead 0 FirstWrite -1}
		weights_load_11289 {Type I LastRead 0 FirstWrite -1}
		weights_load_11290 {Type I LastRead 0 FirstWrite -1}
		weights_load_11291 {Type I LastRead 0 FirstWrite -1}
		weights_load_11292 {Type I LastRead 0 FirstWrite -1}
		weights_load_11293 {Type I LastRead 0 FirstWrite -1}
		weights_load_11294 {Type I LastRead 0 FirstWrite -1}
		weights_load_11295 {Type I LastRead 0 FirstWrite -1}
		weights_load_11296 {Type I LastRead 0 FirstWrite -1}
		weights_load_11297 {Type I LastRead 0 FirstWrite -1}
		weights_load_11298 {Type I LastRead 0 FirstWrite -1}
		weights_load_11299 {Type I LastRead 0 FirstWrite -1}
		weights_load_11300 {Type I LastRead 0 FirstWrite -1}
		weights_load_11301 {Type I LastRead 0 FirstWrite -1}
		weights_load_11302 {Type I LastRead 0 FirstWrite -1}
		weights_load_11303 {Type I LastRead 0 FirstWrite -1}
		weights_load_11304 {Type I LastRead 0 FirstWrite -1}
		weights_load_11305 {Type I LastRead 0 FirstWrite -1}
		weights_load_11306 {Type I LastRead 0 FirstWrite -1}
		weights_load_11307 {Type I LastRead 0 FirstWrite -1}
		weights_load_11308 {Type I LastRead 0 FirstWrite -1}
		weights_load_11309 {Type I LastRead 0 FirstWrite -1}
		weights_load_11310 {Type I LastRead 0 FirstWrite -1}
		weights_load_11311 {Type I LastRead 0 FirstWrite -1}
		weights_load_11312 {Type I LastRead 0 FirstWrite -1}
		weights_load_11313 {Type I LastRead 0 FirstWrite -1}
		weights_load_11314 {Type I LastRead 0 FirstWrite -1}
		weights_load_11315 {Type I LastRead 0 FirstWrite -1}
		weights_load_11316 {Type I LastRead 0 FirstWrite -1}
		weights_load_11317 {Type I LastRead 0 FirstWrite -1}
		weights_load_11318 {Type I LastRead 0 FirstWrite -1}
		weights_load_11319 {Type I LastRead 0 FirstWrite -1}
		weights_load_11320 {Type I LastRead 0 FirstWrite -1}
		weights_load_11321 {Type I LastRead 0 FirstWrite -1}
		weights_load_11322 {Type I LastRead 0 FirstWrite -1}
		weights_load_11323 {Type I LastRead 0 FirstWrite -1}
		weights_load_11324 {Type I LastRead 0 FirstWrite -1}
		weights_load_11325 {Type I LastRead 0 FirstWrite -1}
		weights_load_11326 {Type I LastRead 0 FirstWrite -1}
		weights_load_11327 {Type I LastRead 0 FirstWrite -1}
		weights_load_11328 {Type I LastRead 0 FirstWrite -1}
		weights_load_11329 {Type I LastRead 0 FirstWrite -1}
		weights_load_11330 {Type I LastRead 0 FirstWrite -1}
		weights_load_11331 {Type I LastRead 0 FirstWrite -1}
		weights_load_11332 {Type I LastRead 0 FirstWrite -1}
		weights_load_11333 {Type I LastRead 0 FirstWrite -1}
		weights_load_11334 {Type I LastRead 0 FirstWrite -1}
		weights_load_11335 {Type I LastRead 0 FirstWrite -1}
		weights_load_11336 {Type I LastRead 0 FirstWrite -1}
		weights_load_11337 {Type I LastRead 0 FirstWrite -1}
		weights_load_11338 {Type I LastRead 0 FirstWrite -1}
		weights_load_11339 {Type I LastRead 0 FirstWrite -1}
		weights_load_11340 {Type I LastRead 0 FirstWrite -1}
		weights_load_11341 {Type I LastRead 0 FirstWrite -1}
		weights_load_11342 {Type I LastRead 0 FirstWrite -1}
		weights_load_11343 {Type I LastRead 0 FirstWrite -1}
		weights_load_11344 {Type I LastRead 0 FirstWrite -1}
		weights_load_11345 {Type I LastRead 0 FirstWrite -1}
		weights_load_11346 {Type I LastRead 0 FirstWrite -1}
		weights_load_11347 {Type I LastRead 0 FirstWrite -1}
		weights_load_11348 {Type I LastRead 0 FirstWrite -1}
		weights_load_11349 {Type I LastRead 0 FirstWrite -1}
		weights_load_11350 {Type I LastRead 0 FirstWrite -1}
		weights_load_11351 {Type I LastRead 0 FirstWrite -1}
		weights_load_11352 {Type I LastRead 0 FirstWrite -1}
		weights_load_11353 {Type I LastRead 0 FirstWrite -1}
		weights_load_11354 {Type I LastRead 0 FirstWrite -1}
		weights_load_11355 {Type I LastRead 0 FirstWrite -1}
		weights_load_11356 {Type I LastRead 0 FirstWrite -1}
		weights_load_11357 {Type I LastRead 0 FirstWrite -1}
		weights_load_11358 {Type I LastRead 0 FirstWrite -1}
		weights_load_11359 {Type I LastRead 0 FirstWrite -1}
		weights_load_11360 {Type I LastRead 0 FirstWrite -1}
		weights_load_11361 {Type I LastRead 0 FirstWrite -1}
		weights_load_11362 {Type I LastRead 0 FirstWrite -1}
		weights_load_11363 {Type I LastRead 0 FirstWrite -1}
		weights_load_11364 {Type I LastRead 0 FirstWrite -1}
		weights_load_11365 {Type I LastRead 0 FirstWrite -1}
		weights_load_11366 {Type I LastRead 0 FirstWrite -1}
		weights_load_11367 {Type I LastRead 0 FirstWrite -1}
		weights_load_11368 {Type I LastRead 0 FirstWrite -1}
		weights_load_11369 {Type I LastRead 0 FirstWrite -1}
		weights_load_11370 {Type I LastRead 0 FirstWrite -1}
		weights_load_11371 {Type I LastRead 0 FirstWrite -1}
		weights_load_11372 {Type I LastRead 0 FirstWrite -1}
		weights_load_11373 {Type I LastRead 0 FirstWrite -1}
		weights_load_11374 {Type I LastRead 0 FirstWrite -1}
		weights_load_11375 {Type I LastRead 0 FirstWrite -1}
		weights_load_11376 {Type I LastRead 0 FirstWrite -1}
		weights_load_11377 {Type I LastRead 0 FirstWrite -1}
		weights_load_11378 {Type I LastRead 0 FirstWrite -1}
		weights_load_11379 {Type I LastRead 0 FirstWrite -1}
		weights_load_11380 {Type I LastRead 0 FirstWrite -1}
		weights_load_11381 {Type I LastRead 0 FirstWrite -1}
		weights_load_11382 {Type I LastRead 0 FirstWrite -1}
		weights_load_11383 {Type I LastRead 0 FirstWrite -1}
		weights_load_11384 {Type I LastRead 0 FirstWrite -1}
		weights_load_11385 {Type I LastRead 0 FirstWrite -1}
		weights_load_11386 {Type I LastRead 0 FirstWrite -1}
		weights_load_11387 {Type I LastRead 0 FirstWrite -1}
		weights_load_11388 {Type I LastRead 0 FirstWrite -1}
		weights_load_11389 {Type I LastRead 0 FirstWrite -1}
		weights_load_11390 {Type I LastRead 0 FirstWrite -1}
		weights_load_11391 {Type I LastRead 0 FirstWrite -1}
		weights_load_11392 {Type I LastRead 0 FirstWrite -1}
		weights_load_11393 {Type I LastRead 0 FirstWrite -1}
		weights_load_11394 {Type I LastRead 0 FirstWrite -1}
		weights_load_11395 {Type I LastRead 0 FirstWrite -1}
		weights_load_11396 {Type I LastRead 0 FirstWrite -1}
		weights_load_11397 {Type I LastRead 0 FirstWrite -1}
		weights_load_11398 {Type I LastRead 0 FirstWrite -1}
		weights_load_11399 {Type I LastRead 0 FirstWrite -1}
		weights_load_11400 {Type I LastRead 0 FirstWrite -1}
		weights_load_11401 {Type I LastRead 0 FirstWrite -1}
		weights_load_11402 {Type I LastRead 0 FirstWrite -1}
		weights_load_11403 {Type I LastRead 0 FirstWrite -1}
		weights_load_11404 {Type I LastRead 0 FirstWrite -1}
		weights_load_11405 {Type I LastRead 0 FirstWrite -1}
		weights_load_11406 {Type I LastRead 0 FirstWrite -1}
		weights_load_11407 {Type I LastRead 0 FirstWrite -1}
		weights_load_11408 {Type I LastRead 0 FirstWrite -1}
		weights_load_11409 {Type I LastRead 0 FirstWrite -1}
		weights_load_11410 {Type I LastRead 0 FirstWrite -1}
		weights_load_11411 {Type I LastRead 0 FirstWrite -1}
		weights_load_11412 {Type I LastRead 0 FirstWrite -1}
		weights_load_11413 {Type I LastRead 0 FirstWrite -1}
		weights_load_11414 {Type I LastRead 0 FirstWrite -1}
		weights_load_11415 {Type I LastRead 0 FirstWrite -1}
		weights_load_11416 {Type I LastRead 0 FirstWrite -1}
		weights_load_11417 {Type I LastRead 0 FirstWrite -1}
		weights_load_11418 {Type I LastRead 0 FirstWrite -1}
		weights_load_11419 {Type I LastRead 0 FirstWrite -1}
		weights_load_11420 {Type I LastRead 0 FirstWrite -1}
		weights_load_11421 {Type I LastRead 0 FirstWrite -1}
		weights_load_11422 {Type I LastRead 0 FirstWrite -1}
		weights_load_11423 {Type I LastRead 0 FirstWrite -1}
		weights_load_11424 {Type I LastRead 0 FirstWrite -1}
		weights_load_11425 {Type I LastRead 0 FirstWrite -1}
		weights_load_11426 {Type I LastRead 0 FirstWrite -1}
		weights_load_11427 {Type I LastRead 0 FirstWrite -1}
		weights_load_11428 {Type I LastRead 0 FirstWrite -1}
		weights_load_11429 {Type I LastRead 0 FirstWrite -1}
		weights_load_11430 {Type I LastRead 0 FirstWrite -1}
		weights_load_11431 {Type I LastRead 0 FirstWrite -1}
		weights_load_11432 {Type I LastRead 0 FirstWrite -1}
		weights_load_11433 {Type I LastRead 0 FirstWrite -1}
		weights_load_11434 {Type I LastRead 0 FirstWrite -1}
		weights_load_11435 {Type I LastRead 0 FirstWrite -1}
		weights_load_11436 {Type I LastRead 0 FirstWrite -1}
		weights_load_11437 {Type I LastRead 0 FirstWrite -1}
		weights_load_11438 {Type I LastRead 0 FirstWrite -1}
		weights_load_11439 {Type I LastRead 0 FirstWrite -1}
		weights_load_11440 {Type I LastRead 0 FirstWrite -1}
		weights_load_11441 {Type I LastRead 0 FirstWrite -1}
		weights_load_11442 {Type I LastRead 0 FirstWrite -1}
		weights_load_11443 {Type I LastRead 0 FirstWrite -1}
		weights_load_11444 {Type I LastRead 0 FirstWrite -1}
		weights_load_11445 {Type I LastRead 0 FirstWrite -1}
		weights_load_11446 {Type I LastRead 0 FirstWrite -1}
		weights_load_11447 {Type I LastRead 0 FirstWrite -1}
		weights_load_11448 {Type I LastRead 0 FirstWrite -1}
		weights_load_11449 {Type I LastRead 0 FirstWrite -1}
		weights_load_11450 {Type I LastRead 0 FirstWrite -1}
		weights_load_11451 {Type I LastRead 0 FirstWrite -1}
		weights_load_11452 {Type I LastRead 0 FirstWrite -1}
		weights_load_11453 {Type I LastRead 0 FirstWrite -1}
		weights_load_11454 {Type I LastRead 0 FirstWrite -1}
		weights_load_11455 {Type I LastRead 0 FirstWrite -1}
		weights_load_11456 {Type I LastRead 0 FirstWrite -1}
		weights_load_11457 {Type I LastRead 0 FirstWrite -1}
		weights_load_11458 {Type I LastRead 0 FirstWrite -1}
		weights_load_11459 {Type I LastRead 0 FirstWrite -1}
		weights_load_11460 {Type I LastRead 0 FirstWrite -1}
		weights_load_11461 {Type I LastRead 0 FirstWrite -1}
		weights_load_11462 {Type I LastRead 0 FirstWrite -1}
		weights_load_11463 {Type I LastRead 0 FirstWrite -1}
		weights_load_11464 {Type I LastRead 0 FirstWrite -1}
		weights_load_11465 {Type I LastRead 0 FirstWrite -1}
		weights_load_11466 {Type I LastRead 0 FirstWrite -1}
		weights_load_11467 {Type I LastRead 0 FirstWrite -1}
		weights_load_11468 {Type I LastRead 0 FirstWrite -1}
		weights_load_11469 {Type I LastRead 0 FirstWrite -1}
		weights_load_11470 {Type I LastRead 0 FirstWrite -1}
		weights_load_11471 {Type I LastRead 0 FirstWrite -1}
		weights_load_11472 {Type I LastRead 0 FirstWrite -1}
		weights_load_11473 {Type I LastRead 0 FirstWrite -1}
		weights_load_11474 {Type I LastRead 0 FirstWrite -1}
		weights_load_11475 {Type I LastRead 0 FirstWrite -1}
		weights_load_11476 {Type I LastRead 0 FirstWrite -1}
		weights_load_11477 {Type I LastRead 0 FirstWrite -1}
		weights_load_11478 {Type I LastRead 0 FirstWrite -1}
		weights_load_11479 {Type I LastRead 0 FirstWrite -1}
		weights_load_11480 {Type I LastRead 0 FirstWrite -1}
		weights_load_11481 {Type I LastRead 0 FirstWrite -1}
		weights_load_11482 {Type I LastRead 0 FirstWrite -1}
		weights_load_11483 {Type I LastRead 0 FirstWrite -1}
		weights_load_11484 {Type I LastRead 0 FirstWrite -1}
		weights_load_11485 {Type I LastRead 0 FirstWrite -1}
		weights_load_11486 {Type I LastRead 0 FirstWrite -1}
		weights_load_11487 {Type I LastRead 0 FirstWrite -1}
		weights_load_11488 {Type I LastRead 0 FirstWrite -1}
		weights_load_11489 {Type I LastRead 0 FirstWrite -1}
		weights_load_11490 {Type I LastRead 0 FirstWrite -1}
		weights_load_11491 {Type I LastRead 0 FirstWrite -1}
		weights_load_11492 {Type I LastRead 0 FirstWrite -1}
		weights_load_11493 {Type I LastRead 0 FirstWrite -1}
		weights_load_11494 {Type I LastRead 0 FirstWrite -1}
		weights_load_11495 {Type I LastRead 0 FirstWrite -1}
		weights_load_11496 {Type I LastRead 0 FirstWrite -1}
		weights_load_11497 {Type I LastRead 0 FirstWrite -1}
		weights_load_11498 {Type I LastRead 0 FirstWrite -1}
		weights_load_11499 {Type I LastRead 0 FirstWrite -1}
		weights_load_11500 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_2 { ap_fifo {  { conv2d_64_padded_window_stream_2_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_2_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_2_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_2_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_2_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_2 { ap_fifo {  { in_channel_map_stream_2_din fifo_port_we 1 32 }  { in_channel_map_stream_2_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_2_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_2_full_n fifo_status 0 1 }  { in_channel_map_stream_2_write fifo_data 1 1 } } }
}
