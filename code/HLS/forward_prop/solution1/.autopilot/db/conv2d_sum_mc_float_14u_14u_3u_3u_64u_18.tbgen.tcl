set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_18
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.18}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_18 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_18 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_18", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_18", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_18_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_18_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_18_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_18_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_18_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_18_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_18_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_18_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_18_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_18_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_18_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_18", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_18_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_18", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_18_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_18", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_18_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_18", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_18_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_18", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_18_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_18", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_18_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_18", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_18_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_18", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_18_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_18", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_18_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_18", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_18",
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
			{"Name" : "conv2d_64_padded_window_stream_18", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_18_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_18", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_18", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_18_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_18", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_18_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_18_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_18", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12076", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12077", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12078", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12079", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12080", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12081", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12082", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12083", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_18", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_12084", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12085", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12086", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12087", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12088", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12089", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12090", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12091", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12092", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12093", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12094", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12095", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12096", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12097", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12098", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12099", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12100", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12101", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12102", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12103", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12104", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12105", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12106", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12107", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12108", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12109", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12110", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12111", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12112", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12113", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12114", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12115", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12116", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12117", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12118", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12119", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12120", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12121", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12122", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12123", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12124", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12125", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12126", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12127", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12128", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12129", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12130", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12131", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12132", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12133", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12134", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12135", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12136", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12137", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12138", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12139", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12140", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12141", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12142", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12143", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12144", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12145", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12146", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12147", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12148", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12149", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12150", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12151", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12152", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12153", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12154", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12155", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12156", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12157", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12158", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12159", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12160", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12161", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12162", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12163", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12164", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12165", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12166", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12167", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12168", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12169", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12170", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12171", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12172", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12173", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12174", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12175", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12176", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12177", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12178", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12179", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12180", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12181", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12182", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12183", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12184", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12185", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12186", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12187", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12188", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12189", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12190", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12191", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12192", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12193", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12194", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12195", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12196", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12197", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12198", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12199", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12200", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12201", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12202", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12203", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12204", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12205", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12206", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12207", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12208", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12209", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12210", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12211", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12212", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12213", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12214", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12215", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12216", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12217", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12218", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12219", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12220", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12221", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12222", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12223", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12224", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12225", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12226", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12227", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12228", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12229", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12230", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12231", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12232", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12233", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12234", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12235", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12236", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12237", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12238", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12239", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12240", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12241", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12242", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12243", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12244", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12245", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12246", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12247", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12248", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12249", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12250", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12251", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12252", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12253", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12254", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12255", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12256", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12257", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12258", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12259", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12260", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12261", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12262", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12263", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12264", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12265", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12266", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12267", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12268", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12269", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12270", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12271", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12272", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12273", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12274", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12275", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12276", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12277", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12278", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12279", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12280", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12281", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12282", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12283", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12284", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12285", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12286", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12287", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12288", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12289", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12290", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12291", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12292", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12293", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12294", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12295", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12296", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12297", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12298", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12299", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12300", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12301", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12302", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12303", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12304", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12305", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12306", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12307", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12308", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12309", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12310", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12311", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12312", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12313", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12314", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12315", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12316", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12317", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12318", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12319", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12320", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12321", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12322", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12323", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12324", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12325", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12326", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12327", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12328", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12329", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12330", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12331", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12332", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12333", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12334", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12335", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12336", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12337", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12338", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12339", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12340", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12341", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12342", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12343", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12344", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12345", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12346", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12347", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12348", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12349", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12350", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12351", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12352", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12353", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12354", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12355", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12356", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12357", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12358", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12359", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12360", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12361", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12362", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12363", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12364", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12365", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12366", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12367", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12368", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12369", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12370", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12371", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12372", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12373", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12374", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12375", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12376", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12377", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12378", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12379", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12380", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12381", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12382", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12383", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12384", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12385", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12386", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12387", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12388", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12389", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12390", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12391", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12392", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12393", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12394", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12395", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12396", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12397", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12398", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12399", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12400", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12401", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12402", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12403", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12404", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12405", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12406", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12407", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12408", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12409", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12410", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12411", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12412", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12413", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12414", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12415", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12416", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12417", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12418", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12419", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12420", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12421", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12422", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12423", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12424", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12425", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12426", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12427", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12428", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12429", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12430", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12431", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12432", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12433", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12434", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12435", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12436", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12437", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12438", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12439", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12440", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12441", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12442", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12443", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12444", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12445", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12446", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12447", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12448", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12449", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12450", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12451", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12452", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12453", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12454", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12455", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12456", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12457", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12458", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12459", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12460", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12461", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12462", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12463", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12464", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12465", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12466", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12467", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12468", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12469", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12470", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12471", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12472", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12473", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12474", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12475", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12476", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12477", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12478", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12479", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12480", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12481", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12482", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12483", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12484", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12485", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12486", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12487", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12488", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12489", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12490", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12491", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12492", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12493", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12494", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12495", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12496", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12497", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12498", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12499", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12500", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12501", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12502", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12503", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12504", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12505", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12506", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12507", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12508", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12509", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12510", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12511", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12512", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12513", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12514", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12515", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12516", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12517", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12518", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12519", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12520", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12521", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12522", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12523", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12524", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12525", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12526", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12527", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12528", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12529", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12530", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12531", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12532", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12533", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12534", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12535", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12536", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12537", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12538", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12539", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12540", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12541", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12542", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12543", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12544", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12545", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12546", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12547", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12548", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12549", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12550", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12551", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12552", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12553", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12554", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12555", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12556", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12557", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12558", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12559", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12560", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12561", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12562", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12563", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12564", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12565", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12566", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12567", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12568", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12569", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12570", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12571", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12572", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12573", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12574", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12575", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12576", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12577", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12578", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12579", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12580", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12581", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12582", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12583", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12584", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12585", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12586", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12587", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12588", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12589", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12590", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12591", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12592", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12593", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12594", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12595", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12596", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12597", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12598", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12599", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12600", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12601", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12602", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12603", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12604", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12605", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12606", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12607", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12608", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12609", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12610", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12611", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12612", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12613", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12614", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12615", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12616", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12617", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12618", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12619", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12620", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12621", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12622", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12623", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12624", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12625", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12626", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12627", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12628", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12629", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12630", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12631", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12632", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12633", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12634", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12635", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12636", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12637", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12638", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12639", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12640", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12641", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12642", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12643", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12644", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12645", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12646", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12647", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12648", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12649", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12650", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_18_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U11320", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_18_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U11321", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_18_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U11322", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_18_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U11323", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_18_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U11324", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_18_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U11325", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_18_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U11326", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_18_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U11327", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_18_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U11328", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_18_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U11329", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_18_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U11330", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_18_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U11331", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_18_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U11332", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_18_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U11333", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_18_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U11334", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_18_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U11335", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_18_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U11336", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_18_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_18 {
		conv2d_64_padded_window_stream_18 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_18 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_18_Pipeline_inputs {
		conv2d_64_padded_window_stream_18 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_12076 {Type I LastRead 0 FirstWrite -1}
		weights_load_12077 {Type I LastRead 0 FirstWrite -1}
		weights_load_12078 {Type I LastRead 0 FirstWrite -1}
		weights_load_12079 {Type I LastRead 0 FirstWrite -1}
		weights_load_12080 {Type I LastRead 0 FirstWrite -1}
		weights_load_12081 {Type I LastRead 0 FirstWrite -1}
		weights_load_12082 {Type I LastRead 0 FirstWrite -1}
		weights_load_12083 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_18 {Type O LastRead -1 FirstWrite 16}
		weights_load_12084 {Type I LastRead 0 FirstWrite -1}
		weights_load_12085 {Type I LastRead 0 FirstWrite -1}
		weights_load_12086 {Type I LastRead 0 FirstWrite -1}
		weights_load_12087 {Type I LastRead 0 FirstWrite -1}
		weights_load_12088 {Type I LastRead 0 FirstWrite -1}
		weights_load_12089 {Type I LastRead 0 FirstWrite -1}
		weights_load_12090 {Type I LastRead 0 FirstWrite -1}
		weights_load_12091 {Type I LastRead 0 FirstWrite -1}
		weights_load_12092 {Type I LastRead 0 FirstWrite -1}
		weights_load_12093 {Type I LastRead 0 FirstWrite -1}
		weights_load_12094 {Type I LastRead 0 FirstWrite -1}
		weights_load_12095 {Type I LastRead 0 FirstWrite -1}
		weights_load_12096 {Type I LastRead 0 FirstWrite -1}
		weights_load_12097 {Type I LastRead 0 FirstWrite -1}
		weights_load_12098 {Type I LastRead 0 FirstWrite -1}
		weights_load_12099 {Type I LastRead 0 FirstWrite -1}
		weights_load_12100 {Type I LastRead 0 FirstWrite -1}
		weights_load_12101 {Type I LastRead 0 FirstWrite -1}
		weights_load_12102 {Type I LastRead 0 FirstWrite -1}
		weights_load_12103 {Type I LastRead 0 FirstWrite -1}
		weights_load_12104 {Type I LastRead 0 FirstWrite -1}
		weights_load_12105 {Type I LastRead 0 FirstWrite -1}
		weights_load_12106 {Type I LastRead 0 FirstWrite -1}
		weights_load_12107 {Type I LastRead 0 FirstWrite -1}
		weights_load_12108 {Type I LastRead 0 FirstWrite -1}
		weights_load_12109 {Type I LastRead 0 FirstWrite -1}
		weights_load_12110 {Type I LastRead 0 FirstWrite -1}
		weights_load_12111 {Type I LastRead 0 FirstWrite -1}
		weights_load_12112 {Type I LastRead 0 FirstWrite -1}
		weights_load_12113 {Type I LastRead 0 FirstWrite -1}
		weights_load_12114 {Type I LastRead 0 FirstWrite -1}
		weights_load_12115 {Type I LastRead 0 FirstWrite -1}
		weights_load_12116 {Type I LastRead 0 FirstWrite -1}
		weights_load_12117 {Type I LastRead 0 FirstWrite -1}
		weights_load_12118 {Type I LastRead 0 FirstWrite -1}
		weights_load_12119 {Type I LastRead 0 FirstWrite -1}
		weights_load_12120 {Type I LastRead 0 FirstWrite -1}
		weights_load_12121 {Type I LastRead 0 FirstWrite -1}
		weights_load_12122 {Type I LastRead 0 FirstWrite -1}
		weights_load_12123 {Type I LastRead 0 FirstWrite -1}
		weights_load_12124 {Type I LastRead 0 FirstWrite -1}
		weights_load_12125 {Type I LastRead 0 FirstWrite -1}
		weights_load_12126 {Type I LastRead 0 FirstWrite -1}
		weights_load_12127 {Type I LastRead 0 FirstWrite -1}
		weights_load_12128 {Type I LastRead 0 FirstWrite -1}
		weights_load_12129 {Type I LastRead 0 FirstWrite -1}
		weights_load_12130 {Type I LastRead 0 FirstWrite -1}
		weights_load_12131 {Type I LastRead 0 FirstWrite -1}
		weights_load_12132 {Type I LastRead 0 FirstWrite -1}
		weights_load_12133 {Type I LastRead 0 FirstWrite -1}
		weights_load_12134 {Type I LastRead 0 FirstWrite -1}
		weights_load_12135 {Type I LastRead 0 FirstWrite -1}
		weights_load_12136 {Type I LastRead 0 FirstWrite -1}
		weights_load_12137 {Type I LastRead 0 FirstWrite -1}
		weights_load_12138 {Type I LastRead 0 FirstWrite -1}
		weights_load_12139 {Type I LastRead 0 FirstWrite -1}
		weights_load_12140 {Type I LastRead 0 FirstWrite -1}
		weights_load_12141 {Type I LastRead 0 FirstWrite -1}
		weights_load_12142 {Type I LastRead 0 FirstWrite -1}
		weights_load_12143 {Type I LastRead 0 FirstWrite -1}
		weights_load_12144 {Type I LastRead 0 FirstWrite -1}
		weights_load_12145 {Type I LastRead 0 FirstWrite -1}
		weights_load_12146 {Type I LastRead 0 FirstWrite -1}
		weights_load_12147 {Type I LastRead 0 FirstWrite -1}
		weights_load_12148 {Type I LastRead 0 FirstWrite -1}
		weights_load_12149 {Type I LastRead 0 FirstWrite -1}
		weights_load_12150 {Type I LastRead 0 FirstWrite -1}
		weights_load_12151 {Type I LastRead 0 FirstWrite -1}
		weights_load_12152 {Type I LastRead 0 FirstWrite -1}
		weights_load_12153 {Type I LastRead 0 FirstWrite -1}
		weights_load_12154 {Type I LastRead 0 FirstWrite -1}
		weights_load_12155 {Type I LastRead 0 FirstWrite -1}
		weights_load_12156 {Type I LastRead 0 FirstWrite -1}
		weights_load_12157 {Type I LastRead 0 FirstWrite -1}
		weights_load_12158 {Type I LastRead 0 FirstWrite -1}
		weights_load_12159 {Type I LastRead 0 FirstWrite -1}
		weights_load_12160 {Type I LastRead 0 FirstWrite -1}
		weights_load_12161 {Type I LastRead 0 FirstWrite -1}
		weights_load_12162 {Type I LastRead 0 FirstWrite -1}
		weights_load_12163 {Type I LastRead 0 FirstWrite -1}
		weights_load_12164 {Type I LastRead 0 FirstWrite -1}
		weights_load_12165 {Type I LastRead 0 FirstWrite -1}
		weights_load_12166 {Type I LastRead 0 FirstWrite -1}
		weights_load_12167 {Type I LastRead 0 FirstWrite -1}
		weights_load_12168 {Type I LastRead 0 FirstWrite -1}
		weights_load_12169 {Type I LastRead 0 FirstWrite -1}
		weights_load_12170 {Type I LastRead 0 FirstWrite -1}
		weights_load_12171 {Type I LastRead 0 FirstWrite -1}
		weights_load_12172 {Type I LastRead 0 FirstWrite -1}
		weights_load_12173 {Type I LastRead 0 FirstWrite -1}
		weights_load_12174 {Type I LastRead 0 FirstWrite -1}
		weights_load_12175 {Type I LastRead 0 FirstWrite -1}
		weights_load_12176 {Type I LastRead 0 FirstWrite -1}
		weights_load_12177 {Type I LastRead 0 FirstWrite -1}
		weights_load_12178 {Type I LastRead 0 FirstWrite -1}
		weights_load_12179 {Type I LastRead 0 FirstWrite -1}
		weights_load_12180 {Type I LastRead 0 FirstWrite -1}
		weights_load_12181 {Type I LastRead 0 FirstWrite -1}
		weights_load_12182 {Type I LastRead 0 FirstWrite -1}
		weights_load_12183 {Type I LastRead 0 FirstWrite -1}
		weights_load_12184 {Type I LastRead 0 FirstWrite -1}
		weights_load_12185 {Type I LastRead 0 FirstWrite -1}
		weights_load_12186 {Type I LastRead 0 FirstWrite -1}
		weights_load_12187 {Type I LastRead 0 FirstWrite -1}
		weights_load_12188 {Type I LastRead 0 FirstWrite -1}
		weights_load_12189 {Type I LastRead 0 FirstWrite -1}
		weights_load_12190 {Type I LastRead 0 FirstWrite -1}
		weights_load_12191 {Type I LastRead 0 FirstWrite -1}
		weights_load_12192 {Type I LastRead 0 FirstWrite -1}
		weights_load_12193 {Type I LastRead 0 FirstWrite -1}
		weights_load_12194 {Type I LastRead 0 FirstWrite -1}
		weights_load_12195 {Type I LastRead 0 FirstWrite -1}
		weights_load_12196 {Type I LastRead 0 FirstWrite -1}
		weights_load_12197 {Type I LastRead 0 FirstWrite -1}
		weights_load_12198 {Type I LastRead 0 FirstWrite -1}
		weights_load_12199 {Type I LastRead 0 FirstWrite -1}
		weights_load_12200 {Type I LastRead 0 FirstWrite -1}
		weights_load_12201 {Type I LastRead 0 FirstWrite -1}
		weights_load_12202 {Type I LastRead 0 FirstWrite -1}
		weights_load_12203 {Type I LastRead 0 FirstWrite -1}
		weights_load_12204 {Type I LastRead 0 FirstWrite -1}
		weights_load_12205 {Type I LastRead 0 FirstWrite -1}
		weights_load_12206 {Type I LastRead 0 FirstWrite -1}
		weights_load_12207 {Type I LastRead 0 FirstWrite -1}
		weights_load_12208 {Type I LastRead 0 FirstWrite -1}
		weights_load_12209 {Type I LastRead 0 FirstWrite -1}
		weights_load_12210 {Type I LastRead 0 FirstWrite -1}
		weights_load_12211 {Type I LastRead 0 FirstWrite -1}
		weights_load_12212 {Type I LastRead 0 FirstWrite -1}
		weights_load_12213 {Type I LastRead 0 FirstWrite -1}
		weights_load_12214 {Type I LastRead 0 FirstWrite -1}
		weights_load_12215 {Type I LastRead 0 FirstWrite -1}
		weights_load_12216 {Type I LastRead 0 FirstWrite -1}
		weights_load_12217 {Type I LastRead 0 FirstWrite -1}
		weights_load_12218 {Type I LastRead 0 FirstWrite -1}
		weights_load_12219 {Type I LastRead 0 FirstWrite -1}
		weights_load_12220 {Type I LastRead 0 FirstWrite -1}
		weights_load_12221 {Type I LastRead 0 FirstWrite -1}
		weights_load_12222 {Type I LastRead 0 FirstWrite -1}
		weights_load_12223 {Type I LastRead 0 FirstWrite -1}
		weights_load_12224 {Type I LastRead 0 FirstWrite -1}
		weights_load_12225 {Type I LastRead 0 FirstWrite -1}
		weights_load_12226 {Type I LastRead 0 FirstWrite -1}
		weights_load_12227 {Type I LastRead 0 FirstWrite -1}
		weights_load_12228 {Type I LastRead 0 FirstWrite -1}
		weights_load_12229 {Type I LastRead 0 FirstWrite -1}
		weights_load_12230 {Type I LastRead 0 FirstWrite -1}
		weights_load_12231 {Type I LastRead 0 FirstWrite -1}
		weights_load_12232 {Type I LastRead 0 FirstWrite -1}
		weights_load_12233 {Type I LastRead 0 FirstWrite -1}
		weights_load_12234 {Type I LastRead 0 FirstWrite -1}
		weights_load_12235 {Type I LastRead 0 FirstWrite -1}
		weights_load_12236 {Type I LastRead 0 FirstWrite -1}
		weights_load_12237 {Type I LastRead 0 FirstWrite -1}
		weights_load_12238 {Type I LastRead 0 FirstWrite -1}
		weights_load_12239 {Type I LastRead 0 FirstWrite -1}
		weights_load_12240 {Type I LastRead 0 FirstWrite -1}
		weights_load_12241 {Type I LastRead 0 FirstWrite -1}
		weights_load_12242 {Type I LastRead 0 FirstWrite -1}
		weights_load_12243 {Type I LastRead 0 FirstWrite -1}
		weights_load_12244 {Type I LastRead 0 FirstWrite -1}
		weights_load_12245 {Type I LastRead 0 FirstWrite -1}
		weights_load_12246 {Type I LastRead 0 FirstWrite -1}
		weights_load_12247 {Type I LastRead 0 FirstWrite -1}
		weights_load_12248 {Type I LastRead 0 FirstWrite -1}
		weights_load_12249 {Type I LastRead 0 FirstWrite -1}
		weights_load_12250 {Type I LastRead 0 FirstWrite -1}
		weights_load_12251 {Type I LastRead 0 FirstWrite -1}
		weights_load_12252 {Type I LastRead 0 FirstWrite -1}
		weights_load_12253 {Type I LastRead 0 FirstWrite -1}
		weights_load_12254 {Type I LastRead 0 FirstWrite -1}
		weights_load_12255 {Type I LastRead 0 FirstWrite -1}
		weights_load_12256 {Type I LastRead 0 FirstWrite -1}
		weights_load_12257 {Type I LastRead 0 FirstWrite -1}
		weights_load_12258 {Type I LastRead 0 FirstWrite -1}
		weights_load_12259 {Type I LastRead 0 FirstWrite -1}
		weights_load_12260 {Type I LastRead 0 FirstWrite -1}
		weights_load_12261 {Type I LastRead 0 FirstWrite -1}
		weights_load_12262 {Type I LastRead 0 FirstWrite -1}
		weights_load_12263 {Type I LastRead 0 FirstWrite -1}
		weights_load_12264 {Type I LastRead 0 FirstWrite -1}
		weights_load_12265 {Type I LastRead 0 FirstWrite -1}
		weights_load_12266 {Type I LastRead 0 FirstWrite -1}
		weights_load_12267 {Type I LastRead 0 FirstWrite -1}
		weights_load_12268 {Type I LastRead 0 FirstWrite -1}
		weights_load_12269 {Type I LastRead 0 FirstWrite -1}
		weights_load_12270 {Type I LastRead 0 FirstWrite -1}
		weights_load_12271 {Type I LastRead 0 FirstWrite -1}
		weights_load_12272 {Type I LastRead 0 FirstWrite -1}
		weights_load_12273 {Type I LastRead 0 FirstWrite -1}
		weights_load_12274 {Type I LastRead 0 FirstWrite -1}
		weights_load_12275 {Type I LastRead 0 FirstWrite -1}
		weights_load_12276 {Type I LastRead 0 FirstWrite -1}
		weights_load_12277 {Type I LastRead 0 FirstWrite -1}
		weights_load_12278 {Type I LastRead 0 FirstWrite -1}
		weights_load_12279 {Type I LastRead 0 FirstWrite -1}
		weights_load_12280 {Type I LastRead 0 FirstWrite -1}
		weights_load_12281 {Type I LastRead 0 FirstWrite -1}
		weights_load_12282 {Type I LastRead 0 FirstWrite -1}
		weights_load_12283 {Type I LastRead 0 FirstWrite -1}
		weights_load_12284 {Type I LastRead 0 FirstWrite -1}
		weights_load_12285 {Type I LastRead 0 FirstWrite -1}
		weights_load_12286 {Type I LastRead 0 FirstWrite -1}
		weights_load_12287 {Type I LastRead 0 FirstWrite -1}
		weights_load_12288 {Type I LastRead 0 FirstWrite -1}
		weights_load_12289 {Type I LastRead 0 FirstWrite -1}
		weights_load_12290 {Type I LastRead 0 FirstWrite -1}
		weights_load_12291 {Type I LastRead 0 FirstWrite -1}
		weights_load_12292 {Type I LastRead 0 FirstWrite -1}
		weights_load_12293 {Type I LastRead 0 FirstWrite -1}
		weights_load_12294 {Type I LastRead 0 FirstWrite -1}
		weights_load_12295 {Type I LastRead 0 FirstWrite -1}
		weights_load_12296 {Type I LastRead 0 FirstWrite -1}
		weights_load_12297 {Type I LastRead 0 FirstWrite -1}
		weights_load_12298 {Type I LastRead 0 FirstWrite -1}
		weights_load_12299 {Type I LastRead 0 FirstWrite -1}
		weights_load_12300 {Type I LastRead 0 FirstWrite -1}
		weights_load_12301 {Type I LastRead 0 FirstWrite -1}
		weights_load_12302 {Type I LastRead 0 FirstWrite -1}
		weights_load_12303 {Type I LastRead 0 FirstWrite -1}
		weights_load_12304 {Type I LastRead 0 FirstWrite -1}
		weights_load_12305 {Type I LastRead 0 FirstWrite -1}
		weights_load_12306 {Type I LastRead 0 FirstWrite -1}
		weights_load_12307 {Type I LastRead 0 FirstWrite -1}
		weights_load_12308 {Type I LastRead 0 FirstWrite -1}
		weights_load_12309 {Type I LastRead 0 FirstWrite -1}
		weights_load_12310 {Type I LastRead 0 FirstWrite -1}
		weights_load_12311 {Type I LastRead 0 FirstWrite -1}
		weights_load_12312 {Type I LastRead 0 FirstWrite -1}
		weights_load_12313 {Type I LastRead 0 FirstWrite -1}
		weights_load_12314 {Type I LastRead 0 FirstWrite -1}
		weights_load_12315 {Type I LastRead 0 FirstWrite -1}
		weights_load_12316 {Type I LastRead 0 FirstWrite -1}
		weights_load_12317 {Type I LastRead 0 FirstWrite -1}
		weights_load_12318 {Type I LastRead 0 FirstWrite -1}
		weights_load_12319 {Type I LastRead 0 FirstWrite -1}
		weights_load_12320 {Type I LastRead 0 FirstWrite -1}
		weights_load_12321 {Type I LastRead 0 FirstWrite -1}
		weights_load_12322 {Type I LastRead 0 FirstWrite -1}
		weights_load_12323 {Type I LastRead 0 FirstWrite -1}
		weights_load_12324 {Type I LastRead 0 FirstWrite -1}
		weights_load_12325 {Type I LastRead 0 FirstWrite -1}
		weights_load_12326 {Type I LastRead 0 FirstWrite -1}
		weights_load_12327 {Type I LastRead 0 FirstWrite -1}
		weights_load_12328 {Type I LastRead 0 FirstWrite -1}
		weights_load_12329 {Type I LastRead 0 FirstWrite -1}
		weights_load_12330 {Type I LastRead 0 FirstWrite -1}
		weights_load_12331 {Type I LastRead 0 FirstWrite -1}
		weights_load_12332 {Type I LastRead 0 FirstWrite -1}
		weights_load_12333 {Type I LastRead 0 FirstWrite -1}
		weights_load_12334 {Type I LastRead 0 FirstWrite -1}
		weights_load_12335 {Type I LastRead 0 FirstWrite -1}
		weights_load_12336 {Type I LastRead 0 FirstWrite -1}
		weights_load_12337 {Type I LastRead 0 FirstWrite -1}
		weights_load_12338 {Type I LastRead 0 FirstWrite -1}
		weights_load_12339 {Type I LastRead 0 FirstWrite -1}
		weights_load_12340 {Type I LastRead 0 FirstWrite -1}
		weights_load_12341 {Type I LastRead 0 FirstWrite -1}
		weights_load_12342 {Type I LastRead 0 FirstWrite -1}
		weights_load_12343 {Type I LastRead 0 FirstWrite -1}
		weights_load_12344 {Type I LastRead 0 FirstWrite -1}
		weights_load_12345 {Type I LastRead 0 FirstWrite -1}
		weights_load_12346 {Type I LastRead 0 FirstWrite -1}
		weights_load_12347 {Type I LastRead 0 FirstWrite -1}
		weights_load_12348 {Type I LastRead 0 FirstWrite -1}
		weights_load_12349 {Type I LastRead 0 FirstWrite -1}
		weights_load_12350 {Type I LastRead 0 FirstWrite -1}
		weights_load_12351 {Type I LastRead 0 FirstWrite -1}
		weights_load_12352 {Type I LastRead 0 FirstWrite -1}
		weights_load_12353 {Type I LastRead 0 FirstWrite -1}
		weights_load_12354 {Type I LastRead 0 FirstWrite -1}
		weights_load_12355 {Type I LastRead 0 FirstWrite -1}
		weights_load_12356 {Type I LastRead 0 FirstWrite -1}
		weights_load_12357 {Type I LastRead 0 FirstWrite -1}
		weights_load_12358 {Type I LastRead 0 FirstWrite -1}
		weights_load_12359 {Type I LastRead 0 FirstWrite -1}
		weights_load_12360 {Type I LastRead 0 FirstWrite -1}
		weights_load_12361 {Type I LastRead 0 FirstWrite -1}
		weights_load_12362 {Type I LastRead 0 FirstWrite -1}
		weights_load_12363 {Type I LastRead 0 FirstWrite -1}
		weights_load_12364 {Type I LastRead 0 FirstWrite -1}
		weights_load_12365 {Type I LastRead 0 FirstWrite -1}
		weights_load_12366 {Type I LastRead 0 FirstWrite -1}
		weights_load_12367 {Type I LastRead 0 FirstWrite -1}
		weights_load_12368 {Type I LastRead 0 FirstWrite -1}
		weights_load_12369 {Type I LastRead 0 FirstWrite -1}
		weights_load_12370 {Type I LastRead 0 FirstWrite -1}
		weights_load_12371 {Type I LastRead 0 FirstWrite -1}
		weights_load_12372 {Type I LastRead 0 FirstWrite -1}
		weights_load_12373 {Type I LastRead 0 FirstWrite -1}
		weights_load_12374 {Type I LastRead 0 FirstWrite -1}
		weights_load_12375 {Type I LastRead 0 FirstWrite -1}
		weights_load_12376 {Type I LastRead 0 FirstWrite -1}
		weights_load_12377 {Type I LastRead 0 FirstWrite -1}
		weights_load_12378 {Type I LastRead 0 FirstWrite -1}
		weights_load_12379 {Type I LastRead 0 FirstWrite -1}
		weights_load_12380 {Type I LastRead 0 FirstWrite -1}
		weights_load_12381 {Type I LastRead 0 FirstWrite -1}
		weights_load_12382 {Type I LastRead 0 FirstWrite -1}
		weights_load_12383 {Type I LastRead 0 FirstWrite -1}
		weights_load_12384 {Type I LastRead 0 FirstWrite -1}
		weights_load_12385 {Type I LastRead 0 FirstWrite -1}
		weights_load_12386 {Type I LastRead 0 FirstWrite -1}
		weights_load_12387 {Type I LastRead 0 FirstWrite -1}
		weights_load_12388 {Type I LastRead 0 FirstWrite -1}
		weights_load_12389 {Type I LastRead 0 FirstWrite -1}
		weights_load_12390 {Type I LastRead 0 FirstWrite -1}
		weights_load_12391 {Type I LastRead 0 FirstWrite -1}
		weights_load_12392 {Type I LastRead 0 FirstWrite -1}
		weights_load_12393 {Type I LastRead 0 FirstWrite -1}
		weights_load_12394 {Type I LastRead 0 FirstWrite -1}
		weights_load_12395 {Type I LastRead 0 FirstWrite -1}
		weights_load_12396 {Type I LastRead 0 FirstWrite -1}
		weights_load_12397 {Type I LastRead 0 FirstWrite -1}
		weights_load_12398 {Type I LastRead 0 FirstWrite -1}
		weights_load_12399 {Type I LastRead 0 FirstWrite -1}
		weights_load_12400 {Type I LastRead 0 FirstWrite -1}
		weights_load_12401 {Type I LastRead 0 FirstWrite -1}
		weights_load_12402 {Type I LastRead 0 FirstWrite -1}
		weights_load_12403 {Type I LastRead 0 FirstWrite -1}
		weights_load_12404 {Type I LastRead 0 FirstWrite -1}
		weights_load_12405 {Type I LastRead 0 FirstWrite -1}
		weights_load_12406 {Type I LastRead 0 FirstWrite -1}
		weights_load_12407 {Type I LastRead 0 FirstWrite -1}
		weights_load_12408 {Type I LastRead 0 FirstWrite -1}
		weights_load_12409 {Type I LastRead 0 FirstWrite -1}
		weights_load_12410 {Type I LastRead 0 FirstWrite -1}
		weights_load_12411 {Type I LastRead 0 FirstWrite -1}
		weights_load_12412 {Type I LastRead 0 FirstWrite -1}
		weights_load_12413 {Type I LastRead 0 FirstWrite -1}
		weights_load_12414 {Type I LastRead 0 FirstWrite -1}
		weights_load_12415 {Type I LastRead 0 FirstWrite -1}
		weights_load_12416 {Type I LastRead 0 FirstWrite -1}
		weights_load_12417 {Type I LastRead 0 FirstWrite -1}
		weights_load_12418 {Type I LastRead 0 FirstWrite -1}
		weights_load_12419 {Type I LastRead 0 FirstWrite -1}
		weights_load_12420 {Type I LastRead 0 FirstWrite -1}
		weights_load_12421 {Type I LastRead 0 FirstWrite -1}
		weights_load_12422 {Type I LastRead 0 FirstWrite -1}
		weights_load_12423 {Type I LastRead 0 FirstWrite -1}
		weights_load_12424 {Type I LastRead 0 FirstWrite -1}
		weights_load_12425 {Type I LastRead 0 FirstWrite -1}
		weights_load_12426 {Type I LastRead 0 FirstWrite -1}
		weights_load_12427 {Type I LastRead 0 FirstWrite -1}
		weights_load_12428 {Type I LastRead 0 FirstWrite -1}
		weights_load_12429 {Type I LastRead 0 FirstWrite -1}
		weights_load_12430 {Type I LastRead 0 FirstWrite -1}
		weights_load_12431 {Type I LastRead 0 FirstWrite -1}
		weights_load_12432 {Type I LastRead 0 FirstWrite -1}
		weights_load_12433 {Type I LastRead 0 FirstWrite -1}
		weights_load_12434 {Type I LastRead 0 FirstWrite -1}
		weights_load_12435 {Type I LastRead 0 FirstWrite -1}
		weights_load_12436 {Type I LastRead 0 FirstWrite -1}
		weights_load_12437 {Type I LastRead 0 FirstWrite -1}
		weights_load_12438 {Type I LastRead 0 FirstWrite -1}
		weights_load_12439 {Type I LastRead 0 FirstWrite -1}
		weights_load_12440 {Type I LastRead 0 FirstWrite -1}
		weights_load_12441 {Type I LastRead 0 FirstWrite -1}
		weights_load_12442 {Type I LastRead 0 FirstWrite -1}
		weights_load_12443 {Type I LastRead 0 FirstWrite -1}
		weights_load_12444 {Type I LastRead 0 FirstWrite -1}
		weights_load_12445 {Type I LastRead 0 FirstWrite -1}
		weights_load_12446 {Type I LastRead 0 FirstWrite -1}
		weights_load_12447 {Type I LastRead 0 FirstWrite -1}
		weights_load_12448 {Type I LastRead 0 FirstWrite -1}
		weights_load_12449 {Type I LastRead 0 FirstWrite -1}
		weights_load_12450 {Type I LastRead 0 FirstWrite -1}
		weights_load_12451 {Type I LastRead 0 FirstWrite -1}
		weights_load_12452 {Type I LastRead 0 FirstWrite -1}
		weights_load_12453 {Type I LastRead 0 FirstWrite -1}
		weights_load_12454 {Type I LastRead 0 FirstWrite -1}
		weights_load_12455 {Type I LastRead 0 FirstWrite -1}
		weights_load_12456 {Type I LastRead 0 FirstWrite -1}
		weights_load_12457 {Type I LastRead 0 FirstWrite -1}
		weights_load_12458 {Type I LastRead 0 FirstWrite -1}
		weights_load_12459 {Type I LastRead 0 FirstWrite -1}
		weights_load_12460 {Type I LastRead 0 FirstWrite -1}
		weights_load_12461 {Type I LastRead 0 FirstWrite -1}
		weights_load_12462 {Type I LastRead 0 FirstWrite -1}
		weights_load_12463 {Type I LastRead 0 FirstWrite -1}
		weights_load_12464 {Type I LastRead 0 FirstWrite -1}
		weights_load_12465 {Type I LastRead 0 FirstWrite -1}
		weights_load_12466 {Type I LastRead 0 FirstWrite -1}
		weights_load_12467 {Type I LastRead 0 FirstWrite -1}
		weights_load_12468 {Type I LastRead 0 FirstWrite -1}
		weights_load_12469 {Type I LastRead 0 FirstWrite -1}
		weights_load_12470 {Type I LastRead 0 FirstWrite -1}
		weights_load_12471 {Type I LastRead 0 FirstWrite -1}
		weights_load_12472 {Type I LastRead 0 FirstWrite -1}
		weights_load_12473 {Type I LastRead 0 FirstWrite -1}
		weights_load_12474 {Type I LastRead 0 FirstWrite -1}
		weights_load_12475 {Type I LastRead 0 FirstWrite -1}
		weights_load_12476 {Type I LastRead 0 FirstWrite -1}
		weights_load_12477 {Type I LastRead 0 FirstWrite -1}
		weights_load_12478 {Type I LastRead 0 FirstWrite -1}
		weights_load_12479 {Type I LastRead 0 FirstWrite -1}
		weights_load_12480 {Type I LastRead 0 FirstWrite -1}
		weights_load_12481 {Type I LastRead 0 FirstWrite -1}
		weights_load_12482 {Type I LastRead 0 FirstWrite -1}
		weights_load_12483 {Type I LastRead 0 FirstWrite -1}
		weights_load_12484 {Type I LastRead 0 FirstWrite -1}
		weights_load_12485 {Type I LastRead 0 FirstWrite -1}
		weights_load_12486 {Type I LastRead 0 FirstWrite -1}
		weights_load_12487 {Type I LastRead 0 FirstWrite -1}
		weights_load_12488 {Type I LastRead 0 FirstWrite -1}
		weights_load_12489 {Type I LastRead 0 FirstWrite -1}
		weights_load_12490 {Type I LastRead 0 FirstWrite -1}
		weights_load_12491 {Type I LastRead 0 FirstWrite -1}
		weights_load_12492 {Type I LastRead 0 FirstWrite -1}
		weights_load_12493 {Type I LastRead 0 FirstWrite -1}
		weights_load_12494 {Type I LastRead 0 FirstWrite -1}
		weights_load_12495 {Type I LastRead 0 FirstWrite -1}
		weights_load_12496 {Type I LastRead 0 FirstWrite -1}
		weights_load_12497 {Type I LastRead 0 FirstWrite -1}
		weights_load_12498 {Type I LastRead 0 FirstWrite -1}
		weights_load_12499 {Type I LastRead 0 FirstWrite -1}
		weights_load_12500 {Type I LastRead 0 FirstWrite -1}
		weights_load_12501 {Type I LastRead 0 FirstWrite -1}
		weights_load_12502 {Type I LastRead 0 FirstWrite -1}
		weights_load_12503 {Type I LastRead 0 FirstWrite -1}
		weights_load_12504 {Type I LastRead 0 FirstWrite -1}
		weights_load_12505 {Type I LastRead 0 FirstWrite -1}
		weights_load_12506 {Type I LastRead 0 FirstWrite -1}
		weights_load_12507 {Type I LastRead 0 FirstWrite -1}
		weights_load_12508 {Type I LastRead 0 FirstWrite -1}
		weights_load_12509 {Type I LastRead 0 FirstWrite -1}
		weights_load_12510 {Type I LastRead 0 FirstWrite -1}
		weights_load_12511 {Type I LastRead 0 FirstWrite -1}
		weights_load_12512 {Type I LastRead 0 FirstWrite -1}
		weights_load_12513 {Type I LastRead 0 FirstWrite -1}
		weights_load_12514 {Type I LastRead 0 FirstWrite -1}
		weights_load_12515 {Type I LastRead 0 FirstWrite -1}
		weights_load_12516 {Type I LastRead 0 FirstWrite -1}
		weights_load_12517 {Type I LastRead 0 FirstWrite -1}
		weights_load_12518 {Type I LastRead 0 FirstWrite -1}
		weights_load_12519 {Type I LastRead 0 FirstWrite -1}
		weights_load_12520 {Type I LastRead 0 FirstWrite -1}
		weights_load_12521 {Type I LastRead 0 FirstWrite -1}
		weights_load_12522 {Type I LastRead 0 FirstWrite -1}
		weights_load_12523 {Type I LastRead 0 FirstWrite -1}
		weights_load_12524 {Type I LastRead 0 FirstWrite -1}
		weights_load_12525 {Type I LastRead 0 FirstWrite -1}
		weights_load_12526 {Type I LastRead 0 FirstWrite -1}
		weights_load_12527 {Type I LastRead 0 FirstWrite -1}
		weights_load_12528 {Type I LastRead 0 FirstWrite -1}
		weights_load_12529 {Type I LastRead 0 FirstWrite -1}
		weights_load_12530 {Type I LastRead 0 FirstWrite -1}
		weights_load_12531 {Type I LastRead 0 FirstWrite -1}
		weights_load_12532 {Type I LastRead 0 FirstWrite -1}
		weights_load_12533 {Type I LastRead 0 FirstWrite -1}
		weights_load_12534 {Type I LastRead 0 FirstWrite -1}
		weights_load_12535 {Type I LastRead 0 FirstWrite -1}
		weights_load_12536 {Type I LastRead 0 FirstWrite -1}
		weights_load_12537 {Type I LastRead 0 FirstWrite -1}
		weights_load_12538 {Type I LastRead 0 FirstWrite -1}
		weights_load_12539 {Type I LastRead 0 FirstWrite -1}
		weights_load_12540 {Type I LastRead 0 FirstWrite -1}
		weights_load_12541 {Type I LastRead 0 FirstWrite -1}
		weights_load_12542 {Type I LastRead 0 FirstWrite -1}
		weights_load_12543 {Type I LastRead 0 FirstWrite -1}
		weights_load_12544 {Type I LastRead 0 FirstWrite -1}
		weights_load_12545 {Type I LastRead 0 FirstWrite -1}
		weights_load_12546 {Type I LastRead 0 FirstWrite -1}
		weights_load_12547 {Type I LastRead 0 FirstWrite -1}
		weights_load_12548 {Type I LastRead 0 FirstWrite -1}
		weights_load_12549 {Type I LastRead 0 FirstWrite -1}
		weights_load_12550 {Type I LastRead 0 FirstWrite -1}
		weights_load_12551 {Type I LastRead 0 FirstWrite -1}
		weights_load_12552 {Type I LastRead 0 FirstWrite -1}
		weights_load_12553 {Type I LastRead 0 FirstWrite -1}
		weights_load_12554 {Type I LastRead 0 FirstWrite -1}
		weights_load_12555 {Type I LastRead 0 FirstWrite -1}
		weights_load_12556 {Type I LastRead 0 FirstWrite -1}
		weights_load_12557 {Type I LastRead 0 FirstWrite -1}
		weights_load_12558 {Type I LastRead 0 FirstWrite -1}
		weights_load_12559 {Type I LastRead 0 FirstWrite -1}
		weights_load_12560 {Type I LastRead 0 FirstWrite -1}
		weights_load_12561 {Type I LastRead 0 FirstWrite -1}
		weights_load_12562 {Type I LastRead 0 FirstWrite -1}
		weights_load_12563 {Type I LastRead 0 FirstWrite -1}
		weights_load_12564 {Type I LastRead 0 FirstWrite -1}
		weights_load_12565 {Type I LastRead 0 FirstWrite -1}
		weights_load_12566 {Type I LastRead 0 FirstWrite -1}
		weights_load_12567 {Type I LastRead 0 FirstWrite -1}
		weights_load_12568 {Type I LastRead 0 FirstWrite -1}
		weights_load_12569 {Type I LastRead 0 FirstWrite -1}
		weights_load_12570 {Type I LastRead 0 FirstWrite -1}
		weights_load_12571 {Type I LastRead 0 FirstWrite -1}
		weights_load_12572 {Type I LastRead 0 FirstWrite -1}
		weights_load_12573 {Type I LastRead 0 FirstWrite -1}
		weights_load_12574 {Type I LastRead 0 FirstWrite -1}
		weights_load_12575 {Type I LastRead 0 FirstWrite -1}
		weights_load_12576 {Type I LastRead 0 FirstWrite -1}
		weights_load_12577 {Type I LastRead 0 FirstWrite -1}
		weights_load_12578 {Type I LastRead 0 FirstWrite -1}
		weights_load_12579 {Type I LastRead 0 FirstWrite -1}
		weights_load_12580 {Type I LastRead 0 FirstWrite -1}
		weights_load_12581 {Type I LastRead 0 FirstWrite -1}
		weights_load_12582 {Type I LastRead 0 FirstWrite -1}
		weights_load_12583 {Type I LastRead 0 FirstWrite -1}
		weights_load_12584 {Type I LastRead 0 FirstWrite -1}
		weights_load_12585 {Type I LastRead 0 FirstWrite -1}
		weights_load_12586 {Type I LastRead 0 FirstWrite -1}
		weights_load_12587 {Type I LastRead 0 FirstWrite -1}
		weights_load_12588 {Type I LastRead 0 FirstWrite -1}
		weights_load_12589 {Type I LastRead 0 FirstWrite -1}
		weights_load_12590 {Type I LastRead 0 FirstWrite -1}
		weights_load_12591 {Type I LastRead 0 FirstWrite -1}
		weights_load_12592 {Type I LastRead 0 FirstWrite -1}
		weights_load_12593 {Type I LastRead 0 FirstWrite -1}
		weights_load_12594 {Type I LastRead 0 FirstWrite -1}
		weights_load_12595 {Type I LastRead 0 FirstWrite -1}
		weights_load_12596 {Type I LastRead 0 FirstWrite -1}
		weights_load_12597 {Type I LastRead 0 FirstWrite -1}
		weights_load_12598 {Type I LastRead 0 FirstWrite -1}
		weights_load_12599 {Type I LastRead 0 FirstWrite -1}
		weights_load_12600 {Type I LastRead 0 FirstWrite -1}
		weights_load_12601 {Type I LastRead 0 FirstWrite -1}
		weights_load_12602 {Type I LastRead 0 FirstWrite -1}
		weights_load_12603 {Type I LastRead 0 FirstWrite -1}
		weights_load_12604 {Type I LastRead 0 FirstWrite -1}
		weights_load_12605 {Type I LastRead 0 FirstWrite -1}
		weights_load_12606 {Type I LastRead 0 FirstWrite -1}
		weights_load_12607 {Type I LastRead 0 FirstWrite -1}
		weights_load_12608 {Type I LastRead 0 FirstWrite -1}
		weights_load_12609 {Type I LastRead 0 FirstWrite -1}
		weights_load_12610 {Type I LastRead 0 FirstWrite -1}
		weights_load_12611 {Type I LastRead 0 FirstWrite -1}
		weights_load_12612 {Type I LastRead 0 FirstWrite -1}
		weights_load_12613 {Type I LastRead 0 FirstWrite -1}
		weights_load_12614 {Type I LastRead 0 FirstWrite -1}
		weights_load_12615 {Type I LastRead 0 FirstWrite -1}
		weights_load_12616 {Type I LastRead 0 FirstWrite -1}
		weights_load_12617 {Type I LastRead 0 FirstWrite -1}
		weights_load_12618 {Type I LastRead 0 FirstWrite -1}
		weights_load_12619 {Type I LastRead 0 FirstWrite -1}
		weights_load_12620 {Type I LastRead 0 FirstWrite -1}
		weights_load_12621 {Type I LastRead 0 FirstWrite -1}
		weights_load_12622 {Type I LastRead 0 FirstWrite -1}
		weights_load_12623 {Type I LastRead 0 FirstWrite -1}
		weights_load_12624 {Type I LastRead 0 FirstWrite -1}
		weights_load_12625 {Type I LastRead 0 FirstWrite -1}
		weights_load_12626 {Type I LastRead 0 FirstWrite -1}
		weights_load_12627 {Type I LastRead 0 FirstWrite -1}
		weights_load_12628 {Type I LastRead 0 FirstWrite -1}
		weights_load_12629 {Type I LastRead 0 FirstWrite -1}
		weights_load_12630 {Type I LastRead 0 FirstWrite -1}
		weights_load_12631 {Type I LastRead 0 FirstWrite -1}
		weights_load_12632 {Type I LastRead 0 FirstWrite -1}
		weights_load_12633 {Type I LastRead 0 FirstWrite -1}
		weights_load_12634 {Type I LastRead 0 FirstWrite -1}
		weights_load_12635 {Type I LastRead 0 FirstWrite -1}
		weights_load_12636 {Type I LastRead 0 FirstWrite -1}
		weights_load_12637 {Type I LastRead 0 FirstWrite -1}
		weights_load_12638 {Type I LastRead 0 FirstWrite -1}
		weights_load_12639 {Type I LastRead 0 FirstWrite -1}
		weights_load_12640 {Type I LastRead 0 FirstWrite -1}
		weights_load_12641 {Type I LastRead 0 FirstWrite -1}
		weights_load_12642 {Type I LastRead 0 FirstWrite -1}
		weights_load_12643 {Type I LastRead 0 FirstWrite -1}
		weights_load_12644 {Type I LastRead 0 FirstWrite -1}
		weights_load_12645 {Type I LastRead 0 FirstWrite -1}
		weights_load_12646 {Type I LastRead 0 FirstWrite -1}
		weights_load_12647 {Type I LastRead 0 FirstWrite -1}
		weights_load_12648 {Type I LastRead 0 FirstWrite -1}
		weights_load_12649 {Type I LastRead 0 FirstWrite -1}
		weights_load_12650 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_18 { ap_fifo {  { conv2d_64_padded_window_stream_18_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_18_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_18_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_18_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_18_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_18 { ap_fifo {  { in_channel_map_stream_18_din fifo_port_we 1 32 }  { in_channel_map_stream_18_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_18_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_18_full_n fifo_status 0 1 }  { in_channel_map_stream_18_write fifo_data 1 1 } } }
}
