set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_29
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.29}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_29 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_29 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_29", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_29", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_29_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_29_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_29_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_29_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_29_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_29_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_29_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_29_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_29_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_29_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_29_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_29", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_29_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_29", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_29_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_29", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_29_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_29", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_29_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_29", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_29_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_29", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_29_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_29", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_29_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_29", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_29_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_29", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_29_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_29", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_29",
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
			{"Name" : "conv2d_64_padded_window_stream_29", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_29_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_29", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_29", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_29_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_29", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_29_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_29_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_29", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_29_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5176", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5177", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5178", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5179", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5180", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5181", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5182", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5183", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_29", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_29_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_5184", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5185", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5186", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5187", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5188", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5189", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5190", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5191", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5192", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5193", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5194", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5195", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5196", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5197", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5198", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5199", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5200", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5201", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5202", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5203", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5204", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5205", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5206", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5207", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5208", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5209", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5210", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5211", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5212", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5213", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5214", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5215", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5216", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5217", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5218", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5219", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5220", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5221", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5222", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5223", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5224", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5225", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5226", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5227", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5228", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5229", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5230", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5231", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5232", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5233", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5234", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5235", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5236", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5237", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5238", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5239", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5240", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5241", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5242", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5243", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5244", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5245", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5246", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5247", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5248", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5249", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5250", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5251", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5252", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5253", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5254", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5255", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5256", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5257", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5258", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5259", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5260", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5261", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5262", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5263", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5264", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5265", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5266", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5267", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5268", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5269", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5270", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5271", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5272", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5273", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5274", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5275", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5276", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5277", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5278", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5279", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5280", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5281", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5282", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5283", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5284", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5285", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5286", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5287", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5288", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5289", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5290", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5291", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5292", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5293", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5294", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5295", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5296", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5297", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5298", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5299", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5300", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5301", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5302", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5303", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5304", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5305", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5306", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5307", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5308", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5309", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5310", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5311", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5312", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5313", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5314", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5315", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5316", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5317", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5318", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5319", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5320", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5321", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5322", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5323", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5324", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5325", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5326", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5327", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5328", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5329", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5330", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5331", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5332", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5333", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5334", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5335", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5336", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5337", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5338", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5339", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5340", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5341", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5342", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5343", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5344", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5345", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5346", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5347", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5348", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5349", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5350", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5351", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5352", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5353", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5354", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5355", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5356", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5357", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5358", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5359", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5360", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5361", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5362", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5363", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5364", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5365", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5366", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5367", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5368", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5369", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5370", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5371", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5372", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5373", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5374", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5375", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5376", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5377", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5378", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5379", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5380", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5381", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5382", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5383", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5384", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5385", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5386", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5387", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5388", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5389", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5390", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5391", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5392", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5393", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5394", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5395", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5396", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5397", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5398", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5399", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5400", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5401", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5402", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5403", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5404", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5405", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5406", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5407", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5408", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5409", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5410", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5411", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5412", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5413", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5414", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5415", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5416", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5417", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5418", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5419", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5420", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5421", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5422", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5423", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5424", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5425", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5426", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5427", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5428", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5429", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5430", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5431", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5432", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5433", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5434", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5435", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5436", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5437", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5438", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5439", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5440", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5441", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5442", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5443", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5444", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5445", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5446", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5447", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5448", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5449", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5450", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5451", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5452", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5453", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5454", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5455", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5456", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5457", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5458", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5459", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5460", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5461", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5462", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5463", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5464", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5465", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5466", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5467", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5468", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5469", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5470", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5471", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5472", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5473", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5474", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5475", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5476", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5477", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5478", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5479", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5480", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5481", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5482", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5483", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5484", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5485", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5486", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5487", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5488", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5489", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5490", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5491", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5492", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5493", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5494", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5495", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5496", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5497", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5498", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5499", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5500", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5501", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5502", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5503", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5504", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5505", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5506", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5507", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5508", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5509", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5510", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5511", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5512", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5513", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5514", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5515", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5516", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5517", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5518", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5519", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5520", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5521", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5522", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5523", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5524", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5525", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5526", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5527", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5528", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5529", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5530", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5531", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5532", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5533", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5534", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5535", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5536", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5537", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5538", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5539", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5540", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5541", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5542", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5543", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5544", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5545", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5546", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5547", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5548", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5549", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5550", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5551", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5552", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5553", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5554", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5555", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5556", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5557", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5558", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5559", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5560", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5561", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5562", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5563", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5564", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5565", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5566", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5567", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5568", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5569", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5570", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5571", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5572", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5573", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5574", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5575", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5576", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5577", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5578", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5579", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5580", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5581", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5582", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5583", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5584", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5585", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5586", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5587", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5588", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5589", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5590", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5591", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5592", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5593", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5594", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5595", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5596", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5597", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5598", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5599", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5600", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5601", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5602", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5603", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5604", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5605", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5606", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5607", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5608", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5609", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5610", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5611", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5612", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5613", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5614", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5615", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5616", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5617", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5618", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5619", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5620", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5621", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5622", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5623", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5624", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5625", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5626", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5627", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5628", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5629", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5630", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5631", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5632", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5633", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5634", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5635", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5636", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5637", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5638", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5639", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5640", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5641", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5642", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5643", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5644", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5645", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5646", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5647", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5648", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5649", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5650", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5651", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5652", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5653", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5654", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5655", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5656", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5657", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5658", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5659", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5660", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5661", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5662", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5663", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5664", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5665", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5666", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5667", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5668", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5669", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5670", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5671", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5672", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5673", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5674", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5675", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5676", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5677", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5678", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5679", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5680", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5681", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5682", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5683", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5684", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5685", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5686", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5687", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5688", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5689", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5690", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5691", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5692", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5693", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5694", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5695", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5696", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5697", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5698", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5699", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5700", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5701", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5702", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5703", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5704", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5705", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5706", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5707", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5708", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5709", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5710", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5711", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5712", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5713", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5714", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5715", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5716", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5717", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5718", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5719", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5720", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5721", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5722", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5723", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5724", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5725", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5726", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5727", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5728", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5729", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5730", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5731", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5732", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5733", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5734", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5735", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5736", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5737", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5738", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5739", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5740", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5741", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5742", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5743", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5744", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5745", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5746", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5747", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5748", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5749", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5750", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_29_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U17898", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_29_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U17899", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_29_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U17900", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_29_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U17901", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_29_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U17902", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_29_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U17903", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_29_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U17904", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_29_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U17905", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_29_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U17906", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_29_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U17907", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_29_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U17908", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_29_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U17909", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_29_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U17910", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_29_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U17911", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_29_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U17912", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_29_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U17913", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_29_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U17914", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_29_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_29 {
		conv2d_64_padded_window_stream_29 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_29 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_29_Pipeline_inputs {
		conv2d_64_padded_window_stream_29 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_5176 {Type I LastRead 0 FirstWrite -1}
		weights_load_5177 {Type I LastRead 0 FirstWrite -1}
		weights_load_5178 {Type I LastRead 0 FirstWrite -1}
		weights_load_5179 {Type I LastRead 0 FirstWrite -1}
		weights_load_5180 {Type I LastRead 0 FirstWrite -1}
		weights_load_5181 {Type I LastRead 0 FirstWrite -1}
		weights_load_5182 {Type I LastRead 0 FirstWrite -1}
		weights_load_5183 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_29 {Type O LastRead -1 FirstWrite 16}
		weights_load_5184 {Type I LastRead 0 FirstWrite -1}
		weights_load_5185 {Type I LastRead 0 FirstWrite -1}
		weights_load_5186 {Type I LastRead 0 FirstWrite -1}
		weights_load_5187 {Type I LastRead 0 FirstWrite -1}
		weights_load_5188 {Type I LastRead 0 FirstWrite -1}
		weights_load_5189 {Type I LastRead 0 FirstWrite -1}
		weights_load_5190 {Type I LastRead 0 FirstWrite -1}
		weights_load_5191 {Type I LastRead 0 FirstWrite -1}
		weights_load_5192 {Type I LastRead 0 FirstWrite -1}
		weights_load_5193 {Type I LastRead 0 FirstWrite -1}
		weights_load_5194 {Type I LastRead 0 FirstWrite -1}
		weights_load_5195 {Type I LastRead 0 FirstWrite -1}
		weights_load_5196 {Type I LastRead 0 FirstWrite -1}
		weights_load_5197 {Type I LastRead 0 FirstWrite -1}
		weights_load_5198 {Type I LastRead 0 FirstWrite -1}
		weights_load_5199 {Type I LastRead 0 FirstWrite -1}
		weights_load_5200 {Type I LastRead 0 FirstWrite -1}
		weights_load_5201 {Type I LastRead 0 FirstWrite -1}
		weights_load_5202 {Type I LastRead 0 FirstWrite -1}
		weights_load_5203 {Type I LastRead 0 FirstWrite -1}
		weights_load_5204 {Type I LastRead 0 FirstWrite -1}
		weights_load_5205 {Type I LastRead 0 FirstWrite -1}
		weights_load_5206 {Type I LastRead 0 FirstWrite -1}
		weights_load_5207 {Type I LastRead 0 FirstWrite -1}
		weights_load_5208 {Type I LastRead 0 FirstWrite -1}
		weights_load_5209 {Type I LastRead 0 FirstWrite -1}
		weights_load_5210 {Type I LastRead 0 FirstWrite -1}
		weights_load_5211 {Type I LastRead 0 FirstWrite -1}
		weights_load_5212 {Type I LastRead 0 FirstWrite -1}
		weights_load_5213 {Type I LastRead 0 FirstWrite -1}
		weights_load_5214 {Type I LastRead 0 FirstWrite -1}
		weights_load_5215 {Type I LastRead 0 FirstWrite -1}
		weights_load_5216 {Type I LastRead 0 FirstWrite -1}
		weights_load_5217 {Type I LastRead 0 FirstWrite -1}
		weights_load_5218 {Type I LastRead 0 FirstWrite -1}
		weights_load_5219 {Type I LastRead 0 FirstWrite -1}
		weights_load_5220 {Type I LastRead 0 FirstWrite -1}
		weights_load_5221 {Type I LastRead 0 FirstWrite -1}
		weights_load_5222 {Type I LastRead 0 FirstWrite -1}
		weights_load_5223 {Type I LastRead 0 FirstWrite -1}
		weights_load_5224 {Type I LastRead 0 FirstWrite -1}
		weights_load_5225 {Type I LastRead 0 FirstWrite -1}
		weights_load_5226 {Type I LastRead 0 FirstWrite -1}
		weights_load_5227 {Type I LastRead 0 FirstWrite -1}
		weights_load_5228 {Type I LastRead 0 FirstWrite -1}
		weights_load_5229 {Type I LastRead 0 FirstWrite -1}
		weights_load_5230 {Type I LastRead 0 FirstWrite -1}
		weights_load_5231 {Type I LastRead 0 FirstWrite -1}
		weights_load_5232 {Type I LastRead 0 FirstWrite -1}
		weights_load_5233 {Type I LastRead 0 FirstWrite -1}
		weights_load_5234 {Type I LastRead 0 FirstWrite -1}
		weights_load_5235 {Type I LastRead 0 FirstWrite -1}
		weights_load_5236 {Type I LastRead 0 FirstWrite -1}
		weights_load_5237 {Type I LastRead 0 FirstWrite -1}
		weights_load_5238 {Type I LastRead 0 FirstWrite -1}
		weights_load_5239 {Type I LastRead 0 FirstWrite -1}
		weights_load_5240 {Type I LastRead 0 FirstWrite -1}
		weights_load_5241 {Type I LastRead 0 FirstWrite -1}
		weights_load_5242 {Type I LastRead 0 FirstWrite -1}
		weights_load_5243 {Type I LastRead 0 FirstWrite -1}
		weights_load_5244 {Type I LastRead 0 FirstWrite -1}
		weights_load_5245 {Type I LastRead 0 FirstWrite -1}
		weights_load_5246 {Type I LastRead 0 FirstWrite -1}
		weights_load_5247 {Type I LastRead 0 FirstWrite -1}
		weights_load_5248 {Type I LastRead 0 FirstWrite -1}
		weights_load_5249 {Type I LastRead 0 FirstWrite -1}
		weights_load_5250 {Type I LastRead 0 FirstWrite -1}
		weights_load_5251 {Type I LastRead 0 FirstWrite -1}
		weights_load_5252 {Type I LastRead 0 FirstWrite -1}
		weights_load_5253 {Type I LastRead 0 FirstWrite -1}
		weights_load_5254 {Type I LastRead 0 FirstWrite -1}
		weights_load_5255 {Type I LastRead 0 FirstWrite -1}
		weights_load_5256 {Type I LastRead 0 FirstWrite -1}
		weights_load_5257 {Type I LastRead 0 FirstWrite -1}
		weights_load_5258 {Type I LastRead 0 FirstWrite -1}
		weights_load_5259 {Type I LastRead 0 FirstWrite -1}
		weights_load_5260 {Type I LastRead 0 FirstWrite -1}
		weights_load_5261 {Type I LastRead 0 FirstWrite -1}
		weights_load_5262 {Type I LastRead 0 FirstWrite -1}
		weights_load_5263 {Type I LastRead 0 FirstWrite -1}
		weights_load_5264 {Type I LastRead 0 FirstWrite -1}
		weights_load_5265 {Type I LastRead 0 FirstWrite -1}
		weights_load_5266 {Type I LastRead 0 FirstWrite -1}
		weights_load_5267 {Type I LastRead 0 FirstWrite -1}
		weights_load_5268 {Type I LastRead 0 FirstWrite -1}
		weights_load_5269 {Type I LastRead 0 FirstWrite -1}
		weights_load_5270 {Type I LastRead 0 FirstWrite -1}
		weights_load_5271 {Type I LastRead 0 FirstWrite -1}
		weights_load_5272 {Type I LastRead 0 FirstWrite -1}
		weights_load_5273 {Type I LastRead 0 FirstWrite -1}
		weights_load_5274 {Type I LastRead 0 FirstWrite -1}
		weights_load_5275 {Type I LastRead 0 FirstWrite -1}
		weights_load_5276 {Type I LastRead 0 FirstWrite -1}
		weights_load_5277 {Type I LastRead 0 FirstWrite -1}
		weights_load_5278 {Type I LastRead 0 FirstWrite -1}
		weights_load_5279 {Type I LastRead 0 FirstWrite -1}
		weights_load_5280 {Type I LastRead 0 FirstWrite -1}
		weights_load_5281 {Type I LastRead 0 FirstWrite -1}
		weights_load_5282 {Type I LastRead 0 FirstWrite -1}
		weights_load_5283 {Type I LastRead 0 FirstWrite -1}
		weights_load_5284 {Type I LastRead 0 FirstWrite -1}
		weights_load_5285 {Type I LastRead 0 FirstWrite -1}
		weights_load_5286 {Type I LastRead 0 FirstWrite -1}
		weights_load_5287 {Type I LastRead 0 FirstWrite -1}
		weights_load_5288 {Type I LastRead 0 FirstWrite -1}
		weights_load_5289 {Type I LastRead 0 FirstWrite -1}
		weights_load_5290 {Type I LastRead 0 FirstWrite -1}
		weights_load_5291 {Type I LastRead 0 FirstWrite -1}
		weights_load_5292 {Type I LastRead 0 FirstWrite -1}
		weights_load_5293 {Type I LastRead 0 FirstWrite -1}
		weights_load_5294 {Type I LastRead 0 FirstWrite -1}
		weights_load_5295 {Type I LastRead 0 FirstWrite -1}
		weights_load_5296 {Type I LastRead 0 FirstWrite -1}
		weights_load_5297 {Type I LastRead 0 FirstWrite -1}
		weights_load_5298 {Type I LastRead 0 FirstWrite -1}
		weights_load_5299 {Type I LastRead 0 FirstWrite -1}
		weights_load_5300 {Type I LastRead 0 FirstWrite -1}
		weights_load_5301 {Type I LastRead 0 FirstWrite -1}
		weights_load_5302 {Type I LastRead 0 FirstWrite -1}
		weights_load_5303 {Type I LastRead 0 FirstWrite -1}
		weights_load_5304 {Type I LastRead 0 FirstWrite -1}
		weights_load_5305 {Type I LastRead 0 FirstWrite -1}
		weights_load_5306 {Type I LastRead 0 FirstWrite -1}
		weights_load_5307 {Type I LastRead 0 FirstWrite -1}
		weights_load_5308 {Type I LastRead 0 FirstWrite -1}
		weights_load_5309 {Type I LastRead 0 FirstWrite -1}
		weights_load_5310 {Type I LastRead 0 FirstWrite -1}
		weights_load_5311 {Type I LastRead 0 FirstWrite -1}
		weights_load_5312 {Type I LastRead 0 FirstWrite -1}
		weights_load_5313 {Type I LastRead 0 FirstWrite -1}
		weights_load_5314 {Type I LastRead 0 FirstWrite -1}
		weights_load_5315 {Type I LastRead 0 FirstWrite -1}
		weights_load_5316 {Type I LastRead 0 FirstWrite -1}
		weights_load_5317 {Type I LastRead 0 FirstWrite -1}
		weights_load_5318 {Type I LastRead 0 FirstWrite -1}
		weights_load_5319 {Type I LastRead 0 FirstWrite -1}
		weights_load_5320 {Type I LastRead 0 FirstWrite -1}
		weights_load_5321 {Type I LastRead 0 FirstWrite -1}
		weights_load_5322 {Type I LastRead 0 FirstWrite -1}
		weights_load_5323 {Type I LastRead 0 FirstWrite -1}
		weights_load_5324 {Type I LastRead 0 FirstWrite -1}
		weights_load_5325 {Type I LastRead 0 FirstWrite -1}
		weights_load_5326 {Type I LastRead 0 FirstWrite -1}
		weights_load_5327 {Type I LastRead 0 FirstWrite -1}
		weights_load_5328 {Type I LastRead 0 FirstWrite -1}
		weights_load_5329 {Type I LastRead 0 FirstWrite -1}
		weights_load_5330 {Type I LastRead 0 FirstWrite -1}
		weights_load_5331 {Type I LastRead 0 FirstWrite -1}
		weights_load_5332 {Type I LastRead 0 FirstWrite -1}
		weights_load_5333 {Type I LastRead 0 FirstWrite -1}
		weights_load_5334 {Type I LastRead 0 FirstWrite -1}
		weights_load_5335 {Type I LastRead 0 FirstWrite -1}
		weights_load_5336 {Type I LastRead 0 FirstWrite -1}
		weights_load_5337 {Type I LastRead 0 FirstWrite -1}
		weights_load_5338 {Type I LastRead 0 FirstWrite -1}
		weights_load_5339 {Type I LastRead 0 FirstWrite -1}
		weights_load_5340 {Type I LastRead 0 FirstWrite -1}
		weights_load_5341 {Type I LastRead 0 FirstWrite -1}
		weights_load_5342 {Type I LastRead 0 FirstWrite -1}
		weights_load_5343 {Type I LastRead 0 FirstWrite -1}
		weights_load_5344 {Type I LastRead 0 FirstWrite -1}
		weights_load_5345 {Type I LastRead 0 FirstWrite -1}
		weights_load_5346 {Type I LastRead 0 FirstWrite -1}
		weights_load_5347 {Type I LastRead 0 FirstWrite -1}
		weights_load_5348 {Type I LastRead 0 FirstWrite -1}
		weights_load_5349 {Type I LastRead 0 FirstWrite -1}
		weights_load_5350 {Type I LastRead 0 FirstWrite -1}
		weights_load_5351 {Type I LastRead 0 FirstWrite -1}
		weights_load_5352 {Type I LastRead 0 FirstWrite -1}
		weights_load_5353 {Type I LastRead 0 FirstWrite -1}
		weights_load_5354 {Type I LastRead 0 FirstWrite -1}
		weights_load_5355 {Type I LastRead 0 FirstWrite -1}
		weights_load_5356 {Type I LastRead 0 FirstWrite -1}
		weights_load_5357 {Type I LastRead 0 FirstWrite -1}
		weights_load_5358 {Type I LastRead 0 FirstWrite -1}
		weights_load_5359 {Type I LastRead 0 FirstWrite -1}
		weights_load_5360 {Type I LastRead 0 FirstWrite -1}
		weights_load_5361 {Type I LastRead 0 FirstWrite -1}
		weights_load_5362 {Type I LastRead 0 FirstWrite -1}
		weights_load_5363 {Type I LastRead 0 FirstWrite -1}
		weights_load_5364 {Type I LastRead 0 FirstWrite -1}
		weights_load_5365 {Type I LastRead 0 FirstWrite -1}
		weights_load_5366 {Type I LastRead 0 FirstWrite -1}
		weights_load_5367 {Type I LastRead 0 FirstWrite -1}
		weights_load_5368 {Type I LastRead 0 FirstWrite -1}
		weights_load_5369 {Type I LastRead 0 FirstWrite -1}
		weights_load_5370 {Type I LastRead 0 FirstWrite -1}
		weights_load_5371 {Type I LastRead 0 FirstWrite -1}
		weights_load_5372 {Type I LastRead 0 FirstWrite -1}
		weights_load_5373 {Type I LastRead 0 FirstWrite -1}
		weights_load_5374 {Type I LastRead 0 FirstWrite -1}
		weights_load_5375 {Type I LastRead 0 FirstWrite -1}
		weights_load_5376 {Type I LastRead 0 FirstWrite -1}
		weights_load_5377 {Type I LastRead 0 FirstWrite -1}
		weights_load_5378 {Type I LastRead 0 FirstWrite -1}
		weights_load_5379 {Type I LastRead 0 FirstWrite -1}
		weights_load_5380 {Type I LastRead 0 FirstWrite -1}
		weights_load_5381 {Type I LastRead 0 FirstWrite -1}
		weights_load_5382 {Type I LastRead 0 FirstWrite -1}
		weights_load_5383 {Type I LastRead 0 FirstWrite -1}
		weights_load_5384 {Type I LastRead 0 FirstWrite -1}
		weights_load_5385 {Type I LastRead 0 FirstWrite -1}
		weights_load_5386 {Type I LastRead 0 FirstWrite -1}
		weights_load_5387 {Type I LastRead 0 FirstWrite -1}
		weights_load_5388 {Type I LastRead 0 FirstWrite -1}
		weights_load_5389 {Type I LastRead 0 FirstWrite -1}
		weights_load_5390 {Type I LastRead 0 FirstWrite -1}
		weights_load_5391 {Type I LastRead 0 FirstWrite -1}
		weights_load_5392 {Type I LastRead 0 FirstWrite -1}
		weights_load_5393 {Type I LastRead 0 FirstWrite -1}
		weights_load_5394 {Type I LastRead 0 FirstWrite -1}
		weights_load_5395 {Type I LastRead 0 FirstWrite -1}
		weights_load_5396 {Type I LastRead 0 FirstWrite -1}
		weights_load_5397 {Type I LastRead 0 FirstWrite -1}
		weights_load_5398 {Type I LastRead 0 FirstWrite -1}
		weights_load_5399 {Type I LastRead 0 FirstWrite -1}
		weights_load_5400 {Type I LastRead 0 FirstWrite -1}
		weights_load_5401 {Type I LastRead 0 FirstWrite -1}
		weights_load_5402 {Type I LastRead 0 FirstWrite -1}
		weights_load_5403 {Type I LastRead 0 FirstWrite -1}
		weights_load_5404 {Type I LastRead 0 FirstWrite -1}
		weights_load_5405 {Type I LastRead 0 FirstWrite -1}
		weights_load_5406 {Type I LastRead 0 FirstWrite -1}
		weights_load_5407 {Type I LastRead 0 FirstWrite -1}
		weights_load_5408 {Type I LastRead 0 FirstWrite -1}
		weights_load_5409 {Type I LastRead 0 FirstWrite -1}
		weights_load_5410 {Type I LastRead 0 FirstWrite -1}
		weights_load_5411 {Type I LastRead 0 FirstWrite -1}
		weights_load_5412 {Type I LastRead 0 FirstWrite -1}
		weights_load_5413 {Type I LastRead 0 FirstWrite -1}
		weights_load_5414 {Type I LastRead 0 FirstWrite -1}
		weights_load_5415 {Type I LastRead 0 FirstWrite -1}
		weights_load_5416 {Type I LastRead 0 FirstWrite -1}
		weights_load_5417 {Type I LastRead 0 FirstWrite -1}
		weights_load_5418 {Type I LastRead 0 FirstWrite -1}
		weights_load_5419 {Type I LastRead 0 FirstWrite -1}
		weights_load_5420 {Type I LastRead 0 FirstWrite -1}
		weights_load_5421 {Type I LastRead 0 FirstWrite -1}
		weights_load_5422 {Type I LastRead 0 FirstWrite -1}
		weights_load_5423 {Type I LastRead 0 FirstWrite -1}
		weights_load_5424 {Type I LastRead 0 FirstWrite -1}
		weights_load_5425 {Type I LastRead 0 FirstWrite -1}
		weights_load_5426 {Type I LastRead 0 FirstWrite -1}
		weights_load_5427 {Type I LastRead 0 FirstWrite -1}
		weights_load_5428 {Type I LastRead 0 FirstWrite -1}
		weights_load_5429 {Type I LastRead 0 FirstWrite -1}
		weights_load_5430 {Type I LastRead 0 FirstWrite -1}
		weights_load_5431 {Type I LastRead 0 FirstWrite -1}
		weights_load_5432 {Type I LastRead 0 FirstWrite -1}
		weights_load_5433 {Type I LastRead 0 FirstWrite -1}
		weights_load_5434 {Type I LastRead 0 FirstWrite -1}
		weights_load_5435 {Type I LastRead 0 FirstWrite -1}
		weights_load_5436 {Type I LastRead 0 FirstWrite -1}
		weights_load_5437 {Type I LastRead 0 FirstWrite -1}
		weights_load_5438 {Type I LastRead 0 FirstWrite -1}
		weights_load_5439 {Type I LastRead 0 FirstWrite -1}
		weights_load_5440 {Type I LastRead 0 FirstWrite -1}
		weights_load_5441 {Type I LastRead 0 FirstWrite -1}
		weights_load_5442 {Type I LastRead 0 FirstWrite -1}
		weights_load_5443 {Type I LastRead 0 FirstWrite -1}
		weights_load_5444 {Type I LastRead 0 FirstWrite -1}
		weights_load_5445 {Type I LastRead 0 FirstWrite -1}
		weights_load_5446 {Type I LastRead 0 FirstWrite -1}
		weights_load_5447 {Type I LastRead 0 FirstWrite -1}
		weights_load_5448 {Type I LastRead 0 FirstWrite -1}
		weights_load_5449 {Type I LastRead 0 FirstWrite -1}
		weights_load_5450 {Type I LastRead 0 FirstWrite -1}
		weights_load_5451 {Type I LastRead 0 FirstWrite -1}
		weights_load_5452 {Type I LastRead 0 FirstWrite -1}
		weights_load_5453 {Type I LastRead 0 FirstWrite -1}
		weights_load_5454 {Type I LastRead 0 FirstWrite -1}
		weights_load_5455 {Type I LastRead 0 FirstWrite -1}
		weights_load_5456 {Type I LastRead 0 FirstWrite -1}
		weights_load_5457 {Type I LastRead 0 FirstWrite -1}
		weights_load_5458 {Type I LastRead 0 FirstWrite -1}
		weights_load_5459 {Type I LastRead 0 FirstWrite -1}
		weights_load_5460 {Type I LastRead 0 FirstWrite -1}
		weights_load_5461 {Type I LastRead 0 FirstWrite -1}
		weights_load_5462 {Type I LastRead 0 FirstWrite -1}
		weights_load_5463 {Type I LastRead 0 FirstWrite -1}
		weights_load_5464 {Type I LastRead 0 FirstWrite -1}
		weights_load_5465 {Type I LastRead 0 FirstWrite -1}
		weights_load_5466 {Type I LastRead 0 FirstWrite -1}
		weights_load_5467 {Type I LastRead 0 FirstWrite -1}
		weights_load_5468 {Type I LastRead 0 FirstWrite -1}
		weights_load_5469 {Type I LastRead 0 FirstWrite -1}
		weights_load_5470 {Type I LastRead 0 FirstWrite -1}
		weights_load_5471 {Type I LastRead 0 FirstWrite -1}
		weights_load_5472 {Type I LastRead 0 FirstWrite -1}
		weights_load_5473 {Type I LastRead 0 FirstWrite -1}
		weights_load_5474 {Type I LastRead 0 FirstWrite -1}
		weights_load_5475 {Type I LastRead 0 FirstWrite -1}
		weights_load_5476 {Type I LastRead 0 FirstWrite -1}
		weights_load_5477 {Type I LastRead 0 FirstWrite -1}
		weights_load_5478 {Type I LastRead 0 FirstWrite -1}
		weights_load_5479 {Type I LastRead 0 FirstWrite -1}
		weights_load_5480 {Type I LastRead 0 FirstWrite -1}
		weights_load_5481 {Type I LastRead 0 FirstWrite -1}
		weights_load_5482 {Type I LastRead 0 FirstWrite -1}
		weights_load_5483 {Type I LastRead 0 FirstWrite -1}
		weights_load_5484 {Type I LastRead 0 FirstWrite -1}
		weights_load_5485 {Type I LastRead 0 FirstWrite -1}
		weights_load_5486 {Type I LastRead 0 FirstWrite -1}
		weights_load_5487 {Type I LastRead 0 FirstWrite -1}
		weights_load_5488 {Type I LastRead 0 FirstWrite -1}
		weights_load_5489 {Type I LastRead 0 FirstWrite -1}
		weights_load_5490 {Type I LastRead 0 FirstWrite -1}
		weights_load_5491 {Type I LastRead 0 FirstWrite -1}
		weights_load_5492 {Type I LastRead 0 FirstWrite -1}
		weights_load_5493 {Type I LastRead 0 FirstWrite -1}
		weights_load_5494 {Type I LastRead 0 FirstWrite -1}
		weights_load_5495 {Type I LastRead 0 FirstWrite -1}
		weights_load_5496 {Type I LastRead 0 FirstWrite -1}
		weights_load_5497 {Type I LastRead 0 FirstWrite -1}
		weights_load_5498 {Type I LastRead 0 FirstWrite -1}
		weights_load_5499 {Type I LastRead 0 FirstWrite -1}
		weights_load_5500 {Type I LastRead 0 FirstWrite -1}
		weights_load_5501 {Type I LastRead 0 FirstWrite -1}
		weights_load_5502 {Type I LastRead 0 FirstWrite -1}
		weights_load_5503 {Type I LastRead 0 FirstWrite -1}
		weights_load_5504 {Type I LastRead 0 FirstWrite -1}
		weights_load_5505 {Type I LastRead 0 FirstWrite -1}
		weights_load_5506 {Type I LastRead 0 FirstWrite -1}
		weights_load_5507 {Type I LastRead 0 FirstWrite -1}
		weights_load_5508 {Type I LastRead 0 FirstWrite -1}
		weights_load_5509 {Type I LastRead 0 FirstWrite -1}
		weights_load_5510 {Type I LastRead 0 FirstWrite -1}
		weights_load_5511 {Type I LastRead 0 FirstWrite -1}
		weights_load_5512 {Type I LastRead 0 FirstWrite -1}
		weights_load_5513 {Type I LastRead 0 FirstWrite -1}
		weights_load_5514 {Type I LastRead 0 FirstWrite -1}
		weights_load_5515 {Type I LastRead 0 FirstWrite -1}
		weights_load_5516 {Type I LastRead 0 FirstWrite -1}
		weights_load_5517 {Type I LastRead 0 FirstWrite -1}
		weights_load_5518 {Type I LastRead 0 FirstWrite -1}
		weights_load_5519 {Type I LastRead 0 FirstWrite -1}
		weights_load_5520 {Type I LastRead 0 FirstWrite -1}
		weights_load_5521 {Type I LastRead 0 FirstWrite -1}
		weights_load_5522 {Type I LastRead 0 FirstWrite -1}
		weights_load_5523 {Type I LastRead 0 FirstWrite -1}
		weights_load_5524 {Type I LastRead 0 FirstWrite -1}
		weights_load_5525 {Type I LastRead 0 FirstWrite -1}
		weights_load_5526 {Type I LastRead 0 FirstWrite -1}
		weights_load_5527 {Type I LastRead 0 FirstWrite -1}
		weights_load_5528 {Type I LastRead 0 FirstWrite -1}
		weights_load_5529 {Type I LastRead 0 FirstWrite -1}
		weights_load_5530 {Type I LastRead 0 FirstWrite -1}
		weights_load_5531 {Type I LastRead 0 FirstWrite -1}
		weights_load_5532 {Type I LastRead 0 FirstWrite -1}
		weights_load_5533 {Type I LastRead 0 FirstWrite -1}
		weights_load_5534 {Type I LastRead 0 FirstWrite -1}
		weights_load_5535 {Type I LastRead 0 FirstWrite -1}
		weights_load_5536 {Type I LastRead 0 FirstWrite -1}
		weights_load_5537 {Type I LastRead 0 FirstWrite -1}
		weights_load_5538 {Type I LastRead 0 FirstWrite -1}
		weights_load_5539 {Type I LastRead 0 FirstWrite -1}
		weights_load_5540 {Type I LastRead 0 FirstWrite -1}
		weights_load_5541 {Type I LastRead 0 FirstWrite -1}
		weights_load_5542 {Type I LastRead 0 FirstWrite -1}
		weights_load_5543 {Type I LastRead 0 FirstWrite -1}
		weights_load_5544 {Type I LastRead 0 FirstWrite -1}
		weights_load_5545 {Type I LastRead 0 FirstWrite -1}
		weights_load_5546 {Type I LastRead 0 FirstWrite -1}
		weights_load_5547 {Type I LastRead 0 FirstWrite -1}
		weights_load_5548 {Type I LastRead 0 FirstWrite -1}
		weights_load_5549 {Type I LastRead 0 FirstWrite -1}
		weights_load_5550 {Type I LastRead 0 FirstWrite -1}
		weights_load_5551 {Type I LastRead 0 FirstWrite -1}
		weights_load_5552 {Type I LastRead 0 FirstWrite -1}
		weights_load_5553 {Type I LastRead 0 FirstWrite -1}
		weights_load_5554 {Type I LastRead 0 FirstWrite -1}
		weights_load_5555 {Type I LastRead 0 FirstWrite -1}
		weights_load_5556 {Type I LastRead 0 FirstWrite -1}
		weights_load_5557 {Type I LastRead 0 FirstWrite -1}
		weights_load_5558 {Type I LastRead 0 FirstWrite -1}
		weights_load_5559 {Type I LastRead 0 FirstWrite -1}
		weights_load_5560 {Type I LastRead 0 FirstWrite -1}
		weights_load_5561 {Type I LastRead 0 FirstWrite -1}
		weights_load_5562 {Type I LastRead 0 FirstWrite -1}
		weights_load_5563 {Type I LastRead 0 FirstWrite -1}
		weights_load_5564 {Type I LastRead 0 FirstWrite -1}
		weights_load_5565 {Type I LastRead 0 FirstWrite -1}
		weights_load_5566 {Type I LastRead 0 FirstWrite -1}
		weights_load_5567 {Type I LastRead 0 FirstWrite -1}
		weights_load_5568 {Type I LastRead 0 FirstWrite -1}
		weights_load_5569 {Type I LastRead 0 FirstWrite -1}
		weights_load_5570 {Type I LastRead 0 FirstWrite -1}
		weights_load_5571 {Type I LastRead 0 FirstWrite -1}
		weights_load_5572 {Type I LastRead 0 FirstWrite -1}
		weights_load_5573 {Type I LastRead 0 FirstWrite -1}
		weights_load_5574 {Type I LastRead 0 FirstWrite -1}
		weights_load_5575 {Type I LastRead 0 FirstWrite -1}
		weights_load_5576 {Type I LastRead 0 FirstWrite -1}
		weights_load_5577 {Type I LastRead 0 FirstWrite -1}
		weights_load_5578 {Type I LastRead 0 FirstWrite -1}
		weights_load_5579 {Type I LastRead 0 FirstWrite -1}
		weights_load_5580 {Type I LastRead 0 FirstWrite -1}
		weights_load_5581 {Type I LastRead 0 FirstWrite -1}
		weights_load_5582 {Type I LastRead 0 FirstWrite -1}
		weights_load_5583 {Type I LastRead 0 FirstWrite -1}
		weights_load_5584 {Type I LastRead 0 FirstWrite -1}
		weights_load_5585 {Type I LastRead 0 FirstWrite -1}
		weights_load_5586 {Type I LastRead 0 FirstWrite -1}
		weights_load_5587 {Type I LastRead 0 FirstWrite -1}
		weights_load_5588 {Type I LastRead 0 FirstWrite -1}
		weights_load_5589 {Type I LastRead 0 FirstWrite -1}
		weights_load_5590 {Type I LastRead 0 FirstWrite -1}
		weights_load_5591 {Type I LastRead 0 FirstWrite -1}
		weights_load_5592 {Type I LastRead 0 FirstWrite -1}
		weights_load_5593 {Type I LastRead 0 FirstWrite -1}
		weights_load_5594 {Type I LastRead 0 FirstWrite -1}
		weights_load_5595 {Type I LastRead 0 FirstWrite -1}
		weights_load_5596 {Type I LastRead 0 FirstWrite -1}
		weights_load_5597 {Type I LastRead 0 FirstWrite -1}
		weights_load_5598 {Type I LastRead 0 FirstWrite -1}
		weights_load_5599 {Type I LastRead 0 FirstWrite -1}
		weights_load_5600 {Type I LastRead 0 FirstWrite -1}
		weights_load_5601 {Type I LastRead 0 FirstWrite -1}
		weights_load_5602 {Type I LastRead 0 FirstWrite -1}
		weights_load_5603 {Type I LastRead 0 FirstWrite -1}
		weights_load_5604 {Type I LastRead 0 FirstWrite -1}
		weights_load_5605 {Type I LastRead 0 FirstWrite -1}
		weights_load_5606 {Type I LastRead 0 FirstWrite -1}
		weights_load_5607 {Type I LastRead 0 FirstWrite -1}
		weights_load_5608 {Type I LastRead 0 FirstWrite -1}
		weights_load_5609 {Type I LastRead 0 FirstWrite -1}
		weights_load_5610 {Type I LastRead 0 FirstWrite -1}
		weights_load_5611 {Type I LastRead 0 FirstWrite -1}
		weights_load_5612 {Type I LastRead 0 FirstWrite -1}
		weights_load_5613 {Type I LastRead 0 FirstWrite -1}
		weights_load_5614 {Type I LastRead 0 FirstWrite -1}
		weights_load_5615 {Type I LastRead 0 FirstWrite -1}
		weights_load_5616 {Type I LastRead 0 FirstWrite -1}
		weights_load_5617 {Type I LastRead 0 FirstWrite -1}
		weights_load_5618 {Type I LastRead 0 FirstWrite -1}
		weights_load_5619 {Type I LastRead 0 FirstWrite -1}
		weights_load_5620 {Type I LastRead 0 FirstWrite -1}
		weights_load_5621 {Type I LastRead 0 FirstWrite -1}
		weights_load_5622 {Type I LastRead 0 FirstWrite -1}
		weights_load_5623 {Type I LastRead 0 FirstWrite -1}
		weights_load_5624 {Type I LastRead 0 FirstWrite -1}
		weights_load_5625 {Type I LastRead 0 FirstWrite -1}
		weights_load_5626 {Type I LastRead 0 FirstWrite -1}
		weights_load_5627 {Type I LastRead 0 FirstWrite -1}
		weights_load_5628 {Type I LastRead 0 FirstWrite -1}
		weights_load_5629 {Type I LastRead 0 FirstWrite -1}
		weights_load_5630 {Type I LastRead 0 FirstWrite -1}
		weights_load_5631 {Type I LastRead 0 FirstWrite -1}
		weights_load_5632 {Type I LastRead 0 FirstWrite -1}
		weights_load_5633 {Type I LastRead 0 FirstWrite -1}
		weights_load_5634 {Type I LastRead 0 FirstWrite -1}
		weights_load_5635 {Type I LastRead 0 FirstWrite -1}
		weights_load_5636 {Type I LastRead 0 FirstWrite -1}
		weights_load_5637 {Type I LastRead 0 FirstWrite -1}
		weights_load_5638 {Type I LastRead 0 FirstWrite -1}
		weights_load_5639 {Type I LastRead 0 FirstWrite -1}
		weights_load_5640 {Type I LastRead 0 FirstWrite -1}
		weights_load_5641 {Type I LastRead 0 FirstWrite -1}
		weights_load_5642 {Type I LastRead 0 FirstWrite -1}
		weights_load_5643 {Type I LastRead 0 FirstWrite -1}
		weights_load_5644 {Type I LastRead 0 FirstWrite -1}
		weights_load_5645 {Type I LastRead 0 FirstWrite -1}
		weights_load_5646 {Type I LastRead 0 FirstWrite -1}
		weights_load_5647 {Type I LastRead 0 FirstWrite -1}
		weights_load_5648 {Type I LastRead 0 FirstWrite -1}
		weights_load_5649 {Type I LastRead 0 FirstWrite -1}
		weights_load_5650 {Type I LastRead 0 FirstWrite -1}
		weights_load_5651 {Type I LastRead 0 FirstWrite -1}
		weights_load_5652 {Type I LastRead 0 FirstWrite -1}
		weights_load_5653 {Type I LastRead 0 FirstWrite -1}
		weights_load_5654 {Type I LastRead 0 FirstWrite -1}
		weights_load_5655 {Type I LastRead 0 FirstWrite -1}
		weights_load_5656 {Type I LastRead 0 FirstWrite -1}
		weights_load_5657 {Type I LastRead 0 FirstWrite -1}
		weights_load_5658 {Type I LastRead 0 FirstWrite -1}
		weights_load_5659 {Type I LastRead 0 FirstWrite -1}
		weights_load_5660 {Type I LastRead 0 FirstWrite -1}
		weights_load_5661 {Type I LastRead 0 FirstWrite -1}
		weights_load_5662 {Type I LastRead 0 FirstWrite -1}
		weights_load_5663 {Type I LastRead 0 FirstWrite -1}
		weights_load_5664 {Type I LastRead 0 FirstWrite -1}
		weights_load_5665 {Type I LastRead 0 FirstWrite -1}
		weights_load_5666 {Type I LastRead 0 FirstWrite -1}
		weights_load_5667 {Type I LastRead 0 FirstWrite -1}
		weights_load_5668 {Type I LastRead 0 FirstWrite -1}
		weights_load_5669 {Type I LastRead 0 FirstWrite -1}
		weights_load_5670 {Type I LastRead 0 FirstWrite -1}
		weights_load_5671 {Type I LastRead 0 FirstWrite -1}
		weights_load_5672 {Type I LastRead 0 FirstWrite -1}
		weights_load_5673 {Type I LastRead 0 FirstWrite -1}
		weights_load_5674 {Type I LastRead 0 FirstWrite -1}
		weights_load_5675 {Type I LastRead 0 FirstWrite -1}
		weights_load_5676 {Type I LastRead 0 FirstWrite -1}
		weights_load_5677 {Type I LastRead 0 FirstWrite -1}
		weights_load_5678 {Type I LastRead 0 FirstWrite -1}
		weights_load_5679 {Type I LastRead 0 FirstWrite -1}
		weights_load_5680 {Type I LastRead 0 FirstWrite -1}
		weights_load_5681 {Type I LastRead 0 FirstWrite -1}
		weights_load_5682 {Type I LastRead 0 FirstWrite -1}
		weights_load_5683 {Type I LastRead 0 FirstWrite -1}
		weights_load_5684 {Type I LastRead 0 FirstWrite -1}
		weights_load_5685 {Type I LastRead 0 FirstWrite -1}
		weights_load_5686 {Type I LastRead 0 FirstWrite -1}
		weights_load_5687 {Type I LastRead 0 FirstWrite -1}
		weights_load_5688 {Type I LastRead 0 FirstWrite -1}
		weights_load_5689 {Type I LastRead 0 FirstWrite -1}
		weights_load_5690 {Type I LastRead 0 FirstWrite -1}
		weights_load_5691 {Type I LastRead 0 FirstWrite -1}
		weights_load_5692 {Type I LastRead 0 FirstWrite -1}
		weights_load_5693 {Type I LastRead 0 FirstWrite -1}
		weights_load_5694 {Type I LastRead 0 FirstWrite -1}
		weights_load_5695 {Type I LastRead 0 FirstWrite -1}
		weights_load_5696 {Type I LastRead 0 FirstWrite -1}
		weights_load_5697 {Type I LastRead 0 FirstWrite -1}
		weights_load_5698 {Type I LastRead 0 FirstWrite -1}
		weights_load_5699 {Type I LastRead 0 FirstWrite -1}
		weights_load_5700 {Type I LastRead 0 FirstWrite -1}
		weights_load_5701 {Type I LastRead 0 FirstWrite -1}
		weights_load_5702 {Type I LastRead 0 FirstWrite -1}
		weights_load_5703 {Type I LastRead 0 FirstWrite -1}
		weights_load_5704 {Type I LastRead 0 FirstWrite -1}
		weights_load_5705 {Type I LastRead 0 FirstWrite -1}
		weights_load_5706 {Type I LastRead 0 FirstWrite -1}
		weights_load_5707 {Type I LastRead 0 FirstWrite -1}
		weights_load_5708 {Type I LastRead 0 FirstWrite -1}
		weights_load_5709 {Type I LastRead 0 FirstWrite -1}
		weights_load_5710 {Type I LastRead 0 FirstWrite -1}
		weights_load_5711 {Type I LastRead 0 FirstWrite -1}
		weights_load_5712 {Type I LastRead 0 FirstWrite -1}
		weights_load_5713 {Type I LastRead 0 FirstWrite -1}
		weights_load_5714 {Type I LastRead 0 FirstWrite -1}
		weights_load_5715 {Type I LastRead 0 FirstWrite -1}
		weights_load_5716 {Type I LastRead 0 FirstWrite -1}
		weights_load_5717 {Type I LastRead 0 FirstWrite -1}
		weights_load_5718 {Type I LastRead 0 FirstWrite -1}
		weights_load_5719 {Type I LastRead 0 FirstWrite -1}
		weights_load_5720 {Type I LastRead 0 FirstWrite -1}
		weights_load_5721 {Type I LastRead 0 FirstWrite -1}
		weights_load_5722 {Type I LastRead 0 FirstWrite -1}
		weights_load_5723 {Type I LastRead 0 FirstWrite -1}
		weights_load_5724 {Type I LastRead 0 FirstWrite -1}
		weights_load_5725 {Type I LastRead 0 FirstWrite -1}
		weights_load_5726 {Type I LastRead 0 FirstWrite -1}
		weights_load_5727 {Type I LastRead 0 FirstWrite -1}
		weights_load_5728 {Type I LastRead 0 FirstWrite -1}
		weights_load_5729 {Type I LastRead 0 FirstWrite -1}
		weights_load_5730 {Type I LastRead 0 FirstWrite -1}
		weights_load_5731 {Type I LastRead 0 FirstWrite -1}
		weights_load_5732 {Type I LastRead 0 FirstWrite -1}
		weights_load_5733 {Type I LastRead 0 FirstWrite -1}
		weights_load_5734 {Type I LastRead 0 FirstWrite -1}
		weights_load_5735 {Type I LastRead 0 FirstWrite -1}
		weights_load_5736 {Type I LastRead 0 FirstWrite -1}
		weights_load_5737 {Type I LastRead 0 FirstWrite -1}
		weights_load_5738 {Type I LastRead 0 FirstWrite -1}
		weights_load_5739 {Type I LastRead 0 FirstWrite -1}
		weights_load_5740 {Type I LastRead 0 FirstWrite -1}
		weights_load_5741 {Type I LastRead 0 FirstWrite -1}
		weights_load_5742 {Type I LastRead 0 FirstWrite -1}
		weights_load_5743 {Type I LastRead 0 FirstWrite -1}
		weights_load_5744 {Type I LastRead 0 FirstWrite -1}
		weights_load_5745 {Type I LastRead 0 FirstWrite -1}
		weights_load_5746 {Type I LastRead 0 FirstWrite -1}
		weights_load_5747 {Type I LastRead 0 FirstWrite -1}
		weights_load_5748 {Type I LastRead 0 FirstWrite -1}
		weights_load_5749 {Type I LastRead 0 FirstWrite -1}
		weights_load_5750 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_29 { ap_fifo {  { conv2d_64_padded_window_stream_29_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_29_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_29_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_29_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_29_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_29 { ap_fifo {  { in_channel_map_stream_29_din fifo_port_we 1 32 }  { in_channel_map_stream_29_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_29_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_29_full_n fifo_status 0 1 }  { in_channel_map_stream_29_write fifo_data 1 1 } } }
}
