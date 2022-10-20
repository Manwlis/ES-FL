set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_28
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.28}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_28 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_28 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_28", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_28", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_28_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_28_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_28_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_28_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_28_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_28_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_28_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_28_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_28_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_28_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_28_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_28", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_28_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_28", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_28_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_28", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_28_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_28", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_28_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_28", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_28_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_28", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_28_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_28", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_28_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_28", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_28_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_28", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_28_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_28", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_28",
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
			{"Name" : "conv2d_64_padded_window_stream_28", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_28_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_28", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_28", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_28_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_28", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_28_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_28_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_28", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_28_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5751", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5752", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5753", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5754", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5755", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5756", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5757", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5758", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_28", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_28_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_5759", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5760", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5761", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5762", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5763", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5764", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5765", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5766", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5767", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5768", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5769", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5770", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5771", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5772", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5773", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5774", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5775", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5776", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5777", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5778", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5779", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5780", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5781", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5782", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5783", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5784", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5785", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5786", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5787", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5788", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5789", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5790", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5791", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5792", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5793", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5794", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5795", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5796", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5797", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5798", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5799", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5800", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5801", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5802", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5803", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5804", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5805", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5806", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5807", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5808", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5809", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5810", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5811", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5812", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5813", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5814", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5815", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5816", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5817", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5818", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5819", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5820", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5821", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5822", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5823", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5824", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5825", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5826", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5827", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5828", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5829", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5830", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5831", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5832", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5833", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5834", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5835", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5836", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5837", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5838", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5839", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5840", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5841", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5842", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5843", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5844", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5845", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5846", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5847", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5848", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5849", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5850", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5851", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5852", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5853", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5854", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5855", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5856", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5857", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5858", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5859", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5860", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5861", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5862", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5863", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5864", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5865", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5866", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5867", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5868", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5869", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5870", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5871", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5872", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5873", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5874", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5875", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5876", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5877", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5878", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5879", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5880", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5881", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5882", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5883", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5884", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5885", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5886", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5887", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5888", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5889", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5890", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5891", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5892", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5893", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5894", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5895", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5896", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5897", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5898", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5899", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5900", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5901", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5902", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5903", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5904", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5905", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5906", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5907", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5908", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5909", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5910", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5911", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5912", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5913", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5914", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5915", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5916", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5917", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5918", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5919", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5920", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5921", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5922", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5923", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5924", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5925", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5926", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5927", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5928", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5929", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5930", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5931", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5932", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5933", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5934", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5935", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5936", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5937", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5938", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5939", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5940", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5941", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5942", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5943", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5944", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5945", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5946", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5947", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5948", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5949", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5950", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5951", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5952", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5953", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5954", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5955", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5956", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5957", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5958", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5959", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5960", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5961", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5962", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5963", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5964", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5965", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5966", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5967", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5968", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5969", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5970", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5971", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5972", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5973", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5974", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5975", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5976", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5977", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5978", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5979", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5980", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5981", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5982", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5983", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5984", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5985", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5986", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5987", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5988", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5989", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5990", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5991", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5992", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5993", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5994", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5995", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5996", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5997", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5998", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5999", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6000", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6001", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6002", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6003", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6004", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6005", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6006", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6007", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6008", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6009", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6010", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6011", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6012", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6013", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6014", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6015", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6016", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6017", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6018", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6019", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6020", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6021", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6022", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6023", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6024", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6025", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6026", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6027", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6028", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6029", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6030", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6031", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6032", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6033", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6034", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6035", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6036", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6037", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6038", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6039", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6040", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6041", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6042", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6043", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6044", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6045", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6046", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6047", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6048", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6049", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6050", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6051", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6052", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6053", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6054", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6055", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6056", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6057", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6058", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6059", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6060", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6061", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6062", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6063", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6064", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6065", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6066", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6067", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6068", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6069", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6070", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6071", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6072", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6073", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6074", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6075", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6076", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6077", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6078", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6079", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6080", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6081", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6082", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6083", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6084", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6085", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6086", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6087", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6088", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6089", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6090", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6091", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6092", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6093", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6094", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6095", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6096", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6097", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6098", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6099", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6100", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6101", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6102", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6103", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6104", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6105", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6106", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6107", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6108", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6109", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6110", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6111", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6112", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6113", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6114", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6115", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6116", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6117", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6118", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6119", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6120", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6121", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6122", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6123", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6124", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6125", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6126", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6127", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6128", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6129", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6130", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6131", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6132", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6133", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6134", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6135", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6136", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6137", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6138", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6139", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6140", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6141", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6142", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6143", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6144", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6145", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6146", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6147", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6148", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6149", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6150", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6151", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6152", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6153", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6154", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6155", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6156", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6157", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6158", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6159", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6160", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6161", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6162", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6163", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6164", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6165", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6166", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6167", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6168", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6169", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6170", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6171", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6172", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6173", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6174", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6175", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6176", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6177", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6178", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6179", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6180", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6181", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6182", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6183", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6184", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6185", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6186", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6187", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6188", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6189", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6190", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6191", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6192", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6193", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6194", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6195", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6196", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6197", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6198", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6199", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6200", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6201", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6202", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6203", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6204", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6205", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6206", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6207", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6208", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6209", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6210", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6211", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6212", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6213", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6214", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6215", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6216", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6217", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6218", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6219", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6220", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6221", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6222", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6223", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6224", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6225", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6226", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6227", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6228", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6229", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6230", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6231", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6232", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6233", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6234", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6235", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6236", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6237", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6238", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6239", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6240", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6241", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6242", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6243", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6244", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6245", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6246", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6247", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6248", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6249", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6250", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6251", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6252", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6253", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6254", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6255", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6256", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6257", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6258", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6259", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6260", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6261", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6262", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6263", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6264", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6265", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6266", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6267", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6268", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6269", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6270", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6271", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6272", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6273", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6274", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6275", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6276", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6277", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6278", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6279", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6280", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6281", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6282", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6283", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6284", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6285", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6286", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6287", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6288", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6289", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6290", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6291", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6292", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6293", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6294", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6295", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6296", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6297", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6298", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6299", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6300", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6301", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6302", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6303", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6304", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6305", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6306", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6307", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6308", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6309", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6310", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6311", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6312", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6313", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6314", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6315", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6316", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6317", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6318", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6319", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6320", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6321", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6322", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6323", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6324", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6325", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_28_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U17300", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_28_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U17301", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_28_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U17302", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_28_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U17303", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_28_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U17304", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_28_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U17305", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_28_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U17306", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_28_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U17307", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_28_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U17308", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_28_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U17309", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_28_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U17310", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_28_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U17311", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_28_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U17312", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_28_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U17313", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_28_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U17314", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_28_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U17315", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_28_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U17316", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_28_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_28 {
		conv2d_64_padded_window_stream_28 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_28 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_28_Pipeline_inputs {
		conv2d_64_padded_window_stream_28 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_5751 {Type I LastRead 0 FirstWrite -1}
		weights_load_5752 {Type I LastRead 0 FirstWrite -1}
		weights_load_5753 {Type I LastRead 0 FirstWrite -1}
		weights_load_5754 {Type I LastRead 0 FirstWrite -1}
		weights_load_5755 {Type I LastRead 0 FirstWrite -1}
		weights_load_5756 {Type I LastRead 0 FirstWrite -1}
		weights_load_5757 {Type I LastRead 0 FirstWrite -1}
		weights_load_5758 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_28 {Type O LastRead -1 FirstWrite 16}
		weights_load_5759 {Type I LastRead 0 FirstWrite -1}
		weights_load_5760 {Type I LastRead 0 FirstWrite -1}
		weights_load_5761 {Type I LastRead 0 FirstWrite -1}
		weights_load_5762 {Type I LastRead 0 FirstWrite -1}
		weights_load_5763 {Type I LastRead 0 FirstWrite -1}
		weights_load_5764 {Type I LastRead 0 FirstWrite -1}
		weights_load_5765 {Type I LastRead 0 FirstWrite -1}
		weights_load_5766 {Type I LastRead 0 FirstWrite -1}
		weights_load_5767 {Type I LastRead 0 FirstWrite -1}
		weights_load_5768 {Type I LastRead 0 FirstWrite -1}
		weights_load_5769 {Type I LastRead 0 FirstWrite -1}
		weights_load_5770 {Type I LastRead 0 FirstWrite -1}
		weights_load_5771 {Type I LastRead 0 FirstWrite -1}
		weights_load_5772 {Type I LastRead 0 FirstWrite -1}
		weights_load_5773 {Type I LastRead 0 FirstWrite -1}
		weights_load_5774 {Type I LastRead 0 FirstWrite -1}
		weights_load_5775 {Type I LastRead 0 FirstWrite -1}
		weights_load_5776 {Type I LastRead 0 FirstWrite -1}
		weights_load_5777 {Type I LastRead 0 FirstWrite -1}
		weights_load_5778 {Type I LastRead 0 FirstWrite -1}
		weights_load_5779 {Type I LastRead 0 FirstWrite -1}
		weights_load_5780 {Type I LastRead 0 FirstWrite -1}
		weights_load_5781 {Type I LastRead 0 FirstWrite -1}
		weights_load_5782 {Type I LastRead 0 FirstWrite -1}
		weights_load_5783 {Type I LastRead 0 FirstWrite -1}
		weights_load_5784 {Type I LastRead 0 FirstWrite -1}
		weights_load_5785 {Type I LastRead 0 FirstWrite -1}
		weights_load_5786 {Type I LastRead 0 FirstWrite -1}
		weights_load_5787 {Type I LastRead 0 FirstWrite -1}
		weights_load_5788 {Type I LastRead 0 FirstWrite -1}
		weights_load_5789 {Type I LastRead 0 FirstWrite -1}
		weights_load_5790 {Type I LastRead 0 FirstWrite -1}
		weights_load_5791 {Type I LastRead 0 FirstWrite -1}
		weights_load_5792 {Type I LastRead 0 FirstWrite -1}
		weights_load_5793 {Type I LastRead 0 FirstWrite -1}
		weights_load_5794 {Type I LastRead 0 FirstWrite -1}
		weights_load_5795 {Type I LastRead 0 FirstWrite -1}
		weights_load_5796 {Type I LastRead 0 FirstWrite -1}
		weights_load_5797 {Type I LastRead 0 FirstWrite -1}
		weights_load_5798 {Type I LastRead 0 FirstWrite -1}
		weights_load_5799 {Type I LastRead 0 FirstWrite -1}
		weights_load_5800 {Type I LastRead 0 FirstWrite -1}
		weights_load_5801 {Type I LastRead 0 FirstWrite -1}
		weights_load_5802 {Type I LastRead 0 FirstWrite -1}
		weights_load_5803 {Type I LastRead 0 FirstWrite -1}
		weights_load_5804 {Type I LastRead 0 FirstWrite -1}
		weights_load_5805 {Type I LastRead 0 FirstWrite -1}
		weights_load_5806 {Type I LastRead 0 FirstWrite -1}
		weights_load_5807 {Type I LastRead 0 FirstWrite -1}
		weights_load_5808 {Type I LastRead 0 FirstWrite -1}
		weights_load_5809 {Type I LastRead 0 FirstWrite -1}
		weights_load_5810 {Type I LastRead 0 FirstWrite -1}
		weights_load_5811 {Type I LastRead 0 FirstWrite -1}
		weights_load_5812 {Type I LastRead 0 FirstWrite -1}
		weights_load_5813 {Type I LastRead 0 FirstWrite -1}
		weights_load_5814 {Type I LastRead 0 FirstWrite -1}
		weights_load_5815 {Type I LastRead 0 FirstWrite -1}
		weights_load_5816 {Type I LastRead 0 FirstWrite -1}
		weights_load_5817 {Type I LastRead 0 FirstWrite -1}
		weights_load_5818 {Type I LastRead 0 FirstWrite -1}
		weights_load_5819 {Type I LastRead 0 FirstWrite -1}
		weights_load_5820 {Type I LastRead 0 FirstWrite -1}
		weights_load_5821 {Type I LastRead 0 FirstWrite -1}
		weights_load_5822 {Type I LastRead 0 FirstWrite -1}
		weights_load_5823 {Type I LastRead 0 FirstWrite -1}
		weights_load_5824 {Type I LastRead 0 FirstWrite -1}
		weights_load_5825 {Type I LastRead 0 FirstWrite -1}
		weights_load_5826 {Type I LastRead 0 FirstWrite -1}
		weights_load_5827 {Type I LastRead 0 FirstWrite -1}
		weights_load_5828 {Type I LastRead 0 FirstWrite -1}
		weights_load_5829 {Type I LastRead 0 FirstWrite -1}
		weights_load_5830 {Type I LastRead 0 FirstWrite -1}
		weights_load_5831 {Type I LastRead 0 FirstWrite -1}
		weights_load_5832 {Type I LastRead 0 FirstWrite -1}
		weights_load_5833 {Type I LastRead 0 FirstWrite -1}
		weights_load_5834 {Type I LastRead 0 FirstWrite -1}
		weights_load_5835 {Type I LastRead 0 FirstWrite -1}
		weights_load_5836 {Type I LastRead 0 FirstWrite -1}
		weights_load_5837 {Type I LastRead 0 FirstWrite -1}
		weights_load_5838 {Type I LastRead 0 FirstWrite -1}
		weights_load_5839 {Type I LastRead 0 FirstWrite -1}
		weights_load_5840 {Type I LastRead 0 FirstWrite -1}
		weights_load_5841 {Type I LastRead 0 FirstWrite -1}
		weights_load_5842 {Type I LastRead 0 FirstWrite -1}
		weights_load_5843 {Type I LastRead 0 FirstWrite -1}
		weights_load_5844 {Type I LastRead 0 FirstWrite -1}
		weights_load_5845 {Type I LastRead 0 FirstWrite -1}
		weights_load_5846 {Type I LastRead 0 FirstWrite -1}
		weights_load_5847 {Type I LastRead 0 FirstWrite -1}
		weights_load_5848 {Type I LastRead 0 FirstWrite -1}
		weights_load_5849 {Type I LastRead 0 FirstWrite -1}
		weights_load_5850 {Type I LastRead 0 FirstWrite -1}
		weights_load_5851 {Type I LastRead 0 FirstWrite -1}
		weights_load_5852 {Type I LastRead 0 FirstWrite -1}
		weights_load_5853 {Type I LastRead 0 FirstWrite -1}
		weights_load_5854 {Type I LastRead 0 FirstWrite -1}
		weights_load_5855 {Type I LastRead 0 FirstWrite -1}
		weights_load_5856 {Type I LastRead 0 FirstWrite -1}
		weights_load_5857 {Type I LastRead 0 FirstWrite -1}
		weights_load_5858 {Type I LastRead 0 FirstWrite -1}
		weights_load_5859 {Type I LastRead 0 FirstWrite -1}
		weights_load_5860 {Type I LastRead 0 FirstWrite -1}
		weights_load_5861 {Type I LastRead 0 FirstWrite -1}
		weights_load_5862 {Type I LastRead 0 FirstWrite -1}
		weights_load_5863 {Type I LastRead 0 FirstWrite -1}
		weights_load_5864 {Type I LastRead 0 FirstWrite -1}
		weights_load_5865 {Type I LastRead 0 FirstWrite -1}
		weights_load_5866 {Type I LastRead 0 FirstWrite -1}
		weights_load_5867 {Type I LastRead 0 FirstWrite -1}
		weights_load_5868 {Type I LastRead 0 FirstWrite -1}
		weights_load_5869 {Type I LastRead 0 FirstWrite -1}
		weights_load_5870 {Type I LastRead 0 FirstWrite -1}
		weights_load_5871 {Type I LastRead 0 FirstWrite -1}
		weights_load_5872 {Type I LastRead 0 FirstWrite -1}
		weights_load_5873 {Type I LastRead 0 FirstWrite -1}
		weights_load_5874 {Type I LastRead 0 FirstWrite -1}
		weights_load_5875 {Type I LastRead 0 FirstWrite -1}
		weights_load_5876 {Type I LastRead 0 FirstWrite -1}
		weights_load_5877 {Type I LastRead 0 FirstWrite -1}
		weights_load_5878 {Type I LastRead 0 FirstWrite -1}
		weights_load_5879 {Type I LastRead 0 FirstWrite -1}
		weights_load_5880 {Type I LastRead 0 FirstWrite -1}
		weights_load_5881 {Type I LastRead 0 FirstWrite -1}
		weights_load_5882 {Type I LastRead 0 FirstWrite -1}
		weights_load_5883 {Type I LastRead 0 FirstWrite -1}
		weights_load_5884 {Type I LastRead 0 FirstWrite -1}
		weights_load_5885 {Type I LastRead 0 FirstWrite -1}
		weights_load_5886 {Type I LastRead 0 FirstWrite -1}
		weights_load_5887 {Type I LastRead 0 FirstWrite -1}
		weights_load_5888 {Type I LastRead 0 FirstWrite -1}
		weights_load_5889 {Type I LastRead 0 FirstWrite -1}
		weights_load_5890 {Type I LastRead 0 FirstWrite -1}
		weights_load_5891 {Type I LastRead 0 FirstWrite -1}
		weights_load_5892 {Type I LastRead 0 FirstWrite -1}
		weights_load_5893 {Type I LastRead 0 FirstWrite -1}
		weights_load_5894 {Type I LastRead 0 FirstWrite -1}
		weights_load_5895 {Type I LastRead 0 FirstWrite -1}
		weights_load_5896 {Type I LastRead 0 FirstWrite -1}
		weights_load_5897 {Type I LastRead 0 FirstWrite -1}
		weights_load_5898 {Type I LastRead 0 FirstWrite -1}
		weights_load_5899 {Type I LastRead 0 FirstWrite -1}
		weights_load_5900 {Type I LastRead 0 FirstWrite -1}
		weights_load_5901 {Type I LastRead 0 FirstWrite -1}
		weights_load_5902 {Type I LastRead 0 FirstWrite -1}
		weights_load_5903 {Type I LastRead 0 FirstWrite -1}
		weights_load_5904 {Type I LastRead 0 FirstWrite -1}
		weights_load_5905 {Type I LastRead 0 FirstWrite -1}
		weights_load_5906 {Type I LastRead 0 FirstWrite -1}
		weights_load_5907 {Type I LastRead 0 FirstWrite -1}
		weights_load_5908 {Type I LastRead 0 FirstWrite -1}
		weights_load_5909 {Type I LastRead 0 FirstWrite -1}
		weights_load_5910 {Type I LastRead 0 FirstWrite -1}
		weights_load_5911 {Type I LastRead 0 FirstWrite -1}
		weights_load_5912 {Type I LastRead 0 FirstWrite -1}
		weights_load_5913 {Type I LastRead 0 FirstWrite -1}
		weights_load_5914 {Type I LastRead 0 FirstWrite -1}
		weights_load_5915 {Type I LastRead 0 FirstWrite -1}
		weights_load_5916 {Type I LastRead 0 FirstWrite -1}
		weights_load_5917 {Type I LastRead 0 FirstWrite -1}
		weights_load_5918 {Type I LastRead 0 FirstWrite -1}
		weights_load_5919 {Type I LastRead 0 FirstWrite -1}
		weights_load_5920 {Type I LastRead 0 FirstWrite -1}
		weights_load_5921 {Type I LastRead 0 FirstWrite -1}
		weights_load_5922 {Type I LastRead 0 FirstWrite -1}
		weights_load_5923 {Type I LastRead 0 FirstWrite -1}
		weights_load_5924 {Type I LastRead 0 FirstWrite -1}
		weights_load_5925 {Type I LastRead 0 FirstWrite -1}
		weights_load_5926 {Type I LastRead 0 FirstWrite -1}
		weights_load_5927 {Type I LastRead 0 FirstWrite -1}
		weights_load_5928 {Type I LastRead 0 FirstWrite -1}
		weights_load_5929 {Type I LastRead 0 FirstWrite -1}
		weights_load_5930 {Type I LastRead 0 FirstWrite -1}
		weights_load_5931 {Type I LastRead 0 FirstWrite -1}
		weights_load_5932 {Type I LastRead 0 FirstWrite -1}
		weights_load_5933 {Type I LastRead 0 FirstWrite -1}
		weights_load_5934 {Type I LastRead 0 FirstWrite -1}
		weights_load_5935 {Type I LastRead 0 FirstWrite -1}
		weights_load_5936 {Type I LastRead 0 FirstWrite -1}
		weights_load_5937 {Type I LastRead 0 FirstWrite -1}
		weights_load_5938 {Type I LastRead 0 FirstWrite -1}
		weights_load_5939 {Type I LastRead 0 FirstWrite -1}
		weights_load_5940 {Type I LastRead 0 FirstWrite -1}
		weights_load_5941 {Type I LastRead 0 FirstWrite -1}
		weights_load_5942 {Type I LastRead 0 FirstWrite -1}
		weights_load_5943 {Type I LastRead 0 FirstWrite -1}
		weights_load_5944 {Type I LastRead 0 FirstWrite -1}
		weights_load_5945 {Type I LastRead 0 FirstWrite -1}
		weights_load_5946 {Type I LastRead 0 FirstWrite -1}
		weights_load_5947 {Type I LastRead 0 FirstWrite -1}
		weights_load_5948 {Type I LastRead 0 FirstWrite -1}
		weights_load_5949 {Type I LastRead 0 FirstWrite -1}
		weights_load_5950 {Type I LastRead 0 FirstWrite -1}
		weights_load_5951 {Type I LastRead 0 FirstWrite -1}
		weights_load_5952 {Type I LastRead 0 FirstWrite -1}
		weights_load_5953 {Type I LastRead 0 FirstWrite -1}
		weights_load_5954 {Type I LastRead 0 FirstWrite -1}
		weights_load_5955 {Type I LastRead 0 FirstWrite -1}
		weights_load_5956 {Type I LastRead 0 FirstWrite -1}
		weights_load_5957 {Type I LastRead 0 FirstWrite -1}
		weights_load_5958 {Type I LastRead 0 FirstWrite -1}
		weights_load_5959 {Type I LastRead 0 FirstWrite -1}
		weights_load_5960 {Type I LastRead 0 FirstWrite -1}
		weights_load_5961 {Type I LastRead 0 FirstWrite -1}
		weights_load_5962 {Type I LastRead 0 FirstWrite -1}
		weights_load_5963 {Type I LastRead 0 FirstWrite -1}
		weights_load_5964 {Type I LastRead 0 FirstWrite -1}
		weights_load_5965 {Type I LastRead 0 FirstWrite -1}
		weights_load_5966 {Type I LastRead 0 FirstWrite -1}
		weights_load_5967 {Type I LastRead 0 FirstWrite -1}
		weights_load_5968 {Type I LastRead 0 FirstWrite -1}
		weights_load_5969 {Type I LastRead 0 FirstWrite -1}
		weights_load_5970 {Type I LastRead 0 FirstWrite -1}
		weights_load_5971 {Type I LastRead 0 FirstWrite -1}
		weights_load_5972 {Type I LastRead 0 FirstWrite -1}
		weights_load_5973 {Type I LastRead 0 FirstWrite -1}
		weights_load_5974 {Type I LastRead 0 FirstWrite -1}
		weights_load_5975 {Type I LastRead 0 FirstWrite -1}
		weights_load_5976 {Type I LastRead 0 FirstWrite -1}
		weights_load_5977 {Type I LastRead 0 FirstWrite -1}
		weights_load_5978 {Type I LastRead 0 FirstWrite -1}
		weights_load_5979 {Type I LastRead 0 FirstWrite -1}
		weights_load_5980 {Type I LastRead 0 FirstWrite -1}
		weights_load_5981 {Type I LastRead 0 FirstWrite -1}
		weights_load_5982 {Type I LastRead 0 FirstWrite -1}
		weights_load_5983 {Type I LastRead 0 FirstWrite -1}
		weights_load_5984 {Type I LastRead 0 FirstWrite -1}
		weights_load_5985 {Type I LastRead 0 FirstWrite -1}
		weights_load_5986 {Type I LastRead 0 FirstWrite -1}
		weights_load_5987 {Type I LastRead 0 FirstWrite -1}
		weights_load_5988 {Type I LastRead 0 FirstWrite -1}
		weights_load_5989 {Type I LastRead 0 FirstWrite -1}
		weights_load_5990 {Type I LastRead 0 FirstWrite -1}
		weights_load_5991 {Type I LastRead 0 FirstWrite -1}
		weights_load_5992 {Type I LastRead 0 FirstWrite -1}
		weights_load_5993 {Type I LastRead 0 FirstWrite -1}
		weights_load_5994 {Type I LastRead 0 FirstWrite -1}
		weights_load_5995 {Type I LastRead 0 FirstWrite -1}
		weights_load_5996 {Type I LastRead 0 FirstWrite -1}
		weights_load_5997 {Type I LastRead 0 FirstWrite -1}
		weights_load_5998 {Type I LastRead 0 FirstWrite -1}
		weights_load_5999 {Type I LastRead 0 FirstWrite -1}
		weights_load_6000 {Type I LastRead 0 FirstWrite -1}
		weights_load_6001 {Type I LastRead 0 FirstWrite -1}
		weights_load_6002 {Type I LastRead 0 FirstWrite -1}
		weights_load_6003 {Type I LastRead 0 FirstWrite -1}
		weights_load_6004 {Type I LastRead 0 FirstWrite -1}
		weights_load_6005 {Type I LastRead 0 FirstWrite -1}
		weights_load_6006 {Type I LastRead 0 FirstWrite -1}
		weights_load_6007 {Type I LastRead 0 FirstWrite -1}
		weights_load_6008 {Type I LastRead 0 FirstWrite -1}
		weights_load_6009 {Type I LastRead 0 FirstWrite -1}
		weights_load_6010 {Type I LastRead 0 FirstWrite -1}
		weights_load_6011 {Type I LastRead 0 FirstWrite -1}
		weights_load_6012 {Type I LastRead 0 FirstWrite -1}
		weights_load_6013 {Type I LastRead 0 FirstWrite -1}
		weights_load_6014 {Type I LastRead 0 FirstWrite -1}
		weights_load_6015 {Type I LastRead 0 FirstWrite -1}
		weights_load_6016 {Type I LastRead 0 FirstWrite -1}
		weights_load_6017 {Type I LastRead 0 FirstWrite -1}
		weights_load_6018 {Type I LastRead 0 FirstWrite -1}
		weights_load_6019 {Type I LastRead 0 FirstWrite -1}
		weights_load_6020 {Type I LastRead 0 FirstWrite -1}
		weights_load_6021 {Type I LastRead 0 FirstWrite -1}
		weights_load_6022 {Type I LastRead 0 FirstWrite -1}
		weights_load_6023 {Type I LastRead 0 FirstWrite -1}
		weights_load_6024 {Type I LastRead 0 FirstWrite -1}
		weights_load_6025 {Type I LastRead 0 FirstWrite -1}
		weights_load_6026 {Type I LastRead 0 FirstWrite -1}
		weights_load_6027 {Type I LastRead 0 FirstWrite -1}
		weights_load_6028 {Type I LastRead 0 FirstWrite -1}
		weights_load_6029 {Type I LastRead 0 FirstWrite -1}
		weights_load_6030 {Type I LastRead 0 FirstWrite -1}
		weights_load_6031 {Type I LastRead 0 FirstWrite -1}
		weights_load_6032 {Type I LastRead 0 FirstWrite -1}
		weights_load_6033 {Type I LastRead 0 FirstWrite -1}
		weights_load_6034 {Type I LastRead 0 FirstWrite -1}
		weights_load_6035 {Type I LastRead 0 FirstWrite -1}
		weights_load_6036 {Type I LastRead 0 FirstWrite -1}
		weights_load_6037 {Type I LastRead 0 FirstWrite -1}
		weights_load_6038 {Type I LastRead 0 FirstWrite -1}
		weights_load_6039 {Type I LastRead 0 FirstWrite -1}
		weights_load_6040 {Type I LastRead 0 FirstWrite -1}
		weights_load_6041 {Type I LastRead 0 FirstWrite -1}
		weights_load_6042 {Type I LastRead 0 FirstWrite -1}
		weights_load_6043 {Type I LastRead 0 FirstWrite -1}
		weights_load_6044 {Type I LastRead 0 FirstWrite -1}
		weights_load_6045 {Type I LastRead 0 FirstWrite -1}
		weights_load_6046 {Type I LastRead 0 FirstWrite -1}
		weights_load_6047 {Type I LastRead 0 FirstWrite -1}
		weights_load_6048 {Type I LastRead 0 FirstWrite -1}
		weights_load_6049 {Type I LastRead 0 FirstWrite -1}
		weights_load_6050 {Type I LastRead 0 FirstWrite -1}
		weights_load_6051 {Type I LastRead 0 FirstWrite -1}
		weights_load_6052 {Type I LastRead 0 FirstWrite -1}
		weights_load_6053 {Type I LastRead 0 FirstWrite -1}
		weights_load_6054 {Type I LastRead 0 FirstWrite -1}
		weights_load_6055 {Type I LastRead 0 FirstWrite -1}
		weights_load_6056 {Type I LastRead 0 FirstWrite -1}
		weights_load_6057 {Type I LastRead 0 FirstWrite -1}
		weights_load_6058 {Type I LastRead 0 FirstWrite -1}
		weights_load_6059 {Type I LastRead 0 FirstWrite -1}
		weights_load_6060 {Type I LastRead 0 FirstWrite -1}
		weights_load_6061 {Type I LastRead 0 FirstWrite -1}
		weights_load_6062 {Type I LastRead 0 FirstWrite -1}
		weights_load_6063 {Type I LastRead 0 FirstWrite -1}
		weights_load_6064 {Type I LastRead 0 FirstWrite -1}
		weights_load_6065 {Type I LastRead 0 FirstWrite -1}
		weights_load_6066 {Type I LastRead 0 FirstWrite -1}
		weights_load_6067 {Type I LastRead 0 FirstWrite -1}
		weights_load_6068 {Type I LastRead 0 FirstWrite -1}
		weights_load_6069 {Type I LastRead 0 FirstWrite -1}
		weights_load_6070 {Type I LastRead 0 FirstWrite -1}
		weights_load_6071 {Type I LastRead 0 FirstWrite -1}
		weights_load_6072 {Type I LastRead 0 FirstWrite -1}
		weights_load_6073 {Type I LastRead 0 FirstWrite -1}
		weights_load_6074 {Type I LastRead 0 FirstWrite -1}
		weights_load_6075 {Type I LastRead 0 FirstWrite -1}
		weights_load_6076 {Type I LastRead 0 FirstWrite -1}
		weights_load_6077 {Type I LastRead 0 FirstWrite -1}
		weights_load_6078 {Type I LastRead 0 FirstWrite -1}
		weights_load_6079 {Type I LastRead 0 FirstWrite -1}
		weights_load_6080 {Type I LastRead 0 FirstWrite -1}
		weights_load_6081 {Type I LastRead 0 FirstWrite -1}
		weights_load_6082 {Type I LastRead 0 FirstWrite -1}
		weights_load_6083 {Type I LastRead 0 FirstWrite -1}
		weights_load_6084 {Type I LastRead 0 FirstWrite -1}
		weights_load_6085 {Type I LastRead 0 FirstWrite -1}
		weights_load_6086 {Type I LastRead 0 FirstWrite -1}
		weights_load_6087 {Type I LastRead 0 FirstWrite -1}
		weights_load_6088 {Type I LastRead 0 FirstWrite -1}
		weights_load_6089 {Type I LastRead 0 FirstWrite -1}
		weights_load_6090 {Type I LastRead 0 FirstWrite -1}
		weights_load_6091 {Type I LastRead 0 FirstWrite -1}
		weights_load_6092 {Type I LastRead 0 FirstWrite -1}
		weights_load_6093 {Type I LastRead 0 FirstWrite -1}
		weights_load_6094 {Type I LastRead 0 FirstWrite -1}
		weights_load_6095 {Type I LastRead 0 FirstWrite -1}
		weights_load_6096 {Type I LastRead 0 FirstWrite -1}
		weights_load_6097 {Type I LastRead 0 FirstWrite -1}
		weights_load_6098 {Type I LastRead 0 FirstWrite -1}
		weights_load_6099 {Type I LastRead 0 FirstWrite -1}
		weights_load_6100 {Type I LastRead 0 FirstWrite -1}
		weights_load_6101 {Type I LastRead 0 FirstWrite -1}
		weights_load_6102 {Type I LastRead 0 FirstWrite -1}
		weights_load_6103 {Type I LastRead 0 FirstWrite -1}
		weights_load_6104 {Type I LastRead 0 FirstWrite -1}
		weights_load_6105 {Type I LastRead 0 FirstWrite -1}
		weights_load_6106 {Type I LastRead 0 FirstWrite -1}
		weights_load_6107 {Type I LastRead 0 FirstWrite -1}
		weights_load_6108 {Type I LastRead 0 FirstWrite -1}
		weights_load_6109 {Type I LastRead 0 FirstWrite -1}
		weights_load_6110 {Type I LastRead 0 FirstWrite -1}
		weights_load_6111 {Type I LastRead 0 FirstWrite -1}
		weights_load_6112 {Type I LastRead 0 FirstWrite -1}
		weights_load_6113 {Type I LastRead 0 FirstWrite -1}
		weights_load_6114 {Type I LastRead 0 FirstWrite -1}
		weights_load_6115 {Type I LastRead 0 FirstWrite -1}
		weights_load_6116 {Type I LastRead 0 FirstWrite -1}
		weights_load_6117 {Type I LastRead 0 FirstWrite -1}
		weights_load_6118 {Type I LastRead 0 FirstWrite -1}
		weights_load_6119 {Type I LastRead 0 FirstWrite -1}
		weights_load_6120 {Type I LastRead 0 FirstWrite -1}
		weights_load_6121 {Type I LastRead 0 FirstWrite -1}
		weights_load_6122 {Type I LastRead 0 FirstWrite -1}
		weights_load_6123 {Type I LastRead 0 FirstWrite -1}
		weights_load_6124 {Type I LastRead 0 FirstWrite -1}
		weights_load_6125 {Type I LastRead 0 FirstWrite -1}
		weights_load_6126 {Type I LastRead 0 FirstWrite -1}
		weights_load_6127 {Type I LastRead 0 FirstWrite -1}
		weights_load_6128 {Type I LastRead 0 FirstWrite -1}
		weights_load_6129 {Type I LastRead 0 FirstWrite -1}
		weights_load_6130 {Type I LastRead 0 FirstWrite -1}
		weights_load_6131 {Type I LastRead 0 FirstWrite -1}
		weights_load_6132 {Type I LastRead 0 FirstWrite -1}
		weights_load_6133 {Type I LastRead 0 FirstWrite -1}
		weights_load_6134 {Type I LastRead 0 FirstWrite -1}
		weights_load_6135 {Type I LastRead 0 FirstWrite -1}
		weights_load_6136 {Type I LastRead 0 FirstWrite -1}
		weights_load_6137 {Type I LastRead 0 FirstWrite -1}
		weights_load_6138 {Type I LastRead 0 FirstWrite -1}
		weights_load_6139 {Type I LastRead 0 FirstWrite -1}
		weights_load_6140 {Type I LastRead 0 FirstWrite -1}
		weights_load_6141 {Type I LastRead 0 FirstWrite -1}
		weights_load_6142 {Type I LastRead 0 FirstWrite -1}
		weights_load_6143 {Type I LastRead 0 FirstWrite -1}
		weights_load_6144 {Type I LastRead 0 FirstWrite -1}
		weights_load_6145 {Type I LastRead 0 FirstWrite -1}
		weights_load_6146 {Type I LastRead 0 FirstWrite -1}
		weights_load_6147 {Type I LastRead 0 FirstWrite -1}
		weights_load_6148 {Type I LastRead 0 FirstWrite -1}
		weights_load_6149 {Type I LastRead 0 FirstWrite -1}
		weights_load_6150 {Type I LastRead 0 FirstWrite -1}
		weights_load_6151 {Type I LastRead 0 FirstWrite -1}
		weights_load_6152 {Type I LastRead 0 FirstWrite -1}
		weights_load_6153 {Type I LastRead 0 FirstWrite -1}
		weights_load_6154 {Type I LastRead 0 FirstWrite -1}
		weights_load_6155 {Type I LastRead 0 FirstWrite -1}
		weights_load_6156 {Type I LastRead 0 FirstWrite -1}
		weights_load_6157 {Type I LastRead 0 FirstWrite -1}
		weights_load_6158 {Type I LastRead 0 FirstWrite -1}
		weights_load_6159 {Type I LastRead 0 FirstWrite -1}
		weights_load_6160 {Type I LastRead 0 FirstWrite -1}
		weights_load_6161 {Type I LastRead 0 FirstWrite -1}
		weights_load_6162 {Type I LastRead 0 FirstWrite -1}
		weights_load_6163 {Type I LastRead 0 FirstWrite -1}
		weights_load_6164 {Type I LastRead 0 FirstWrite -1}
		weights_load_6165 {Type I LastRead 0 FirstWrite -1}
		weights_load_6166 {Type I LastRead 0 FirstWrite -1}
		weights_load_6167 {Type I LastRead 0 FirstWrite -1}
		weights_load_6168 {Type I LastRead 0 FirstWrite -1}
		weights_load_6169 {Type I LastRead 0 FirstWrite -1}
		weights_load_6170 {Type I LastRead 0 FirstWrite -1}
		weights_load_6171 {Type I LastRead 0 FirstWrite -1}
		weights_load_6172 {Type I LastRead 0 FirstWrite -1}
		weights_load_6173 {Type I LastRead 0 FirstWrite -1}
		weights_load_6174 {Type I LastRead 0 FirstWrite -1}
		weights_load_6175 {Type I LastRead 0 FirstWrite -1}
		weights_load_6176 {Type I LastRead 0 FirstWrite -1}
		weights_load_6177 {Type I LastRead 0 FirstWrite -1}
		weights_load_6178 {Type I LastRead 0 FirstWrite -1}
		weights_load_6179 {Type I LastRead 0 FirstWrite -1}
		weights_load_6180 {Type I LastRead 0 FirstWrite -1}
		weights_load_6181 {Type I LastRead 0 FirstWrite -1}
		weights_load_6182 {Type I LastRead 0 FirstWrite -1}
		weights_load_6183 {Type I LastRead 0 FirstWrite -1}
		weights_load_6184 {Type I LastRead 0 FirstWrite -1}
		weights_load_6185 {Type I LastRead 0 FirstWrite -1}
		weights_load_6186 {Type I LastRead 0 FirstWrite -1}
		weights_load_6187 {Type I LastRead 0 FirstWrite -1}
		weights_load_6188 {Type I LastRead 0 FirstWrite -1}
		weights_load_6189 {Type I LastRead 0 FirstWrite -1}
		weights_load_6190 {Type I LastRead 0 FirstWrite -1}
		weights_load_6191 {Type I LastRead 0 FirstWrite -1}
		weights_load_6192 {Type I LastRead 0 FirstWrite -1}
		weights_load_6193 {Type I LastRead 0 FirstWrite -1}
		weights_load_6194 {Type I LastRead 0 FirstWrite -1}
		weights_load_6195 {Type I LastRead 0 FirstWrite -1}
		weights_load_6196 {Type I LastRead 0 FirstWrite -1}
		weights_load_6197 {Type I LastRead 0 FirstWrite -1}
		weights_load_6198 {Type I LastRead 0 FirstWrite -1}
		weights_load_6199 {Type I LastRead 0 FirstWrite -1}
		weights_load_6200 {Type I LastRead 0 FirstWrite -1}
		weights_load_6201 {Type I LastRead 0 FirstWrite -1}
		weights_load_6202 {Type I LastRead 0 FirstWrite -1}
		weights_load_6203 {Type I LastRead 0 FirstWrite -1}
		weights_load_6204 {Type I LastRead 0 FirstWrite -1}
		weights_load_6205 {Type I LastRead 0 FirstWrite -1}
		weights_load_6206 {Type I LastRead 0 FirstWrite -1}
		weights_load_6207 {Type I LastRead 0 FirstWrite -1}
		weights_load_6208 {Type I LastRead 0 FirstWrite -1}
		weights_load_6209 {Type I LastRead 0 FirstWrite -1}
		weights_load_6210 {Type I LastRead 0 FirstWrite -1}
		weights_load_6211 {Type I LastRead 0 FirstWrite -1}
		weights_load_6212 {Type I LastRead 0 FirstWrite -1}
		weights_load_6213 {Type I LastRead 0 FirstWrite -1}
		weights_load_6214 {Type I LastRead 0 FirstWrite -1}
		weights_load_6215 {Type I LastRead 0 FirstWrite -1}
		weights_load_6216 {Type I LastRead 0 FirstWrite -1}
		weights_load_6217 {Type I LastRead 0 FirstWrite -1}
		weights_load_6218 {Type I LastRead 0 FirstWrite -1}
		weights_load_6219 {Type I LastRead 0 FirstWrite -1}
		weights_load_6220 {Type I LastRead 0 FirstWrite -1}
		weights_load_6221 {Type I LastRead 0 FirstWrite -1}
		weights_load_6222 {Type I LastRead 0 FirstWrite -1}
		weights_load_6223 {Type I LastRead 0 FirstWrite -1}
		weights_load_6224 {Type I LastRead 0 FirstWrite -1}
		weights_load_6225 {Type I LastRead 0 FirstWrite -1}
		weights_load_6226 {Type I LastRead 0 FirstWrite -1}
		weights_load_6227 {Type I LastRead 0 FirstWrite -1}
		weights_load_6228 {Type I LastRead 0 FirstWrite -1}
		weights_load_6229 {Type I LastRead 0 FirstWrite -1}
		weights_load_6230 {Type I LastRead 0 FirstWrite -1}
		weights_load_6231 {Type I LastRead 0 FirstWrite -1}
		weights_load_6232 {Type I LastRead 0 FirstWrite -1}
		weights_load_6233 {Type I LastRead 0 FirstWrite -1}
		weights_load_6234 {Type I LastRead 0 FirstWrite -1}
		weights_load_6235 {Type I LastRead 0 FirstWrite -1}
		weights_load_6236 {Type I LastRead 0 FirstWrite -1}
		weights_load_6237 {Type I LastRead 0 FirstWrite -1}
		weights_load_6238 {Type I LastRead 0 FirstWrite -1}
		weights_load_6239 {Type I LastRead 0 FirstWrite -1}
		weights_load_6240 {Type I LastRead 0 FirstWrite -1}
		weights_load_6241 {Type I LastRead 0 FirstWrite -1}
		weights_load_6242 {Type I LastRead 0 FirstWrite -1}
		weights_load_6243 {Type I LastRead 0 FirstWrite -1}
		weights_load_6244 {Type I LastRead 0 FirstWrite -1}
		weights_load_6245 {Type I LastRead 0 FirstWrite -1}
		weights_load_6246 {Type I LastRead 0 FirstWrite -1}
		weights_load_6247 {Type I LastRead 0 FirstWrite -1}
		weights_load_6248 {Type I LastRead 0 FirstWrite -1}
		weights_load_6249 {Type I LastRead 0 FirstWrite -1}
		weights_load_6250 {Type I LastRead 0 FirstWrite -1}
		weights_load_6251 {Type I LastRead 0 FirstWrite -1}
		weights_load_6252 {Type I LastRead 0 FirstWrite -1}
		weights_load_6253 {Type I LastRead 0 FirstWrite -1}
		weights_load_6254 {Type I LastRead 0 FirstWrite -1}
		weights_load_6255 {Type I LastRead 0 FirstWrite -1}
		weights_load_6256 {Type I LastRead 0 FirstWrite -1}
		weights_load_6257 {Type I LastRead 0 FirstWrite -1}
		weights_load_6258 {Type I LastRead 0 FirstWrite -1}
		weights_load_6259 {Type I LastRead 0 FirstWrite -1}
		weights_load_6260 {Type I LastRead 0 FirstWrite -1}
		weights_load_6261 {Type I LastRead 0 FirstWrite -1}
		weights_load_6262 {Type I LastRead 0 FirstWrite -1}
		weights_load_6263 {Type I LastRead 0 FirstWrite -1}
		weights_load_6264 {Type I LastRead 0 FirstWrite -1}
		weights_load_6265 {Type I LastRead 0 FirstWrite -1}
		weights_load_6266 {Type I LastRead 0 FirstWrite -1}
		weights_load_6267 {Type I LastRead 0 FirstWrite -1}
		weights_load_6268 {Type I LastRead 0 FirstWrite -1}
		weights_load_6269 {Type I LastRead 0 FirstWrite -1}
		weights_load_6270 {Type I LastRead 0 FirstWrite -1}
		weights_load_6271 {Type I LastRead 0 FirstWrite -1}
		weights_load_6272 {Type I LastRead 0 FirstWrite -1}
		weights_load_6273 {Type I LastRead 0 FirstWrite -1}
		weights_load_6274 {Type I LastRead 0 FirstWrite -1}
		weights_load_6275 {Type I LastRead 0 FirstWrite -1}
		weights_load_6276 {Type I LastRead 0 FirstWrite -1}
		weights_load_6277 {Type I LastRead 0 FirstWrite -1}
		weights_load_6278 {Type I LastRead 0 FirstWrite -1}
		weights_load_6279 {Type I LastRead 0 FirstWrite -1}
		weights_load_6280 {Type I LastRead 0 FirstWrite -1}
		weights_load_6281 {Type I LastRead 0 FirstWrite -1}
		weights_load_6282 {Type I LastRead 0 FirstWrite -1}
		weights_load_6283 {Type I LastRead 0 FirstWrite -1}
		weights_load_6284 {Type I LastRead 0 FirstWrite -1}
		weights_load_6285 {Type I LastRead 0 FirstWrite -1}
		weights_load_6286 {Type I LastRead 0 FirstWrite -1}
		weights_load_6287 {Type I LastRead 0 FirstWrite -1}
		weights_load_6288 {Type I LastRead 0 FirstWrite -1}
		weights_load_6289 {Type I LastRead 0 FirstWrite -1}
		weights_load_6290 {Type I LastRead 0 FirstWrite -1}
		weights_load_6291 {Type I LastRead 0 FirstWrite -1}
		weights_load_6292 {Type I LastRead 0 FirstWrite -1}
		weights_load_6293 {Type I LastRead 0 FirstWrite -1}
		weights_load_6294 {Type I LastRead 0 FirstWrite -1}
		weights_load_6295 {Type I LastRead 0 FirstWrite -1}
		weights_load_6296 {Type I LastRead 0 FirstWrite -1}
		weights_load_6297 {Type I LastRead 0 FirstWrite -1}
		weights_load_6298 {Type I LastRead 0 FirstWrite -1}
		weights_load_6299 {Type I LastRead 0 FirstWrite -1}
		weights_load_6300 {Type I LastRead 0 FirstWrite -1}
		weights_load_6301 {Type I LastRead 0 FirstWrite -1}
		weights_load_6302 {Type I LastRead 0 FirstWrite -1}
		weights_load_6303 {Type I LastRead 0 FirstWrite -1}
		weights_load_6304 {Type I LastRead 0 FirstWrite -1}
		weights_load_6305 {Type I LastRead 0 FirstWrite -1}
		weights_load_6306 {Type I LastRead 0 FirstWrite -1}
		weights_load_6307 {Type I LastRead 0 FirstWrite -1}
		weights_load_6308 {Type I LastRead 0 FirstWrite -1}
		weights_load_6309 {Type I LastRead 0 FirstWrite -1}
		weights_load_6310 {Type I LastRead 0 FirstWrite -1}
		weights_load_6311 {Type I LastRead 0 FirstWrite -1}
		weights_load_6312 {Type I LastRead 0 FirstWrite -1}
		weights_load_6313 {Type I LastRead 0 FirstWrite -1}
		weights_load_6314 {Type I LastRead 0 FirstWrite -1}
		weights_load_6315 {Type I LastRead 0 FirstWrite -1}
		weights_load_6316 {Type I LastRead 0 FirstWrite -1}
		weights_load_6317 {Type I LastRead 0 FirstWrite -1}
		weights_load_6318 {Type I LastRead 0 FirstWrite -1}
		weights_load_6319 {Type I LastRead 0 FirstWrite -1}
		weights_load_6320 {Type I LastRead 0 FirstWrite -1}
		weights_load_6321 {Type I LastRead 0 FirstWrite -1}
		weights_load_6322 {Type I LastRead 0 FirstWrite -1}
		weights_load_6323 {Type I LastRead 0 FirstWrite -1}
		weights_load_6324 {Type I LastRead 0 FirstWrite -1}
		weights_load_6325 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_28 { ap_fifo {  { conv2d_64_padded_window_stream_28_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_28_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_28_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_28_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_28_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_28 { ap_fifo {  { in_channel_map_stream_28_din fifo_port_we 1 32 }  { in_channel_map_stream_28_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_28_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_28_full_n fifo_status 0 1 }  { in_channel_map_stream_28_write fifo_data 1 1 } } }
}
