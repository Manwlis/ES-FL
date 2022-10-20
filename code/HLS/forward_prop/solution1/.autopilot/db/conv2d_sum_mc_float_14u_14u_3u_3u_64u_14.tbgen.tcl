set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_14
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.14}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_14 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_14 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_14", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_14", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_14_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_14_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_14_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_14_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_14_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_14_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_14_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_14_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_14_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_14_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_14_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_14", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_14_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_14", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_14_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_14", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_14_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_14", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_14_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_14", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_14_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_14", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_14_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_14", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_14_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_14", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_14_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_14", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_14_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_14", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_14",
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
			{"Name" : "conv2d_64_padded_window_stream_14", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_14_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_14", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_14_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_14", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_14_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_14_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_14", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14376", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14377", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14378", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14379", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14380", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14381", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14382", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14383", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_14", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_14384", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14385", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14386", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14387", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14388", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14389", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14390", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14391", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14392", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14393", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14394", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14395", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14396", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14397", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14398", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14399", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14400", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14401", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14402", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14403", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14404", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14405", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14406", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14407", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14408", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14409", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14410", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14411", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14412", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14413", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14414", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14415", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14416", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14417", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14418", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14419", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14420", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14421", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14422", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14423", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14424", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14425", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14426", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14427", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14428", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14429", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14430", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14431", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14432", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14433", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14434", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14435", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14436", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14437", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14438", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14439", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14440", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14441", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14442", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14443", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14444", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14445", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14446", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14447", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14448", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14449", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14450", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14451", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14452", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14453", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14454", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14455", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14456", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14457", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14458", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14459", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14460", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14461", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14462", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14463", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14464", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14465", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14466", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14467", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14468", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14469", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14470", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14471", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14472", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14473", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14474", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14475", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14476", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14477", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14478", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14479", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14480", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14481", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14482", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14483", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14484", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14485", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14486", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14487", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14488", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14489", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14490", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14491", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14492", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14493", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14494", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14495", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14496", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14497", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14498", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14499", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14500", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14501", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14502", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14503", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14504", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14505", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14506", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14507", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14508", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14509", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14510", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14511", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14512", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14513", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14514", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14515", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14516", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14517", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14518", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14519", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14520", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14521", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14522", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14523", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14524", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14525", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14526", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14527", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14528", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14529", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14530", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14531", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14532", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14533", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14534", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14535", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14536", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14537", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14538", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14539", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14540", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14541", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14542", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14543", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14544", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14545", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14546", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14547", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14548", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14549", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14550", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14551", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14552", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14553", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14554", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14555", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14556", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14557", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14558", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14559", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14560", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14561", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14562", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14563", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14564", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14565", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14566", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14567", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14568", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14569", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14570", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14571", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14572", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14573", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14574", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14575", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14576", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14577", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14578", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14579", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14580", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14581", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14582", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14583", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14584", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14585", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14586", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14587", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14588", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14589", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14590", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14591", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14592", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14593", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14594", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14595", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14596", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14597", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14598", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14599", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14600", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14601", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14602", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14603", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14604", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14605", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14606", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14607", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14608", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14609", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14610", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14611", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14612", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14613", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14614", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14615", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14616", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14617", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14618", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14619", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14620", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14621", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14622", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14623", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14624", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14625", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14626", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14627", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14628", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14629", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14630", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14631", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14632", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14633", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14634", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14635", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14636", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14637", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14638", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14639", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14640", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14641", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14642", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14643", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14644", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14645", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14646", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14647", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14648", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14649", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14650", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14651", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14652", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14653", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14654", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14655", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14656", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14657", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14658", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14659", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14660", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14661", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14662", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14663", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14664", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14665", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14666", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14667", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14668", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14669", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14670", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14671", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14672", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14673", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14674", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14675", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14676", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14677", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14678", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14679", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14680", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14681", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14682", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14683", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14684", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14685", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14686", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14687", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14688", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14689", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14690", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14691", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14692", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14693", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14694", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14695", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14696", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14697", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14698", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14699", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14700", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14701", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14702", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14703", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14704", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14705", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14706", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14707", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14708", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14709", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14710", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14711", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14712", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14713", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14714", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14715", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14716", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14717", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14718", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14719", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14720", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14721", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14722", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14723", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14724", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14725", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14726", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14727", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14728", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14729", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14730", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14731", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14732", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14733", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14734", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14735", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14736", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14737", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14738", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14739", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14740", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14741", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14742", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14743", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14744", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14745", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14746", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14747", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14748", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14749", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14750", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14751", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14752", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14753", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14754", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14755", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14756", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14757", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14758", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14759", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14760", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14761", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14762", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14763", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14764", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14765", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14766", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14767", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14768", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14769", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14770", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14771", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14772", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14773", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14774", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14775", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14776", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14777", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14778", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14779", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14780", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14781", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14782", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14783", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14784", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14785", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14786", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14787", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14788", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14789", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14790", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14791", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14792", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14793", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14794", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14795", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14796", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14797", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14798", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14799", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14800", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14801", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14802", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14803", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14804", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14805", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14806", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14807", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14808", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14809", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14810", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14811", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14812", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14813", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14814", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14815", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14816", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14817", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14818", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14819", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14820", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14821", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14822", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14823", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14824", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14825", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14826", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14827", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14828", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14829", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14830", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14831", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14832", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14833", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14834", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14835", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14836", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14837", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14838", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14839", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14840", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14841", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14842", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14843", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14844", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14845", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14846", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14847", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14848", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14849", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14850", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14851", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14852", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14853", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14854", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14855", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14856", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14857", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14858", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14859", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14860", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14861", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14862", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14863", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14864", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14865", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14866", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14867", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14868", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14869", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14870", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14871", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14872", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14873", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14874", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14875", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14876", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14877", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14878", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14879", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14880", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14881", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14882", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14883", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14884", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14885", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14886", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14887", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14888", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14889", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14890", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14891", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14892", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14893", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14894", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14895", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14896", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14897", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14898", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14899", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14900", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14901", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14902", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14903", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14904", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14905", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14906", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14907", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14908", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14909", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14910", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14911", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14912", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14913", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14914", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14915", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14916", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14917", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14918", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14919", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14920", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14921", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14922", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14923", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14924", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14925", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14926", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14927", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14928", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14929", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14930", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14931", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14932", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14933", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14934", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14935", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14936", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14937", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14938", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14939", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14940", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14941", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14942", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14943", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14944", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14945", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14946", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14947", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14948", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14949", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14950", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_14_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U8928", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_14_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U8929", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_14_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U8930", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_14_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U8931", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_14_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U8932", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_14_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U8933", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_14_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U8934", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_14_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U8935", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_14_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U8936", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_14_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U8937", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_14_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U8938", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_14_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U8939", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_14_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U8940", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_14_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U8941", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_14_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U8942", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_14_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U8943", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_14_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U8944", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_14_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_14 {
		conv2d_64_padded_window_stream_14 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_14 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_14_Pipeline_inputs {
		conv2d_64_padded_window_stream_14 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_14376 {Type I LastRead 0 FirstWrite -1}
		weights_load_14377 {Type I LastRead 0 FirstWrite -1}
		weights_load_14378 {Type I LastRead 0 FirstWrite -1}
		weights_load_14379 {Type I LastRead 0 FirstWrite -1}
		weights_load_14380 {Type I LastRead 0 FirstWrite -1}
		weights_load_14381 {Type I LastRead 0 FirstWrite -1}
		weights_load_14382 {Type I LastRead 0 FirstWrite -1}
		weights_load_14383 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_14 {Type O LastRead -1 FirstWrite 16}
		weights_load_14384 {Type I LastRead 0 FirstWrite -1}
		weights_load_14385 {Type I LastRead 0 FirstWrite -1}
		weights_load_14386 {Type I LastRead 0 FirstWrite -1}
		weights_load_14387 {Type I LastRead 0 FirstWrite -1}
		weights_load_14388 {Type I LastRead 0 FirstWrite -1}
		weights_load_14389 {Type I LastRead 0 FirstWrite -1}
		weights_load_14390 {Type I LastRead 0 FirstWrite -1}
		weights_load_14391 {Type I LastRead 0 FirstWrite -1}
		weights_load_14392 {Type I LastRead 0 FirstWrite -1}
		weights_load_14393 {Type I LastRead 0 FirstWrite -1}
		weights_load_14394 {Type I LastRead 0 FirstWrite -1}
		weights_load_14395 {Type I LastRead 0 FirstWrite -1}
		weights_load_14396 {Type I LastRead 0 FirstWrite -1}
		weights_load_14397 {Type I LastRead 0 FirstWrite -1}
		weights_load_14398 {Type I LastRead 0 FirstWrite -1}
		weights_load_14399 {Type I LastRead 0 FirstWrite -1}
		weights_load_14400 {Type I LastRead 0 FirstWrite -1}
		weights_load_14401 {Type I LastRead 0 FirstWrite -1}
		weights_load_14402 {Type I LastRead 0 FirstWrite -1}
		weights_load_14403 {Type I LastRead 0 FirstWrite -1}
		weights_load_14404 {Type I LastRead 0 FirstWrite -1}
		weights_load_14405 {Type I LastRead 0 FirstWrite -1}
		weights_load_14406 {Type I LastRead 0 FirstWrite -1}
		weights_load_14407 {Type I LastRead 0 FirstWrite -1}
		weights_load_14408 {Type I LastRead 0 FirstWrite -1}
		weights_load_14409 {Type I LastRead 0 FirstWrite -1}
		weights_load_14410 {Type I LastRead 0 FirstWrite -1}
		weights_load_14411 {Type I LastRead 0 FirstWrite -1}
		weights_load_14412 {Type I LastRead 0 FirstWrite -1}
		weights_load_14413 {Type I LastRead 0 FirstWrite -1}
		weights_load_14414 {Type I LastRead 0 FirstWrite -1}
		weights_load_14415 {Type I LastRead 0 FirstWrite -1}
		weights_load_14416 {Type I LastRead 0 FirstWrite -1}
		weights_load_14417 {Type I LastRead 0 FirstWrite -1}
		weights_load_14418 {Type I LastRead 0 FirstWrite -1}
		weights_load_14419 {Type I LastRead 0 FirstWrite -1}
		weights_load_14420 {Type I LastRead 0 FirstWrite -1}
		weights_load_14421 {Type I LastRead 0 FirstWrite -1}
		weights_load_14422 {Type I LastRead 0 FirstWrite -1}
		weights_load_14423 {Type I LastRead 0 FirstWrite -1}
		weights_load_14424 {Type I LastRead 0 FirstWrite -1}
		weights_load_14425 {Type I LastRead 0 FirstWrite -1}
		weights_load_14426 {Type I LastRead 0 FirstWrite -1}
		weights_load_14427 {Type I LastRead 0 FirstWrite -1}
		weights_load_14428 {Type I LastRead 0 FirstWrite -1}
		weights_load_14429 {Type I LastRead 0 FirstWrite -1}
		weights_load_14430 {Type I LastRead 0 FirstWrite -1}
		weights_load_14431 {Type I LastRead 0 FirstWrite -1}
		weights_load_14432 {Type I LastRead 0 FirstWrite -1}
		weights_load_14433 {Type I LastRead 0 FirstWrite -1}
		weights_load_14434 {Type I LastRead 0 FirstWrite -1}
		weights_load_14435 {Type I LastRead 0 FirstWrite -1}
		weights_load_14436 {Type I LastRead 0 FirstWrite -1}
		weights_load_14437 {Type I LastRead 0 FirstWrite -1}
		weights_load_14438 {Type I LastRead 0 FirstWrite -1}
		weights_load_14439 {Type I LastRead 0 FirstWrite -1}
		weights_load_14440 {Type I LastRead 0 FirstWrite -1}
		weights_load_14441 {Type I LastRead 0 FirstWrite -1}
		weights_load_14442 {Type I LastRead 0 FirstWrite -1}
		weights_load_14443 {Type I LastRead 0 FirstWrite -1}
		weights_load_14444 {Type I LastRead 0 FirstWrite -1}
		weights_load_14445 {Type I LastRead 0 FirstWrite -1}
		weights_load_14446 {Type I LastRead 0 FirstWrite -1}
		weights_load_14447 {Type I LastRead 0 FirstWrite -1}
		weights_load_14448 {Type I LastRead 0 FirstWrite -1}
		weights_load_14449 {Type I LastRead 0 FirstWrite -1}
		weights_load_14450 {Type I LastRead 0 FirstWrite -1}
		weights_load_14451 {Type I LastRead 0 FirstWrite -1}
		weights_load_14452 {Type I LastRead 0 FirstWrite -1}
		weights_load_14453 {Type I LastRead 0 FirstWrite -1}
		weights_load_14454 {Type I LastRead 0 FirstWrite -1}
		weights_load_14455 {Type I LastRead 0 FirstWrite -1}
		weights_load_14456 {Type I LastRead 0 FirstWrite -1}
		weights_load_14457 {Type I LastRead 0 FirstWrite -1}
		weights_load_14458 {Type I LastRead 0 FirstWrite -1}
		weights_load_14459 {Type I LastRead 0 FirstWrite -1}
		weights_load_14460 {Type I LastRead 0 FirstWrite -1}
		weights_load_14461 {Type I LastRead 0 FirstWrite -1}
		weights_load_14462 {Type I LastRead 0 FirstWrite -1}
		weights_load_14463 {Type I LastRead 0 FirstWrite -1}
		weights_load_14464 {Type I LastRead 0 FirstWrite -1}
		weights_load_14465 {Type I LastRead 0 FirstWrite -1}
		weights_load_14466 {Type I LastRead 0 FirstWrite -1}
		weights_load_14467 {Type I LastRead 0 FirstWrite -1}
		weights_load_14468 {Type I LastRead 0 FirstWrite -1}
		weights_load_14469 {Type I LastRead 0 FirstWrite -1}
		weights_load_14470 {Type I LastRead 0 FirstWrite -1}
		weights_load_14471 {Type I LastRead 0 FirstWrite -1}
		weights_load_14472 {Type I LastRead 0 FirstWrite -1}
		weights_load_14473 {Type I LastRead 0 FirstWrite -1}
		weights_load_14474 {Type I LastRead 0 FirstWrite -1}
		weights_load_14475 {Type I LastRead 0 FirstWrite -1}
		weights_load_14476 {Type I LastRead 0 FirstWrite -1}
		weights_load_14477 {Type I LastRead 0 FirstWrite -1}
		weights_load_14478 {Type I LastRead 0 FirstWrite -1}
		weights_load_14479 {Type I LastRead 0 FirstWrite -1}
		weights_load_14480 {Type I LastRead 0 FirstWrite -1}
		weights_load_14481 {Type I LastRead 0 FirstWrite -1}
		weights_load_14482 {Type I LastRead 0 FirstWrite -1}
		weights_load_14483 {Type I LastRead 0 FirstWrite -1}
		weights_load_14484 {Type I LastRead 0 FirstWrite -1}
		weights_load_14485 {Type I LastRead 0 FirstWrite -1}
		weights_load_14486 {Type I LastRead 0 FirstWrite -1}
		weights_load_14487 {Type I LastRead 0 FirstWrite -1}
		weights_load_14488 {Type I LastRead 0 FirstWrite -1}
		weights_load_14489 {Type I LastRead 0 FirstWrite -1}
		weights_load_14490 {Type I LastRead 0 FirstWrite -1}
		weights_load_14491 {Type I LastRead 0 FirstWrite -1}
		weights_load_14492 {Type I LastRead 0 FirstWrite -1}
		weights_load_14493 {Type I LastRead 0 FirstWrite -1}
		weights_load_14494 {Type I LastRead 0 FirstWrite -1}
		weights_load_14495 {Type I LastRead 0 FirstWrite -1}
		weights_load_14496 {Type I LastRead 0 FirstWrite -1}
		weights_load_14497 {Type I LastRead 0 FirstWrite -1}
		weights_load_14498 {Type I LastRead 0 FirstWrite -1}
		weights_load_14499 {Type I LastRead 0 FirstWrite -1}
		weights_load_14500 {Type I LastRead 0 FirstWrite -1}
		weights_load_14501 {Type I LastRead 0 FirstWrite -1}
		weights_load_14502 {Type I LastRead 0 FirstWrite -1}
		weights_load_14503 {Type I LastRead 0 FirstWrite -1}
		weights_load_14504 {Type I LastRead 0 FirstWrite -1}
		weights_load_14505 {Type I LastRead 0 FirstWrite -1}
		weights_load_14506 {Type I LastRead 0 FirstWrite -1}
		weights_load_14507 {Type I LastRead 0 FirstWrite -1}
		weights_load_14508 {Type I LastRead 0 FirstWrite -1}
		weights_load_14509 {Type I LastRead 0 FirstWrite -1}
		weights_load_14510 {Type I LastRead 0 FirstWrite -1}
		weights_load_14511 {Type I LastRead 0 FirstWrite -1}
		weights_load_14512 {Type I LastRead 0 FirstWrite -1}
		weights_load_14513 {Type I LastRead 0 FirstWrite -1}
		weights_load_14514 {Type I LastRead 0 FirstWrite -1}
		weights_load_14515 {Type I LastRead 0 FirstWrite -1}
		weights_load_14516 {Type I LastRead 0 FirstWrite -1}
		weights_load_14517 {Type I LastRead 0 FirstWrite -1}
		weights_load_14518 {Type I LastRead 0 FirstWrite -1}
		weights_load_14519 {Type I LastRead 0 FirstWrite -1}
		weights_load_14520 {Type I LastRead 0 FirstWrite -1}
		weights_load_14521 {Type I LastRead 0 FirstWrite -1}
		weights_load_14522 {Type I LastRead 0 FirstWrite -1}
		weights_load_14523 {Type I LastRead 0 FirstWrite -1}
		weights_load_14524 {Type I LastRead 0 FirstWrite -1}
		weights_load_14525 {Type I LastRead 0 FirstWrite -1}
		weights_load_14526 {Type I LastRead 0 FirstWrite -1}
		weights_load_14527 {Type I LastRead 0 FirstWrite -1}
		weights_load_14528 {Type I LastRead 0 FirstWrite -1}
		weights_load_14529 {Type I LastRead 0 FirstWrite -1}
		weights_load_14530 {Type I LastRead 0 FirstWrite -1}
		weights_load_14531 {Type I LastRead 0 FirstWrite -1}
		weights_load_14532 {Type I LastRead 0 FirstWrite -1}
		weights_load_14533 {Type I LastRead 0 FirstWrite -1}
		weights_load_14534 {Type I LastRead 0 FirstWrite -1}
		weights_load_14535 {Type I LastRead 0 FirstWrite -1}
		weights_load_14536 {Type I LastRead 0 FirstWrite -1}
		weights_load_14537 {Type I LastRead 0 FirstWrite -1}
		weights_load_14538 {Type I LastRead 0 FirstWrite -1}
		weights_load_14539 {Type I LastRead 0 FirstWrite -1}
		weights_load_14540 {Type I LastRead 0 FirstWrite -1}
		weights_load_14541 {Type I LastRead 0 FirstWrite -1}
		weights_load_14542 {Type I LastRead 0 FirstWrite -1}
		weights_load_14543 {Type I LastRead 0 FirstWrite -1}
		weights_load_14544 {Type I LastRead 0 FirstWrite -1}
		weights_load_14545 {Type I LastRead 0 FirstWrite -1}
		weights_load_14546 {Type I LastRead 0 FirstWrite -1}
		weights_load_14547 {Type I LastRead 0 FirstWrite -1}
		weights_load_14548 {Type I LastRead 0 FirstWrite -1}
		weights_load_14549 {Type I LastRead 0 FirstWrite -1}
		weights_load_14550 {Type I LastRead 0 FirstWrite -1}
		weights_load_14551 {Type I LastRead 0 FirstWrite -1}
		weights_load_14552 {Type I LastRead 0 FirstWrite -1}
		weights_load_14553 {Type I LastRead 0 FirstWrite -1}
		weights_load_14554 {Type I LastRead 0 FirstWrite -1}
		weights_load_14555 {Type I LastRead 0 FirstWrite -1}
		weights_load_14556 {Type I LastRead 0 FirstWrite -1}
		weights_load_14557 {Type I LastRead 0 FirstWrite -1}
		weights_load_14558 {Type I LastRead 0 FirstWrite -1}
		weights_load_14559 {Type I LastRead 0 FirstWrite -1}
		weights_load_14560 {Type I LastRead 0 FirstWrite -1}
		weights_load_14561 {Type I LastRead 0 FirstWrite -1}
		weights_load_14562 {Type I LastRead 0 FirstWrite -1}
		weights_load_14563 {Type I LastRead 0 FirstWrite -1}
		weights_load_14564 {Type I LastRead 0 FirstWrite -1}
		weights_load_14565 {Type I LastRead 0 FirstWrite -1}
		weights_load_14566 {Type I LastRead 0 FirstWrite -1}
		weights_load_14567 {Type I LastRead 0 FirstWrite -1}
		weights_load_14568 {Type I LastRead 0 FirstWrite -1}
		weights_load_14569 {Type I LastRead 0 FirstWrite -1}
		weights_load_14570 {Type I LastRead 0 FirstWrite -1}
		weights_load_14571 {Type I LastRead 0 FirstWrite -1}
		weights_load_14572 {Type I LastRead 0 FirstWrite -1}
		weights_load_14573 {Type I LastRead 0 FirstWrite -1}
		weights_load_14574 {Type I LastRead 0 FirstWrite -1}
		weights_load_14575 {Type I LastRead 0 FirstWrite -1}
		weights_load_14576 {Type I LastRead 0 FirstWrite -1}
		weights_load_14577 {Type I LastRead 0 FirstWrite -1}
		weights_load_14578 {Type I LastRead 0 FirstWrite -1}
		weights_load_14579 {Type I LastRead 0 FirstWrite -1}
		weights_load_14580 {Type I LastRead 0 FirstWrite -1}
		weights_load_14581 {Type I LastRead 0 FirstWrite -1}
		weights_load_14582 {Type I LastRead 0 FirstWrite -1}
		weights_load_14583 {Type I LastRead 0 FirstWrite -1}
		weights_load_14584 {Type I LastRead 0 FirstWrite -1}
		weights_load_14585 {Type I LastRead 0 FirstWrite -1}
		weights_load_14586 {Type I LastRead 0 FirstWrite -1}
		weights_load_14587 {Type I LastRead 0 FirstWrite -1}
		weights_load_14588 {Type I LastRead 0 FirstWrite -1}
		weights_load_14589 {Type I LastRead 0 FirstWrite -1}
		weights_load_14590 {Type I LastRead 0 FirstWrite -1}
		weights_load_14591 {Type I LastRead 0 FirstWrite -1}
		weights_load_14592 {Type I LastRead 0 FirstWrite -1}
		weights_load_14593 {Type I LastRead 0 FirstWrite -1}
		weights_load_14594 {Type I LastRead 0 FirstWrite -1}
		weights_load_14595 {Type I LastRead 0 FirstWrite -1}
		weights_load_14596 {Type I LastRead 0 FirstWrite -1}
		weights_load_14597 {Type I LastRead 0 FirstWrite -1}
		weights_load_14598 {Type I LastRead 0 FirstWrite -1}
		weights_load_14599 {Type I LastRead 0 FirstWrite -1}
		weights_load_14600 {Type I LastRead 0 FirstWrite -1}
		weights_load_14601 {Type I LastRead 0 FirstWrite -1}
		weights_load_14602 {Type I LastRead 0 FirstWrite -1}
		weights_load_14603 {Type I LastRead 0 FirstWrite -1}
		weights_load_14604 {Type I LastRead 0 FirstWrite -1}
		weights_load_14605 {Type I LastRead 0 FirstWrite -1}
		weights_load_14606 {Type I LastRead 0 FirstWrite -1}
		weights_load_14607 {Type I LastRead 0 FirstWrite -1}
		weights_load_14608 {Type I LastRead 0 FirstWrite -1}
		weights_load_14609 {Type I LastRead 0 FirstWrite -1}
		weights_load_14610 {Type I LastRead 0 FirstWrite -1}
		weights_load_14611 {Type I LastRead 0 FirstWrite -1}
		weights_load_14612 {Type I LastRead 0 FirstWrite -1}
		weights_load_14613 {Type I LastRead 0 FirstWrite -1}
		weights_load_14614 {Type I LastRead 0 FirstWrite -1}
		weights_load_14615 {Type I LastRead 0 FirstWrite -1}
		weights_load_14616 {Type I LastRead 0 FirstWrite -1}
		weights_load_14617 {Type I LastRead 0 FirstWrite -1}
		weights_load_14618 {Type I LastRead 0 FirstWrite -1}
		weights_load_14619 {Type I LastRead 0 FirstWrite -1}
		weights_load_14620 {Type I LastRead 0 FirstWrite -1}
		weights_load_14621 {Type I LastRead 0 FirstWrite -1}
		weights_load_14622 {Type I LastRead 0 FirstWrite -1}
		weights_load_14623 {Type I LastRead 0 FirstWrite -1}
		weights_load_14624 {Type I LastRead 0 FirstWrite -1}
		weights_load_14625 {Type I LastRead 0 FirstWrite -1}
		weights_load_14626 {Type I LastRead 0 FirstWrite -1}
		weights_load_14627 {Type I LastRead 0 FirstWrite -1}
		weights_load_14628 {Type I LastRead 0 FirstWrite -1}
		weights_load_14629 {Type I LastRead 0 FirstWrite -1}
		weights_load_14630 {Type I LastRead 0 FirstWrite -1}
		weights_load_14631 {Type I LastRead 0 FirstWrite -1}
		weights_load_14632 {Type I LastRead 0 FirstWrite -1}
		weights_load_14633 {Type I LastRead 0 FirstWrite -1}
		weights_load_14634 {Type I LastRead 0 FirstWrite -1}
		weights_load_14635 {Type I LastRead 0 FirstWrite -1}
		weights_load_14636 {Type I LastRead 0 FirstWrite -1}
		weights_load_14637 {Type I LastRead 0 FirstWrite -1}
		weights_load_14638 {Type I LastRead 0 FirstWrite -1}
		weights_load_14639 {Type I LastRead 0 FirstWrite -1}
		weights_load_14640 {Type I LastRead 0 FirstWrite -1}
		weights_load_14641 {Type I LastRead 0 FirstWrite -1}
		weights_load_14642 {Type I LastRead 0 FirstWrite -1}
		weights_load_14643 {Type I LastRead 0 FirstWrite -1}
		weights_load_14644 {Type I LastRead 0 FirstWrite -1}
		weights_load_14645 {Type I LastRead 0 FirstWrite -1}
		weights_load_14646 {Type I LastRead 0 FirstWrite -1}
		weights_load_14647 {Type I LastRead 0 FirstWrite -1}
		weights_load_14648 {Type I LastRead 0 FirstWrite -1}
		weights_load_14649 {Type I LastRead 0 FirstWrite -1}
		weights_load_14650 {Type I LastRead 0 FirstWrite -1}
		weights_load_14651 {Type I LastRead 0 FirstWrite -1}
		weights_load_14652 {Type I LastRead 0 FirstWrite -1}
		weights_load_14653 {Type I LastRead 0 FirstWrite -1}
		weights_load_14654 {Type I LastRead 0 FirstWrite -1}
		weights_load_14655 {Type I LastRead 0 FirstWrite -1}
		weights_load_14656 {Type I LastRead 0 FirstWrite -1}
		weights_load_14657 {Type I LastRead 0 FirstWrite -1}
		weights_load_14658 {Type I LastRead 0 FirstWrite -1}
		weights_load_14659 {Type I LastRead 0 FirstWrite -1}
		weights_load_14660 {Type I LastRead 0 FirstWrite -1}
		weights_load_14661 {Type I LastRead 0 FirstWrite -1}
		weights_load_14662 {Type I LastRead 0 FirstWrite -1}
		weights_load_14663 {Type I LastRead 0 FirstWrite -1}
		weights_load_14664 {Type I LastRead 0 FirstWrite -1}
		weights_load_14665 {Type I LastRead 0 FirstWrite -1}
		weights_load_14666 {Type I LastRead 0 FirstWrite -1}
		weights_load_14667 {Type I LastRead 0 FirstWrite -1}
		weights_load_14668 {Type I LastRead 0 FirstWrite -1}
		weights_load_14669 {Type I LastRead 0 FirstWrite -1}
		weights_load_14670 {Type I LastRead 0 FirstWrite -1}
		weights_load_14671 {Type I LastRead 0 FirstWrite -1}
		weights_load_14672 {Type I LastRead 0 FirstWrite -1}
		weights_load_14673 {Type I LastRead 0 FirstWrite -1}
		weights_load_14674 {Type I LastRead 0 FirstWrite -1}
		weights_load_14675 {Type I LastRead 0 FirstWrite -1}
		weights_load_14676 {Type I LastRead 0 FirstWrite -1}
		weights_load_14677 {Type I LastRead 0 FirstWrite -1}
		weights_load_14678 {Type I LastRead 0 FirstWrite -1}
		weights_load_14679 {Type I LastRead 0 FirstWrite -1}
		weights_load_14680 {Type I LastRead 0 FirstWrite -1}
		weights_load_14681 {Type I LastRead 0 FirstWrite -1}
		weights_load_14682 {Type I LastRead 0 FirstWrite -1}
		weights_load_14683 {Type I LastRead 0 FirstWrite -1}
		weights_load_14684 {Type I LastRead 0 FirstWrite -1}
		weights_load_14685 {Type I LastRead 0 FirstWrite -1}
		weights_load_14686 {Type I LastRead 0 FirstWrite -1}
		weights_load_14687 {Type I LastRead 0 FirstWrite -1}
		weights_load_14688 {Type I LastRead 0 FirstWrite -1}
		weights_load_14689 {Type I LastRead 0 FirstWrite -1}
		weights_load_14690 {Type I LastRead 0 FirstWrite -1}
		weights_load_14691 {Type I LastRead 0 FirstWrite -1}
		weights_load_14692 {Type I LastRead 0 FirstWrite -1}
		weights_load_14693 {Type I LastRead 0 FirstWrite -1}
		weights_load_14694 {Type I LastRead 0 FirstWrite -1}
		weights_load_14695 {Type I LastRead 0 FirstWrite -1}
		weights_load_14696 {Type I LastRead 0 FirstWrite -1}
		weights_load_14697 {Type I LastRead 0 FirstWrite -1}
		weights_load_14698 {Type I LastRead 0 FirstWrite -1}
		weights_load_14699 {Type I LastRead 0 FirstWrite -1}
		weights_load_14700 {Type I LastRead 0 FirstWrite -1}
		weights_load_14701 {Type I LastRead 0 FirstWrite -1}
		weights_load_14702 {Type I LastRead 0 FirstWrite -1}
		weights_load_14703 {Type I LastRead 0 FirstWrite -1}
		weights_load_14704 {Type I LastRead 0 FirstWrite -1}
		weights_load_14705 {Type I LastRead 0 FirstWrite -1}
		weights_load_14706 {Type I LastRead 0 FirstWrite -1}
		weights_load_14707 {Type I LastRead 0 FirstWrite -1}
		weights_load_14708 {Type I LastRead 0 FirstWrite -1}
		weights_load_14709 {Type I LastRead 0 FirstWrite -1}
		weights_load_14710 {Type I LastRead 0 FirstWrite -1}
		weights_load_14711 {Type I LastRead 0 FirstWrite -1}
		weights_load_14712 {Type I LastRead 0 FirstWrite -1}
		weights_load_14713 {Type I LastRead 0 FirstWrite -1}
		weights_load_14714 {Type I LastRead 0 FirstWrite -1}
		weights_load_14715 {Type I LastRead 0 FirstWrite -1}
		weights_load_14716 {Type I LastRead 0 FirstWrite -1}
		weights_load_14717 {Type I LastRead 0 FirstWrite -1}
		weights_load_14718 {Type I LastRead 0 FirstWrite -1}
		weights_load_14719 {Type I LastRead 0 FirstWrite -1}
		weights_load_14720 {Type I LastRead 0 FirstWrite -1}
		weights_load_14721 {Type I LastRead 0 FirstWrite -1}
		weights_load_14722 {Type I LastRead 0 FirstWrite -1}
		weights_load_14723 {Type I LastRead 0 FirstWrite -1}
		weights_load_14724 {Type I LastRead 0 FirstWrite -1}
		weights_load_14725 {Type I LastRead 0 FirstWrite -1}
		weights_load_14726 {Type I LastRead 0 FirstWrite -1}
		weights_load_14727 {Type I LastRead 0 FirstWrite -1}
		weights_load_14728 {Type I LastRead 0 FirstWrite -1}
		weights_load_14729 {Type I LastRead 0 FirstWrite -1}
		weights_load_14730 {Type I LastRead 0 FirstWrite -1}
		weights_load_14731 {Type I LastRead 0 FirstWrite -1}
		weights_load_14732 {Type I LastRead 0 FirstWrite -1}
		weights_load_14733 {Type I LastRead 0 FirstWrite -1}
		weights_load_14734 {Type I LastRead 0 FirstWrite -1}
		weights_load_14735 {Type I LastRead 0 FirstWrite -1}
		weights_load_14736 {Type I LastRead 0 FirstWrite -1}
		weights_load_14737 {Type I LastRead 0 FirstWrite -1}
		weights_load_14738 {Type I LastRead 0 FirstWrite -1}
		weights_load_14739 {Type I LastRead 0 FirstWrite -1}
		weights_load_14740 {Type I LastRead 0 FirstWrite -1}
		weights_load_14741 {Type I LastRead 0 FirstWrite -1}
		weights_load_14742 {Type I LastRead 0 FirstWrite -1}
		weights_load_14743 {Type I LastRead 0 FirstWrite -1}
		weights_load_14744 {Type I LastRead 0 FirstWrite -1}
		weights_load_14745 {Type I LastRead 0 FirstWrite -1}
		weights_load_14746 {Type I LastRead 0 FirstWrite -1}
		weights_load_14747 {Type I LastRead 0 FirstWrite -1}
		weights_load_14748 {Type I LastRead 0 FirstWrite -1}
		weights_load_14749 {Type I LastRead 0 FirstWrite -1}
		weights_load_14750 {Type I LastRead 0 FirstWrite -1}
		weights_load_14751 {Type I LastRead 0 FirstWrite -1}
		weights_load_14752 {Type I LastRead 0 FirstWrite -1}
		weights_load_14753 {Type I LastRead 0 FirstWrite -1}
		weights_load_14754 {Type I LastRead 0 FirstWrite -1}
		weights_load_14755 {Type I LastRead 0 FirstWrite -1}
		weights_load_14756 {Type I LastRead 0 FirstWrite -1}
		weights_load_14757 {Type I LastRead 0 FirstWrite -1}
		weights_load_14758 {Type I LastRead 0 FirstWrite -1}
		weights_load_14759 {Type I LastRead 0 FirstWrite -1}
		weights_load_14760 {Type I LastRead 0 FirstWrite -1}
		weights_load_14761 {Type I LastRead 0 FirstWrite -1}
		weights_load_14762 {Type I LastRead 0 FirstWrite -1}
		weights_load_14763 {Type I LastRead 0 FirstWrite -1}
		weights_load_14764 {Type I LastRead 0 FirstWrite -1}
		weights_load_14765 {Type I LastRead 0 FirstWrite -1}
		weights_load_14766 {Type I LastRead 0 FirstWrite -1}
		weights_load_14767 {Type I LastRead 0 FirstWrite -1}
		weights_load_14768 {Type I LastRead 0 FirstWrite -1}
		weights_load_14769 {Type I LastRead 0 FirstWrite -1}
		weights_load_14770 {Type I LastRead 0 FirstWrite -1}
		weights_load_14771 {Type I LastRead 0 FirstWrite -1}
		weights_load_14772 {Type I LastRead 0 FirstWrite -1}
		weights_load_14773 {Type I LastRead 0 FirstWrite -1}
		weights_load_14774 {Type I LastRead 0 FirstWrite -1}
		weights_load_14775 {Type I LastRead 0 FirstWrite -1}
		weights_load_14776 {Type I LastRead 0 FirstWrite -1}
		weights_load_14777 {Type I LastRead 0 FirstWrite -1}
		weights_load_14778 {Type I LastRead 0 FirstWrite -1}
		weights_load_14779 {Type I LastRead 0 FirstWrite -1}
		weights_load_14780 {Type I LastRead 0 FirstWrite -1}
		weights_load_14781 {Type I LastRead 0 FirstWrite -1}
		weights_load_14782 {Type I LastRead 0 FirstWrite -1}
		weights_load_14783 {Type I LastRead 0 FirstWrite -1}
		weights_load_14784 {Type I LastRead 0 FirstWrite -1}
		weights_load_14785 {Type I LastRead 0 FirstWrite -1}
		weights_load_14786 {Type I LastRead 0 FirstWrite -1}
		weights_load_14787 {Type I LastRead 0 FirstWrite -1}
		weights_load_14788 {Type I LastRead 0 FirstWrite -1}
		weights_load_14789 {Type I LastRead 0 FirstWrite -1}
		weights_load_14790 {Type I LastRead 0 FirstWrite -1}
		weights_load_14791 {Type I LastRead 0 FirstWrite -1}
		weights_load_14792 {Type I LastRead 0 FirstWrite -1}
		weights_load_14793 {Type I LastRead 0 FirstWrite -1}
		weights_load_14794 {Type I LastRead 0 FirstWrite -1}
		weights_load_14795 {Type I LastRead 0 FirstWrite -1}
		weights_load_14796 {Type I LastRead 0 FirstWrite -1}
		weights_load_14797 {Type I LastRead 0 FirstWrite -1}
		weights_load_14798 {Type I LastRead 0 FirstWrite -1}
		weights_load_14799 {Type I LastRead 0 FirstWrite -1}
		weights_load_14800 {Type I LastRead 0 FirstWrite -1}
		weights_load_14801 {Type I LastRead 0 FirstWrite -1}
		weights_load_14802 {Type I LastRead 0 FirstWrite -1}
		weights_load_14803 {Type I LastRead 0 FirstWrite -1}
		weights_load_14804 {Type I LastRead 0 FirstWrite -1}
		weights_load_14805 {Type I LastRead 0 FirstWrite -1}
		weights_load_14806 {Type I LastRead 0 FirstWrite -1}
		weights_load_14807 {Type I LastRead 0 FirstWrite -1}
		weights_load_14808 {Type I LastRead 0 FirstWrite -1}
		weights_load_14809 {Type I LastRead 0 FirstWrite -1}
		weights_load_14810 {Type I LastRead 0 FirstWrite -1}
		weights_load_14811 {Type I LastRead 0 FirstWrite -1}
		weights_load_14812 {Type I LastRead 0 FirstWrite -1}
		weights_load_14813 {Type I LastRead 0 FirstWrite -1}
		weights_load_14814 {Type I LastRead 0 FirstWrite -1}
		weights_load_14815 {Type I LastRead 0 FirstWrite -1}
		weights_load_14816 {Type I LastRead 0 FirstWrite -1}
		weights_load_14817 {Type I LastRead 0 FirstWrite -1}
		weights_load_14818 {Type I LastRead 0 FirstWrite -1}
		weights_load_14819 {Type I LastRead 0 FirstWrite -1}
		weights_load_14820 {Type I LastRead 0 FirstWrite -1}
		weights_load_14821 {Type I LastRead 0 FirstWrite -1}
		weights_load_14822 {Type I LastRead 0 FirstWrite -1}
		weights_load_14823 {Type I LastRead 0 FirstWrite -1}
		weights_load_14824 {Type I LastRead 0 FirstWrite -1}
		weights_load_14825 {Type I LastRead 0 FirstWrite -1}
		weights_load_14826 {Type I LastRead 0 FirstWrite -1}
		weights_load_14827 {Type I LastRead 0 FirstWrite -1}
		weights_load_14828 {Type I LastRead 0 FirstWrite -1}
		weights_load_14829 {Type I LastRead 0 FirstWrite -1}
		weights_load_14830 {Type I LastRead 0 FirstWrite -1}
		weights_load_14831 {Type I LastRead 0 FirstWrite -1}
		weights_load_14832 {Type I LastRead 0 FirstWrite -1}
		weights_load_14833 {Type I LastRead 0 FirstWrite -1}
		weights_load_14834 {Type I LastRead 0 FirstWrite -1}
		weights_load_14835 {Type I LastRead 0 FirstWrite -1}
		weights_load_14836 {Type I LastRead 0 FirstWrite -1}
		weights_load_14837 {Type I LastRead 0 FirstWrite -1}
		weights_load_14838 {Type I LastRead 0 FirstWrite -1}
		weights_load_14839 {Type I LastRead 0 FirstWrite -1}
		weights_load_14840 {Type I LastRead 0 FirstWrite -1}
		weights_load_14841 {Type I LastRead 0 FirstWrite -1}
		weights_load_14842 {Type I LastRead 0 FirstWrite -1}
		weights_load_14843 {Type I LastRead 0 FirstWrite -1}
		weights_load_14844 {Type I LastRead 0 FirstWrite -1}
		weights_load_14845 {Type I LastRead 0 FirstWrite -1}
		weights_load_14846 {Type I LastRead 0 FirstWrite -1}
		weights_load_14847 {Type I LastRead 0 FirstWrite -1}
		weights_load_14848 {Type I LastRead 0 FirstWrite -1}
		weights_load_14849 {Type I LastRead 0 FirstWrite -1}
		weights_load_14850 {Type I LastRead 0 FirstWrite -1}
		weights_load_14851 {Type I LastRead 0 FirstWrite -1}
		weights_load_14852 {Type I LastRead 0 FirstWrite -1}
		weights_load_14853 {Type I LastRead 0 FirstWrite -1}
		weights_load_14854 {Type I LastRead 0 FirstWrite -1}
		weights_load_14855 {Type I LastRead 0 FirstWrite -1}
		weights_load_14856 {Type I LastRead 0 FirstWrite -1}
		weights_load_14857 {Type I LastRead 0 FirstWrite -1}
		weights_load_14858 {Type I LastRead 0 FirstWrite -1}
		weights_load_14859 {Type I LastRead 0 FirstWrite -1}
		weights_load_14860 {Type I LastRead 0 FirstWrite -1}
		weights_load_14861 {Type I LastRead 0 FirstWrite -1}
		weights_load_14862 {Type I LastRead 0 FirstWrite -1}
		weights_load_14863 {Type I LastRead 0 FirstWrite -1}
		weights_load_14864 {Type I LastRead 0 FirstWrite -1}
		weights_load_14865 {Type I LastRead 0 FirstWrite -1}
		weights_load_14866 {Type I LastRead 0 FirstWrite -1}
		weights_load_14867 {Type I LastRead 0 FirstWrite -1}
		weights_load_14868 {Type I LastRead 0 FirstWrite -1}
		weights_load_14869 {Type I LastRead 0 FirstWrite -1}
		weights_load_14870 {Type I LastRead 0 FirstWrite -1}
		weights_load_14871 {Type I LastRead 0 FirstWrite -1}
		weights_load_14872 {Type I LastRead 0 FirstWrite -1}
		weights_load_14873 {Type I LastRead 0 FirstWrite -1}
		weights_load_14874 {Type I LastRead 0 FirstWrite -1}
		weights_load_14875 {Type I LastRead 0 FirstWrite -1}
		weights_load_14876 {Type I LastRead 0 FirstWrite -1}
		weights_load_14877 {Type I LastRead 0 FirstWrite -1}
		weights_load_14878 {Type I LastRead 0 FirstWrite -1}
		weights_load_14879 {Type I LastRead 0 FirstWrite -1}
		weights_load_14880 {Type I LastRead 0 FirstWrite -1}
		weights_load_14881 {Type I LastRead 0 FirstWrite -1}
		weights_load_14882 {Type I LastRead 0 FirstWrite -1}
		weights_load_14883 {Type I LastRead 0 FirstWrite -1}
		weights_load_14884 {Type I LastRead 0 FirstWrite -1}
		weights_load_14885 {Type I LastRead 0 FirstWrite -1}
		weights_load_14886 {Type I LastRead 0 FirstWrite -1}
		weights_load_14887 {Type I LastRead 0 FirstWrite -1}
		weights_load_14888 {Type I LastRead 0 FirstWrite -1}
		weights_load_14889 {Type I LastRead 0 FirstWrite -1}
		weights_load_14890 {Type I LastRead 0 FirstWrite -1}
		weights_load_14891 {Type I LastRead 0 FirstWrite -1}
		weights_load_14892 {Type I LastRead 0 FirstWrite -1}
		weights_load_14893 {Type I LastRead 0 FirstWrite -1}
		weights_load_14894 {Type I LastRead 0 FirstWrite -1}
		weights_load_14895 {Type I LastRead 0 FirstWrite -1}
		weights_load_14896 {Type I LastRead 0 FirstWrite -1}
		weights_load_14897 {Type I LastRead 0 FirstWrite -1}
		weights_load_14898 {Type I LastRead 0 FirstWrite -1}
		weights_load_14899 {Type I LastRead 0 FirstWrite -1}
		weights_load_14900 {Type I LastRead 0 FirstWrite -1}
		weights_load_14901 {Type I LastRead 0 FirstWrite -1}
		weights_load_14902 {Type I LastRead 0 FirstWrite -1}
		weights_load_14903 {Type I LastRead 0 FirstWrite -1}
		weights_load_14904 {Type I LastRead 0 FirstWrite -1}
		weights_load_14905 {Type I LastRead 0 FirstWrite -1}
		weights_load_14906 {Type I LastRead 0 FirstWrite -1}
		weights_load_14907 {Type I LastRead 0 FirstWrite -1}
		weights_load_14908 {Type I LastRead 0 FirstWrite -1}
		weights_load_14909 {Type I LastRead 0 FirstWrite -1}
		weights_load_14910 {Type I LastRead 0 FirstWrite -1}
		weights_load_14911 {Type I LastRead 0 FirstWrite -1}
		weights_load_14912 {Type I LastRead 0 FirstWrite -1}
		weights_load_14913 {Type I LastRead 0 FirstWrite -1}
		weights_load_14914 {Type I LastRead 0 FirstWrite -1}
		weights_load_14915 {Type I LastRead 0 FirstWrite -1}
		weights_load_14916 {Type I LastRead 0 FirstWrite -1}
		weights_load_14917 {Type I LastRead 0 FirstWrite -1}
		weights_load_14918 {Type I LastRead 0 FirstWrite -1}
		weights_load_14919 {Type I LastRead 0 FirstWrite -1}
		weights_load_14920 {Type I LastRead 0 FirstWrite -1}
		weights_load_14921 {Type I LastRead 0 FirstWrite -1}
		weights_load_14922 {Type I LastRead 0 FirstWrite -1}
		weights_load_14923 {Type I LastRead 0 FirstWrite -1}
		weights_load_14924 {Type I LastRead 0 FirstWrite -1}
		weights_load_14925 {Type I LastRead 0 FirstWrite -1}
		weights_load_14926 {Type I LastRead 0 FirstWrite -1}
		weights_load_14927 {Type I LastRead 0 FirstWrite -1}
		weights_load_14928 {Type I LastRead 0 FirstWrite -1}
		weights_load_14929 {Type I LastRead 0 FirstWrite -1}
		weights_load_14930 {Type I LastRead 0 FirstWrite -1}
		weights_load_14931 {Type I LastRead 0 FirstWrite -1}
		weights_load_14932 {Type I LastRead 0 FirstWrite -1}
		weights_load_14933 {Type I LastRead 0 FirstWrite -1}
		weights_load_14934 {Type I LastRead 0 FirstWrite -1}
		weights_load_14935 {Type I LastRead 0 FirstWrite -1}
		weights_load_14936 {Type I LastRead 0 FirstWrite -1}
		weights_load_14937 {Type I LastRead 0 FirstWrite -1}
		weights_load_14938 {Type I LastRead 0 FirstWrite -1}
		weights_load_14939 {Type I LastRead 0 FirstWrite -1}
		weights_load_14940 {Type I LastRead 0 FirstWrite -1}
		weights_load_14941 {Type I LastRead 0 FirstWrite -1}
		weights_load_14942 {Type I LastRead 0 FirstWrite -1}
		weights_load_14943 {Type I LastRead 0 FirstWrite -1}
		weights_load_14944 {Type I LastRead 0 FirstWrite -1}
		weights_load_14945 {Type I LastRead 0 FirstWrite -1}
		weights_load_14946 {Type I LastRead 0 FirstWrite -1}
		weights_load_14947 {Type I LastRead 0 FirstWrite -1}
		weights_load_14948 {Type I LastRead 0 FirstWrite -1}
		weights_load_14949 {Type I LastRead 0 FirstWrite -1}
		weights_load_14950 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_14 { ap_fifo {  { conv2d_64_padded_window_stream_14_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_14_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_14_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_14_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_14_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_14 { ap_fifo {  { in_channel_map_stream_14_din fifo_port_we 1 32 }  { in_channel_map_stream_14_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_14_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_14_full_n fifo_status 0 1 }  { in_channel_map_stream_14_write fifo_data 1 1 } } }
}
