set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_25
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.25}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_25 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_25 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_25", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_25", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_25_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_25_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_25_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_25_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_25_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_25_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_25_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_25_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_25_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_25_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_25_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_25", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_25_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_25", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_25_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_25", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_25_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_25", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_25_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_25", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_25_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_25", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_25_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_25", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_25_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_25", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_25_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_25", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_25_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_25", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_25",
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
			{"Name" : "conv2d_64_padded_window_stream_25", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_25_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_25", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_25", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_25_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_25", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_25_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_25_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_25", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_25_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7476", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7477", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7478", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7479", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7480", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7481", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7482", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7483", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_25", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_25_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_7484", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7485", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7486", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7487", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7488", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7489", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7490", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7491", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7492", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7493", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7494", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7495", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7496", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7497", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7498", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7499", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7500", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7501", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7502", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7503", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7504", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7505", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7506", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7507", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7508", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7509", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7510", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7511", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7512", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7513", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7514", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7515", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7516", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7517", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7518", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7519", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7520", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7521", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7522", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7523", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7524", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7525", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7526", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7527", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7528", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7529", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7530", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7531", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7532", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7533", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7534", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7535", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7536", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7537", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7538", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7539", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7540", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7541", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7542", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7543", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7544", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7545", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7546", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7547", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7548", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7549", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7550", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7551", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7552", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7553", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7554", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7555", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7556", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7557", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7558", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7559", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7560", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7561", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7562", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7563", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7564", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7565", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7566", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7567", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7568", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7569", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7570", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7571", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7572", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7573", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7574", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7575", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7576", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7577", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7578", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7579", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7580", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7581", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7582", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7583", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7584", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7585", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7586", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7587", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7588", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7589", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7590", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7591", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7592", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7593", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7594", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7595", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7596", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7597", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7598", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7599", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7600", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7601", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7602", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7603", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7604", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7605", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7606", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7607", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7608", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7609", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7610", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7611", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7612", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7613", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7614", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7615", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7616", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7617", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7618", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7619", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7620", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7621", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7622", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7623", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7624", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7625", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7626", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7627", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7628", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7629", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7630", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7631", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7632", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7633", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7634", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7635", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7636", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7637", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7638", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7639", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7640", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7641", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7642", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7643", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7644", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7645", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7646", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7647", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7648", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7649", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7650", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7651", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7652", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7653", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7654", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7655", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7656", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7657", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7658", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7659", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7660", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7661", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7662", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7663", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7664", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7665", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7666", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7667", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7668", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7669", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7670", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7671", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7672", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7673", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7674", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7675", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7676", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7677", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7678", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7679", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7680", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7681", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7682", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7683", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7684", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7685", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7686", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7687", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7688", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7689", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7690", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7691", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7692", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7693", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7694", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7695", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7696", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7697", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7698", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7699", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7700", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7701", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7702", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7703", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7704", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7705", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7706", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7707", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7708", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7709", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7710", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7711", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7712", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7713", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7714", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7715", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7716", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7717", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7718", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7719", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7720", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7721", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7722", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7723", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7724", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7725", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7726", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7727", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7728", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7729", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7730", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7731", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7732", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7733", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7734", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7735", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7736", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7737", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7738", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7739", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7740", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7741", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7742", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7743", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7744", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7745", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7746", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7747", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7748", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7749", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7750", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7751", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7752", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7753", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7754", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7755", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7756", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7757", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7758", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7759", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7760", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7761", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7762", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7763", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7764", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7765", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7766", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7767", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7768", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7769", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7770", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7771", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7772", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7773", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7774", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7775", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7776", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7777", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7778", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7779", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7780", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7781", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7782", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7783", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7784", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7785", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7786", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7787", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7788", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7789", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7790", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7791", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7792", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7793", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7794", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7795", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7796", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7797", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7798", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7799", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7800", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7801", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7802", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7803", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7804", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7805", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7806", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7807", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7808", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7809", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7810", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7811", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7812", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7813", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7814", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7815", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7816", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7817", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7818", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7819", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7820", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7821", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7822", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7823", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7824", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7825", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7826", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7827", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7828", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7829", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7830", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7831", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7832", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7833", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7834", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7835", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7836", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7837", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7838", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7839", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7840", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7841", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7842", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7843", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7844", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7845", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7846", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7847", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7848", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7849", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7850", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7851", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7852", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7853", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7854", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7855", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7856", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7857", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7858", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7859", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7860", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7861", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7862", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7863", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7864", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7865", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7866", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7867", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7868", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7869", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7870", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7871", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7872", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7873", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7874", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7875", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7876", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7877", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7878", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7879", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7880", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7881", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7882", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7883", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7884", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7885", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7886", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7887", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7888", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7889", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7890", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7891", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7892", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7893", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7894", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7895", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7896", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7897", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7898", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7899", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7900", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7901", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7902", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7903", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7904", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7905", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7906", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7907", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7908", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7909", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7910", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7911", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7912", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7913", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7914", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7915", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7916", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7917", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7918", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7919", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7920", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7921", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7922", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7923", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7924", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7925", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7926", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7927", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7928", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7929", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7930", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7931", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7932", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7933", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7934", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7935", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7936", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7937", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7938", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7939", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7940", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7941", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7942", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7943", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7944", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7945", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7946", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7947", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7948", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7949", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7950", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7951", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7952", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7953", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7954", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7955", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7956", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7957", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7958", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7959", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7960", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7961", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7962", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7963", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7964", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7965", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7966", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7967", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7968", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7969", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7970", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7971", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7972", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7973", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7974", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7975", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7976", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7977", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7978", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7979", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7980", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7981", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7982", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7983", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7984", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7985", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7986", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7987", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7988", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7989", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7990", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7991", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7992", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7993", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7994", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7995", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7996", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7997", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7998", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7999", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8000", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8001", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8002", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8003", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8004", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8005", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8006", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8007", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8008", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8009", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8010", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8011", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8012", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8013", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8014", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8015", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8016", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8017", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8018", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8019", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8020", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8021", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8022", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8023", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8024", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8025", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8026", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8027", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8028", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8029", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8030", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8031", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8032", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8033", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8034", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8035", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8036", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8037", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8038", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8039", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8040", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8041", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8042", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8043", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8044", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8045", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8046", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8047", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8048", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8049", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8050", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_25_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U15506", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_25_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U15507", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_25_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U15508", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_25_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U15509", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_25_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U15510", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_25_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U15511", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_25_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U15512", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_25_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U15513", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_25_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U15514", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_25_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U15515", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_25_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U15516", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_25_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U15517", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_25_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U15518", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_25_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U15519", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_25_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U15520", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_25_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U15521", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_25_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U15522", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_25_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_25 {
		conv2d_64_padded_window_stream_25 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_25 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_25_Pipeline_inputs {
		conv2d_64_padded_window_stream_25 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_7476 {Type I LastRead 0 FirstWrite -1}
		weights_load_7477 {Type I LastRead 0 FirstWrite -1}
		weights_load_7478 {Type I LastRead 0 FirstWrite -1}
		weights_load_7479 {Type I LastRead 0 FirstWrite -1}
		weights_load_7480 {Type I LastRead 0 FirstWrite -1}
		weights_load_7481 {Type I LastRead 0 FirstWrite -1}
		weights_load_7482 {Type I LastRead 0 FirstWrite -1}
		weights_load_7483 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_25 {Type O LastRead -1 FirstWrite 16}
		weights_load_7484 {Type I LastRead 0 FirstWrite -1}
		weights_load_7485 {Type I LastRead 0 FirstWrite -1}
		weights_load_7486 {Type I LastRead 0 FirstWrite -1}
		weights_load_7487 {Type I LastRead 0 FirstWrite -1}
		weights_load_7488 {Type I LastRead 0 FirstWrite -1}
		weights_load_7489 {Type I LastRead 0 FirstWrite -1}
		weights_load_7490 {Type I LastRead 0 FirstWrite -1}
		weights_load_7491 {Type I LastRead 0 FirstWrite -1}
		weights_load_7492 {Type I LastRead 0 FirstWrite -1}
		weights_load_7493 {Type I LastRead 0 FirstWrite -1}
		weights_load_7494 {Type I LastRead 0 FirstWrite -1}
		weights_load_7495 {Type I LastRead 0 FirstWrite -1}
		weights_load_7496 {Type I LastRead 0 FirstWrite -1}
		weights_load_7497 {Type I LastRead 0 FirstWrite -1}
		weights_load_7498 {Type I LastRead 0 FirstWrite -1}
		weights_load_7499 {Type I LastRead 0 FirstWrite -1}
		weights_load_7500 {Type I LastRead 0 FirstWrite -1}
		weights_load_7501 {Type I LastRead 0 FirstWrite -1}
		weights_load_7502 {Type I LastRead 0 FirstWrite -1}
		weights_load_7503 {Type I LastRead 0 FirstWrite -1}
		weights_load_7504 {Type I LastRead 0 FirstWrite -1}
		weights_load_7505 {Type I LastRead 0 FirstWrite -1}
		weights_load_7506 {Type I LastRead 0 FirstWrite -1}
		weights_load_7507 {Type I LastRead 0 FirstWrite -1}
		weights_load_7508 {Type I LastRead 0 FirstWrite -1}
		weights_load_7509 {Type I LastRead 0 FirstWrite -1}
		weights_load_7510 {Type I LastRead 0 FirstWrite -1}
		weights_load_7511 {Type I LastRead 0 FirstWrite -1}
		weights_load_7512 {Type I LastRead 0 FirstWrite -1}
		weights_load_7513 {Type I LastRead 0 FirstWrite -1}
		weights_load_7514 {Type I LastRead 0 FirstWrite -1}
		weights_load_7515 {Type I LastRead 0 FirstWrite -1}
		weights_load_7516 {Type I LastRead 0 FirstWrite -1}
		weights_load_7517 {Type I LastRead 0 FirstWrite -1}
		weights_load_7518 {Type I LastRead 0 FirstWrite -1}
		weights_load_7519 {Type I LastRead 0 FirstWrite -1}
		weights_load_7520 {Type I LastRead 0 FirstWrite -1}
		weights_load_7521 {Type I LastRead 0 FirstWrite -1}
		weights_load_7522 {Type I LastRead 0 FirstWrite -1}
		weights_load_7523 {Type I LastRead 0 FirstWrite -1}
		weights_load_7524 {Type I LastRead 0 FirstWrite -1}
		weights_load_7525 {Type I LastRead 0 FirstWrite -1}
		weights_load_7526 {Type I LastRead 0 FirstWrite -1}
		weights_load_7527 {Type I LastRead 0 FirstWrite -1}
		weights_load_7528 {Type I LastRead 0 FirstWrite -1}
		weights_load_7529 {Type I LastRead 0 FirstWrite -1}
		weights_load_7530 {Type I LastRead 0 FirstWrite -1}
		weights_load_7531 {Type I LastRead 0 FirstWrite -1}
		weights_load_7532 {Type I LastRead 0 FirstWrite -1}
		weights_load_7533 {Type I LastRead 0 FirstWrite -1}
		weights_load_7534 {Type I LastRead 0 FirstWrite -1}
		weights_load_7535 {Type I LastRead 0 FirstWrite -1}
		weights_load_7536 {Type I LastRead 0 FirstWrite -1}
		weights_load_7537 {Type I LastRead 0 FirstWrite -1}
		weights_load_7538 {Type I LastRead 0 FirstWrite -1}
		weights_load_7539 {Type I LastRead 0 FirstWrite -1}
		weights_load_7540 {Type I LastRead 0 FirstWrite -1}
		weights_load_7541 {Type I LastRead 0 FirstWrite -1}
		weights_load_7542 {Type I LastRead 0 FirstWrite -1}
		weights_load_7543 {Type I LastRead 0 FirstWrite -1}
		weights_load_7544 {Type I LastRead 0 FirstWrite -1}
		weights_load_7545 {Type I LastRead 0 FirstWrite -1}
		weights_load_7546 {Type I LastRead 0 FirstWrite -1}
		weights_load_7547 {Type I LastRead 0 FirstWrite -1}
		weights_load_7548 {Type I LastRead 0 FirstWrite -1}
		weights_load_7549 {Type I LastRead 0 FirstWrite -1}
		weights_load_7550 {Type I LastRead 0 FirstWrite -1}
		weights_load_7551 {Type I LastRead 0 FirstWrite -1}
		weights_load_7552 {Type I LastRead 0 FirstWrite -1}
		weights_load_7553 {Type I LastRead 0 FirstWrite -1}
		weights_load_7554 {Type I LastRead 0 FirstWrite -1}
		weights_load_7555 {Type I LastRead 0 FirstWrite -1}
		weights_load_7556 {Type I LastRead 0 FirstWrite -1}
		weights_load_7557 {Type I LastRead 0 FirstWrite -1}
		weights_load_7558 {Type I LastRead 0 FirstWrite -1}
		weights_load_7559 {Type I LastRead 0 FirstWrite -1}
		weights_load_7560 {Type I LastRead 0 FirstWrite -1}
		weights_load_7561 {Type I LastRead 0 FirstWrite -1}
		weights_load_7562 {Type I LastRead 0 FirstWrite -1}
		weights_load_7563 {Type I LastRead 0 FirstWrite -1}
		weights_load_7564 {Type I LastRead 0 FirstWrite -1}
		weights_load_7565 {Type I LastRead 0 FirstWrite -1}
		weights_load_7566 {Type I LastRead 0 FirstWrite -1}
		weights_load_7567 {Type I LastRead 0 FirstWrite -1}
		weights_load_7568 {Type I LastRead 0 FirstWrite -1}
		weights_load_7569 {Type I LastRead 0 FirstWrite -1}
		weights_load_7570 {Type I LastRead 0 FirstWrite -1}
		weights_load_7571 {Type I LastRead 0 FirstWrite -1}
		weights_load_7572 {Type I LastRead 0 FirstWrite -1}
		weights_load_7573 {Type I LastRead 0 FirstWrite -1}
		weights_load_7574 {Type I LastRead 0 FirstWrite -1}
		weights_load_7575 {Type I LastRead 0 FirstWrite -1}
		weights_load_7576 {Type I LastRead 0 FirstWrite -1}
		weights_load_7577 {Type I LastRead 0 FirstWrite -1}
		weights_load_7578 {Type I LastRead 0 FirstWrite -1}
		weights_load_7579 {Type I LastRead 0 FirstWrite -1}
		weights_load_7580 {Type I LastRead 0 FirstWrite -1}
		weights_load_7581 {Type I LastRead 0 FirstWrite -1}
		weights_load_7582 {Type I LastRead 0 FirstWrite -1}
		weights_load_7583 {Type I LastRead 0 FirstWrite -1}
		weights_load_7584 {Type I LastRead 0 FirstWrite -1}
		weights_load_7585 {Type I LastRead 0 FirstWrite -1}
		weights_load_7586 {Type I LastRead 0 FirstWrite -1}
		weights_load_7587 {Type I LastRead 0 FirstWrite -1}
		weights_load_7588 {Type I LastRead 0 FirstWrite -1}
		weights_load_7589 {Type I LastRead 0 FirstWrite -1}
		weights_load_7590 {Type I LastRead 0 FirstWrite -1}
		weights_load_7591 {Type I LastRead 0 FirstWrite -1}
		weights_load_7592 {Type I LastRead 0 FirstWrite -1}
		weights_load_7593 {Type I LastRead 0 FirstWrite -1}
		weights_load_7594 {Type I LastRead 0 FirstWrite -1}
		weights_load_7595 {Type I LastRead 0 FirstWrite -1}
		weights_load_7596 {Type I LastRead 0 FirstWrite -1}
		weights_load_7597 {Type I LastRead 0 FirstWrite -1}
		weights_load_7598 {Type I LastRead 0 FirstWrite -1}
		weights_load_7599 {Type I LastRead 0 FirstWrite -1}
		weights_load_7600 {Type I LastRead 0 FirstWrite -1}
		weights_load_7601 {Type I LastRead 0 FirstWrite -1}
		weights_load_7602 {Type I LastRead 0 FirstWrite -1}
		weights_load_7603 {Type I LastRead 0 FirstWrite -1}
		weights_load_7604 {Type I LastRead 0 FirstWrite -1}
		weights_load_7605 {Type I LastRead 0 FirstWrite -1}
		weights_load_7606 {Type I LastRead 0 FirstWrite -1}
		weights_load_7607 {Type I LastRead 0 FirstWrite -1}
		weights_load_7608 {Type I LastRead 0 FirstWrite -1}
		weights_load_7609 {Type I LastRead 0 FirstWrite -1}
		weights_load_7610 {Type I LastRead 0 FirstWrite -1}
		weights_load_7611 {Type I LastRead 0 FirstWrite -1}
		weights_load_7612 {Type I LastRead 0 FirstWrite -1}
		weights_load_7613 {Type I LastRead 0 FirstWrite -1}
		weights_load_7614 {Type I LastRead 0 FirstWrite -1}
		weights_load_7615 {Type I LastRead 0 FirstWrite -1}
		weights_load_7616 {Type I LastRead 0 FirstWrite -1}
		weights_load_7617 {Type I LastRead 0 FirstWrite -1}
		weights_load_7618 {Type I LastRead 0 FirstWrite -1}
		weights_load_7619 {Type I LastRead 0 FirstWrite -1}
		weights_load_7620 {Type I LastRead 0 FirstWrite -1}
		weights_load_7621 {Type I LastRead 0 FirstWrite -1}
		weights_load_7622 {Type I LastRead 0 FirstWrite -1}
		weights_load_7623 {Type I LastRead 0 FirstWrite -1}
		weights_load_7624 {Type I LastRead 0 FirstWrite -1}
		weights_load_7625 {Type I LastRead 0 FirstWrite -1}
		weights_load_7626 {Type I LastRead 0 FirstWrite -1}
		weights_load_7627 {Type I LastRead 0 FirstWrite -1}
		weights_load_7628 {Type I LastRead 0 FirstWrite -1}
		weights_load_7629 {Type I LastRead 0 FirstWrite -1}
		weights_load_7630 {Type I LastRead 0 FirstWrite -1}
		weights_load_7631 {Type I LastRead 0 FirstWrite -1}
		weights_load_7632 {Type I LastRead 0 FirstWrite -1}
		weights_load_7633 {Type I LastRead 0 FirstWrite -1}
		weights_load_7634 {Type I LastRead 0 FirstWrite -1}
		weights_load_7635 {Type I LastRead 0 FirstWrite -1}
		weights_load_7636 {Type I LastRead 0 FirstWrite -1}
		weights_load_7637 {Type I LastRead 0 FirstWrite -1}
		weights_load_7638 {Type I LastRead 0 FirstWrite -1}
		weights_load_7639 {Type I LastRead 0 FirstWrite -1}
		weights_load_7640 {Type I LastRead 0 FirstWrite -1}
		weights_load_7641 {Type I LastRead 0 FirstWrite -1}
		weights_load_7642 {Type I LastRead 0 FirstWrite -1}
		weights_load_7643 {Type I LastRead 0 FirstWrite -1}
		weights_load_7644 {Type I LastRead 0 FirstWrite -1}
		weights_load_7645 {Type I LastRead 0 FirstWrite -1}
		weights_load_7646 {Type I LastRead 0 FirstWrite -1}
		weights_load_7647 {Type I LastRead 0 FirstWrite -1}
		weights_load_7648 {Type I LastRead 0 FirstWrite -1}
		weights_load_7649 {Type I LastRead 0 FirstWrite -1}
		weights_load_7650 {Type I LastRead 0 FirstWrite -1}
		weights_load_7651 {Type I LastRead 0 FirstWrite -1}
		weights_load_7652 {Type I LastRead 0 FirstWrite -1}
		weights_load_7653 {Type I LastRead 0 FirstWrite -1}
		weights_load_7654 {Type I LastRead 0 FirstWrite -1}
		weights_load_7655 {Type I LastRead 0 FirstWrite -1}
		weights_load_7656 {Type I LastRead 0 FirstWrite -1}
		weights_load_7657 {Type I LastRead 0 FirstWrite -1}
		weights_load_7658 {Type I LastRead 0 FirstWrite -1}
		weights_load_7659 {Type I LastRead 0 FirstWrite -1}
		weights_load_7660 {Type I LastRead 0 FirstWrite -1}
		weights_load_7661 {Type I LastRead 0 FirstWrite -1}
		weights_load_7662 {Type I LastRead 0 FirstWrite -1}
		weights_load_7663 {Type I LastRead 0 FirstWrite -1}
		weights_load_7664 {Type I LastRead 0 FirstWrite -1}
		weights_load_7665 {Type I LastRead 0 FirstWrite -1}
		weights_load_7666 {Type I LastRead 0 FirstWrite -1}
		weights_load_7667 {Type I LastRead 0 FirstWrite -1}
		weights_load_7668 {Type I LastRead 0 FirstWrite -1}
		weights_load_7669 {Type I LastRead 0 FirstWrite -1}
		weights_load_7670 {Type I LastRead 0 FirstWrite -1}
		weights_load_7671 {Type I LastRead 0 FirstWrite -1}
		weights_load_7672 {Type I LastRead 0 FirstWrite -1}
		weights_load_7673 {Type I LastRead 0 FirstWrite -1}
		weights_load_7674 {Type I LastRead 0 FirstWrite -1}
		weights_load_7675 {Type I LastRead 0 FirstWrite -1}
		weights_load_7676 {Type I LastRead 0 FirstWrite -1}
		weights_load_7677 {Type I LastRead 0 FirstWrite -1}
		weights_load_7678 {Type I LastRead 0 FirstWrite -1}
		weights_load_7679 {Type I LastRead 0 FirstWrite -1}
		weights_load_7680 {Type I LastRead 0 FirstWrite -1}
		weights_load_7681 {Type I LastRead 0 FirstWrite -1}
		weights_load_7682 {Type I LastRead 0 FirstWrite -1}
		weights_load_7683 {Type I LastRead 0 FirstWrite -1}
		weights_load_7684 {Type I LastRead 0 FirstWrite -1}
		weights_load_7685 {Type I LastRead 0 FirstWrite -1}
		weights_load_7686 {Type I LastRead 0 FirstWrite -1}
		weights_load_7687 {Type I LastRead 0 FirstWrite -1}
		weights_load_7688 {Type I LastRead 0 FirstWrite -1}
		weights_load_7689 {Type I LastRead 0 FirstWrite -1}
		weights_load_7690 {Type I LastRead 0 FirstWrite -1}
		weights_load_7691 {Type I LastRead 0 FirstWrite -1}
		weights_load_7692 {Type I LastRead 0 FirstWrite -1}
		weights_load_7693 {Type I LastRead 0 FirstWrite -1}
		weights_load_7694 {Type I LastRead 0 FirstWrite -1}
		weights_load_7695 {Type I LastRead 0 FirstWrite -1}
		weights_load_7696 {Type I LastRead 0 FirstWrite -1}
		weights_load_7697 {Type I LastRead 0 FirstWrite -1}
		weights_load_7698 {Type I LastRead 0 FirstWrite -1}
		weights_load_7699 {Type I LastRead 0 FirstWrite -1}
		weights_load_7700 {Type I LastRead 0 FirstWrite -1}
		weights_load_7701 {Type I LastRead 0 FirstWrite -1}
		weights_load_7702 {Type I LastRead 0 FirstWrite -1}
		weights_load_7703 {Type I LastRead 0 FirstWrite -1}
		weights_load_7704 {Type I LastRead 0 FirstWrite -1}
		weights_load_7705 {Type I LastRead 0 FirstWrite -1}
		weights_load_7706 {Type I LastRead 0 FirstWrite -1}
		weights_load_7707 {Type I LastRead 0 FirstWrite -1}
		weights_load_7708 {Type I LastRead 0 FirstWrite -1}
		weights_load_7709 {Type I LastRead 0 FirstWrite -1}
		weights_load_7710 {Type I LastRead 0 FirstWrite -1}
		weights_load_7711 {Type I LastRead 0 FirstWrite -1}
		weights_load_7712 {Type I LastRead 0 FirstWrite -1}
		weights_load_7713 {Type I LastRead 0 FirstWrite -1}
		weights_load_7714 {Type I LastRead 0 FirstWrite -1}
		weights_load_7715 {Type I LastRead 0 FirstWrite -1}
		weights_load_7716 {Type I LastRead 0 FirstWrite -1}
		weights_load_7717 {Type I LastRead 0 FirstWrite -1}
		weights_load_7718 {Type I LastRead 0 FirstWrite -1}
		weights_load_7719 {Type I LastRead 0 FirstWrite -1}
		weights_load_7720 {Type I LastRead 0 FirstWrite -1}
		weights_load_7721 {Type I LastRead 0 FirstWrite -1}
		weights_load_7722 {Type I LastRead 0 FirstWrite -1}
		weights_load_7723 {Type I LastRead 0 FirstWrite -1}
		weights_load_7724 {Type I LastRead 0 FirstWrite -1}
		weights_load_7725 {Type I LastRead 0 FirstWrite -1}
		weights_load_7726 {Type I LastRead 0 FirstWrite -1}
		weights_load_7727 {Type I LastRead 0 FirstWrite -1}
		weights_load_7728 {Type I LastRead 0 FirstWrite -1}
		weights_load_7729 {Type I LastRead 0 FirstWrite -1}
		weights_load_7730 {Type I LastRead 0 FirstWrite -1}
		weights_load_7731 {Type I LastRead 0 FirstWrite -1}
		weights_load_7732 {Type I LastRead 0 FirstWrite -1}
		weights_load_7733 {Type I LastRead 0 FirstWrite -1}
		weights_load_7734 {Type I LastRead 0 FirstWrite -1}
		weights_load_7735 {Type I LastRead 0 FirstWrite -1}
		weights_load_7736 {Type I LastRead 0 FirstWrite -1}
		weights_load_7737 {Type I LastRead 0 FirstWrite -1}
		weights_load_7738 {Type I LastRead 0 FirstWrite -1}
		weights_load_7739 {Type I LastRead 0 FirstWrite -1}
		weights_load_7740 {Type I LastRead 0 FirstWrite -1}
		weights_load_7741 {Type I LastRead 0 FirstWrite -1}
		weights_load_7742 {Type I LastRead 0 FirstWrite -1}
		weights_load_7743 {Type I LastRead 0 FirstWrite -1}
		weights_load_7744 {Type I LastRead 0 FirstWrite -1}
		weights_load_7745 {Type I LastRead 0 FirstWrite -1}
		weights_load_7746 {Type I LastRead 0 FirstWrite -1}
		weights_load_7747 {Type I LastRead 0 FirstWrite -1}
		weights_load_7748 {Type I LastRead 0 FirstWrite -1}
		weights_load_7749 {Type I LastRead 0 FirstWrite -1}
		weights_load_7750 {Type I LastRead 0 FirstWrite -1}
		weights_load_7751 {Type I LastRead 0 FirstWrite -1}
		weights_load_7752 {Type I LastRead 0 FirstWrite -1}
		weights_load_7753 {Type I LastRead 0 FirstWrite -1}
		weights_load_7754 {Type I LastRead 0 FirstWrite -1}
		weights_load_7755 {Type I LastRead 0 FirstWrite -1}
		weights_load_7756 {Type I LastRead 0 FirstWrite -1}
		weights_load_7757 {Type I LastRead 0 FirstWrite -1}
		weights_load_7758 {Type I LastRead 0 FirstWrite -1}
		weights_load_7759 {Type I LastRead 0 FirstWrite -1}
		weights_load_7760 {Type I LastRead 0 FirstWrite -1}
		weights_load_7761 {Type I LastRead 0 FirstWrite -1}
		weights_load_7762 {Type I LastRead 0 FirstWrite -1}
		weights_load_7763 {Type I LastRead 0 FirstWrite -1}
		weights_load_7764 {Type I LastRead 0 FirstWrite -1}
		weights_load_7765 {Type I LastRead 0 FirstWrite -1}
		weights_load_7766 {Type I LastRead 0 FirstWrite -1}
		weights_load_7767 {Type I LastRead 0 FirstWrite -1}
		weights_load_7768 {Type I LastRead 0 FirstWrite -1}
		weights_load_7769 {Type I LastRead 0 FirstWrite -1}
		weights_load_7770 {Type I LastRead 0 FirstWrite -1}
		weights_load_7771 {Type I LastRead 0 FirstWrite -1}
		weights_load_7772 {Type I LastRead 0 FirstWrite -1}
		weights_load_7773 {Type I LastRead 0 FirstWrite -1}
		weights_load_7774 {Type I LastRead 0 FirstWrite -1}
		weights_load_7775 {Type I LastRead 0 FirstWrite -1}
		weights_load_7776 {Type I LastRead 0 FirstWrite -1}
		weights_load_7777 {Type I LastRead 0 FirstWrite -1}
		weights_load_7778 {Type I LastRead 0 FirstWrite -1}
		weights_load_7779 {Type I LastRead 0 FirstWrite -1}
		weights_load_7780 {Type I LastRead 0 FirstWrite -1}
		weights_load_7781 {Type I LastRead 0 FirstWrite -1}
		weights_load_7782 {Type I LastRead 0 FirstWrite -1}
		weights_load_7783 {Type I LastRead 0 FirstWrite -1}
		weights_load_7784 {Type I LastRead 0 FirstWrite -1}
		weights_load_7785 {Type I LastRead 0 FirstWrite -1}
		weights_load_7786 {Type I LastRead 0 FirstWrite -1}
		weights_load_7787 {Type I LastRead 0 FirstWrite -1}
		weights_load_7788 {Type I LastRead 0 FirstWrite -1}
		weights_load_7789 {Type I LastRead 0 FirstWrite -1}
		weights_load_7790 {Type I LastRead 0 FirstWrite -1}
		weights_load_7791 {Type I LastRead 0 FirstWrite -1}
		weights_load_7792 {Type I LastRead 0 FirstWrite -1}
		weights_load_7793 {Type I LastRead 0 FirstWrite -1}
		weights_load_7794 {Type I LastRead 0 FirstWrite -1}
		weights_load_7795 {Type I LastRead 0 FirstWrite -1}
		weights_load_7796 {Type I LastRead 0 FirstWrite -1}
		weights_load_7797 {Type I LastRead 0 FirstWrite -1}
		weights_load_7798 {Type I LastRead 0 FirstWrite -1}
		weights_load_7799 {Type I LastRead 0 FirstWrite -1}
		weights_load_7800 {Type I LastRead 0 FirstWrite -1}
		weights_load_7801 {Type I LastRead 0 FirstWrite -1}
		weights_load_7802 {Type I LastRead 0 FirstWrite -1}
		weights_load_7803 {Type I LastRead 0 FirstWrite -1}
		weights_load_7804 {Type I LastRead 0 FirstWrite -1}
		weights_load_7805 {Type I LastRead 0 FirstWrite -1}
		weights_load_7806 {Type I LastRead 0 FirstWrite -1}
		weights_load_7807 {Type I LastRead 0 FirstWrite -1}
		weights_load_7808 {Type I LastRead 0 FirstWrite -1}
		weights_load_7809 {Type I LastRead 0 FirstWrite -1}
		weights_load_7810 {Type I LastRead 0 FirstWrite -1}
		weights_load_7811 {Type I LastRead 0 FirstWrite -1}
		weights_load_7812 {Type I LastRead 0 FirstWrite -1}
		weights_load_7813 {Type I LastRead 0 FirstWrite -1}
		weights_load_7814 {Type I LastRead 0 FirstWrite -1}
		weights_load_7815 {Type I LastRead 0 FirstWrite -1}
		weights_load_7816 {Type I LastRead 0 FirstWrite -1}
		weights_load_7817 {Type I LastRead 0 FirstWrite -1}
		weights_load_7818 {Type I LastRead 0 FirstWrite -1}
		weights_load_7819 {Type I LastRead 0 FirstWrite -1}
		weights_load_7820 {Type I LastRead 0 FirstWrite -1}
		weights_load_7821 {Type I LastRead 0 FirstWrite -1}
		weights_load_7822 {Type I LastRead 0 FirstWrite -1}
		weights_load_7823 {Type I LastRead 0 FirstWrite -1}
		weights_load_7824 {Type I LastRead 0 FirstWrite -1}
		weights_load_7825 {Type I LastRead 0 FirstWrite -1}
		weights_load_7826 {Type I LastRead 0 FirstWrite -1}
		weights_load_7827 {Type I LastRead 0 FirstWrite -1}
		weights_load_7828 {Type I LastRead 0 FirstWrite -1}
		weights_load_7829 {Type I LastRead 0 FirstWrite -1}
		weights_load_7830 {Type I LastRead 0 FirstWrite -1}
		weights_load_7831 {Type I LastRead 0 FirstWrite -1}
		weights_load_7832 {Type I LastRead 0 FirstWrite -1}
		weights_load_7833 {Type I LastRead 0 FirstWrite -1}
		weights_load_7834 {Type I LastRead 0 FirstWrite -1}
		weights_load_7835 {Type I LastRead 0 FirstWrite -1}
		weights_load_7836 {Type I LastRead 0 FirstWrite -1}
		weights_load_7837 {Type I LastRead 0 FirstWrite -1}
		weights_load_7838 {Type I LastRead 0 FirstWrite -1}
		weights_load_7839 {Type I LastRead 0 FirstWrite -1}
		weights_load_7840 {Type I LastRead 0 FirstWrite -1}
		weights_load_7841 {Type I LastRead 0 FirstWrite -1}
		weights_load_7842 {Type I LastRead 0 FirstWrite -1}
		weights_load_7843 {Type I LastRead 0 FirstWrite -1}
		weights_load_7844 {Type I LastRead 0 FirstWrite -1}
		weights_load_7845 {Type I LastRead 0 FirstWrite -1}
		weights_load_7846 {Type I LastRead 0 FirstWrite -1}
		weights_load_7847 {Type I LastRead 0 FirstWrite -1}
		weights_load_7848 {Type I LastRead 0 FirstWrite -1}
		weights_load_7849 {Type I LastRead 0 FirstWrite -1}
		weights_load_7850 {Type I LastRead 0 FirstWrite -1}
		weights_load_7851 {Type I LastRead 0 FirstWrite -1}
		weights_load_7852 {Type I LastRead 0 FirstWrite -1}
		weights_load_7853 {Type I LastRead 0 FirstWrite -1}
		weights_load_7854 {Type I LastRead 0 FirstWrite -1}
		weights_load_7855 {Type I LastRead 0 FirstWrite -1}
		weights_load_7856 {Type I LastRead 0 FirstWrite -1}
		weights_load_7857 {Type I LastRead 0 FirstWrite -1}
		weights_load_7858 {Type I LastRead 0 FirstWrite -1}
		weights_load_7859 {Type I LastRead 0 FirstWrite -1}
		weights_load_7860 {Type I LastRead 0 FirstWrite -1}
		weights_load_7861 {Type I LastRead 0 FirstWrite -1}
		weights_load_7862 {Type I LastRead 0 FirstWrite -1}
		weights_load_7863 {Type I LastRead 0 FirstWrite -1}
		weights_load_7864 {Type I LastRead 0 FirstWrite -1}
		weights_load_7865 {Type I LastRead 0 FirstWrite -1}
		weights_load_7866 {Type I LastRead 0 FirstWrite -1}
		weights_load_7867 {Type I LastRead 0 FirstWrite -1}
		weights_load_7868 {Type I LastRead 0 FirstWrite -1}
		weights_load_7869 {Type I LastRead 0 FirstWrite -1}
		weights_load_7870 {Type I LastRead 0 FirstWrite -1}
		weights_load_7871 {Type I LastRead 0 FirstWrite -1}
		weights_load_7872 {Type I LastRead 0 FirstWrite -1}
		weights_load_7873 {Type I LastRead 0 FirstWrite -1}
		weights_load_7874 {Type I LastRead 0 FirstWrite -1}
		weights_load_7875 {Type I LastRead 0 FirstWrite -1}
		weights_load_7876 {Type I LastRead 0 FirstWrite -1}
		weights_load_7877 {Type I LastRead 0 FirstWrite -1}
		weights_load_7878 {Type I LastRead 0 FirstWrite -1}
		weights_load_7879 {Type I LastRead 0 FirstWrite -1}
		weights_load_7880 {Type I LastRead 0 FirstWrite -1}
		weights_load_7881 {Type I LastRead 0 FirstWrite -1}
		weights_load_7882 {Type I LastRead 0 FirstWrite -1}
		weights_load_7883 {Type I LastRead 0 FirstWrite -1}
		weights_load_7884 {Type I LastRead 0 FirstWrite -1}
		weights_load_7885 {Type I LastRead 0 FirstWrite -1}
		weights_load_7886 {Type I LastRead 0 FirstWrite -1}
		weights_load_7887 {Type I LastRead 0 FirstWrite -1}
		weights_load_7888 {Type I LastRead 0 FirstWrite -1}
		weights_load_7889 {Type I LastRead 0 FirstWrite -1}
		weights_load_7890 {Type I LastRead 0 FirstWrite -1}
		weights_load_7891 {Type I LastRead 0 FirstWrite -1}
		weights_load_7892 {Type I LastRead 0 FirstWrite -1}
		weights_load_7893 {Type I LastRead 0 FirstWrite -1}
		weights_load_7894 {Type I LastRead 0 FirstWrite -1}
		weights_load_7895 {Type I LastRead 0 FirstWrite -1}
		weights_load_7896 {Type I LastRead 0 FirstWrite -1}
		weights_load_7897 {Type I LastRead 0 FirstWrite -1}
		weights_load_7898 {Type I LastRead 0 FirstWrite -1}
		weights_load_7899 {Type I LastRead 0 FirstWrite -1}
		weights_load_7900 {Type I LastRead 0 FirstWrite -1}
		weights_load_7901 {Type I LastRead 0 FirstWrite -1}
		weights_load_7902 {Type I LastRead 0 FirstWrite -1}
		weights_load_7903 {Type I LastRead 0 FirstWrite -1}
		weights_load_7904 {Type I LastRead 0 FirstWrite -1}
		weights_load_7905 {Type I LastRead 0 FirstWrite -1}
		weights_load_7906 {Type I LastRead 0 FirstWrite -1}
		weights_load_7907 {Type I LastRead 0 FirstWrite -1}
		weights_load_7908 {Type I LastRead 0 FirstWrite -1}
		weights_load_7909 {Type I LastRead 0 FirstWrite -1}
		weights_load_7910 {Type I LastRead 0 FirstWrite -1}
		weights_load_7911 {Type I LastRead 0 FirstWrite -1}
		weights_load_7912 {Type I LastRead 0 FirstWrite -1}
		weights_load_7913 {Type I LastRead 0 FirstWrite -1}
		weights_load_7914 {Type I LastRead 0 FirstWrite -1}
		weights_load_7915 {Type I LastRead 0 FirstWrite -1}
		weights_load_7916 {Type I LastRead 0 FirstWrite -1}
		weights_load_7917 {Type I LastRead 0 FirstWrite -1}
		weights_load_7918 {Type I LastRead 0 FirstWrite -1}
		weights_load_7919 {Type I LastRead 0 FirstWrite -1}
		weights_load_7920 {Type I LastRead 0 FirstWrite -1}
		weights_load_7921 {Type I LastRead 0 FirstWrite -1}
		weights_load_7922 {Type I LastRead 0 FirstWrite -1}
		weights_load_7923 {Type I LastRead 0 FirstWrite -1}
		weights_load_7924 {Type I LastRead 0 FirstWrite -1}
		weights_load_7925 {Type I LastRead 0 FirstWrite -1}
		weights_load_7926 {Type I LastRead 0 FirstWrite -1}
		weights_load_7927 {Type I LastRead 0 FirstWrite -1}
		weights_load_7928 {Type I LastRead 0 FirstWrite -1}
		weights_load_7929 {Type I LastRead 0 FirstWrite -1}
		weights_load_7930 {Type I LastRead 0 FirstWrite -1}
		weights_load_7931 {Type I LastRead 0 FirstWrite -1}
		weights_load_7932 {Type I LastRead 0 FirstWrite -1}
		weights_load_7933 {Type I LastRead 0 FirstWrite -1}
		weights_load_7934 {Type I LastRead 0 FirstWrite -1}
		weights_load_7935 {Type I LastRead 0 FirstWrite -1}
		weights_load_7936 {Type I LastRead 0 FirstWrite -1}
		weights_load_7937 {Type I LastRead 0 FirstWrite -1}
		weights_load_7938 {Type I LastRead 0 FirstWrite -1}
		weights_load_7939 {Type I LastRead 0 FirstWrite -1}
		weights_load_7940 {Type I LastRead 0 FirstWrite -1}
		weights_load_7941 {Type I LastRead 0 FirstWrite -1}
		weights_load_7942 {Type I LastRead 0 FirstWrite -1}
		weights_load_7943 {Type I LastRead 0 FirstWrite -1}
		weights_load_7944 {Type I LastRead 0 FirstWrite -1}
		weights_load_7945 {Type I LastRead 0 FirstWrite -1}
		weights_load_7946 {Type I LastRead 0 FirstWrite -1}
		weights_load_7947 {Type I LastRead 0 FirstWrite -1}
		weights_load_7948 {Type I LastRead 0 FirstWrite -1}
		weights_load_7949 {Type I LastRead 0 FirstWrite -1}
		weights_load_7950 {Type I LastRead 0 FirstWrite -1}
		weights_load_7951 {Type I LastRead 0 FirstWrite -1}
		weights_load_7952 {Type I LastRead 0 FirstWrite -1}
		weights_load_7953 {Type I LastRead 0 FirstWrite -1}
		weights_load_7954 {Type I LastRead 0 FirstWrite -1}
		weights_load_7955 {Type I LastRead 0 FirstWrite -1}
		weights_load_7956 {Type I LastRead 0 FirstWrite -1}
		weights_load_7957 {Type I LastRead 0 FirstWrite -1}
		weights_load_7958 {Type I LastRead 0 FirstWrite -1}
		weights_load_7959 {Type I LastRead 0 FirstWrite -1}
		weights_load_7960 {Type I LastRead 0 FirstWrite -1}
		weights_load_7961 {Type I LastRead 0 FirstWrite -1}
		weights_load_7962 {Type I LastRead 0 FirstWrite -1}
		weights_load_7963 {Type I LastRead 0 FirstWrite -1}
		weights_load_7964 {Type I LastRead 0 FirstWrite -1}
		weights_load_7965 {Type I LastRead 0 FirstWrite -1}
		weights_load_7966 {Type I LastRead 0 FirstWrite -1}
		weights_load_7967 {Type I LastRead 0 FirstWrite -1}
		weights_load_7968 {Type I LastRead 0 FirstWrite -1}
		weights_load_7969 {Type I LastRead 0 FirstWrite -1}
		weights_load_7970 {Type I LastRead 0 FirstWrite -1}
		weights_load_7971 {Type I LastRead 0 FirstWrite -1}
		weights_load_7972 {Type I LastRead 0 FirstWrite -1}
		weights_load_7973 {Type I LastRead 0 FirstWrite -1}
		weights_load_7974 {Type I LastRead 0 FirstWrite -1}
		weights_load_7975 {Type I LastRead 0 FirstWrite -1}
		weights_load_7976 {Type I LastRead 0 FirstWrite -1}
		weights_load_7977 {Type I LastRead 0 FirstWrite -1}
		weights_load_7978 {Type I LastRead 0 FirstWrite -1}
		weights_load_7979 {Type I LastRead 0 FirstWrite -1}
		weights_load_7980 {Type I LastRead 0 FirstWrite -1}
		weights_load_7981 {Type I LastRead 0 FirstWrite -1}
		weights_load_7982 {Type I LastRead 0 FirstWrite -1}
		weights_load_7983 {Type I LastRead 0 FirstWrite -1}
		weights_load_7984 {Type I LastRead 0 FirstWrite -1}
		weights_load_7985 {Type I LastRead 0 FirstWrite -1}
		weights_load_7986 {Type I LastRead 0 FirstWrite -1}
		weights_load_7987 {Type I LastRead 0 FirstWrite -1}
		weights_load_7988 {Type I LastRead 0 FirstWrite -1}
		weights_load_7989 {Type I LastRead 0 FirstWrite -1}
		weights_load_7990 {Type I LastRead 0 FirstWrite -1}
		weights_load_7991 {Type I LastRead 0 FirstWrite -1}
		weights_load_7992 {Type I LastRead 0 FirstWrite -1}
		weights_load_7993 {Type I LastRead 0 FirstWrite -1}
		weights_load_7994 {Type I LastRead 0 FirstWrite -1}
		weights_load_7995 {Type I LastRead 0 FirstWrite -1}
		weights_load_7996 {Type I LastRead 0 FirstWrite -1}
		weights_load_7997 {Type I LastRead 0 FirstWrite -1}
		weights_load_7998 {Type I LastRead 0 FirstWrite -1}
		weights_load_7999 {Type I LastRead 0 FirstWrite -1}
		weights_load_8000 {Type I LastRead 0 FirstWrite -1}
		weights_load_8001 {Type I LastRead 0 FirstWrite -1}
		weights_load_8002 {Type I LastRead 0 FirstWrite -1}
		weights_load_8003 {Type I LastRead 0 FirstWrite -1}
		weights_load_8004 {Type I LastRead 0 FirstWrite -1}
		weights_load_8005 {Type I LastRead 0 FirstWrite -1}
		weights_load_8006 {Type I LastRead 0 FirstWrite -1}
		weights_load_8007 {Type I LastRead 0 FirstWrite -1}
		weights_load_8008 {Type I LastRead 0 FirstWrite -1}
		weights_load_8009 {Type I LastRead 0 FirstWrite -1}
		weights_load_8010 {Type I LastRead 0 FirstWrite -1}
		weights_load_8011 {Type I LastRead 0 FirstWrite -1}
		weights_load_8012 {Type I LastRead 0 FirstWrite -1}
		weights_load_8013 {Type I LastRead 0 FirstWrite -1}
		weights_load_8014 {Type I LastRead 0 FirstWrite -1}
		weights_load_8015 {Type I LastRead 0 FirstWrite -1}
		weights_load_8016 {Type I LastRead 0 FirstWrite -1}
		weights_load_8017 {Type I LastRead 0 FirstWrite -1}
		weights_load_8018 {Type I LastRead 0 FirstWrite -1}
		weights_load_8019 {Type I LastRead 0 FirstWrite -1}
		weights_load_8020 {Type I LastRead 0 FirstWrite -1}
		weights_load_8021 {Type I LastRead 0 FirstWrite -1}
		weights_load_8022 {Type I LastRead 0 FirstWrite -1}
		weights_load_8023 {Type I LastRead 0 FirstWrite -1}
		weights_load_8024 {Type I LastRead 0 FirstWrite -1}
		weights_load_8025 {Type I LastRead 0 FirstWrite -1}
		weights_load_8026 {Type I LastRead 0 FirstWrite -1}
		weights_load_8027 {Type I LastRead 0 FirstWrite -1}
		weights_load_8028 {Type I LastRead 0 FirstWrite -1}
		weights_load_8029 {Type I LastRead 0 FirstWrite -1}
		weights_load_8030 {Type I LastRead 0 FirstWrite -1}
		weights_load_8031 {Type I LastRead 0 FirstWrite -1}
		weights_load_8032 {Type I LastRead 0 FirstWrite -1}
		weights_load_8033 {Type I LastRead 0 FirstWrite -1}
		weights_load_8034 {Type I LastRead 0 FirstWrite -1}
		weights_load_8035 {Type I LastRead 0 FirstWrite -1}
		weights_load_8036 {Type I LastRead 0 FirstWrite -1}
		weights_load_8037 {Type I LastRead 0 FirstWrite -1}
		weights_load_8038 {Type I LastRead 0 FirstWrite -1}
		weights_load_8039 {Type I LastRead 0 FirstWrite -1}
		weights_load_8040 {Type I LastRead 0 FirstWrite -1}
		weights_load_8041 {Type I LastRead 0 FirstWrite -1}
		weights_load_8042 {Type I LastRead 0 FirstWrite -1}
		weights_load_8043 {Type I LastRead 0 FirstWrite -1}
		weights_load_8044 {Type I LastRead 0 FirstWrite -1}
		weights_load_8045 {Type I LastRead 0 FirstWrite -1}
		weights_load_8046 {Type I LastRead 0 FirstWrite -1}
		weights_load_8047 {Type I LastRead 0 FirstWrite -1}
		weights_load_8048 {Type I LastRead 0 FirstWrite -1}
		weights_load_8049 {Type I LastRead 0 FirstWrite -1}
		weights_load_8050 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_25 { ap_fifo {  { conv2d_64_padded_window_stream_25_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_25_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_25_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_25_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_25_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_25 { ap_fifo {  { in_channel_map_stream_25_din fifo_port_we 1 32 }  { in_channel_map_stream_25_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_25_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_25_full_n fifo_status 0 1 }  { in_channel_map_stream_25_write fifo_data 1 1 } } }
}
