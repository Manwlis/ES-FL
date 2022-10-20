set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_19
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.19}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_19 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_19 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_19", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_19", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_19_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_19_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_19_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_19_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_19_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_19_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_19_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_19_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_19_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_19_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_19_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_19", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_19_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_19", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_19_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_19", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_19_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_19", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_19_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_19", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_19_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_19", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_19_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_19", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_19_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_19", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_19_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_19", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_19_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_19", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_19",
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
			{"Name" : "conv2d_64_padded_window_stream_19", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_19_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_19", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_19", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_19_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_19", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_19_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_19_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_19", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11501", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11502", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11503", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11504", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11505", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11506", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11507", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11508", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_19", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_11509", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11510", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11511", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11512", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11513", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11514", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11515", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11516", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11517", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11518", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11519", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11520", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11521", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11522", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11523", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11524", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11525", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11526", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11527", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11528", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11529", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11530", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11531", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11532", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11533", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11534", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11535", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11536", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11537", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11538", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11539", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11540", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11541", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11542", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11543", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11544", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11545", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11546", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11547", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11548", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11549", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11550", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11551", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11552", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11553", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11554", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11555", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11556", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11557", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11558", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11559", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11560", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11561", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11562", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11563", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11564", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11565", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11566", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11567", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11568", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11569", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11570", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11571", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11572", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11573", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11574", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11575", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11576", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11577", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11578", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11579", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11580", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11581", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11582", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11583", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11584", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11585", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11586", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11587", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11588", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11589", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11590", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11591", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11592", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11593", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11594", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11595", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11596", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11597", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11598", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11599", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11600", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11601", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11602", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11603", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11604", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11605", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11606", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11607", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11608", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11609", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11610", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11611", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11612", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11613", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11614", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11615", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11616", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11617", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11618", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11619", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11620", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11621", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11622", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11623", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11624", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11625", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11626", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11627", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11628", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11629", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11630", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11631", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11632", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11633", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11634", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11635", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11636", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11637", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11638", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11639", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11640", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11641", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11642", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11643", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11644", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11645", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11646", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11647", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11648", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11649", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11650", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11651", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11652", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11653", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11654", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11655", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11656", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11657", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11658", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11659", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11660", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11661", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11662", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11663", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11664", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11665", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11666", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11667", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11668", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11669", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11670", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11671", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11672", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11673", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11674", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11675", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11676", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11677", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11678", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11679", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11680", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11681", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11682", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11683", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11684", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11685", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11686", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11687", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11688", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11689", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11690", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11691", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11692", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11693", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11694", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11695", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11696", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11697", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11698", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11699", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11700", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11701", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11702", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11703", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11704", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11705", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11706", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11707", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11708", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11709", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11710", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11711", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11712", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11713", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11714", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11715", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11716", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11717", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11718", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11719", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11720", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11721", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11722", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11723", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11724", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11725", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11726", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11727", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11728", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11729", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11730", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11731", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11732", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11733", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11734", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11735", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11736", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11737", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11738", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11739", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11740", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11741", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11742", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11743", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11744", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11745", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11746", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11747", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11748", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11749", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11750", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11751", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11752", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11753", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11754", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11755", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11756", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11757", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11758", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11759", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11760", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11761", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11762", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11763", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11764", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11765", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11766", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11767", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11768", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11769", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11770", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11771", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11772", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11773", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11774", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11775", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11776", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11777", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11778", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11779", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11780", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11781", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11782", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11783", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11784", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11785", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11786", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11787", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11788", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11789", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11790", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11791", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11792", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11793", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11794", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11795", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11796", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11797", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11798", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11799", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11800", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11801", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11802", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11803", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11804", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11805", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11806", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11807", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11808", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11809", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11810", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11811", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11812", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11813", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11814", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11815", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11816", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11817", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11818", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11819", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11820", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11821", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11822", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11823", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11824", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11825", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11826", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11827", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11828", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11829", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11830", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11831", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11832", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11833", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11834", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11835", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11836", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11837", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11838", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11839", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11840", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11841", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11842", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11843", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11844", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11845", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11846", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11847", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11848", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11849", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11850", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11851", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11852", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11853", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11854", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11855", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11856", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11857", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11858", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11859", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11860", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11861", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11862", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11863", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11864", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11865", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11866", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11867", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11868", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11869", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11870", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11871", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11872", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11873", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11874", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11875", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11876", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11877", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11878", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11879", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11880", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11881", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11882", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11883", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11884", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11885", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11886", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11887", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11888", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11889", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11890", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11891", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11892", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11893", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11894", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11895", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11896", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11897", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11898", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11899", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11900", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11901", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11902", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11903", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11904", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11905", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11906", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11907", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11908", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11909", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11910", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11911", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11912", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11913", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11914", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11915", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11916", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11917", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11918", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11919", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11920", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11921", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11922", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11923", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11924", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11925", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11926", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11927", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11928", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11929", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11930", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11931", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11932", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11933", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11934", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11935", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11936", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11937", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11938", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11939", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11940", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11941", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11942", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11943", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11944", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11945", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11946", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11947", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11948", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11949", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11950", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11951", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11952", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11953", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11954", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11955", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11956", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11957", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11958", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11959", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11960", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11961", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11962", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11963", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11964", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11965", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11966", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11967", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11968", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11969", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11970", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11971", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11972", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11973", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11974", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11975", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11976", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11977", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11978", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11979", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11980", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11981", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11982", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11983", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11984", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11985", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11986", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11987", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11988", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11989", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11990", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11991", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11992", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11993", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11994", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11995", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11996", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11997", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11998", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11999", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12000", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12001", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12002", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12003", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12004", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12005", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12006", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12007", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12008", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12009", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12010", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12011", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12012", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12013", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12014", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12015", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12016", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12017", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12018", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12019", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12020", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12021", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12022", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12023", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12024", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12025", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12026", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12027", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12028", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12029", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12030", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12031", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12032", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12033", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12034", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12035", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12036", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12037", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12038", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12039", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12040", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12041", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12042", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12043", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12044", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12045", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12046", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12047", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12048", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12049", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12050", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12051", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12052", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12053", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12054", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12055", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12056", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12057", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12058", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12059", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12060", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12061", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12062", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12063", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12064", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12065", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12066", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12067", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12068", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12069", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12070", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12071", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12072", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12073", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12074", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12075", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_19_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U11918", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_19_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U11919", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_19_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U11920", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_19_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U11921", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_19_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U11922", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_19_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U11923", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_19_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U11924", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_19_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U11925", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_19_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U11926", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_19_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U11927", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_19_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U11928", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_19_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U11929", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_19_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U11930", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_19_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U11931", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_19_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U11932", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_19_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U11933", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_19_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U11934", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_19_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_19 {
		conv2d_64_padded_window_stream_19 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_19 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_19_Pipeline_inputs {
		conv2d_64_padded_window_stream_19 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_11501 {Type I LastRead 0 FirstWrite -1}
		weights_load_11502 {Type I LastRead 0 FirstWrite -1}
		weights_load_11503 {Type I LastRead 0 FirstWrite -1}
		weights_load_11504 {Type I LastRead 0 FirstWrite -1}
		weights_load_11505 {Type I LastRead 0 FirstWrite -1}
		weights_load_11506 {Type I LastRead 0 FirstWrite -1}
		weights_load_11507 {Type I LastRead 0 FirstWrite -1}
		weights_load_11508 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_19 {Type O LastRead -1 FirstWrite 16}
		weights_load_11509 {Type I LastRead 0 FirstWrite -1}
		weights_load_11510 {Type I LastRead 0 FirstWrite -1}
		weights_load_11511 {Type I LastRead 0 FirstWrite -1}
		weights_load_11512 {Type I LastRead 0 FirstWrite -1}
		weights_load_11513 {Type I LastRead 0 FirstWrite -1}
		weights_load_11514 {Type I LastRead 0 FirstWrite -1}
		weights_load_11515 {Type I LastRead 0 FirstWrite -1}
		weights_load_11516 {Type I LastRead 0 FirstWrite -1}
		weights_load_11517 {Type I LastRead 0 FirstWrite -1}
		weights_load_11518 {Type I LastRead 0 FirstWrite -1}
		weights_load_11519 {Type I LastRead 0 FirstWrite -1}
		weights_load_11520 {Type I LastRead 0 FirstWrite -1}
		weights_load_11521 {Type I LastRead 0 FirstWrite -1}
		weights_load_11522 {Type I LastRead 0 FirstWrite -1}
		weights_load_11523 {Type I LastRead 0 FirstWrite -1}
		weights_load_11524 {Type I LastRead 0 FirstWrite -1}
		weights_load_11525 {Type I LastRead 0 FirstWrite -1}
		weights_load_11526 {Type I LastRead 0 FirstWrite -1}
		weights_load_11527 {Type I LastRead 0 FirstWrite -1}
		weights_load_11528 {Type I LastRead 0 FirstWrite -1}
		weights_load_11529 {Type I LastRead 0 FirstWrite -1}
		weights_load_11530 {Type I LastRead 0 FirstWrite -1}
		weights_load_11531 {Type I LastRead 0 FirstWrite -1}
		weights_load_11532 {Type I LastRead 0 FirstWrite -1}
		weights_load_11533 {Type I LastRead 0 FirstWrite -1}
		weights_load_11534 {Type I LastRead 0 FirstWrite -1}
		weights_load_11535 {Type I LastRead 0 FirstWrite -1}
		weights_load_11536 {Type I LastRead 0 FirstWrite -1}
		weights_load_11537 {Type I LastRead 0 FirstWrite -1}
		weights_load_11538 {Type I LastRead 0 FirstWrite -1}
		weights_load_11539 {Type I LastRead 0 FirstWrite -1}
		weights_load_11540 {Type I LastRead 0 FirstWrite -1}
		weights_load_11541 {Type I LastRead 0 FirstWrite -1}
		weights_load_11542 {Type I LastRead 0 FirstWrite -1}
		weights_load_11543 {Type I LastRead 0 FirstWrite -1}
		weights_load_11544 {Type I LastRead 0 FirstWrite -1}
		weights_load_11545 {Type I LastRead 0 FirstWrite -1}
		weights_load_11546 {Type I LastRead 0 FirstWrite -1}
		weights_load_11547 {Type I LastRead 0 FirstWrite -1}
		weights_load_11548 {Type I LastRead 0 FirstWrite -1}
		weights_load_11549 {Type I LastRead 0 FirstWrite -1}
		weights_load_11550 {Type I LastRead 0 FirstWrite -1}
		weights_load_11551 {Type I LastRead 0 FirstWrite -1}
		weights_load_11552 {Type I LastRead 0 FirstWrite -1}
		weights_load_11553 {Type I LastRead 0 FirstWrite -1}
		weights_load_11554 {Type I LastRead 0 FirstWrite -1}
		weights_load_11555 {Type I LastRead 0 FirstWrite -1}
		weights_load_11556 {Type I LastRead 0 FirstWrite -1}
		weights_load_11557 {Type I LastRead 0 FirstWrite -1}
		weights_load_11558 {Type I LastRead 0 FirstWrite -1}
		weights_load_11559 {Type I LastRead 0 FirstWrite -1}
		weights_load_11560 {Type I LastRead 0 FirstWrite -1}
		weights_load_11561 {Type I LastRead 0 FirstWrite -1}
		weights_load_11562 {Type I LastRead 0 FirstWrite -1}
		weights_load_11563 {Type I LastRead 0 FirstWrite -1}
		weights_load_11564 {Type I LastRead 0 FirstWrite -1}
		weights_load_11565 {Type I LastRead 0 FirstWrite -1}
		weights_load_11566 {Type I LastRead 0 FirstWrite -1}
		weights_load_11567 {Type I LastRead 0 FirstWrite -1}
		weights_load_11568 {Type I LastRead 0 FirstWrite -1}
		weights_load_11569 {Type I LastRead 0 FirstWrite -1}
		weights_load_11570 {Type I LastRead 0 FirstWrite -1}
		weights_load_11571 {Type I LastRead 0 FirstWrite -1}
		weights_load_11572 {Type I LastRead 0 FirstWrite -1}
		weights_load_11573 {Type I LastRead 0 FirstWrite -1}
		weights_load_11574 {Type I LastRead 0 FirstWrite -1}
		weights_load_11575 {Type I LastRead 0 FirstWrite -1}
		weights_load_11576 {Type I LastRead 0 FirstWrite -1}
		weights_load_11577 {Type I LastRead 0 FirstWrite -1}
		weights_load_11578 {Type I LastRead 0 FirstWrite -1}
		weights_load_11579 {Type I LastRead 0 FirstWrite -1}
		weights_load_11580 {Type I LastRead 0 FirstWrite -1}
		weights_load_11581 {Type I LastRead 0 FirstWrite -1}
		weights_load_11582 {Type I LastRead 0 FirstWrite -1}
		weights_load_11583 {Type I LastRead 0 FirstWrite -1}
		weights_load_11584 {Type I LastRead 0 FirstWrite -1}
		weights_load_11585 {Type I LastRead 0 FirstWrite -1}
		weights_load_11586 {Type I LastRead 0 FirstWrite -1}
		weights_load_11587 {Type I LastRead 0 FirstWrite -1}
		weights_load_11588 {Type I LastRead 0 FirstWrite -1}
		weights_load_11589 {Type I LastRead 0 FirstWrite -1}
		weights_load_11590 {Type I LastRead 0 FirstWrite -1}
		weights_load_11591 {Type I LastRead 0 FirstWrite -1}
		weights_load_11592 {Type I LastRead 0 FirstWrite -1}
		weights_load_11593 {Type I LastRead 0 FirstWrite -1}
		weights_load_11594 {Type I LastRead 0 FirstWrite -1}
		weights_load_11595 {Type I LastRead 0 FirstWrite -1}
		weights_load_11596 {Type I LastRead 0 FirstWrite -1}
		weights_load_11597 {Type I LastRead 0 FirstWrite -1}
		weights_load_11598 {Type I LastRead 0 FirstWrite -1}
		weights_load_11599 {Type I LastRead 0 FirstWrite -1}
		weights_load_11600 {Type I LastRead 0 FirstWrite -1}
		weights_load_11601 {Type I LastRead 0 FirstWrite -1}
		weights_load_11602 {Type I LastRead 0 FirstWrite -1}
		weights_load_11603 {Type I LastRead 0 FirstWrite -1}
		weights_load_11604 {Type I LastRead 0 FirstWrite -1}
		weights_load_11605 {Type I LastRead 0 FirstWrite -1}
		weights_load_11606 {Type I LastRead 0 FirstWrite -1}
		weights_load_11607 {Type I LastRead 0 FirstWrite -1}
		weights_load_11608 {Type I LastRead 0 FirstWrite -1}
		weights_load_11609 {Type I LastRead 0 FirstWrite -1}
		weights_load_11610 {Type I LastRead 0 FirstWrite -1}
		weights_load_11611 {Type I LastRead 0 FirstWrite -1}
		weights_load_11612 {Type I LastRead 0 FirstWrite -1}
		weights_load_11613 {Type I LastRead 0 FirstWrite -1}
		weights_load_11614 {Type I LastRead 0 FirstWrite -1}
		weights_load_11615 {Type I LastRead 0 FirstWrite -1}
		weights_load_11616 {Type I LastRead 0 FirstWrite -1}
		weights_load_11617 {Type I LastRead 0 FirstWrite -1}
		weights_load_11618 {Type I LastRead 0 FirstWrite -1}
		weights_load_11619 {Type I LastRead 0 FirstWrite -1}
		weights_load_11620 {Type I LastRead 0 FirstWrite -1}
		weights_load_11621 {Type I LastRead 0 FirstWrite -1}
		weights_load_11622 {Type I LastRead 0 FirstWrite -1}
		weights_load_11623 {Type I LastRead 0 FirstWrite -1}
		weights_load_11624 {Type I LastRead 0 FirstWrite -1}
		weights_load_11625 {Type I LastRead 0 FirstWrite -1}
		weights_load_11626 {Type I LastRead 0 FirstWrite -1}
		weights_load_11627 {Type I LastRead 0 FirstWrite -1}
		weights_load_11628 {Type I LastRead 0 FirstWrite -1}
		weights_load_11629 {Type I LastRead 0 FirstWrite -1}
		weights_load_11630 {Type I LastRead 0 FirstWrite -1}
		weights_load_11631 {Type I LastRead 0 FirstWrite -1}
		weights_load_11632 {Type I LastRead 0 FirstWrite -1}
		weights_load_11633 {Type I LastRead 0 FirstWrite -1}
		weights_load_11634 {Type I LastRead 0 FirstWrite -1}
		weights_load_11635 {Type I LastRead 0 FirstWrite -1}
		weights_load_11636 {Type I LastRead 0 FirstWrite -1}
		weights_load_11637 {Type I LastRead 0 FirstWrite -1}
		weights_load_11638 {Type I LastRead 0 FirstWrite -1}
		weights_load_11639 {Type I LastRead 0 FirstWrite -1}
		weights_load_11640 {Type I LastRead 0 FirstWrite -1}
		weights_load_11641 {Type I LastRead 0 FirstWrite -1}
		weights_load_11642 {Type I LastRead 0 FirstWrite -1}
		weights_load_11643 {Type I LastRead 0 FirstWrite -1}
		weights_load_11644 {Type I LastRead 0 FirstWrite -1}
		weights_load_11645 {Type I LastRead 0 FirstWrite -1}
		weights_load_11646 {Type I LastRead 0 FirstWrite -1}
		weights_load_11647 {Type I LastRead 0 FirstWrite -1}
		weights_load_11648 {Type I LastRead 0 FirstWrite -1}
		weights_load_11649 {Type I LastRead 0 FirstWrite -1}
		weights_load_11650 {Type I LastRead 0 FirstWrite -1}
		weights_load_11651 {Type I LastRead 0 FirstWrite -1}
		weights_load_11652 {Type I LastRead 0 FirstWrite -1}
		weights_load_11653 {Type I LastRead 0 FirstWrite -1}
		weights_load_11654 {Type I LastRead 0 FirstWrite -1}
		weights_load_11655 {Type I LastRead 0 FirstWrite -1}
		weights_load_11656 {Type I LastRead 0 FirstWrite -1}
		weights_load_11657 {Type I LastRead 0 FirstWrite -1}
		weights_load_11658 {Type I LastRead 0 FirstWrite -1}
		weights_load_11659 {Type I LastRead 0 FirstWrite -1}
		weights_load_11660 {Type I LastRead 0 FirstWrite -1}
		weights_load_11661 {Type I LastRead 0 FirstWrite -1}
		weights_load_11662 {Type I LastRead 0 FirstWrite -1}
		weights_load_11663 {Type I LastRead 0 FirstWrite -1}
		weights_load_11664 {Type I LastRead 0 FirstWrite -1}
		weights_load_11665 {Type I LastRead 0 FirstWrite -1}
		weights_load_11666 {Type I LastRead 0 FirstWrite -1}
		weights_load_11667 {Type I LastRead 0 FirstWrite -1}
		weights_load_11668 {Type I LastRead 0 FirstWrite -1}
		weights_load_11669 {Type I LastRead 0 FirstWrite -1}
		weights_load_11670 {Type I LastRead 0 FirstWrite -1}
		weights_load_11671 {Type I LastRead 0 FirstWrite -1}
		weights_load_11672 {Type I LastRead 0 FirstWrite -1}
		weights_load_11673 {Type I LastRead 0 FirstWrite -1}
		weights_load_11674 {Type I LastRead 0 FirstWrite -1}
		weights_load_11675 {Type I LastRead 0 FirstWrite -1}
		weights_load_11676 {Type I LastRead 0 FirstWrite -1}
		weights_load_11677 {Type I LastRead 0 FirstWrite -1}
		weights_load_11678 {Type I LastRead 0 FirstWrite -1}
		weights_load_11679 {Type I LastRead 0 FirstWrite -1}
		weights_load_11680 {Type I LastRead 0 FirstWrite -1}
		weights_load_11681 {Type I LastRead 0 FirstWrite -1}
		weights_load_11682 {Type I LastRead 0 FirstWrite -1}
		weights_load_11683 {Type I LastRead 0 FirstWrite -1}
		weights_load_11684 {Type I LastRead 0 FirstWrite -1}
		weights_load_11685 {Type I LastRead 0 FirstWrite -1}
		weights_load_11686 {Type I LastRead 0 FirstWrite -1}
		weights_load_11687 {Type I LastRead 0 FirstWrite -1}
		weights_load_11688 {Type I LastRead 0 FirstWrite -1}
		weights_load_11689 {Type I LastRead 0 FirstWrite -1}
		weights_load_11690 {Type I LastRead 0 FirstWrite -1}
		weights_load_11691 {Type I LastRead 0 FirstWrite -1}
		weights_load_11692 {Type I LastRead 0 FirstWrite -1}
		weights_load_11693 {Type I LastRead 0 FirstWrite -1}
		weights_load_11694 {Type I LastRead 0 FirstWrite -1}
		weights_load_11695 {Type I LastRead 0 FirstWrite -1}
		weights_load_11696 {Type I LastRead 0 FirstWrite -1}
		weights_load_11697 {Type I LastRead 0 FirstWrite -1}
		weights_load_11698 {Type I LastRead 0 FirstWrite -1}
		weights_load_11699 {Type I LastRead 0 FirstWrite -1}
		weights_load_11700 {Type I LastRead 0 FirstWrite -1}
		weights_load_11701 {Type I LastRead 0 FirstWrite -1}
		weights_load_11702 {Type I LastRead 0 FirstWrite -1}
		weights_load_11703 {Type I LastRead 0 FirstWrite -1}
		weights_load_11704 {Type I LastRead 0 FirstWrite -1}
		weights_load_11705 {Type I LastRead 0 FirstWrite -1}
		weights_load_11706 {Type I LastRead 0 FirstWrite -1}
		weights_load_11707 {Type I LastRead 0 FirstWrite -1}
		weights_load_11708 {Type I LastRead 0 FirstWrite -1}
		weights_load_11709 {Type I LastRead 0 FirstWrite -1}
		weights_load_11710 {Type I LastRead 0 FirstWrite -1}
		weights_load_11711 {Type I LastRead 0 FirstWrite -1}
		weights_load_11712 {Type I LastRead 0 FirstWrite -1}
		weights_load_11713 {Type I LastRead 0 FirstWrite -1}
		weights_load_11714 {Type I LastRead 0 FirstWrite -1}
		weights_load_11715 {Type I LastRead 0 FirstWrite -1}
		weights_load_11716 {Type I LastRead 0 FirstWrite -1}
		weights_load_11717 {Type I LastRead 0 FirstWrite -1}
		weights_load_11718 {Type I LastRead 0 FirstWrite -1}
		weights_load_11719 {Type I LastRead 0 FirstWrite -1}
		weights_load_11720 {Type I LastRead 0 FirstWrite -1}
		weights_load_11721 {Type I LastRead 0 FirstWrite -1}
		weights_load_11722 {Type I LastRead 0 FirstWrite -1}
		weights_load_11723 {Type I LastRead 0 FirstWrite -1}
		weights_load_11724 {Type I LastRead 0 FirstWrite -1}
		weights_load_11725 {Type I LastRead 0 FirstWrite -1}
		weights_load_11726 {Type I LastRead 0 FirstWrite -1}
		weights_load_11727 {Type I LastRead 0 FirstWrite -1}
		weights_load_11728 {Type I LastRead 0 FirstWrite -1}
		weights_load_11729 {Type I LastRead 0 FirstWrite -1}
		weights_load_11730 {Type I LastRead 0 FirstWrite -1}
		weights_load_11731 {Type I LastRead 0 FirstWrite -1}
		weights_load_11732 {Type I LastRead 0 FirstWrite -1}
		weights_load_11733 {Type I LastRead 0 FirstWrite -1}
		weights_load_11734 {Type I LastRead 0 FirstWrite -1}
		weights_load_11735 {Type I LastRead 0 FirstWrite -1}
		weights_load_11736 {Type I LastRead 0 FirstWrite -1}
		weights_load_11737 {Type I LastRead 0 FirstWrite -1}
		weights_load_11738 {Type I LastRead 0 FirstWrite -1}
		weights_load_11739 {Type I LastRead 0 FirstWrite -1}
		weights_load_11740 {Type I LastRead 0 FirstWrite -1}
		weights_load_11741 {Type I LastRead 0 FirstWrite -1}
		weights_load_11742 {Type I LastRead 0 FirstWrite -1}
		weights_load_11743 {Type I LastRead 0 FirstWrite -1}
		weights_load_11744 {Type I LastRead 0 FirstWrite -1}
		weights_load_11745 {Type I LastRead 0 FirstWrite -1}
		weights_load_11746 {Type I LastRead 0 FirstWrite -1}
		weights_load_11747 {Type I LastRead 0 FirstWrite -1}
		weights_load_11748 {Type I LastRead 0 FirstWrite -1}
		weights_load_11749 {Type I LastRead 0 FirstWrite -1}
		weights_load_11750 {Type I LastRead 0 FirstWrite -1}
		weights_load_11751 {Type I LastRead 0 FirstWrite -1}
		weights_load_11752 {Type I LastRead 0 FirstWrite -1}
		weights_load_11753 {Type I LastRead 0 FirstWrite -1}
		weights_load_11754 {Type I LastRead 0 FirstWrite -1}
		weights_load_11755 {Type I LastRead 0 FirstWrite -1}
		weights_load_11756 {Type I LastRead 0 FirstWrite -1}
		weights_load_11757 {Type I LastRead 0 FirstWrite -1}
		weights_load_11758 {Type I LastRead 0 FirstWrite -1}
		weights_load_11759 {Type I LastRead 0 FirstWrite -1}
		weights_load_11760 {Type I LastRead 0 FirstWrite -1}
		weights_load_11761 {Type I LastRead 0 FirstWrite -1}
		weights_load_11762 {Type I LastRead 0 FirstWrite -1}
		weights_load_11763 {Type I LastRead 0 FirstWrite -1}
		weights_load_11764 {Type I LastRead 0 FirstWrite -1}
		weights_load_11765 {Type I LastRead 0 FirstWrite -1}
		weights_load_11766 {Type I LastRead 0 FirstWrite -1}
		weights_load_11767 {Type I LastRead 0 FirstWrite -1}
		weights_load_11768 {Type I LastRead 0 FirstWrite -1}
		weights_load_11769 {Type I LastRead 0 FirstWrite -1}
		weights_load_11770 {Type I LastRead 0 FirstWrite -1}
		weights_load_11771 {Type I LastRead 0 FirstWrite -1}
		weights_load_11772 {Type I LastRead 0 FirstWrite -1}
		weights_load_11773 {Type I LastRead 0 FirstWrite -1}
		weights_load_11774 {Type I LastRead 0 FirstWrite -1}
		weights_load_11775 {Type I LastRead 0 FirstWrite -1}
		weights_load_11776 {Type I LastRead 0 FirstWrite -1}
		weights_load_11777 {Type I LastRead 0 FirstWrite -1}
		weights_load_11778 {Type I LastRead 0 FirstWrite -1}
		weights_load_11779 {Type I LastRead 0 FirstWrite -1}
		weights_load_11780 {Type I LastRead 0 FirstWrite -1}
		weights_load_11781 {Type I LastRead 0 FirstWrite -1}
		weights_load_11782 {Type I LastRead 0 FirstWrite -1}
		weights_load_11783 {Type I LastRead 0 FirstWrite -1}
		weights_load_11784 {Type I LastRead 0 FirstWrite -1}
		weights_load_11785 {Type I LastRead 0 FirstWrite -1}
		weights_load_11786 {Type I LastRead 0 FirstWrite -1}
		weights_load_11787 {Type I LastRead 0 FirstWrite -1}
		weights_load_11788 {Type I LastRead 0 FirstWrite -1}
		weights_load_11789 {Type I LastRead 0 FirstWrite -1}
		weights_load_11790 {Type I LastRead 0 FirstWrite -1}
		weights_load_11791 {Type I LastRead 0 FirstWrite -1}
		weights_load_11792 {Type I LastRead 0 FirstWrite -1}
		weights_load_11793 {Type I LastRead 0 FirstWrite -1}
		weights_load_11794 {Type I LastRead 0 FirstWrite -1}
		weights_load_11795 {Type I LastRead 0 FirstWrite -1}
		weights_load_11796 {Type I LastRead 0 FirstWrite -1}
		weights_load_11797 {Type I LastRead 0 FirstWrite -1}
		weights_load_11798 {Type I LastRead 0 FirstWrite -1}
		weights_load_11799 {Type I LastRead 0 FirstWrite -1}
		weights_load_11800 {Type I LastRead 0 FirstWrite -1}
		weights_load_11801 {Type I LastRead 0 FirstWrite -1}
		weights_load_11802 {Type I LastRead 0 FirstWrite -1}
		weights_load_11803 {Type I LastRead 0 FirstWrite -1}
		weights_load_11804 {Type I LastRead 0 FirstWrite -1}
		weights_load_11805 {Type I LastRead 0 FirstWrite -1}
		weights_load_11806 {Type I LastRead 0 FirstWrite -1}
		weights_load_11807 {Type I LastRead 0 FirstWrite -1}
		weights_load_11808 {Type I LastRead 0 FirstWrite -1}
		weights_load_11809 {Type I LastRead 0 FirstWrite -1}
		weights_load_11810 {Type I LastRead 0 FirstWrite -1}
		weights_load_11811 {Type I LastRead 0 FirstWrite -1}
		weights_load_11812 {Type I LastRead 0 FirstWrite -1}
		weights_load_11813 {Type I LastRead 0 FirstWrite -1}
		weights_load_11814 {Type I LastRead 0 FirstWrite -1}
		weights_load_11815 {Type I LastRead 0 FirstWrite -1}
		weights_load_11816 {Type I LastRead 0 FirstWrite -1}
		weights_load_11817 {Type I LastRead 0 FirstWrite -1}
		weights_load_11818 {Type I LastRead 0 FirstWrite -1}
		weights_load_11819 {Type I LastRead 0 FirstWrite -1}
		weights_load_11820 {Type I LastRead 0 FirstWrite -1}
		weights_load_11821 {Type I LastRead 0 FirstWrite -1}
		weights_load_11822 {Type I LastRead 0 FirstWrite -1}
		weights_load_11823 {Type I LastRead 0 FirstWrite -1}
		weights_load_11824 {Type I LastRead 0 FirstWrite -1}
		weights_load_11825 {Type I LastRead 0 FirstWrite -1}
		weights_load_11826 {Type I LastRead 0 FirstWrite -1}
		weights_load_11827 {Type I LastRead 0 FirstWrite -1}
		weights_load_11828 {Type I LastRead 0 FirstWrite -1}
		weights_load_11829 {Type I LastRead 0 FirstWrite -1}
		weights_load_11830 {Type I LastRead 0 FirstWrite -1}
		weights_load_11831 {Type I LastRead 0 FirstWrite -1}
		weights_load_11832 {Type I LastRead 0 FirstWrite -1}
		weights_load_11833 {Type I LastRead 0 FirstWrite -1}
		weights_load_11834 {Type I LastRead 0 FirstWrite -1}
		weights_load_11835 {Type I LastRead 0 FirstWrite -1}
		weights_load_11836 {Type I LastRead 0 FirstWrite -1}
		weights_load_11837 {Type I LastRead 0 FirstWrite -1}
		weights_load_11838 {Type I LastRead 0 FirstWrite -1}
		weights_load_11839 {Type I LastRead 0 FirstWrite -1}
		weights_load_11840 {Type I LastRead 0 FirstWrite -1}
		weights_load_11841 {Type I LastRead 0 FirstWrite -1}
		weights_load_11842 {Type I LastRead 0 FirstWrite -1}
		weights_load_11843 {Type I LastRead 0 FirstWrite -1}
		weights_load_11844 {Type I LastRead 0 FirstWrite -1}
		weights_load_11845 {Type I LastRead 0 FirstWrite -1}
		weights_load_11846 {Type I LastRead 0 FirstWrite -1}
		weights_load_11847 {Type I LastRead 0 FirstWrite -1}
		weights_load_11848 {Type I LastRead 0 FirstWrite -1}
		weights_load_11849 {Type I LastRead 0 FirstWrite -1}
		weights_load_11850 {Type I LastRead 0 FirstWrite -1}
		weights_load_11851 {Type I LastRead 0 FirstWrite -1}
		weights_load_11852 {Type I LastRead 0 FirstWrite -1}
		weights_load_11853 {Type I LastRead 0 FirstWrite -1}
		weights_load_11854 {Type I LastRead 0 FirstWrite -1}
		weights_load_11855 {Type I LastRead 0 FirstWrite -1}
		weights_load_11856 {Type I LastRead 0 FirstWrite -1}
		weights_load_11857 {Type I LastRead 0 FirstWrite -1}
		weights_load_11858 {Type I LastRead 0 FirstWrite -1}
		weights_load_11859 {Type I LastRead 0 FirstWrite -1}
		weights_load_11860 {Type I LastRead 0 FirstWrite -1}
		weights_load_11861 {Type I LastRead 0 FirstWrite -1}
		weights_load_11862 {Type I LastRead 0 FirstWrite -1}
		weights_load_11863 {Type I LastRead 0 FirstWrite -1}
		weights_load_11864 {Type I LastRead 0 FirstWrite -1}
		weights_load_11865 {Type I LastRead 0 FirstWrite -1}
		weights_load_11866 {Type I LastRead 0 FirstWrite -1}
		weights_load_11867 {Type I LastRead 0 FirstWrite -1}
		weights_load_11868 {Type I LastRead 0 FirstWrite -1}
		weights_load_11869 {Type I LastRead 0 FirstWrite -1}
		weights_load_11870 {Type I LastRead 0 FirstWrite -1}
		weights_load_11871 {Type I LastRead 0 FirstWrite -1}
		weights_load_11872 {Type I LastRead 0 FirstWrite -1}
		weights_load_11873 {Type I LastRead 0 FirstWrite -1}
		weights_load_11874 {Type I LastRead 0 FirstWrite -1}
		weights_load_11875 {Type I LastRead 0 FirstWrite -1}
		weights_load_11876 {Type I LastRead 0 FirstWrite -1}
		weights_load_11877 {Type I LastRead 0 FirstWrite -1}
		weights_load_11878 {Type I LastRead 0 FirstWrite -1}
		weights_load_11879 {Type I LastRead 0 FirstWrite -1}
		weights_load_11880 {Type I LastRead 0 FirstWrite -1}
		weights_load_11881 {Type I LastRead 0 FirstWrite -1}
		weights_load_11882 {Type I LastRead 0 FirstWrite -1}
		weights_load_11883 {Type I LastRead 0 FirstWrite -1}
		weights_load_11884 {Type I LastRead 0 FirstWrite -1}
		weights_load_11885 {Type I LastRead 0 FirstWrite -1}
		weights_load_11886 {Type I LastRead 0 FirstWrite -1}
		weights_load_11887 {Type I LastRead 0 FirstWrite -1}
		weights_load_11888 {Type I LastRead 0 FirstWrite -1}
		weights_load_11889 {Type I LastRead 0 FirstWrite -1}
		weights_load_11890 {Type I LastRead 0 FirstWrite -1}
		weights_load_11891 {Type I LastRead 0 FirstWrite -1}
		weights_load_11892 {Type I LastRead 0 FirstWrite -1}
		weights_load_11893 {Type I LastRead 0 FirstWrite -1}
		weights_load_11894 {Type I LastRead 0 FirstWrite -1}
		weights_load_11895 {Type I LastRead 0 FirstWrite -1}
		weights_load_11896 {Type I LastRead 0 FirstWrite -1}
		weights_load_11897 {Type I LastRead 0 FirstWrite -1}
		weights_load_11898 {Type I LastRead 0 FirstWrite -1}
		weights_load_11899 {Type I LastRead 0 FirstWrite -1}
		weights_load_11900 {Type I LastRead 0 FirstWrite -1}
		weights_load_11901 {Type I LastRead 0 FirstWrite -1}
		weights_load_11902 {Type I LastRead 0 FirstWrite -1}
		weights_load_11903 {Type I LastRead 0 FirstWrite -1}
		weights_load_11904 {Type I LastRead 0 FirstWrite -1}
		weights_load_11905 {Type I LastRead 0 FirstWrite -1}
		weights_load_11906 {Type I LastRead 0 FirstWrite -1}
		weights_load_11907 {Type I LastRead 0 FirstWrite -1}
		weights_load_11908 {Type I LastRead 0 FirstWrite -1}
		weights_load_11909 {Type I LastRead 0 FirstWrite -1}
		weights_load_11910 {Type I LastRead 0 FirstWrite -1}
		weights_load_11911 {Type I LastRead 0 FirstWrite -1}
		weights_load_11912 {Type I LastRead 0 FirstWrite -1}
		weights_load_11913 {Type I LastRead 0 FirstWrite -1}
		weights_load_11914 {Type I LastRead 0 FirstWrite -1}
		weights_load_11915 {Type I LastRead 0 FirstWrite -1}
		weights_load_11916 {Type I LastRead 0 FirstWrite -1}
		weights_load_11917 {Type I LastRead 0 FirstWrite -1}
		weights_load_11918 {Type I LastRead 0 FirstWrite -1}
		weights_load_11919 {Type I LastRead 0 FirstWrite -1}
		weights_load_11920 {Type I LastRead 0 FirstWrite -1}
		weights_load_11921 {Type I LastRead 0 FirstWrite -1}
		weights_load_11922 {Type I LastRead 0 FirstWrite -1}
		weights_load_11923 {Type I LastRead 0 FirstWrite -1}
		weights_load_11924 {Type I LastRead 0 FirstWrite -1}
		weights_load_11925 {Type I LastRead 0 FirstWrite -1}
		weights_load_11926 {Type I LastRead 0 FirstWrite -1}
		weights_load_11927 {Type I LastRead 0 FirstWrite -1}
		weights_load_11928 {Type I LastRead 0 FirstWrite -1}
		weights_load_11929 {Type I LastRead 0 FirstWrite -1}
		weights_load_11930 {Type I LastRead 0 FirstWrite -1}
		weights_load_11931 {Type I LastRead 0 FirstWrite -1}
		weights_load_11932 {Type I LastRead 0 FirstWrite -1}
		weights_load_11933 {Type I LastRead 0 FirstWrite -1}
		weights_load_11934 {Type I LastRead 0 FirstWrite -1}
		weights_load_11935 {Type I LastRead 0 FirstWrite -1}
		weights_load_11936 {Type I LastRead 0 FirstWrite -1}
		weights_load_11937 {Type I LastRead 0 FirstWrite -1}
		weights_load_11938 {Type I LastRead 0 FirstWrite -1}
		weights_load_11939 {Type I LastRead 0 FirstWrite -1}
		weights_load_11940 {Type I LastRead 0 FirstWrite -1}
		weights_load_11941 {Type I LastRead 0 FirstWrite -1}
		weights_load_11942 {Type I LastRead 0 FirstWrite -1}
		weights_load_11943 {Type I LastRead 0 FirstWrite -1}
		weights_load_11944 {Type I LastRead 0 FirstWrite -1}
		weights_load_11945 {Type I LastRead 0 FirstWrite -1}
		weights_load_11946 {Type I LastRead 0 FirstWrite -1}
		weights_load_11947 {Type I LastRead 0 FirstWrite -1}
		weights_load_11948 {Type I LastRead 0 FirstWrite -1}
		weights_load_11949 {Type I LastRead 0 FirstWrite -1}
		weights_load_11950 {Type I LastRead 0 FirstWrite -1}
		weights_load_11951 {Type I LastRead 0 FirstWrite -1}
		weights_load_11952 {Type I LastRead 0 FirstWrite -1}
		weights_load_11953 {Type I LastRead 0 FirstWrite -1}
		weights_load_11954 {Type I LastRead 0 FirstWrite -1}
		weights_load_11955 {Type I LastRead 0 FirstWrite -1}
		weights_load_11956 {Type I LastRead 0 FirstWrite -1}
		weights_load_11957 {Type I LastRead 0 FirstWrite -1}
		weights_load_11958 {Type I LastRead 0 FirstWrite -1}
		weights_load_11959 {Type I LastRead 0 FirstWrite -1}
		weights_load_11960 {Type I LastRead 0 FirstWrite -1}
		weights_load_11961 {Type I LastRead 0 FirstWrite -1}
		weights_load_11962 {Type I LastRead 0 FirstWrite -1}
		weights_load_11963 {Type I LastRead 0 FirstWrite -1}
		weights_load_11964 {Type I LastRead 0 FirstWrite -1}
		weights_load_11965 {Type I LastRead 0 FirstWrite -1}
		weights_load_11966 {Type I LastRead 0 FirstWrite -1}
		weights_load_11967 {Type I LastRead 0 FirstWrite -1}
		weights_load_11968 {Type I LastRead 0 FirstWrite -1}
		weights_load_11969 {Type I LastRead 0 FirstWrite -1}
		weights_load_11970 {Type I LastRead 0 FirstWrite -1}
		weights_load_11971 {Type I LastRead 0 FirstWrite -1}
		weights_load_11972 {Type I LastRead 0 FirstWrite -1}
		weights_load_11973 {Type I LastRead 0 FirstWrite -1}
		weights_load_11974 {Type I LastRead 0 FirstWrite -1}
		weights_load_11975 {Type I LastRead 0 FirstWrite -1}
		weights_load_11976 {Type I LastRead 0 FirstWrite -1}
		weights_load_11977 {Type I LastRead 0 FirstWrite -1}
		weights_load_11978 {Type I LastRead 0 FirstWrite -1}
		weights_load_11979 {Type I LastRead 0 FirstWrite -1}
		weights_load_11980 {Type I LastRead 0 FirstWrite -1}
		weights_load_11981 {Type I LastRead 0 FirstWrite -1}
		weights_load_11982 {Type I LastRead 0 FirstWrite -1}
		weights_load_11983 {Type I LastRead 0 FirstWrite -1}
		weights_load_11984 {Type I LastRead 0 FirstWrite -1}
		weights_load_11985 {Type I LastRead 0 FirstWrite -1}
		weights_load_11986 {Type I LastRead 0 FirstWrite -1}
		weights_load_11987 {Type I LastRead 0 FirstWrite -1}
		weights_load_11988 {Type I LastRead 0 FirstWrite -1}
		weights_load_11989 {Type I LastRead 0 FirstWrite -1}
		weights_load_11990 {Type I LastRead 0 FirstWrite -1}
		weights_load_11991 {Type I LastRead 0 FirstWrite -1}
		weights_load_11992 {Type I LastRead 0 FirstWrite -1}
		weights_load_11993 {Type I LastRead 0 FirstWrite -1}
		weights_load_11994 {Type I LastRead 0 FirstWrite -1}
		weights_load_11995 {Type I LastRead 0 FirstWrite -1}
		weights_load_11996 {Type I LastRead 0 FirstWrite -1}
		weights_load_11997 {Type I LastRead 0 FirstWrite -1}
		weights_load_11998 {Type I LastRead 0 FirstWrite -1}
		weights_load_11999 {Type I LastRead 0 FirstWrite -1}
		weights_load_12000 {Type I LastRead 0 FirstWrite -1}
		weights_load_12001 {Type I LastRead 0 FirstWrite -1}
		weights_load_12002 {Type I LastRead 0 FirstWrite -1}
		weights_load_12003 {Type I LastRead 0 FirstWrite -1}
		weights_load_12004 {Type I LastRead 0 FirstWrite -1}
		weights_load_12005 {Type I LastRead 0 FirstWrite -1}
		weights_load_12006 {Type I LastRead 0 FirstWrite -1}
		weights_load_12007 {Type I LastRead 0 FirstWrite -1}
		weights_load_12008 {Type I LastRead 0 FirstWrite -1}
		weights_load_12009 {Type I LastRead 0 FirstWrite -1}
		weights_load_12010 {Type I LastRead 0 FirstWrite -1}
		weights_load_12011 {Type I LastRead 0 FirstWrite -1}
		weights_load_12012 {Type I LastRead 0 FirstWrite -1}
		weights_load_12013 {Type I LastRead 0 FirstWrite -1}
		weights_load_12014 {Type I LastRead 0 FirstWrite -1}
		weights_load_12015 {Type I LastRead 0 FirstWrite -1}
		weights_load_12016 {Type I LastRead 0 FirstWrite -1}
		weights_load_12017 {Type I LastRead 0 FirstWrite -1}
		weights_load_12018 {Type I LastRead 0 FirstWrite -1}
		weights_load_12019 {Type I LastRead 0 FirstWrite -1}
		weights_load_12020 {Type I LastRead 0 FirstWrite -1}
		weights_load_12021 {Type I LastRead 0 FirstWrite -1}
		weights_load_12022 {Type I LastRead 0 FirstWrite -1}
		weights_load_12023 {Type I LastRead 0 FirstWrite -1}
		weights_load_12024 {Type I LastRead 0 FirstWrite -1}
		weights_load_12025 {Type I LastRead 0 FirstWrite -1}
		weights_load_12026 {Type I LastRead 0 FirstWrite -1}
		weights_load_12027 {Type I LastRead 0 FirstWrite -1}
		weights_load_12028 {Type I LastRead 0 FirstWrite -1}
		weights_load_12029 {Type I LastRead 0 FirstWrite -1}
		weights_load_12030 {Type I LastRead 0 FirstWrite -1}
		weights_load_12031 {Type I LastRead 0 FirstWrite -1}
		weights_load_12032 {Type I LastRead 0 FirstWrite -1}
		weights_load_12033 {Type I LastRead 0 FirstWrite -1}
		weights_load_12034 {Type I LastRead 0 FirstWrite -1}
		weights_load_12035 {Type I LastRead 0 FirstWrite -1}
		weights_load_12036 {Type I LastRead 0 FirstWrite -1}
		weights_load_12037 {Type I LastRead 0 FirstWrite -1}
		weights_load_12038 {Type I LastRead 0 FirstWrite -1}
		weights_load_12039 {Type I LastRead 0 FirstWrite -1}
		weights_load_12040 {Type I LastRead 0 FirstWrite -1}
		weights_load_12041 {Type I LastRead 0 FirstWrite -1}
		weights_load_12042 {Type I LastRead 0 FirstWrite -1}
		weights_load_12043 {Type I LastRead 0 FirstWrite -1}
		weights_load_12044 {Type I LastRead 0 FirstWrite -1}
		weights_load_12045 {Type I LastRead 0 FirstWrite -1}
		weights_load_12046 {Type I LastRead 0 FirstWrite -1}
		weights_load_12047 {Type I LastRead 0 FirstWrite -1}
		weights_load_12048 {Type I LastRead 0 FirstWrite -1}
		weights_load_12049 {Type I LastRead 0 FirstWrite -1}
		weights_load_12050 {Type I LastRead 0 FirstWrite -1}
		weights_load_12051 {Type I LastRead 0 FirstWrite -1}
		weights_load_12052 {Type I LastRead 0 FirstWrite -1}
		weights_load_12053 {Type I LastRead 0 FirstWrite -1}
		weights_load_12054 {Type I LastRead 0 FirstWrite -1}
		weights_load_12055 {Type I LastRead 0 FirstWrite -1}
		weights_load_12056 {Type I LastRead 0 FirstWrite -1}
		weights_load_12057 {Type I LastRead 0 FirstWrite -1}
		weights_load_12058 {Type I LastRead 0 FirstWrite -1}
		weights_load_12059 {Type I LastRead 0 FirstWrite -1}
		weights_load_12060 {Type I LastRead 0 FirstWrite -1}
		weights_load_12061 {Type I LastRead 0 FirstWrite -1}
		weights_load_12062 {Type I LastRead 0 FirstWrite -1}
		weights_load_12063 {Type I LastRead 0 FirstWrite -1}
		weights_load_12064 {Type I LastRead 0 FirstWrite -1}
		weights_load_12065 {Type I LastRead 0 FirstWrite -1}
		weights_load_12066 {Type I LastRead 0 FirstWrite -1}
		weights_load_12067 {Type I LastRead 0 FirstWrite -1}
		weights_load_12068 {Type I LastRead 0 FirstWrite -1}
		weights_load_12069 {Type I LastRead 0 FirstWrite -1}
		weights_load_12070 {Type I LastRead 0 FirstWrite -1}
		weights_load_12071 {Type I LastRead 0 FirstWrite -1}
		weights_load_12072 {Type I LastRead 0 FirstWrite -1}
		weights_load_12073 {Type I LastRead 0 FirstWrite -1}
		weights_load_12074 {Type I LastRead 0 FirstWrite -1}
		weights_load_12075 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_19 { ap_fifo {  { conv2d_64_padded_window_stream_19_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_19_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_19_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_19_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_19_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_19 { ap_fifo {  { in_channel_map_stream_19_din fifo_port_we 1 32 }  { in_channel_map_stream_19_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_19_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_19_full_n fifo_status 0 1 }  { in_channel_map_stream_19_write fifo_data 1 1 } } }
}
