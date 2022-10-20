set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_20
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.20}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_20 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_20 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_20", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_20", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_20_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_20_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_20_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_20_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_20_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_20_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_20_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_20_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_20_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_20_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_20_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_20", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_20_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_20", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_20_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_20", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_20_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_20", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_20_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_20", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_20_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_20", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_20_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_20", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_20_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_20", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_20_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_20", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_20_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_20", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_20",
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
			{"Name" : "conv2d_64_padded_window_stream_20", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_20_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_20", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_20", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_20_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_20", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_20_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_20_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_20", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_20_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10351", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10352", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10353", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10354", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10355", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10356", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10357", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10358", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_20", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_20_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_10359", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10360", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10361", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10362", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10363", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10364", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10365", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10366", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10367", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10368", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10369", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10370", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10371", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10372", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10373", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10374", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10375", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10376", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10377", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10378", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10379", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10380", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10381", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10382", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10383", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10384", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10385", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10386", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10387", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10388", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10389", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10390", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10391", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10392", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10393", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10394", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10395", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10396", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10397", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10398", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10399", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10400", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10401", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10402", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10403", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10404", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10405", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10406", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10407", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10408", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10409", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10410", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10411", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10412", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10413", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10414", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10415", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10416", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10417", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10418", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10419", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10420", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10421", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10422", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10423", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10424", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10425", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10426", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10427", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10428", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10429", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10430", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10431", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10432", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10433", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10434", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10435", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10436", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10437", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10438", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10439", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10440", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10441", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10442", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10443", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10444", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10445", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10446", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10447", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10448", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10449", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10450", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10451", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10452", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10453", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10454", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10455", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10456", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10457", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10458", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10459", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10460", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10461", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10462", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10463", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10464", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10465", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10466", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10467", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10468", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10469", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10470", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10471", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10472", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10473", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10474", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10475", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10476", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10477", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10478", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10479", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10480", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10481", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10482", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10483", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10484", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10485", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10486", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10487", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10488", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10489", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10490", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10491", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10492", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10493", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10494", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10495", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10496", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10497", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10498", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10499", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10500", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10501", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10502", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10503", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10504", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10505", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10506", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10507", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10508", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10509", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10510", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10511", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10512", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10513", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10514", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10515", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10516", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10517", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10518", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10519", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10520", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10521", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10522", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10523", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10524", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10525", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10526", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10527", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10528", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10529", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10530", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10531", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10532", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10533", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10534", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10535", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10536", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10537", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10538", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10539", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10540", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10541", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10542", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10543", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10544", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10545", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10546", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10547", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10548", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10549", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10550", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10551", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10552", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10553", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10554", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10555", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10556", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10557", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10558", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10559", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10560", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10561", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10562", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10563", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10564", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10565", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10566", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10567", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10568", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10569", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10570", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10571", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10572", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10573", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10574", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10575", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10576", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10577", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10578", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10579", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10580", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10581", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10582", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10583", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10584", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10585", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10586", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10587", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10588", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10589", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10590", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10591", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10592", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10593", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10594", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10595", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10596", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10597", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10598", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10599", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10600", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10601", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10602", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10603", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10604", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10605", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10606", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10607", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10608", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10609", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10610", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10611", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10612", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10613", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10614", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10615", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10616", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10617", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10618", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10619", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10620", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10621", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10622", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10623", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10624", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10625", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10626", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10627", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10628", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10629", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10630", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10631", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10632", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10633", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10634", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10635", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10636", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10637", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10638", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10639", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10640", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10641", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10642", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10643", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10644", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10645", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10646", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10647", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10648", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10649", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10650", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10651", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10652", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10653", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10654", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10655", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10656", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10657", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10658", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10659", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10660", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10661", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10662", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10663", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10664", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10665", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10666", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10667", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10668", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10669", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10670", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10671", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10672", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10673", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10674", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10675", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10676", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10677", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10678", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10679", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10680", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10681", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10682", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10683", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10684", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10685", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10686", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10687", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10688", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10689", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10690", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10691", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10692", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10693", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10694", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10695", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10696", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10697", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10698", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10699", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10700", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10701", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10702", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10703", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10704", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10705", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10706", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10707", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10708", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10709", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10710", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10711", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10712", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10713", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10714", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10715", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10716", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10717", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10718", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10719", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10720", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10721", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10722", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10723", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10724", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10725", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10726", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10727", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10728", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10729", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10730", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10731", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10732", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10733", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10734", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10735", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10736", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10737", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10738", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10739", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10740", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10741", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10742", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10743", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10744", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10745", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10746", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10747", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10748", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10749", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10750", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10751", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10752", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10753", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10754", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10755", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10756", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10757", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10758", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10759", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10760", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10761", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10762", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10763", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10764", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10765", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10766", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10767", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10768", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10769", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10770", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10771", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10772", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10773", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10774", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10775", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10776", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10777", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10778", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10779", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10780", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10781", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10782", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10783", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10784", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10785", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10786", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10787", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10788", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10789", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10790", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10791", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10792", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10793", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10794", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10795", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10796", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10797", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10798", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10799", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10800", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10801", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10802", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10803", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10804", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10805", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10806", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10807", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10808", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10809", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10810", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10811", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10812", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10813", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10814", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10815", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10816", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10817", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10818", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10819", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10820", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10821", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10822", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10823", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10824", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10825", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10826", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10827", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10828", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10829", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10830", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10831", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10832", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10833", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10834", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10835", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10836", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10837", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10838", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10839", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10840", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10841", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10842", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10843", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10844", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10845", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10846", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10847", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10848", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10849", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10850", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10851", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10852", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10853", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10854", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10855", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10856", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10857", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10858", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10859", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10860", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10861", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10862", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10863", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10864", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10865", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10866", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10867", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10868", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10869", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10870", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10871", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10872", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10873", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10874", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10875", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10876", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10877", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10878", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10879", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10880", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10881", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10882", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10883", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10884", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10885", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10886", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10887", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10888", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10889", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10890", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10891", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10892", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10893", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10894", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10895", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10896", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10897", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10898", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10899", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10900", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10901", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10902", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10903", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10904", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10905", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10906", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10907", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10908", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10909", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10910", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10911", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10912", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10913", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10914", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10915", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10916", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10917", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10918", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10919", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10920", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10921", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10922", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10923", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10924", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10925", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_20_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U12516", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_20_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U12517", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_20_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U12518", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_20_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U12519", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_20_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U12520", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_20_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U12521", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_20_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U12522", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_20_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U12523", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_20_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U12524", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_20_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U12525", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_20_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U12526", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_20_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U12527", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_20_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U12528", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_20_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U12529", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_20_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U12530", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_20_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U12531", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_20_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U12532", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_20_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_20 {
		conv2d_64_padded_window_stream_20 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_20 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_20_Pipeline_inputs {
		conv2d_64_padded_window_stream_20 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_10351 {Type I LastRead 0 FirstWrite -1}
		weights_load_10352 {Type I LastRead 0 FirstWrite -1}
		weights_load_10353 {Type I LastRead 0 FirstWrite -1}
		weights_load_10354 {Type I LastRead 0 FirstWrite -1}
		weights_load_10355 {Type I LastRead 0 FirstWrite -1}
		weights_load_10356 {Type I LastRead 0 FirstWrite -1}
		weights_load_10357 {Type I LastRead 0 FirstWrite -1}
		weights_load_10358 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_20 {Type O LastRead -1 FirstWrite 16}
		weights_load_10359 {Type I LastRead 0 FirstWrite -1}
		weights_load_10360 {Type I LastRead 0 FirstWrite -1}
		weights_load_10361 {Type I LastRead 0 FirstWrite -1}
		weights_load_10362 {Type I LastRead 0 FirstWrite -1}
		weights_load_10363 {Type I LastRead 0 FirstWrite -1}
		weights_load_10364 {Type I LastRead 0 FirstWrite -1}
		weights_load_10365 {Type I LastRead 0 FirstWrite -1}
		weights_load_10366 {Type I LastRead 0 FirstWrite -1}
		weights_load_10367 {Type I LastRead 0 FirstWrite -1}
		weights_load_10368 {Type I LastRead 0 FirstWrite -1}
		weights_load_10369 {Type I LastRead 0 FirstWrite -1}
		weights_load_10370 {Type I LastRead 0 FirstWrite -1}
		weights_load_10371 {Type I LastRead 0 FirstWrite -1}
		weights_load_10372 {Type I LastRead 0 FirstWrite -1}
		weights_load_10373 {Type I LastRead 0 FirstWrite -1}
		weights_load_10374 {Type I LastRead 0 FirstWrite -1}
		weights_load_10375 {Type I LastRead 0 FirstWrite -1}
		weights_load_10376 {Type I LastRead 0 FirstWrite -1}
		weights_load_10377 {Type I LastRead 0 FirstWrite -1}
		weights_load_10378 {Type I LastRead 0 FirstWrite -1}
		weights_load_10379 {Type I LastRead 0 FirstWrite -1}
		weights_load_10380 {Type I LastRead 0 FirstWrite -1}
		weights_load_10381 {Type I LastRead 0 FirstWrite -1}
		weights_load_10382 {Type I LastRead 0 FirstWrite -1}
		weights_load_10383 {Type I LastRead 0 FirstWrite -1}
		weights_load_10384 {Type I LastRead 0 FirstWrite -1}
		weights_load_10385 {Type I LastRead 0 FirstWrite -1}
		weights_load_10386 {Type I LastRead 0 FirstWrite -1}
		weights_load_10387 {Type I LastRead 0 FirstWrite -1}
		weights_load_10388 {Type I LastRead 0 FirstWrite -1}
		weights_load_10389 {Type I LastRead 0 FirstWrite -1}
		weights_load_10390 {Type I LastRead 0 FirstWrite -1}
		weights_load_10391 {Type I LastRead 0 FirstWrite -1}
		weights_load_10392 {Type I LastRead 0 FirstWrite -1}
		weights_load_10393 {Type I LastRead 0 FirstWrite -1}
		weights_load_10394 {Type I LastRead 0 FirstWrite -1}
		weights_load_10395 {Type I LastRead 0 FirstWrite -1}
		weights_load_10396 {Type I LastRead 0 FirstWrite -1}
		weights_load_10397 {Type I LastRead 0 FirstWrite -1}
		weights_load_10398 {Type I LastRead 0 FirstWrite -1}
		weights_load_10399 {Type I LastRead 0 FirstWrite -1}
		weights_load_10400 {Type I LastRead 0 FirstWrite -1}
		weights_load_10401 {Type I LastRead 0 FirstWrite -1}
		weights_load_10402 {Type I LastRead 0 FirstWrite -1}
		weights_load_10403 {Type I LastRead 0 FirstWrite -1}
		weights_load_10404 {Type I LastRead 0 FirstWrite -1}
		weights_load_10405 {Type I LastRead 0 FirstWrite -1}
		weights_load_10406 {Type I LastRead 0 FirstWrite -1}
		weights_load_10407 {Type I LastRead 0 FirstWrite -1}
		weights_load_10408 {Type I LastRead 0 FirstWrite -1}
		weights_load_10409 {Type I LastRead 0 FirstWrite -1}
		weights_load_10410 {Type I LastRead 0 FirstWrite -1}
		weights_load_10411 {Type I LastRead 0 FirstWrite -1}
		weights_load_10412 {Type I LastRead 0 FirstWrite -1}
		weights_load_10413 {Type I LastRead 0 FirstWrite -1}
		weights_load_10414 {Type I LastRead 0 FirstWrite -1}
		weights_load_10415 {Type I LastRead 0 FirstWrite -1}
		weights_load_10416 {Type I LastRead 0 FirstWrite -1}
		weights_load_10417 {Type I LastRead 0 FirstWrite -1}
		weights_load_10418 {Type I LastRead 0 FirstWrite -1}
		weights_load_10419 {Type I LastRead 0 FirstWrite -1}
		weights_load_10420 {Type I LastRead 0 FirstWrite -1}
		weights_load_10421 {Type I LastRead 0 FirstWrite -1}
		weights_load_10422 {Type I LastRead 0 FirstWrite -1}
		weights_load_10423 {Type I LastRead 0 FirstWrite -1}
		weights_load_10424 {Type I LastRead 0 FirstWrite -1}
		weights_load_10425 {Type I LastRead 0 FirstWrite -1}
		weights_load_10426 {Type I LastRead 0 FirstWrite -1}
		weights_load_10427 {Type I LastRead 0 FirstWrite -1}
		weights_load_10428 {Type I LastRead 0 FirstWrite -1}
		weights_load_10429 {Type I LastRead 0 FirstWrite -1}
		weights_load_10430 {Type I LastRead 0 FirstWrite -1}
		weights_load_10431 {Type I LastRead 0 FirstWrite -1}
		weights_load_10432 {Type I LastRead 0 FirstWrite -1}
		weights_load_10433 {Type I LastRead 0 FirstWrite -1}
		weights_load_10434 {Type I LastRead 0 FirstWrite -1}
		weights_load_10435 {Type I LastRead 0 FirstWrite -1}
		weights_load_10436 {Type I LastRead 0 FirstWrite -1}
		weights_load_10437 {Type I LastRead 0 FirstWrite -1}
		weights_load_10438 {Type I LastRead 0 FirstWrite -1}
		weights_load_10439 {Type I LastRead 0 FirstWrite -1}
		weights_load_10440 {Type I LastRead 0 FirstWrite -1}
		weights_load_10441 {Type I LastRead 0 FirstWrite -1}
		weights_load_10442 {Type I LastRead 0 FirstWrite -1}
		weights_load_10443 {Type I LastRead 0 FirstWrite -1}
		weights_load_10444 {Type I LastRead 0 FirstWrite -1}
		weights_load_10445 {Type I LastRead 0 FirstWrite -1}
		weights_load_10446 {Type I LastRead 0 FirstWrite -1}
		weights_load_10447 {Type I LastRead 0 FirstWrite -1}
		weights_load_10448 {Type I LastRead 0 FirstWrite -1}
		weights_load_10449 {Type I LastRead 0 FirstWrite -1}
		weights_load_10450 {Type I LastRead 0 FirstWrite -1}
		weights_load_10451 {Type I LastRead 0 FirstWrite -1}
		weights_load_10452 {Type I LastRead 0 FirstWrite -1}
		weights_load_10453 {Type I LastRead 0 FirstWrite -1}
		weights_load_10454 {Type I LastRead 0 FirstWrite -1}
		weights_load_10455 {Type I LastRead 0 FirstWrite -1}
		weights_load_10456 {Type I LastRead 0 FirstWrite -1}
		weights_load_10457 {Type I LastRead 0 FirstWrite -1}
		weights_load_10458 {Type I LastRead 0 FirstWrite -1}
		weights_load_10459 {Type I LastRead 0 FirstWrite -1}
		weights_load_10460 {Type I LastRead 0 FirstWrite -1}
		weights_load_10461 {Type I LastRead 0 FirstWrite -1}
		weights_load_10462 {Type I LastRead 0 FirstWrite -1}
		weights_load_10463 {Type I LastRead 0 FirstWrite -1}
		weights_load_10464 {Type I LastRead 0 FirstWrite -1}
		weights_load_10465 {Type I LastRead 0 FirstWrite -1}
		weights_load_10466 {Type I LastRead 0 FirstWrite -1}
		weights_load_10467 {Type I LastRead 0 FirstWrite -1}
		weights_load_10468 {Type I LastRead 0 FirstWrite -1}
		weights_load_10469 {Type I LastRead 0 FirstWrite -1}
		weights_load_10470 {Type I LastRead 0 FirstWrite -1}
		weights_load_10471 {Type I LastRead 0 FirstWrite -1}
		weights_load_10472 {Type I LastRead 0 FirstWrite -1}
		weights_load_10473 {Type I LastRead 0 FirstWrite -1}
		weights_load_10474 {Type I LastRead 0 FirstWrite -1}
		weights_load_10475 {Type I LastRead 0 FirstWrite -1}
		weights_load_10476 {Type I LastRead 0 FirstWrite -1}
		weights_load_10477 {Type I LastRead 0 FirstWrite -1}
		weights_load_10478 {Type I LastRead 0 FirstWrite -1}
		weights_load_10479 {Type I LastRead 0 FirstWrite -1}
		weights_load_10480 {Type I LastRead 0 FirstWrite -1}
		weights_load_10481 {Type I LastRead 0 FirstWrite -1}
		weights_load_10482 {Type I LastRead 0 FirstWrite -1}
		weights_load_10483 {Type I LastRead 0 FirstWrite -1}
		weights_load_10484 {Type I LastRead 0 FirstWrite -1}
		weights_load_10485 {Type I LastRead 0 FirstWrite -1}
		weights_load_10486 {Type I LastRead 0 FirstWrite -1}
		weights_load_10487 {Type I LastRead 0 FirstWrite -1}
		weights_load_10488 {Type I LastRead 0 FirstWrite -1}
		weights_load_10489 {Type I LastRead 0 FirstWrite -1}
		weights_load_10490 {Type I LastRead 0 FirstWrite -1}
		weights_load_10491 {Type I LastRead 0 FirstWrite -1}
		weights_load_10492 {Type I LastRead 0 FirstWrite -1}
		weights_load_10493 {Type I LastRead 0 FirstWrite -1}
		weights_load_10494 {Type I LastRead 0 FirstWrite -1}
		weights_load_10495 {Type I LastRead 0 FirstWrite -1}
		weights_load_10496 {Type I LastRead 0 FirstWrite -1}
		weights_load_10497 {Type I LastRead 0 FirstWrite -1}
		weights_load_10498 {Type I LastRead 0 FirstWrite -1}
		weights_load_10499 {Type I LastRead 0 FirstWrite -1}
		weights_load_10500 {Type I LastRead 0 FirstWrite -1}
		weights_load_10501 {Type I LastRead 0 FirstWrite -1}
		weights_load_10502 {Type I LastRead 0 FirstWrite -1}
		weights_load_10503 {Type I LastRead 0 FirstWrite -1}
		weights_load_10504 {Type I LastRead 0 FirstWrite -1}
		weights_load_10505 {Type I LastRead 0 FirstWrite -1}
		weights_load_10506 {Type I LastRead 0 FirstWrite -1}
		weights_load_10507 {Type I LastRead 0 FirstWrite -1}
		weights_load_10508 {Type I LastRead 0 FirstWrite -1}
		weights_load_10509 {Type I LastRead 0 FirstWrite -1}
		weights_load_10510 {Type I LastRead 0 FirstWrite -1}
		weights_load_10511 {Type I LastRead 0 FirstWrite -1}
		weights_load_10512 {Type I LastRead 0 FirstWrite -1}
		weights_load_10513 {Type I LastRead 0 FirstWrite -1}
		weights_load_10514 {Type I LastRead 0 FirstWrite -1}
		weights_load_10515 {Type I LastRead 0 FirstWrite -1}
		weights_load_10516 {Type I LastRead 0 FirstWrite -1}
		weights_load_10517 {Type I LastRead 0 FirstWrite -1}
		weights_load_10518 {Type I LastRead 0 FirstWrite -1}
		weights_load_10519 {Type I LastRead 0 FirstWrite -1}
		weights_load_10520 {Type I LastRead 0 FirstWrite -1}
		weights_load_10521 {Type I LastRead 0 FirstWrite -1}
		weights_load_10522 {Type I LastRead 0 FirstWrite -1}
		weights_load_10523 {Type I LastRead 0 FirstWrite -1}
		weights_load_10524 {Type I LastRead 0 FirstWrite -1}
		weights_load_10525 {Type I LastRead 0 FirstWrite -1}
		weights_load_10526 {Type I LastRead 0 FirstWrite -1}
		weights_load_10527 {Type I LastRead 0 FirstWrite -1}
		weights_load_10528 {Type I LastRead 0 FirstWrite -1}
		weights_load_10529 {Type I LastRead 0 FirstWrite -1}
		weights_load_10530 {Type I LastRead 0 FirstWrite -1}
		weights_load_10531 {Type I LastRead 0 FirstWrite -1}
		weights_load_10532 {Type I LastRead 0 FirstWrite -1}
		weights_load_10533 {Type I LastRead 0 FirstWrite -1}
		weights_load_10534 {Type I LastRead 0 FirstWrite -1}
		weights_load_10535 {Type I LastRead 0 FirstWrite -1}
		weights_load_10536 {Type I LastRead 0 FirstWrite -1}
		weights_load_10537 {Type I LastRead 0 FirstWrite -1}
		weights_load_10538 {Type I LastRead 0 FirstWrite -1}
		weights_load_10539 {Type I LastRead 0 FirstWrite -1}
		weights_load_10540 {Type I LastRead 0 FirstWrite -1}
		weights_load_10541 {Type I LastRead 0 FirstWrite -1}
		weights_load_10542 {Type I LastRead 0 FirstWrite -1}
		weights_load_10543 {Type I LastRead 0 FirstWrite -1}
		weights_load_10544 {Type I LastRead 0 FirstWrite -1}
		weights_load_10545 {Type I LastRead 0 FirstWrite -1}
		weights_load_10546 {Type I LastRead 0 FirstWrite -1}
		weights_load_10547 {Type I LastRead 0 FirstWrite -1}
		weights_load_10548 {Type I LastRead 0 FirstWrite -1}
		weights_load_10549 {Type I LastRead 0 FirstWrite -1}
		weights_load_10550 {Type I LastRead 0 FirstWrite -1}
		weights_load_10551 {Type I LastRead 0 FirstWrite -1}
		weights_load_10552 {Type I LastRead 0 FirstWrite -1}
		weights_load_10553 {Type I LastRead 0 FirstWrite -1}
		weights_load_10554 {Type I LastRead 0 FirstWrite -1}
		weights_load_10555 {Type I LastRead 0 FirstWrite -1}
		weights_load_10556 {Type I LastRead 0 FirstWrite -1}
		weights_load_10557 {Type I LastRead 0 FirstWrite -1}
		weights_load_10558 {Type I LastRead 0 FirstWrite -1}
		weights_load_10559 {Type I LastRead 0 FirstWrite -1}
		weights_load_10560 {Type I LastRead 0 FirstWrite -1}
		weights_load_10561 {Type I LastRead 0 FirstWrite -1}
		weights_load_10562 {Type I LastRead 0 FirstWrite -1}
		weights_load_10563 {Type I LastRead 0 FirstWrite -1}
		weights_load_10564 {Type I LastRead 0 FirstWrite -1}
		weights_load_10565 {Type I LastRead 0 FirstWrite -1}
		weights_load_10566 {Type I LastRead 0 FirstWrite -1}
		weights_load_10567 {Type I LastRead 0 FirstWrite -1}
		weights_load_10568 {Type I LastRead 0 FirstWrite -1}
		weights_load_10569 {Type I LastRead 0 FirstWrite -1}
		weights_load_10570 {Type I LastRead 0 FirstWrite -1}
		weights_load_10571 {Type I LastRead 0 FirstWrite -1}
		weights_load_10572 {Type I LastRead 0 FirstWrite -1}
		weights_load_10573 {Type I LastRead 0 FirstWrite -1}
		weights_load_10574 {Type I LastRead 0 FirstWrite -1}
		weights_load_10575 {Type I LastRead 0 FirstWrite -1}
		weights_load_10576 {Type I LastRead 0 FirstWrite -1}
		weights_load_10577 {Type I LastRead 0 FirstWrite -1}
		weights_load_10578 {Type I LastRead 0 FirstWrite -1}
		weights_load_10579 {Type I LastRead 0 FirstWrite -1}
		weights_load_10580 {Type I LastRead 0 FirstWrite -1}
		weights_load_10581 {Type I LastRead 0 FirstWrite -1}
		weights_load_10582 {Type I LastRead 0 FirstWrite -1}
		weights_load_10583 {Type I LastRead 0 FirstWrite -1}
		weights_load_10584 {Type I LastRead 0 FirstWrite -1}
		weights_load_10585 {Type I LastRead 0 FirstWrite -1}
		weights_load_10586 {Type I LastRead 0 FirstWrite -1}
		weights_load_10587 {Type I LastRead 0 FirstWrite -1}
		weights_load_10588 {Type I LastRead 0 FirstWrite -1}
		weights_load_10589 {Type I LastRead 0 FirstWrite -1}
		weights_load_10590 {Type I LastRead 0 FirstWrite -1}
		weights_load_10591 {Type I LastRead 0 FirstWrite -1}
		weights_load_10592 {Type I LastRead 0 FirstWrite -1}
		weights_load_10593 {Type I LastRead 0 FirstWrite -1}
		weights_load_10594 {Type I LastRead 0 FirstWrite -1}
		weights_load_10595 {Type I LastRead 0 FirstWrite -1}
		weights_load_10596 {Type I LastRead 0 FirstWrite -1}
		weights_load_10597 {Type I LastRead 0 FirstWrite -1}
		weights_load_10598 {Type I LastRead 0 FirstWrite -1}
		weights_load_10599 {Type I LastRead 0 FirstWrite -1}
		weights_load_10600 {Type I LastRead 0 FirstWrite -1}
		weights_load_10601 {Type I LastRead 0 FirstWrite -1}
		weights_load_10602 {Type I LastRead 0 FirstWrite -1}
		weights_load_10603 {Type I LastRead 0 FirstWrite -1}
		weights_load_10604 {Type I LastRead 0 FirstWrite -1}
		weights_load_10605 {Type I LastRead 0 FirstWrite -1}
		weights_load_10606 {Type I LastRead 0 FirstWrite -1}
		weights_load_10607 {Type I LastRead 0 FirstWrite -1}
		weights_load_10608 {Type I LastRead 0 FirstWrite -1}
		weights_load_10609 {Type I LastRead 0 FirstWrite -1}
		weights_load_10610 {Type I LastRead 0 FirstWrite -1}
		weights_load_10611 {Type I LastRead 0 FirstWrite -1}
		weights_load_10612 {Type I LastRead 0 FirstWrite -1}
		weights_load_10613 {Type I LastRead 0 FirstWrite -1}
		weights_load_10614 {Type I LastRead 0 FirstWrite -1}
		weights_load_10615 {Type I LastRead 0 FirstWrite -1}
		weights_load_10616 {Type I LastRead 0 FirstWrite -1}
		weights_load_10617 {Type I LastRead 0 FirstWrite -1}
		weights_load_10618 {Type I LastRead 0 FirstWrite -1}
		weights_load_10619 {Type I LastRead 0 FirstWrite -1}
		weights_load_10620 {Type I LastRead 0 FirstWrite -1}
		weights_load_10621 {Type I LastRead 0 FirstWrite -1}
		weights_load_10622 {Type I LastRead 0 FirstWrite -1}
		weights_load_10623 {Type I LastRead 0 FirstWrite -1}
		weights_load_10624 {Type I LastRead 0 FirstWrite -1}
		weights_load_10625 {Type I LastRead 0 FirstWrite -1}
		weights_load_10626 {Type I LastRead 0 FirstWrite -1}
		weights_load_10627 {Type I LastRead 0 FirstWrite -1}
		weights_load_10628 {Type I LastRead 0 FirstWrite -1}
		weights_load_10629 {Type I LastRead 0 FirstWrite -1}
		weights_load_10630 {Type I LastRead 0 FirstWrite -1}
		weights_load_10631 {Type I LastRead 0 FirstWrite -1}
		weights_load_10632 {Type I LastRead 0 FirstWrite -1}
		weights_load_10633 {Type I LastRead 0 FirstWrite -1}
		weights_load_10634 {Type I LastRead 0 FirstWrite -1}
		weights_load_10635 {Type I LastRead 0 FirstWrite -1}
		weights_load_10636 {Type I LastRead 0 FirstWrite -1}
		weights_load_10637 {Type I LastRead 0 FirstWrite -1}
		weights_load_10638 {Type I LastRead 0 FirstWrite -1}
		weights_load_10639 {Type I LastRead 0 FirstWrite -1}
		weights_load_10640 {Type I LastRead 0 FirstWrite -1}
		weights_load_10641 {Type I LastRead 0 FirstWrite -1}
		weights_load_10642 {Type I LastRead 0 FirstWrite -1}
		weights_load_10643 {Type I LastRead 0 FirstWrite -1}
		weights_load_10644 {Type I LastRead 0 FirstWrite -1}
		weights_load_10645 {Type I LastRead 0 FirstWrite -1}
		weights_load_10646 {Type I LastRead 0 FirstWrite -1}
		weights_load_10647 {Type I LastRead 0 FirstWrite -1}
		weights_load_10648 {Type I LastRead 0 FirstWrite -1}
		weights_load_10649 {Type I LastRead 0 FirstWrite -1}
		weights_load_10650 {Type I LastRead 0 FirstWrite -1}
		weights_load_10651 {Type I LastRead 0 FirstWrite -1}
		weights_load_10652 {Type I LastRead 0 FirstWrite -1}
		weights_load_10653 {Type I LastRead 0 FirstWrite -1}
		weights_load_10654 {Type I LastRead 0 FirstWrite -1}
		weights_load_10655 {Type I LastRead 0 FirstWrite -1}
		weights_load_10656 {Type I LastRead 0 FirstWrite -1}
		weights_load_10657 {Type I LastRead 0 FirstWrite -1}
		weights_load_10658 {Type I LastRead 0 FirstWrite -1}
		weights_load_10659 {Type I LastRead 0 FirstWrite -1}
		weights_load_10660 {Type I LastRead 0 FirstWrite -1}
		weights_load_10661 {Type I LastRead 0 FirstWrite -1}
		weights_load_10662 {Type I LastRead 0 FirstWrite -1}
		weights_load_10663 {Type I LastRead 0 FirstWrite -1}
		weights_load_10664 {Type I LastRead 0 FirstWrite -1}
		weights_load_10665 {Type I LastRead 0 FirstWrite -1}
		weights_load_10666 {Type I LastRead 0 FirstWrite -1}
		weights_load_10667 {Type I LastRead 0 FirstWrite -1}
		weights_load_10668 {Type I LastRead 0 FirstWrite -1}
		weights_load_10669 {Type I LastRead 0 FirstWrite -1}
		weights_load_10670 {Type I LastRead 0 FirstWrite -1}
		weights_load_10671 {Type I LastRead 0 FirstWrite -1}
		weights_load_10672 {Type I LastRead 0 FirstWrite -1}
		weights_load_10673 {Type I LastRead 0 FirstWrite -1}
		weights_load_10674 {Type I LastRead 0 FirstWrite -1}
		weights_load_10675 {Type I LastRead 0 FirstWrite -1}
		weights_load_10676 {Type I LastRead 0 FirstWrite -1}
		weights_load_10677 {Type I LastRead 0 FirstWrite -1}
		weights_load_10678 {Type I LastRead 0 FirstWrite -1}
		weights_load_10679 {Type I LastRead 0 FirstWrite -1}
		weights_load_10680 {Type I LastRead 0 FirstWrite -1}
		weights_load_10681 {Type I LastRead 0 FirstWrite -1}
		weights_load_10682 {Type I LastRead 0 FirstWrite -1}
		weights_load_10683 {Type I LastRead 0 FirstWrite -1}
		weights_load_10684 {Type I LastRead 0 FirstWrite -1}
		weights_load_10685 {Type I LastRead 0 FirstWrite -1}
		weights_load_10686 {Type I LastRead 0 FirstWrite -1}
		weights_load_10687 {Type I LastRead 0 FirstWrite -1}
		weights_load_10688 {Type I LastRead 0 FirstWrite -1}
		weights_load_10689 {Type I LastRead 0 FirstWrite -1}
		weights_load_10690 {Type I LastRead 0 FirstWrite -1}
		weights_load_10691 {Type I LastRead 0 FirstWrite -1}
		weights_load_10692 {Type I LastRead 0 FirstWrite -1}
		weights_load_10693 {Type I LastRead 0 FirstWrite -1}
		weights_load_10694 {Type I LastRead 0 FirstWrite -1}
		weights_load_10695 {Type I LastRead 0 FirstWrite -1}
		weights_load_10696 {Type I LastRead 0 FirstWrite -1}
		weights_load_10697 {Type I LastRead 0 FirstWrite -1}
		weights_load_10698 {Type I LastRead 0 FirstWrite -1}
		weights_load_10699 {Type I LastRead 0 FirstWrite -1}
		weights_load_10700 {Type I LastRead 0 FirstWrite -1}
		weights_load_10701 {Type I LastRead 0 FirstWrite -1}
		weights_load_10702 {Type I LastRead 0 FirstWrite -1}
		weights_load_10703 {Type I LastRead 0 FirstWrite -1}
		weights_load_10704 {Type I LastRead 0 FirstWrite -1}
		weights_load_10705 {Type I LastRead 0 FirstWrite -1}
		weights_load_10706 {Type I LastRead 0 FirstWrite -1}
		weights_load_10707 {Type I LastRead 0 FirstWrite -1}
		weights_load_10708 {Type I LastRead 0 FirstWrite -1}
		weights_load_10709 {Type I LastRead 0 FirstWrite -1}
		weights_load_10710 {Type I LastRead 0 FirstWrite -1}
		weights_load_10711 {Type I LastRead 0 FirstWrite -1}
		weights_load_10712 {Type I LastRead 0 FirstWrite -1}
		weights_load_10713 {Type I LastRead 0 FirstWrite -1}
		weights_load_10714 {Type I LastRead 0 FirstWrite -1}
		weights_load_10715 {Type I LastRead 0 FirstWrite -1}
		weights_load_10716 {Type I LastRead 0 FirstWrite -1}
		weights_load_10717 {Type I LastRead 0 FirstWrite -1}
		weights_load_10718 {Type I LastRead 0 FirstWrite -1}
		weights_load_10719 {Type I LastRead 0 FirstWrite -1}
		weights_load_10720 {Type I LastRead 0 FirstWrite -1}
		weights_load_10721 {Type I LastRead 0 FirstWrite -1}
		weights_load_10722 {Type I LastRead 0 FirstWrite -1}
		weights_load_10723 {Type I LastRead 0 FirstWrite -1}
		weights_load_10724 {Type I LastRead 0 FirstWrite -1}
		weights_load_10725 {Type I LastRead 0 FirstWrite -1}
		weights_load_10726 {Type I LastRead 0 FirstWrite -1}
		weights_load_10727 {Type I LastRead 0 FirstWrite -1}
		weights_load_10728 {Type I LastRead 0 FirstWrite -1}
		weights_load_10729 {Type I LastRead 0 FirstWrite -1}
		weights_load_10730 {Type I LastRead 0 FirstWrite -1}
		weights_load_10731 {Type I LastRead 0 FirstWrite -1}
		weights_load_10732 {Type I LastRead 0 FirstWrite -1}
		weights_load_10733 {Type I LastRead 0 FirstWrite -1}
		weights_load_10734 {Type I LastRead 0 FirstWrite -1}
		weights_load_10735 {Type I LastRead 0 FirstWrite -1}
		weights_load_10736 {Type I LastRead 0 FirstWrite -1}
		weights_load_10737 {Type I LastRead 0 FirstWrite -1}
		weights_load_10738 {Type I LastRead 0 FirstWrite -1}
		weights_load_10739 {Type I LastRead 0 FirstWrite -1}
		weights_load_10740 {Type I LastRead 0 FirstWrite -1}
		weights_load_10741 {Type I LastRead 0 FirstWrite -1}
		weights_load_10742 {Type I LastRead 0 FirstWrite -1}
		weights_load_10743 {Type I LastRead 0 FirstWrite -1}
		weights_load_10744 {Type I LastRead 0 FirstWrite -1}
		weights_load_10745 {Type I LastRead 0 FirstWrite -1}
		weights_load_10746 {Type I LastRead 0 FirstWrite -1}
		weights_load_10747 {Type I LastRead 0 FirstWrite -1}
		weights_load_10748 {Type I LastRead 0 FirstWrite -1}
		weights_load_10749 {Type I LastRead 0 FirstWrite -1}
		weights_load_10750 {Type I LastRead 0 FirstWrite -1}
		weights_load_10751 {Type I LastRead 0 FirstWrite -1}
		weights_load_10752 {Type I LastRead 0 FirstWrite -1}
		weights_load_10753 {Type I LastRead 0 FirstWrite -1}
		weights_load_10754 {Type I LastRead 0 FirstWrite -1}
		weights_load_10755 {Type I LastRead 0 FirstWrite -1}
		weights_load_10756 {Type I LastRead 0 FirstWrite -1}
		weights_load_10757 {Type I LastRead 0 FirstWrite -1}
		weights_load_10758 {Type I LastRead 0 FirstWrite -1}
		weights_load_10759 {Type I LastRead 0 FirstWrite -1}
		weights_load_10760 {Type I LastRead 0 FirstWrite -1}
		weights_load_10761 {Type I LastRead 0 FirstWrite -1}
		weights_load_10762 {Type I LastRead 0 FirstWrite -1}
		weights_load_10763 {Type I LastRead 0 FirstWrite -1}
		weights_load_10764 {Type I LastRead 0 FirstWrite -1}
		weights_load_10765 {Type I LastRead 0 FirstWrite -1}
		weights_load_10766 {Type I LastRead 0 FirstWrite -1}
		weights_load_10767 {Type I LastRead 0 FirstWrite -1}
		weights_load_10768 {Type I LastRead 0 FirstWrite -1}
		weights_load_10769 {Type I LastRead 0 FirstWrite -1}
		weights_load_10770 {Type I LastRead 0 FirstWrite -1}
		weights_load_10771 {Type I LastRead 0 FirstWrite -1}
		weights_load_10772 {Type I LastRead 0 FirstWrite -1}
		weights_load_10773 {Type I LastRead 0 FirstWrite -1}
		weights_load_10774 {Type I LastRead 0 FirstWrite -1}
		weights_load_10775 {Type I LastRead 0 FirstWrite -1}
		weights_load_10776 {Type I LastRead 0 FirstWrite -1}
		weights_load_10777 {Type I LastRead 0 FirstWrite -1}
		weights_load_10778 {Type I LastRead 0 FirstWrite -1}
		weights_load_10779 {Type I LastRead 0 FirstWrite -1}
		weights_load_10780 {Type I LastRead 0 FirstWrite -1}
		weights_load_10781 {Type I LastRead 0 FirstWrite -1}
		weights_load_10782 {Type I LastRead 0 FirstWrite -1}
		weights_load_10783 {Type I LastRead 0 FirstWrite -1}
		weights_load_10784 {Type I LastRead 0 FirstWrite -1}
		weights_load_10785 {Type I LastRead 0 FirstWrite -1}
		weights_load_10786 {Type I LastRead 0 FirstWrite -1}
		weights_load_10787 {Type I LastRead 0 FirstWrite -1}
		weights_load_10788 {Type I LastRead 0 FirstWrite -1}
		weights_load_10789 {Type I LastRead 0 FirstWrite -1}
		weights_load_10790 {Type I LastRead 0 FirstWrite -1}
		weights_load_10791 {Type I LastRead 0 FirstWrite -1}
		weights_load_10792 {Type I LastRead 0 FirstWrite -1}
		weights_load_10793 {Type I LastRead 0 FirstWrite -1}
		weights_load_10794 {Type I LastRead 0 FirstWrite -1}
		weights_load_10795 {Type I LastRead 0 FirstWrite -1}
		weights_load_10796 {Type I LastRead 0 FirstWrite -1}
		weights_load_10797 {Type I LastRead 0 FirstWrite -1}
		weights_load_10798 {Type I LastRead 0 FirstWrite -1}
		weights_load_10799 {Type I LastRead 0 FirstWrite -1}
		weights_load_10800 {Type I LastRead 0 FirstWrite -1}
		weights_load_10801 {Type I LastRead 0 FirstWrite -1}
		weights_load_10802 {Type I LastRead 0 FirstWrite -1}
		weights_load_10803 {Type I LastRead 0 FirstWrite -1}
		weights_load_10804 {Type I LastRead 0 FirstWrite -1}
		weights_load_10805 {Type I LastRead 0 FirstWrite -1}
		weights_load_10806 {Type I LastRead 0 FirstWrite -1}
		weights_load_10807 {Type I LastRead 0 FirstWrite -1}
		weights_load_10808 {Type I LastRead 0 FirstWrite -1}
		weights_load_10809 {Type I LastRead 0 FirstWrite -1}
		weights_load_10810 {Type I LastRead 0 FirstWrite -1}
		weights_load_10811 {Type I LastRead 0 FirstWrite -1}
		weights_load_10812 {Type I LastRead 0 FirstWrite -1}
		weights_load_10813 {Type I LastRead 0 FirstWrite -1}
		weights_load_10814 {Type I LastRead 0 FirstWrite -1}
		weights_load_10815 {Type I LastRead 0 FirstWrite -1}
		weights_load_10816 {Type I LastRead 0 FirstWrite -1}
		weights_load_10817 {Type I LastRead 0 FirstWrite -1}
		weights_load_10818 {Type I LastRead 0 FirstWrite -1}
		weights_load_10819 {Type I LastRead 0 FirstWrite -1}
		weights_load_10820 {Type I LastRead 0 FirstWrite -1}
		weights_load_10821 {Type I LastRead 0 FirstWrite -1}
		weights_load_10822 {Type I LastRead 0 FirstWrite -1}
		weights_load_10823 {Type I LastRead 0 FirstWrite -1}
		weights_load_10824 {Type I LastRead 0 FirstWrite -1}
		weights_load_10825 {Type I LastRead 0 FirstWrite -1}
		weights_load_10826 {Type I LastRead 0 FirstWrite -1}
		weights_load_10827 {Type I LastRead 0 FirstWrite -1}
		weights_load_10828 {Type I LastRead 0 FirstWrite -1}
		weights_load_10829 {Type I LastRead 0 FirstWrite -1}
		weights_load_10830 {Type I LastRead 0 FirstWrite -1}
		weights_load_10831 {Type I LastRead 0 FirstWrite -1}
		weights_load_10832 {Type I LastRead 0 FirstWrite -1}
		weights_load_10833 {Type I LastRead 0 FirstWrite -1}
		weights_load_10834 {Type I LastRead 0 FirstWrite -1}
		weights_load_10835 {Type I LastRead 0 FirstWrite -1}
		weights_load_10836 {Type I LastRead 0 FirstWrite -1}
		weights_load_10837 {Type I LastRead 0 FirstWrite -1}
		weights_load_10838 {Type I LastRead 0 FirstWrite -1}
		weights_load_10839 {Type I LastRead 0 FirstWrite -1}
		weights_load_10840 {Type I LastRead 0 FirstWrite -1}
		weights_load_10841 {Type I LastRead 0 FirstWrite -1}
		weights_load_10842 {Type I LastRead 0 FirstWrite -1}
		weights_load_10843 {Type I LastRead 0 FirstWrite -1}
		weights_load_10844 {Type I LastRead 0 FirstWrite -1}
		weights_load_10845 {Type I LastRead 0 FirstWrite -1}
		weights_load_10846 {Type I LastRead 0 FirstWrite -1}
		weights_load_10847 {Type I LastRead 0 FirstWrite -1}
		weights_load_10848 {Type I LastRead 0 FirstWrite -1}
		weights_load_10849 {Type I LastRead 0 FirstWrite -1}
		weights_load_10850 {Type I LastRead 0 FirstWrite -1}
		weights_load_10851 {Type I LastRead 0 FirstWrite -1}
		weights_load_10852 {Type I LastRead 0 FirstWrite -1}
		weights_load_10853 {Type I LastRead 0 FirstWrite -1}
		weights_load_10854 {Type I LastRead 0 FirstWrite -1}
		weights_load_10855 {Type I LastRead 0 FirstWrite -1}
		weights_load_10856 {Type I LastRead 0 FirstWrite -1}
		weights_load_10857 {Type I LastRead 0 FirstWrite -1}
		weights_load_10858 {Type I LastRead 0 FirstWrite -1}
		weights_load_10859 {Type I LastRead 0 FirstWrite -1}
		weights_load_10860 {Type I LastRead 0 FirstWrite -1}
		weights_load_10861 {Type I LastRead 0 FirstWrite -1}
		weights_load_10862 {Type I LastRead 0 FirstWrite -1}
		weights_load_10863 {Type I LastRead 0 FirstWrite -1}
		weights_load_10864 {Type I LastRead 0 FirstWrite -1}
		weights_load_10865 {Type I LastRead 0 FirstWrite -1}
		weights_load_10866 {Type I LastRead 0 FirstWrite -1}
		weights_load_10867 {Type I LastRead 0 FirstWrite -1}
		weights_load_10868 {Type I LastRead 0 FirstWrite -1}
		weights_load_10869 {Type I LastRead 0 FirstWrite -1}
		weights_load_10870 {Type I LastRead 0 FirstWrite -1}
		weights_load_10871 {Type I LastRead 0 FirstWrite -1}
		weights_load_10872 {Type I LastRead 0 FirstWrite -1}
		weights_load_10873 {Type I LastRead 0 FirstWrite -1}
		weights_load_10874 {Type I LastRead 0 FirstWrite -1}
		weights_load_10875 {Type I LastRead 0 FirstWrite -1}
		weights_load_10876 {Type I LastRead 0 FirstWrite -1}
		weights_load_10877 {Type I LastRead 0 FirstWrite -1}
		weights_load_10878 {Type I LastRead 0 FirstWrite -1}
		weights_load_10879 {Type I LastRead 0 FirstWrite -1}
		weights_load_10880 {Type I LastRead 0 FirstWrite -1}
		weights_load_10881 {Type I LastRead 0 FirstWrite -1}
		weights_load_10882 {Type I LastRead 0 FirstWrite -1}
		weights_load_10883 {Type I LastRead 0 FirstWrite -1}
		weights_load_10884 {Type I LastRead 0 FirstWrite -1}
		weights_load_10885 {Type I LastRead 0 FirstWrite -1}
		weights_load_10886 {Type I LastRead 0 FirstWrite -1}
		weights_load_10887 {Type I LastRead 0 FirstWrite -1}
		weights_load_10888 {Type I LastRead 0 FirstWrite -1}
		weights_load_10889 {Type I LastRead 0 FirstWrite -1}
		weights_load_10890 {Type I LastRead 0 FirstWrite -1}
		weights_load_10891 {Type I LastRead 0 FirstWrite -1}
		weights_load_10892 {Type I LastRead 0 FirstWrite -1}
		weights_load_10893 {Type I LastRead 0 FirstWrite -1}
		weights_load_10894 {Type I LastRead 0 FirstWrite -1}
		weights_load_10895 {Type I LastRead 0 FirstWrite -1}
		weights_load_10896 {Type I LastRead 0 FirstWrite -1}
		weights_load_10897 {Type I LastRead 0 FirstWrite -1}
		weights_load_10898 {Type I LastRead 0 FirstWrite -1}
		weights_load_10899 {Type I LastRead 0 FirstWrite -1}
		weights_load_10900 {Type I LastRead 0 FirstWrite -1}
		weights_load_10901 {Type I LastRead 0 FirstWrite -1}
		weights_load_10902 {Type I LastRead 0 FirstWrite -1}
		weights_load_10903 {Type I LastRead 0 FirstWrite -1}
		weights_load_10904 {Type I LastRead 0 FirstWrite -1}
		weights_load_10905 {Type I LastRead 0 FirstWrite -1}
		weights_load_10906 {Type I LastRead 0 FirstWrite -1}
		weights_load_10907 {Type I LastRead 0 FirstWrite -1}
		weights_load_10908 {Type I LastRead 0 FirstWrite -1}
		weights_load_10909 {Type I LastRead 0 FirstWrite -1}
		weights_load_10910 {Type I LastRead 0 FirstWrite -1}
		weights_load_10911 {Type I LastRead 0 FirstWrite -1}
		weights_load_10912 {Type I LastRead 0 FirstWrite -1}
		weights_load_10913 {Type I LastRead 0 FirstWrite -1}
		weights_load_10914 {Type I LastRead 0 FirstWrite -1}
		weights_load_10915 {Type I LastRead 0 FirstWrite -1}
		weights_load_10916 {Type I LastRead 0 FirstWrite -1}
		weights_load_10917 {Type I LastRead 0 FirstWrite -1}
		weights_load_10918 {Type I LastRead 0 FirstWrite -1}
		weights_load_10919 {Type I LastRead 0 FirstWrite -1}
		weights_load_10920 {Type I LastRead 0 FirstWrite -1}
		weights_load_10921 {Type I LastRead 0 FirstWrite -1}
		weights_load_10922 {Type I LastRead 0 FirstWrite -1}
		weights_load_10923 {Type I LastRead 0 FirstWrite -1}
		weights_load_10924 {Type I LastRead 0 FirstWrite -1}
		weights_load_10925 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_20 { ap_fifo {  { conv2d_64_padded_window_stream_20_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_20_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_20_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_20_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_20_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_20 { ap_fifo {  { in_channel_map_stream_20_din fifo_port_we 1 32 }  { in_channel_map_stream_20_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_20_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_20_full_n fifo_status 0 1 }  { in_channel_map_stream_20_write fifo_data 1 1 } } }
}
