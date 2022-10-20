set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_13
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.13}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_13 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_13 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_13", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_13", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_13_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_13_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_13_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_13_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_13_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_13_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_13_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_13_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_13_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_13_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_13_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_13", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_13_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_13", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_13_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_13", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_13_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_13", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_13_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_13", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_13_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_13", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_13_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_13", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_13_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_13", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_13_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_13", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_13_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_13", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_13",
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
			{"Name" : "conv2d_64_padded_window_stream_13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_13_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_13", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_13", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_13_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_13", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_13_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_13_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_13", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14951", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14952", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14953", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14954", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14955", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14956", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14957", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14958", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_13", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_14959", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14960", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14961", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14962", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14963", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14964", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14965", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14966", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14967", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14968", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14969", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14970", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14971", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14972", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14973", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14974", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14975", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14976", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14977", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14978", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14979", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14980", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14981", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14982", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14983", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14984", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14985", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14986", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14987", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14988", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14989", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14990", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14991", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14992", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14993", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14994", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14995", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14996", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14997", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14998", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14999", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15000", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15001", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15002", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15003", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15004", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15005", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15006", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15007", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15008", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15009", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15010", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15011", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15012", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15013", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15014", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15015", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15016", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15017", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15018", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15019", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15020", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15021", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15022", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15023", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15024", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15025", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15026", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15027", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15028", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15029", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15030", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15031", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15032", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15033", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15034", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15035", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15036", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15037", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15038", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15039", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15040", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15041", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15042", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15043", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15044", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15045", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15046", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15047", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15048", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15049", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15050", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15051", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15052", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15053", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15054", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15055", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15056", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15057", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15058", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15059", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15060", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15061", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15062", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15063", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15064", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15065", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15066", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15067", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15068", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15069", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15070", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15071", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15072", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15073", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15074", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15075", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15076", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15077", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15078", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15079", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15080", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15081", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15082", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15083", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15084", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15085", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15086", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15087", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15088", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15089", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15090", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15091", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15092", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15093", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15094", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15095", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15096", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15097", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15098", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15099", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15100", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15101", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15102", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15103", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15104", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15105", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15106", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15107", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15108", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15109", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15110", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15111", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15112", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15113", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15114", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15115", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15116", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15117", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15118", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15119", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15120", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15121", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15122", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15123", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15124", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15125", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15126", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15127", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15128", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15129", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15130", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15131", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15132", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15133", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15134", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15135", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15136", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15137", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15138", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15139", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15140", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15141", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15142", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15143", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15144", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15145", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15146", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15147", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15148", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15149", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15150", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15151", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15152", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15153", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15154", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15155", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15156", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15157", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15158", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15159", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15160", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15161", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15162", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15163", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15164", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15165", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15166", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15167", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15168", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15169", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15170", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15171", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15172", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15173", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15174", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15175", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15176", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15177", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15178", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15179", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15180", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15181", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15182", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15183", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15184", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15185", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15186", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15187", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15188", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15189", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15190", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15191", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15192", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15193", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15194", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15195", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15196", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15197", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15198", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15199", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15200", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15201", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15202", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15203", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15204", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15205", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15206", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15207", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15208", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15209", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15210", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15211", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15212", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15213", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15214", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15215", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15216", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15217", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15218", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15219", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15220", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15221", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15222", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15223", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15224", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15225", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15226", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15227", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15228", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15229", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15230", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15231", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15232", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15233", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15234", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15235", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15236", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15237", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15238", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15239", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15240", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15241", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15242", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15243", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15244", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15245", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15246", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15247", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15248", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15249", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15250", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15251", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15252", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15253", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15254", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15255", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15256", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15257", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15258", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15259", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15260", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15261", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15262", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15263", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15264", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15265", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15266", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15267", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15268", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15269", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15270", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15271", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15272", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15273", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15274", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15275", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15276", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15277", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15278", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15279", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15280", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15281", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15282", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15283", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15284", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15285", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15286", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15287", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15288", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15289", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15290", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15291", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15292", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15293", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15294", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15295", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15296", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15297", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15298", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15299", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15300", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15301", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15302", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15303", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15304", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15305", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15306", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15307", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15308", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15309", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15310", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15311", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15312", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15313", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15314", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15315", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15316", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15317", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15318", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15319", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15320", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15321", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15322", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15323", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15324", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15325", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15326", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15327", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15328", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15329", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15330", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15331", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15332", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15333", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15334", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15335", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15336", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15337", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15338", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15339", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15340", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15341", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15342", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15343", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15344", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15345", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15346", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15347", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15348", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15349", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15350", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15351", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15352", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15353", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15354", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15355", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15356", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15357", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15358", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15359", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15360", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15361", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15362", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15363", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15364", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15365", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15366", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15367", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15368", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15369", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15370", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15371", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15372", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15373", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15374", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15375", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15376", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15377", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15378", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15379", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15380", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15381", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15382", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15383", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15384", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15385", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15386", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15387", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15388", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15389", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15390", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15391", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15392", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15393", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15394", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15395", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15396", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15397", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15398", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15399", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15400", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15401", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15402", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15403", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15404", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15405", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15406", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15407", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15408", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15409", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15410", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15411", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15412", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15413", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15414", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15415", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15416", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15417", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15418", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15419", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15420", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15421", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15422", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15423", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15424", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15425", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15426", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15427", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15428", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15429", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15430", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15431", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15432", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15433", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15434", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15435", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15436", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15437", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15438", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15439", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15440", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15441", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15442", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15443", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15444", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15445", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15446", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15447", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15448", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15449", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15450", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15451", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15452", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15453", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15454", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15455", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15456", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15457", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15458", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15459", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15460", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15461", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15462", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15463", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15464", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15465", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15466", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15467", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15468", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15469", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15470", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15471", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15472", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15473", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15474", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15475", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15476", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15477", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15478", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15479", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15480", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15481", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15482", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15483", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15484", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15485", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15486", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15487", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15488", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15489", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15490", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15491", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15492", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15493", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15494", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15495", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15496", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15497", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15498", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15499", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15500", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15501", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15502", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15503", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15504", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15505", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15506", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15507", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15508", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15509", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15510", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15511", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15512", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15513", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15514", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15515", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15516", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15517", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15518", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15519", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15520", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15521", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15522", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15523", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15524", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15525", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_13_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U8330", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_13_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U8331", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_13_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U8332", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_13_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U8333", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_13_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U8334", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_13_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U8335", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_13_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U8336", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_13_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U8337", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_13_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U8338", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_13_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U8339", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_13_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U8340", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_13_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U8341", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_13_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U8342", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_13_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U8343", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_13_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U8344", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_13_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U8345", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_13_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U8346", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_13_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_13 {
		conv2d_64_padded_window_stream_13 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_13 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_13_Pipeline_inputs {
		conv2d_64_padded_window_stream_13 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_14951 {Type I LastRead 0 FirstWrite -1}
		weights_load_14952 {Type I LastRead 0 FirstWrite -1}
		weights_load_14953 {Type I LastRead 0 FirstWrite -1}
		weights_load_14954 {Type I LastRead 0 FirstWrite -1}
		weights_load_14955 {Type I LastRead 0 FirstWrite -1}
		weights_load_14956 {Type I LastRead 0 FirstWrite -1}
		weights_load_14957 {Type I LastRead 0 FirstWrite -1}
		weights_load_14958 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_13 {Type O LastRead -1 FirstWrite 16}
		weights_load_14959 {Type I LastRead 0 FirstWrite -1}
		weights_load_14960 {Type I LastRead 0 FirstWrite -1}
		weights_load_14961 {Type I LastRead 0 FirstWrite -1}
		weights_load_14962 {Type I LastRead 0 FirstWrite -1}
		weights_load_14963 {Type I LastRead 0 FirstWrite -1}
		weights_load_14964 {Type I LastRead 0 FirstWrite -1}
		weights_load_14965 {Type I LastRead 0 FirstWrite -1}
		weights_load_14966 {Type I LastRead 0 FirstWrite -1}
		weights_load_14967 {Type I LastRead 0 FirstWrite -1}
		weights_load_14968 {Type I LastRead 0 FirstWrite -1}
		weights_load_14969 {Type I LastRead 0 FirstWrite -1}
		weights_load_14970 {Type I LastRead 0 FirstWrite -1}
		weights_load_14971 {Type I LastRead 0 FirstWrite -1}
		weights_load_14972 {Type I LastRead 0 FirstWrite -1}
		weights_load_14973 {Type I LastRead 0 FirstWrite -1}
		weights_load_14974 {Type I LastRead 0 FirstWrite -1}
		weights_load_14975 {Type I LastRead 0 FirstWrite -1}
		weights_load_14976 {Type I LastRead 0 FirstWrite -1}
		weights_load_14977 {Type I LastRead 0 FirstWrite -1}
		weights_load_14978 {Type I LastRead 0 FirstWrite -1}
		weights_load_14979 {Type I LastRead 0 FirstWrite -1}
		weights_load_14980 {Type I LastRead 0 FirstWrite -1}
		weights_load_14981 {Type I LastRead 0 FirstWrite -1}
		weights_load_14982 {Type I LastRead 0 FirstWrite -1}
		weights_load_14983 {Type I LastRead 0 FirstWrite -1}
		weights_load_14984 {Type I LastRead 0 FirstWrite -1}
		weights_load_14985 {Type I LastRead 0 FirstWrite -1}
		weights_load_14986 {Type I LastRead 0 FirstWrite -1}
		weights_load_14987 {Type I LastRead 0 FirstWrite -1}
		weights_load_14988 {Type I LastRead 0 FirstWrite -1}
		weights_load_14989 {Type I LastRead 0 FirstWrite -1}
		weights_load_14990 {Type I LastRead 0 FirstWrite -1}
		weights_load_14991 {Type I LastRead 0 FirstWrite -1}
		weights_load_14992 {Type I LastRead 0 FirstWrite -1}
		weights_load_14993 {Type I LastRead 0 FirstWrite -1}
		weights_load_14994 {Type I LastRead 0 FirstWrite -1}
		weights_load_14995 {Type I LastRead 0 FirstWrite -1}
		weights_load_14996 {Type I LastRead 0 FirstWrite -1}
		weights_load_14997 {Type I LastRead 0 FirstWrite -1}
		weights_load_14998 {Type I LastRead 0 FirstWrite -1}
		weights_load_14999 {Type I LastRead 0 FirstWrite -1}
		weights_load_15000 {Type I LastRead 0 FirstWrite -1}
		weights_load_15001 {Type I LastRead 0 FirstWrite -1}
		weights_load_15002 {Type I LastRead 0 FirstWrite -1}
		weights_load_15003 {Type I LastRead 0 FirstWrite -1}
		weights_load_15004 {Type I LastRead 0 FirstWrite -1}
		weights_load_15005 {Type I LastRead 0 FirstWrite -1}
		weights_load_15006 {Type I LastRead 0 FirstWrite -1}
		weights_load_15007 {Type I LastRead 0 FirstWrite -1}
		weights_load_15008 {Type I LastRead 0 FirstWrite -1}
		weights_load_15009 {Type I LastRead 0 FirstWrite -1}
		weights_load_15010 {Type I LastRead 0 FirstWrite -1}
		weights_load_15011 {Type I LastRead 0 FirstWrite -1}
		weights_load_15012 {Type I LastRead 0 FirstWrite -1}
		weights_load_15013 {Type I LastRead 0 FirstWrite -1}
		weights_load_15014 {Type I LastRead 0 FirstWrite -1}
		weights_load_15015 {Type I LastRead 0 FirstWrite -1}
		weights_load_15016 {Type I LastRead 0 FirstWrite -1}
		weights_load_15017 {Type I LastRead 0 FirstWrite -1}
		weights_load_15018 {Type I LastRead 0 FirstWrite -1}
		weights_load_15019 {Type I LastRead 0 FirstWrite -1}
		weights_load_15020 {Type I LastRead 0 FirstWrite -1}
		weights_load_15021 {Type I LastRead 0 FirstWrite -1}
		weights_load_15022 {Type I LastRead 0 FirstWrite -1}
		weights_load_15023 {Type I LastRead 0 FirstWrite -1}
		weights_load_15024 {Type I LastRead 0 FirstWrite -1}
		weights_load_15025 {Type I LastRead 0 FirstWrite -1}
		weights_load_15026 {Type I LastRead 0 FirstWrite -1}
		weights_load_15027 {Type I LastRead 0 FirstWrite -1}
		weights_load_15028 {Type I LastRead 0 FirstWrite -1}
		weights_load_15029 {Type I LastRead 0 FirstWrite -1}
		weights_load_15030 {Type I LastRead 0 FirstWrite -1}
		weights_load_15031 {Type I LastRead 0 FirstWrite -1}
		weights_load_15032 {Type I LastRead 0 FirstWrite -1}
		weights_load_15033 {Type I LastRead 0 FirstWrite -1}
		weights_load_15034 {Type I LastRead 0 FirstWrite -1}
		weights_load_15035 {Type I LastRead 0 FirstWrite -1}
		weights_load_15036 {Type I LastRead 0 FirstWrite -1}
		weights_load_15037 {Type I LastRead 0 FirstWrite -1}
		weights_load_15038 {Type I LastRead 0 FirstWrite -1}
		weights_load_15039 {Type I LastRead 0 FirstWrite -1}
		weights_load_15040 {Type I LastRead 0 FirstWrite -1}
		weights_load_15041 {Type I LastRead 0 FirstWrite -1}
		weights_load_15042 {Type I LastRead 0 FirstWrite -1}
		weights_load_15043 {Type I LastRead 0 FirstWrite -1}
		weights_load_15044 {Type I LastRead 0 FirstWrite -1}
		weights_load_15045 {Type I LastRead 0 FirstWrite -1}
		weights_load_15046 {Type I LastRead 0 FirstWrite -1}
		weights_load_15047 {Type I LastRead 0 FirstWrite -1}
		weights_load_15048 {Type I LastRead 0 FirstWrite -1}
		weights_load_15049 {Type I LastRead 0 FirstWrite -1}
		weights_load_15050 {Type I LastRead 0 FirstWrite -1}
		weights_load_15051 {Type I LastRead 0 FirstWrite -1}
		weights_load_15052 {Type I LastRead 0 FirstWrite -1}
		weights_load_15053 {Type I LastRead 0 FirstWrite -1}
		weights_load_15054 {Type I LastRead 0 FirstWrite -1}
		weights_load_15055 {Type I LastRead 0 FirstWrite -1}
		weights_load_15056 {Type I LastRead 0 FirstWrite -1}
		weights_load_15057 {Type I LastRead 0 FirstWrite -1}
		weights_load_15058 {Type I LastRead 0 FirstWrite -1}
		weights_load_15059 {Type I LastRead 0 FirstWrite -1}
		weights_load_15060 {Type I LastRead 0 FirstWrite -1}
		weights_load_15061 {Type I LastRead 0 FirstWrite -1}
		weights_load_15062 {Type I LastRead 0 FirstWrite -1}
		weights_load_15063 {Type I LastRead 0 FirstWrite -1}
		weights_load_15064 {Type I LastRead 0 FirstWrite -1}
		weights_load_15065 {Type I LastRead 0 FirstWrite -1}
		weights_load_15066 {Type I LastRead 0 FirstWrite -1}
		weights_load_15067 {Type I LastRead 0 FirstWrite -1}
		weights_load_15068 {Type I LastRead 0 FirstWrite -1}
		weights_load_15069 {Type I LastRead 0 FirstWrite -1}
		weights_load_15070 {Type I LastRead 0 FirstWrite -1}
		weights_load_15071 {Type I LastRead 0 FirstWrite -1}
		weights_load_15072 {Type I LastRead 0 FirstWrite -1}
		weights_load_15073 {Type I LastRead 0 FirstWrite -1}
		weights_load_15074 {Type I LastRead 0 FirstWrite -1}
		weights_load_15075 {Type I LastRead 0 FirstWrite -1}
		weights_load_15076 {Type I LastRead 0 FirstWrite -1}
		weights_load_15077 {Type I LastRead 0 FirstWrite -1}
		weights_load_15078 {Type I LastRead 0 FirstWrite -1}
		weights_load_15079 {Type I LastRead 0 FirstWrite -1}
		weights_load_15080 {Type I LastRead 0 FirstWrite -1}
		weights_load_15081 {Type I LastRead 0 FirstWrite -1}
		weights_load_15082 {Type I LastRead 0 FirstWrite -1}
		weights_load_15083 {Type I LastRead 0 FirstWrite -1}
		weights_load_15084 {Type I LastRead 0 FirstWrite -1}
		weights_load_15085 {Type I LastRead 0 FirstWrite -1}
		weights_load_15086 {Type I LastRead 0 FirstWrite -1}
		weights_load_15087 {Type I LastRead 0 FirstWrite -1}
		weights_load_15088 {Type I LastRead 0 FirstWrite -1}
		weights_load_15089 {Type I LastRead 0 FirstWrite -1}
		weights_load_15090 {Type I LastRead 0 FirstWrite -1}
		weights_load_15091 {Type I LastRead 0 FirstWrite -1}
		weights_load_15092 {Type I LastRead 0 FirstWrite -1}
		weights_load_15093 {Type I LastRead 0 FirstWrite -1}
		weights_load_15094 {Type I LastRead 0 FirstWrite -1}
		weights_load_15095 {Type I LastRead 0 FirstWrite -1}
		weights_load_15096 {Type I LastRead 0 FirstWrite -1}
		weights_load_15097 {Type I LastRead 0 FirstWrite -1}
		weights_load_15098 {Type I LastRead 0 FirstWrite -1}
		weights_load_15099 {Type I LastRead 0 FirstWrite -1}
		weights_load_15100 {Type I LastRead 0 FirstWrite -1}
		weights_load_15101 {Type I LastRead 0 FirstWrite -1}
		weights_load_15102 {Type I LastRead 0 FirstWrite -1}
		weights_load_15103 {Type I LastRead 0 FirstWrite -1}
		weights_load_15104 {Type I LastRead 0 FirstWrite -1}
		weights_load_15105 {Type I LastRead 0 FirstWrite -1}
		weights_load_15106 {Type I LastRead 0 FirstWrite -1}
		weights_load_15107 {Type I LastRead 0 FirstWrite -1}
		weights_load_15108 {Type I LastRead 0 FirstWrite -1}
		weights_load_15109 {Type I LastRead 0 FirstWrite -1}
		weights_load_15110 {Type I LastRead 0 FirstWrite -1}
		weights_load_15111 {Type I LastRead 0 FirstWrite -1}
		weights_load_15112 {Type I LastRead 0 FirstWrite -1}
		weights_load_15113 {Type I LastRead 0 FirstWrite -1}
		weights_load_15114 {Type I LastRead 0 FirstWrite -1}
		weights_load_15115 {Type I LastRead 0 FirstWrite -1}
		weights_load_15116 {Type I LastRead 0 FirstWrite -1}
		weights_load_15117 {Type I LastRead 0 FirstWrite -1}
		weights_load_15118 {Type I LastRead 0 FirstWrite -1}
		weights_load_15119 {Type I LastRead 0 FirstWrite -1}
		weights_load_15120 {Type I LastRead 0 FirstWrite -1}
		weights_load_15121 {Type I LastRead 0 FirstWrite -1}
		weights_load_15122 {Type I LastRead 0 FirstWrite -1}
		weights_load_15123 {Type I LastRead 0 FirstWrite -1}
		weights_load_15124 {Type I LastRead 0 FirstWrite -1}
		weights_load_15125 {Type I LastRead 0 FirstWrite -1}
		weights_load_15126 {Type I LastRead 0 FirstWrite -1}
		weights_load_15127 {Type I LastRead 0 FirstWrite -1}
		weights_load_15128 {Type I LastRead 0 FirstWrite -1}
		weights_load_15129 {Type I LastRead 0 FirstWrite -1}
		weights_load_15130 {Type I LastRead 0 FirstWrite -1}
		weights_load_15131 {Type I LastRead 0 FirstWrite -1}
		weights_load_15132 {Type I LastRead 0 FirstWrite -1}
		weights_load_15133 {Type I LastRead 0 FirstWrite -1}
		weights_load_15134 {Type I LastRead 0 FirstWrite -1}
		weights_load_15135 {Type I LastRead 0 FirstWrite -1}
		weights_load_15136 {Type I LastRead 0 FirstWrite -1}
		weights_load_15137 {Type I LastRead 0 FirstWrite -1}
		weights_load_15138 {Type I LastRead 0 FirstWrite -1}
		weights_load_15139 {Type I LastRead 0 FirstWrite -1}
		weights_load_15140 {Type I LastRead 0 FirstWrite -1}
		weights_load_15141 {Type I LastRead 0 FirstWrite -1}
		weights_load_15142 {Type I LastRead 0 FirstWrite -1}
		weights_load_15143 {Type I LastRead 0 FirstWrite -1}
		weights_load_15144 {Type I LastRead 0 FirstWrite -1}
		weights_load_15145 {Type I LastRead 0 FirstWrite -1}
		weights_load_15146 {Type I LastRead 0 FirstWrite -1}
		weights_load_15147 {Type I LastRead 0 FirstWrite -1}
		weights_load_15148 {Type I LastRead 0 FirstWrite -1}
		weights_load_15149 {Type I LastRead 0 FirstWrite -1}
		weights_load_15150 {Type I LastRead 0 FirstWrite -1}
		weights_load_15151 {Type I LastRead 0 FirstWrite -1}
		weights_load_15152 {Type I LastRead 0 FirstWrite -1}
		weights_load_15153 {Type I LastRead 0 FirstWrite -1}
		weights_load_15154 {Type I LastRead 0 FirstWrite -1}
		weights_load_15155 {Type I LastRead 0 FirstWrite -1}
		weights_load_15156 {Type I LastRead 0 FirstWrite -1}
		weights_load_15157 {Type I LastRead 0 FirstWrite -1}
		weights_load_15158 {Type I LastRead 0 FirstWrite -1}
		weights_load_15159 {Type I LastRead 0 FirstWrite -1}
		weights_load_15160 {Type I LastRead 0 FirstWrite -1}
		weights_load_15161 {Type I LastRead 0 FirstWrite -1}
		weights_load_15162 {Type I LastRead 0 FirstWrite -1}
		weights_load_15163 {Type I LastRead 0 FirstWrite -1}
		weights_load_15164 {Type I LastRead 0 FirstWrite -1}
		weights_load_15165 {Type I LastRead 0 FirstWrite -1}
		weights_load_15166 {Type I LastRead 0 FirstWrite -1}
		weights_load_15167 {Type I LastRead 0 FirstWrite -1}
		weights_load_15168 {Type I LastRead 0 FirstWrite -1}
		weights_load_15169 {Type I LastRead 0 FirstWrite -1}
		weights_load_15170 {Type I LastRead 0 FirstWrite -1}
		weights_load_15171 {Type I LastRead 0 FirstWrite -1}
		weights_load_15172 {Type I LastRead 0 FirstWrite -1}
		weights_load_15173 {Type I LastRead 0 FirstWrite -1}
		weights_load_15174 {Type I LastRead 0 FirstWrite -1}
		weights_load_15175 {Type I LastRead 0 FirstWrite -1}
		weights_load_15176 {Type I LastRead 0 FirstWrite -1}
		weights_load_15177 {Type I LastRead 0 FirstWrite -1}
		weights_load_15178 {Type I LastRead 0 FirstWrite -1}
		weights_load_15179 {Type I LastRead 0 FirstWrite -1}
		weights_load_15180 {Type I LastRead 0 FirstWrite -1}
		weights_load_15181 {Type I LastRead 0 FirstWrite -1}
		weights_load_15182 {Type I LastRead 0 FirstWrite -1}
		weights_load_15183 {Type I LastRead 0 FirstWrite -1}
		weights_load_15184 {Type I LastRead 0 FirstWrite -1}
		weights_load_15185 {Type I LastRead 0 FirstWrite -1}
		weights_load_15186 {Type I LastRead 0 FirstWrite -1}
		weights_load_15187 {Type I LastRead 0 FirstWrite -1}
		weights_load_15188 {Type I LastRead 0 FirstWrite -1}
		weights_load_15189 {Type I LastRead 0 FirstWrite -1}
		weights_load_15190 {Type I LastRead 0 FirstWrite -1}
		weights_load_15191 {Type I LastRead 0 FirstWrite -1}
		weights_load_15192 {Type I LastRead 0 FirstWrite -1}
		weights_load_15193 {Type I LastRead 0 FirstWrite -1}
		weights_load_15194 {Type I LastRead 0 FirstWrite -1}
		weights_load_15195 {Type I LastRead 0 FirstWrite -1}
		weights_load_15196 {Type I LastRead 0 FirstWrite -1}
		weights_load_15197 {Type I LastRead 0 FirstWrite -1}
		weights_load_15198 {Type I LastRead 0 FirstWrite -1}
		weights_load_15199 {Type I LastRead 0 FirstWrite -1}
		weights_load_15200 {Type I LastRead 0 FirstWrite -1}
		weights_load_15201 {Type I LastRead 0 FirstWrite -1}
		weights_load_15202 {Type I LastRead 0 FirstWrite -1}
		weights_load_15203 {Type I LastRead 0 FirstWrite -1}
		weights_load_15204 {Type I LastRead 0 FirstWrite -1}
		weights_load_15205 {Type I LastRead 0 FirstWrite -1}
		weights_load_15206 {Type I LastRead 0 FirstWrite -1}
		weights_load_15207 {Type I LastRead 0 FirstWrite -1}
		weights_load_15208 {Type I LastRead 0 FirstWrite -1}
		weights_load_15209 {Type I LastRead 0 FirstWrite -1}
		weights_load_15210 {Type I LastRead 0 FirstWrite -1}
		weights_load_15211 {Type I LastRead 0 FirstWrite -1}
		weights_load_15212 {Type I LastRead 0 FirstWrite -1}
		weights_load_15213 {Type I LastRead 0 FirstWrite -1}
		weights_load_15214 {Type I LastRead 0 FirstWrite -1}
		weights_load_15215 {Type I LastRead 0 FirstWrite -1}
		weights_load_15216 {Type I LastRead 0 FirstWrite -1}
		weights_load_15217 {Type I LastRead 0 FirstWrite -1}
		weights_load_15218 {Type I LastRead 0 FirstWrite -1}
		weights_load_15219 {Type I LastRead 0 FirstWrite -1}
		weights_load_15220 {Type I LastRead 0 FirstWrite -1}
		weights_load_15221 {Type I LastRead 0 FirstWrite -1}
		weights_load_15222 {Type I LastRead 0 FirstWrite -1}
		weights_load_15223 {Type I LastRead 0 FirstWrite -1}
		weights_load_15224 {Type I LastRead 0 FirstWrite -1}
		weights_load_15225 {Type I LastRead 0 FirstWrite -1}
		weights_load_15226 {Type I LastRead 0 FirstWrite -1}
		weights_load_15227 {Type I LastRead 0 FirstWrite -1}
		weights_load_15228 {Type I LastRead 0 FirstWrite -1}
		weights_load_15229 {Type I LastRead 0 FirstWrite -1}
		weights_load_15230 {Type I LastRead 0 FirstWrite -1}
		weights_load_15231 {Type I LastRead 0 FirstWrite -1}
		weights_load_15232 {Type I LastRead 0 FirstWrite -1}
		weights_load_15233 {Type I LastRead 0 FirstWrite -1}
		weights_load_15234 {Type I LastRead 0 FirstWrite -1}
		weights_load_15235 {Type I LastRead 0 FirstWrite -1}
		weights_load_15236 {Type I LastRead 0 FirstWrite -1}
		weights_load_15237 {Type I LastRead 0 FirstWrite -1}
		weights_load_15238 {Type I LastRead 0 FirstWrite -1}
		weights_load_15239 {Type I LastRead 0 FirstWrite -1}
		weights_load_15240 {Type I LastRead 0 FirstWrite -1}
		weights_load_15241 {Type I LastRead 0 FirstWrite -1}
		weights_load_15242 {Type I LastRead 0 FirstWrite -1}
		weights_load_15243 {Type I LastRead 0 FirstWrite -1}
		weights_load_15244 {Type I LastRead 0 FirstWrite -1}
		weights_load_15245 {Type I LastRead 0 FirstWrite -1}
		weights_load_15246 {Type I LastRead 0 FirstWrite -1}
		weights_load_15247 {Type I LastRead 0 FirstWrite -1}
		weights_load_15248 {Type I LastRead 0 FirstWrite -1}
		weights_load_15249 {Type I LastRead 0 FirstWrite -1}
		weights_load_15250 {Type I LastRead 0 FirstWrite -1}
		weights_load_15251 {Type I LastRead 0 FirstWrite -1}
		weights_load_15252 {Type I LastRead 0 FirstWrite -1}
		weights_load_15253 {Type I LastRead 0 FirstWrite -1}
		weights_load_15254 {Type I LastRead 0 FirstWrite -1}
		weights_load_15255 {Type I LastRead 0 FirstWrite -1}
		weights_load_15256 {Type I LastRead 0 FirstWrite -1}
		weights_load_15257 {Type I LastRead 0 FirstWrite -1}
		weights_load_15258 {Type I LastRead 0 FirstWrite -1}
		weights_load_15259 {Type I LastRead 0 FirstWrite -1}
		weights_load_15260 {Type I LastRead 0 FirstWrite -1}
		weights_load_15261 {Type I LastRead 0 FirstWrite -1}
		weights_load_15262 {Type I LastRead 0 FirstWrite -1}
		weights_load_15263 {Type I LastRead 0 FirstWrite -1}
		weights_load_15264 {Type I LastRead 0 FirstWrite -1}
		weights_load_15265 {Type I LastRead 0 FirstWrite -1}
		weights_load_15266 {Type I LastRead 0 FirstWrite -1}
		weights_load_15267 {Type I LastRead 0 FirstWrite -1}
		weights_load_15268 {Type I LastRead 0 FirstWrite -1}
		weights_load_15269 {Type I LastRead 0 FirstWrite -1}
		weights_load_15270 {Type I LastRead 0 FirstWrite -1}
		weights_load_15271 {Type I LastRead 0 FirstWrite -1}
		weights_load_15272 {Type I LastRead 0 FirstWrite -1}
		weights_load_15273 {Type I LastRead 0 FirstWrite -1}
		weights_load_15274 {Type I LastRead 0 FirstWrite -1}
		weights_load_15275 {Type I LastRead 0 FirstWrite -1}
		weights_load_15276 {Type I LastRead 0 FirstWrite -1}
		weights_load_15277 {Type I LastRead 0 FirstWrite -1}
		weights_load_15278 {Type I LastRead 0 FirstWrite -1}
		weights_load_15279 {Type I LastRead 0 FirstWrite -1}
		weights_load_15280 {Type I LastRead 0 FirstWrite -1}
		weights_load_15281 {Type I LastRead 0 FirstWrite -1}
		weights_load_15282 {Type I LastRead 0 FirstWrite -1}
		weights_load_15283 {Type I LastRead 0 FirstWrite -1}
		weights_load_15284 {Type I LastRead 0 FirstWrite -1}
		weights_load_15285 {Type I LastRead 0 FirstWrite -1}
		weights_load_15286 {Type I LastRead 0 FirstWrite -1}
		weights_load_15287 {Type I LastRead 0 FirstWrite -1}
		weights_load_15288 {Type I LastRead 0 FirstWrite -1}
		weights_load_15289 {Type I LastRead 0 FirstWrite -1}
		weights_load_15290 {Type I LastRead 0 FirstWrite -1}
		weights_load_15291 {Type I LastRead 0 FirstWrite -1}
		weights_load_15292 {Type I LastRead 0 FirstWrite -1}
		weights_load_15293 {Type I LastRead 0 FirstWrite -1}
		weights_load_15294 {Type I LastRead 0 FirstWrite -1}
		weights_load_15295 {Type I LastRead 0 FirstWrite -1}
		weights_load_15296 {Type I LastRead 0 FirstWrite -1}
		weights_load_15297 {Type I LastRead 0 FirstWrite -1}
		weights_load_15298 {Type I LastRead 0 FirstWrite -1}
		weights_load_15299 {Type I LastRead 0 FirstWrite -1}
		weights_load_15300 {Type I LastRead 0 FirstWrite -1}
		weights_load_15301 {Type I LastRead 0 FirstWrite -1}
		weights_load_15302 {Type I LastRead 0 FirstWrite -1}
		weights_load_15303 {Type I LastRead 0 FirstWrite -1}
		weights_load_15304 {Type I LastRead 0 FirstWrite -1}
		weights_load_15305 {Type I LastRead 0 FirstWrite -1}
		weights_load_15306 {Type I LastRead 0 FirstWrite -1}
		weights_load_15307 {Type I LastRead 0 FirstWrite -1}
		weights_load_15308 {Type I LastRead 0 FirstWrite -1}
		weights_load_15309 {Type I LastRead 0 FirstWrite -1}
		weights_load_15310 {Type I LastRead 0 FirstWrite -1}
		weights_load_15311 {Type I LastRead 0 FirstWrite -1}
		weights_load_15312 {Type I LastRead 0 FirstWrite -1}
		weights_load_15313 {Type I LastRead 0 FirstWrite -1}
		weights_load_15314 {Type I LastRead 0 FirstWrite -1}
		weights_load_15315 {Type I LastRead 0 FirstWrite -1}
		weights_load_15316 {Type I LastRead 0 FirstWrite -1}
		weights_load_15317 {Type I LastRead 0 FirstWrite -1}
		weights_load_15318 {Type I LastRead 0 FirstWrite -1}
		weights_load_15319 {Type I LastRead 0 FirstWrite -1}
		weights_load_15320 {Type I LastRead 0 FirstWrite -1}
		weights_load_15321 {Type I LastRead 0 FirstWrite -1}
		weights_load_15322 {Type I LastRead 0 FirstWrite -1}
		weights_load_15323 {Type I LastRead 0 FirstWrite -1}
		weights_load_15324 {Type I LastRead 0 FirstWrite -1}
		weights_load_15325 {Type I LastRead 0 FirstWrite -1}
		weights_load_15326 {Type I LastRead 0 FirstWrite -1}
		weights_load_15327 {Type I LastRead 0 FirstWrite -1}
		weights_load_15328 {Type I LastRead 0 FirstWrite -1}
		weights_load_15329 {Type I LastRead 0 FirstWrite -1}
		weights_load_15330 {Type I LastRead 0 FirstWrite -1}
		weights_load_15331 {Type I LastRead 0 FirstWrite -1}
		weights_load_15332 {Type I LastRead 0 FirstWrite -1}
		weights_load_15333 {Type I LastRead 0 FirstWrite -1}
		weights_load_15334 {Type I LastRead 0 FirstWrite -1}
		weights_load_15335 {Type I LastRead 0 FirstWrite -1}
		weights_load_15336 {Type I LastRead 0 FirstWrite -1}
		weights_load_15337 {Type I LastRead 0 FirstWrite -1}
		weights_load_15338 {Type I LastRead 0 FirstWrite -1}
		weights_load_15339 {Type I LastRead 0 FirstWrite -1}
		weights_load_15340 {Type I LastRead 0 FirstWrite -1}
		weights_load_15341 {Type I LastRead 0 FirstWrite -1}
		weights_load_15342 {Type I LastRead 0 FirstWrite -1}
		weights_load_15343 {Type I LastRead 0 FirstWrite -1}
		weights_load_15344 {Type I LastRead 0 FirstWrite -1}
		weights_load_15345 {Type I LastRead 0 FirstWrite -1}
		weights_load_15346 {Type I LastRead 0 FirstWrite -1}
		weights_load_15347 {Type I LastRead 0 FirstWrite -1}
		weights_load_15348 {Type I LastRead 0 FirstWrite -1}
		weights_load_15349 {Type I LastRead 0 FirstWrite -1}
		weights_load_15350 {Type I LastRead 0 FirstWrite -1}
		weights_load_15351 {Type I LastRead 0 FirstWrite -1}
		weights_load_15352 {Type I LastRead 0 FirstWrite -1}
		weights_load_15353 {Type I LastRead 0 FirstWrite -1}
		weights_load_15354 {Type I LastRead 0 FirstWrite -1}
		weights_load_15355 {Type I LastRead 0 FirstWrite -1}
		weights_load_15356 {Type I LastRead 0 FirstWrite -1}
		weights_load_15357 {Type I LastRead 0 FirstWrite -1}
		weights_load_15358 {Type I LastRead 0 FirstWrite -1}
		weights_load_15359 {Type I LastRead 0 FirstWrite -1}
		weights_load_15360 {Type I LastRead 0 FirstWrite -1}
		weights_load_15361 {Type I LastRead 0 FirstWrite -1}
		weights_load_15362 {Type I LastRead 0 FirstWrite -1}
		weights_load_15363 {Type I LastRead 0 FirstWrite -1}
		weights_load_15364 {Type I LastRead 0 FirstWrite -1}
		weights_load_15365 {Type I LastRead 0 FirstWrite -1}
		weights_load_15366 {Type I LastRead 0 FirstWrite -1}
		weights_load_15367 {Type I LastRead 0 FirstWrite -1}
		weights_load_15368 {Type I LastRead 0 FirstWrite -1}
		weights_load_15369 {Type I LastRead 0 FirstWrite -1}
		weights_load_15370 {Type I LastRead 0 FirstWrite -1}
		weights_load_15371 {Type I LastRead 0 FirstWrite -1}
		weights_load_15372 {Type I LastRead 0 FirstWrite -1}
		weights_load_15373 {Type I LastRead 0 FirstWrite -1}
		weights_load_15374 {Type I LastRead 0 FirstWrite -1}
		weights_load_15375 {Type I LastRead 0 FirstWrite -1}
		weights_load_15376 {Type I LastRead 0 FirstWrite -1}
		weights_load_15377 {Type I LastRead 0 FirstWrite -1}
		weights_load_15378 {Type I LastRead 0 FirstWrite -1}
		weights_load_15379 {Type I LastRead 0 FirstWrite -1}
		weights_load_15380 {Type I LastRead 0 FirstWrite -1}
		weights_load_15381 {Type I LastRead 0 FirstWrite -1}
		weights_load_15382 {Type I LastRead 0 FirstWrite -1}
		weights_load_15383 {Type I LastRead 0 FirstWrite -1}
		weights_load_15384 {Type I LastRead 0 FirstWrite -1}
		weights_load_15385 {Type I LastRead 0 FirstWrite -1}
		weights_load_15386 {Type I LastRead 0 FirstWrite -1}
		weights_load_15387 {Type I LastRead 0 FirstWrite -1}
		weights_load_15388 {Type I LastRead 0 FirstWrite -1}
		weights_load_15389 {Type I LastRead 0 FirstWrite -1}
		weights_load_15390 {Type I LastRead 0 FirstWrite -1}
		weights_load_15391 {Type I LastRead 0 FirstWrite -1}
		weights_load_15392 {Type I LastRead 0 FirstWrite -1}
		weights_load_15393 {Type I LastRead 0 FirstWrite -1}
		weights_load_15394 {Type I LastRead 0 FirstWrite -1}
		weights_load_15395 {Type I LastRead 0 FirstWrite -1}
		weights_load_15396 {Type I LastRead 0 FirstWrite -1}
		weights_load_15397 {Type I LastRead 0 FirstWrite -1}
		weights_load_15398 {Type I LastRead 0 FirstWrite -1}
		weights_load_15399 {Type I LastRead 0 FirstWrite -1}
		weights_load_15400 {Type I LastRead 0 FirstWrite -1}
		weights_load_15401 {Type I LastRead 0 FirstWrite -1}
		weights_load_15402 {Type I LastRead 0 FirstWrite -1}
		weights_load_15403 {Type I LastRead 0 FirstWrite -1}
		weights_load_15404 {Type I LastRead 0 FirstWrite -1}
		weights_load_15405 {Type I LastRead 0 FirstWrite -1}
		weights_load_15406 {Type I LastRead 0 FirstWrite -1}
		weights_load_15407 {Type I LastRead 0 FirstWrite -1}
		weights_load_15408 {Type I LastRead 0 FirstWrite -1}
		weights_load_15409 {Type I LastRead 0 FirstWrite -1}
		weights_load_15410 {Type I LastRead 0 FirstWrite -1}
		weights_load_15411 {Type I LastRead 0 FirstWrite -1}
		weights_load_15412 {Type I LastRead 0 FirstWrite -1}
		weights_load_15413 {Type I LastRead 0 FirstWrite -1}
		weights_load_15414 {Type I LastRead 0 FirstWrite -1}
		weights_load_15415 {Type I LastRead 0 FirstWrite -1}
		weights_load_15416 {Type I LastRead 0 FirstWrite -1}
		weights_load_15417 {Type I LastRead 0 FirstWrite -1}
		weights_load_15418 {Type I LastRead 0 FirstWrite -1}
		weights_load_15419 {Type I LastRead 0 FirstWrite -1}
		weights_load_15420 {Type I LastRead 0 FirstWrite -1}
		weights_load_15421 {Type I LastRead 0 FirstWrite -1}
		weights_load_15422 {Type I LastRead 0 FirstWrite -1}
		weights_load_15423 {Type I LastRead 0 FirstWrite -1}
		weights_load_15424 {Type I LastRead 0 FirstWrite -1}
		weights_load_15425 {Type I LastRead 0 FirstWrite -1}
		weights_load_15426 {Type I LastRead 0 FirstWrite -1}
		weights_load_15427 {Type I LastRead 0 FirstWrite -1}
		weights_load_15428 {Type I LastRead 0 FirstWrite -1}
		weights_load_15429 {Type I LastRead 0 FirstWrite -1}
		weights_load_15430 {Type I LastRead 0 FirstWrite -1}
		weights_load_15431 {Type I LastRead 0 FirstWrite -1}
		weights_load_15432 {Type I LastRead 0 FirstWrite -1}
		weights_load_15433 {Type I LastRead 0 FirstWrite -1}
		weights_load_15434 {Type I LastRead 0 FirstWrite -1}
		weights_load_15435 {Type I LastRead 0 FirstWrite -1}
		weights_load_15436 {Type I LastRead 0 FirstWrite -1}
		weights_load_15437 {Type I LastRead 0 FirstWrite -1}
		weights_load_15438 {Type I LastRead 0 FirstWrite -1}
		weights_load_15439 {Type I LastRead 0 FirstWrite -1}
		weights_load_15440 {Type I LastRead 0 FirstWrite -1}
		weights_load_15441 {Type I LastRead 0 FirstWrite -1}
		weights_load_15442 {Type I LastRead 0 FirstWrite -1}
		weights_load_15443 {Type I LastRead 0 FirstWrite -1}
		weights_load_15444 {Type I LastRead 0 FirstWrite -1}
		weights_load_15445 {Type I LastRead 0 FirstWrite -1}
		weights_load_15446 {Type I LastRead 0 FirstWrite -1}
		weights_load_15447 {Type I LastRead 0 FirstWrite -1}
		weights_load_15448 {Type I LastRead 0 FirstWrite -1}
		weights_load_15449 {Type I LastRead 0 FirstWrite -1}
		weights_load_15450 {Type I LastRead 0 FirstWrite -1}
		weights_load_15451 {Type I LastRead 0 FirstWrite -1}
		weights_load_15452 {Type I LastRead 0 FirstWrite -1}
		weights_load_15453 {Type I LastRead 0 FirstWrite -1}
		weights_load_15454 {Type I LastRead 0 FirstWrite -1}
		weights_load_15455 {Type I LastRead 0 FirstWrite -1}
		weights_load_15456 {Type I LastRead 0 FirstWrite -1}
		weights_load_15457 {Type I LastRead 0 FirstWrite -1}
		weights_load_15458 {Type I LastRead 0 FirstWrite -1}
		weights_load_15459 {Type I LastRead 0 FirstWrite -1}
		weights_load_15460 {Type I LastRead 0 FirstWrite -1}
		weights_load_15461 {Type I LastRead 0 FirstWrite -1}
		weights_load_15462 {Type I LastRead 0 FirstWrite -1}
		weights_load_15463 {Type I LastRead 0 FirstWrite -1}
		weights_load_15464 {Type I LastRead 0 FirstWrite -1}
		weights_load_15465 {Type I LastRead 0 FirstWrite -1}
		weights_load_15466 {Type I LastRead 0 FirstWrite -1}
		weights_load_15467 {Type I LastRead 0 FirstWrite -1}
		weights_load_15468 {Type I LastRead 0 FirstWrite -1}
		weights_load_15469 {Type I LastRead 0 FirstWrite -1}
		weights_load_15470 {Type I LastRead 0 FirstWrite -1}
		weights_load_15471 {Type I LastRead 0 FirstWrite -1}
		weights_load_15472 {Type I LastRead 0 FirstWrite -1}
		weights_load_15473 {Type I LastRead 0 FirstWrite -1}
		weights_load_15474 {Type I LastRead 0 FirstWrite -1}
		weights_load_15475 {Type I LastRead 0 FirstWrite -1}
		weights_load_15476 {Type I LastRead 0 FirstWrite -1}
		weights_load_15477 {Type I LastRead 0 FirstWrite -1}
		weights_load_15478 {Type I LastRead 0 FirstWrite -1}
		weights_load_15479 {Type I LastRead 0 FirstWrite -1}
		weights_load_15480 {Type I LastRead 0 FirstWrite -1}
		weights_load_15481 {Type I LastRead 0 FirstWrite -1}
		weights_load_15482 {Type I LastRead 0 FirstWrite -1}
		weights_load_15483 {Type I LastRead 0 FirstWrite -1}
		weights_load_15484 {Type I LastRead 0 FirstWrite -1}
		weights_load_15485 {Type I LastRead 0 FirstWrite -1}
		weights_load_15486 {Type I LastRead 0 FirstWrite -1}
		weights_load_15487 {Type I LastRead 0 FirstWrite -1}
		weights_load_15488 {Type I LastRead 0 FirstWrite -1}
		weights_load_15489 {Type I LastRead 0 FirstWrite -1}
		weights_load_15490 {Type I LastRead 0 FirstWrite -1}
		weights_load_15491 {Type I LastRead 0 FirstWrite -1}
		weights_load_15492 {Type I LastRead 0 FirstWrite -1}
		weights_load_15493 {Type I LastRead 0 FirstWrite -1}
		weights_load_15494 {Type I LastRead 0 FirstWrite -1}
		weights_load_15495 {Type I LastRead 0 FirstWrite -1}
		weights_load_15496 {Type I LastRead 0 FirstWrite -1}
		weights_load_15497 {Type I LastRead 0 FirstWrite -1}
		weights_load_15498 {Type I LastRead 0 FirstWrite -1}
		weights_load_15499 {Type I LastRead 0 FirstWrite -1}
		weights_load_15500 {Type I LastRead 0 FirstWrite -1}
		weights_load_15501 {Type I LastRead 0 FirstWrite -1}
		weights_load_15502 {Type I LastRead 0 FirstWrite -1}
		weights_load_15503 {Type I LastRead 0 FirstWrite -1}
		weights_load_15504 {Type I LastRead 0 FirstWrite -1}
		weights_load_15505 {Type I LastRead 0 FirstWrite -1}
		weights_load_15506 {Type I LastRead 0 FirstWrite -1}
		weights_load_15507 {Type I LastRead 0 FirstWrite -1}
		weights_load_15508 {Type I LastRead 0 FirstWrite -1}
		weights_load_15509 {Type I LastRead 0 FirstWrite -1}
		weights_load_15510 {Type I LastRead 0 FirstWrite -1}
		weights_load_15511 {Type I LastRead 0 FirstWrite -1}
		weights_load_15512 {Type I LastRead 0 FirstWrite -1}
		weights_load_15513 {Type I LastRead 0 FirstWrite -1}
		weights_load_15514 {Type I LastRead 0 FirstWrite -1}
		weights_load_15515 {Type I LastRead 0 FirstWrite -1}
		weights_load_15516 {Type I LastRead 0 FirstWrite -1}
		weights_load_15517 {Type I LastRead 0 FirstWrite -1}
		weights_load_15518 {Type I LastRead 0 FirstWrite -1}
		weights_load_15519 {Type I LastRead 0 FirstWrite -1}
		weights_load_15520 {Type I LastRead 0 FirstWrite -1}
		weights_load_15521 {Type I LastRead 0 FirstWrite -1}
		weights_load_15522 {Type I LastRead 0 FirstWrite -1}
		weights_load_15523 {Type I LastRead 0 FirstWrite -1}
		weights_load_15524 {Type I LastRead 0 FirstWrite -1}
		weights_load_15525 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_13 { ap_fifo {  { conv2d_64_padded_window_stream_13_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_13_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_13_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_13_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_13_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_13 { ap_fifo {  { in_channel_map_stream_13_din fifo_port_we 1 32 }  { in_channel_map_stream_13_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_13_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_13_full_n fifo_status 0 1 }  { in_channel_map_stream_13_write fifo_data 1 1 } } }
}
