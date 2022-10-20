set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_10
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.10}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_10 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_10 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_10", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_10", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_10_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_10_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_10_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_10_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_10_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_10_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_10_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_10_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_10_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_10_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_10_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_10", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_10_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_10", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_10_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_10", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_10_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_10", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_10_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_10", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_10_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_10", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_10_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_10", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_10_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_10", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_10_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_10", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_10_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_10", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_10",
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
			{"Name" : "conv2d_64_padded_window_stream_10", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_10_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_10", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_10_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_10", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_10_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_10_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_10", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16676", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16677", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16678", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16679", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16680", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16681", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16682", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16683", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_10", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_16684", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16685", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16686", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16687", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16688", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16689", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16690", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16691", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16692", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16693", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16694", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16695", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16696", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16697", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16698", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16699", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16700", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16701", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16702", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16703", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16704", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16705", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16706", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16707", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16708", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16709", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16710", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16711", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16712", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16713", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16714", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16715", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16716", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16717", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16718", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16719", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16720", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16721", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16722", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16723", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16724", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16725", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16726", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16727", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16728", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16729", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16730", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16731", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16732", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16733", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16734", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16735", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16736", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16737", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16738", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16739", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16740", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16741", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16742", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16743", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16744", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16745", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16746", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16747", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16748", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16749", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16750", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16751", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16752", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16753", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16754", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16755", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16756", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16757", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16758", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16759", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16760", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16761", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16762", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16763", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16764", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16765", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16766", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16767", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16768", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16769", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16770", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16771", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16772", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16773", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16774", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16775", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16776", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16777", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16778", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16779", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16780", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16781", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16782", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16783", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16784", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16785", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16786", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16787", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16788", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16789", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16790", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16791", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16792", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16793", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16794", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16795", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16796", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16797", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16798", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16799", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16800", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16801", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16802", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16803", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16804", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16805", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16806", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16807", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16808", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16809", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16810", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16811", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16812", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16813", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16814", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16815", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16816", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16817", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16818", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16819", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16820", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16821", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16822", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16823", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16824", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16825", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16826", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16827", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16828", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16829", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16830", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16831", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16832", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16833", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16834", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16835", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16836", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16837", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16838", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16839", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16840", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16841", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16842", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16843", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16844", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16845", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16846", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16847", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16848", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16849", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16850", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16851", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16852", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16853", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16854", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16855", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16856", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16857", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16858", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16859", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16860", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16861", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16862", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16863", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16864", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16865", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16866", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16867", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16868", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16869", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16870", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16871", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16872", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16873", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16874", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16875", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16876", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16877", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16878", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16879", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16880", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16881", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16882", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16883", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16884", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16885", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16886", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16887", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16888", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16889", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16890", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16891", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16892", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16893", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16894", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16895", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16896", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16897", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16898", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16899", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16900", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16901", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16902", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16903", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16904", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16905", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16906", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16907", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16908", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16909", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16910", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16911", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16912", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16913", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16914", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16915", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16916", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16917", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16918", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16919", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16920", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16921", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16922", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16923", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16924", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16925", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16926", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16927", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16928", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16929", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16930", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16931", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16932", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16933", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16934", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16935", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16936", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16937", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16938", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16939", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16940", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16941", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16942", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16943", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16944", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16945", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16946", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16947", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16948", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16949", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16950", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16951", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16952", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16953", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16954", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16955", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16956", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16957", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16958", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16959", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16960", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16961", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16962", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16963", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16964", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16965", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16966", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16967", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16968", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16969", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16970", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16971", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16972", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16973", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16974", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16975", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16976", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16977", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16978", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16979", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16980", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16981", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16982", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16983", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16984", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16985", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16986", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16987", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16988", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16989", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16990", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16991", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16992", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16993", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16994", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16995", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16996", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16997", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16998", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16999", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17000", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17001", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17002", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17003", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17004", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17005", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17006", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17007", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17008", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17009", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17010", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17011", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17012", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17013", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17014", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17015", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17016", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17017", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17018", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17019", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17020", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17021", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17022", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17023", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17024", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17025", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17026", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17027", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17028", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17029", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17030", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17031", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17032", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17033", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17034", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17035", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17036", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17037", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17038", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17039", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17040", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17041", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17042", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17043", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17044", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17045", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17046", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17047", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17048", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17049", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17050", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17051", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17052", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17053", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17054", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17055", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17056", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17057", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17058", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17059", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17060", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17061", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17062", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17063", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17064", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17065", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17066", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17067", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17068", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17069", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17070", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17071", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17072", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17073", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17074", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17075", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17076", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17077", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17078", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17079", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17080", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17081", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17082", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17083", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17084", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17085", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17086", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17087", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17088", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17089", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17090", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17091", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17092", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17093", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17094", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17095", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17096", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17097", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17098", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17099", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17100", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17101", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17102", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17103", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17104", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17105", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17106", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17107", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17108", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17109", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17110", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17111", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17112", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17113", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17114", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17115", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17116", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17117", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17118", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17119", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17120", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17121", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17122", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17123", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17124", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17125", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17126", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17127", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17128", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17129", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17130", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17131", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17132", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17133", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17134", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17135", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17136", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17137", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17138", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17139", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17140", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17141", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17142", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17143", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17144", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17145", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17146", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17147", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17148", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17149", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17150", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17151", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17152", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17153", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17154", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17155", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17156", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17157", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17158", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17159", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17160", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17161", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17162", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17163", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17164", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17165", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17166", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17167", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17168", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17169", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17170", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17171", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17172", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17173", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17174", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17175", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17176", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17177", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17178", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17179", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17180", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17181", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17182", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17183", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17184", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17185", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17186", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17187", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17188", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17189", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17190", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17191", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17192", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17193", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17194", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17195", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17196", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17197", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17198", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17199", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17200", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17201", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17202", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17203", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17204", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17205", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17206", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17207", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17208", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17209", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17210", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17211", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17212", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17213", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17214", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17215", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17216", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17217", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17218", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17219", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17220", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17221", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17222", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17223", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17224", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17225", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17226", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17227", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17228", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17229", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17230", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17231", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17232", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17233", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17234", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17235", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17236", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17237", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17238", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17239", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17240", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17241", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17242", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17243", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17244", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17245", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17246", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17247", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17248", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17249", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17250", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_10_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U6536", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_10_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U6537", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_10_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U6538", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_10_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U6539", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_10_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U6540", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_10_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U6541", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_10_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U6542", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_10_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U6543", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_10_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U6544", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_10_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U6545", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_10_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U6546", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_10_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U6547", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_10_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U6548", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_10_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U6549", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_10_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U6550", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_10_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U6551", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_10_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U6552", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_10_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_10 {
		conv2d_64_padded_window_stream_10 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_10 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_10_Pipeline_inputs {
		conv2d_64_padded_window_stream_10 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_16676 {Type I LastRead 0 FirstWrite -1}
		weights_load_16677 {Type I LastRead 0 FirstWrite -1}
		weights_load_16678 {Type I LastRead 0 FirstWrite -1}
		weights_load_16679 {Type I LastRead 0 FirstWrite -1}
		weights_load_16680 {Type I LastRead 0 FirstWrite -1}
		weights_load_16681 {Type I LastRead 0 FirstWrite -1}
		weights_load_16682 {Type I LastRead 0 FirstWrite -1}
		weights_load_16683 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_10 {Type O LastRead -1 FirstWrite 16}
		weights_load_16684 {Type I LastRead 0 FirstWrite -1}
		weights_load_16685 {Type I LastRead 0 FirstWrite -1}
		weights_load_16686 {Type I LastRead 0 FirstWrite -1}
		weights_load_16687 {Type I LastRead 0 FirstWrite -1}
		weights_load_16688 {Type I LastRead 0 FirstWrite -1}
		weights_load_16689 {Type I LastRead 0 FirstWrite -1}
		weights_load_16690 {Type I LastRead 0 FirstWrite -1}
		weights_load_16691 {Type I LastRead 0 FirstWrite -1}
		weights_load_16692 {Type I LastRead 0 FirstWrite -1}
		weights_load_16693 {Type I LastRead 0 FirstWrite -1}
		weights_load_16694 {Type I LastRead 0 FirstWrite -1}
		weights_load_16695 {Type I LastRead 0 FirstWrite -1}
		weights_load_16696 {Type I LastRead 0 FirstWrite -1}
		weights_load_16697 {Type I LastRead 0 FirstWrite -1}
		weights_load_16698 {Type I LastRead 0 FirstWrite -1}
		weights_load_16699 {Type I LastRead 0 FirstWrite -1}
		weights_load_16700 {Type I LastRead 0 FirstWrite -1}
		weights_load_16701 {Type I LastRead 0 FirstWrite -1}
		weights_load_16702 {Type I LastRead 0 FirstWrite -1}
		weights_load_16703 {Type I LastRead 0 FirstWrite -1}
		weights_load_16704 {Type I LastRead 0 FirstWrite -1}
		weights_load_16705 {Type I LastRead 0 FirstWrite -1}
		weights_load_16706 {Type I LastRead 0 FirstWrite -1}
		weights_load_16707 {Type I LastRead 0 FirstWrite -1}
		weights_load_16708 {Type I LastRead 0 FirstWrite -1}
		weights_load_16709 {Type I LastRead 0 FirstWrite -1}
		weights_load_16710 {Type I LastRead 0 FirstWrite -1}
		weights_load_16711 {Type I LastRead 0 FirstWrite -1}
		weights_load_16712 {Type I LastRead 0 FirstWrite -1}
		weights_load_16713 {Type I LastRead 0 FirstWrite -1}
		weights_load_16714 {Type I LastRead 0 FirstWrite -1}
		weights_load_16715 {Type I LastRead 0 FirstWrite -1}
		weights_load_16716 {Type I LastRead 0 FirstWrite -1}
		weights_load_16717 {Type I LastRead 0 FirstWrite -1}
		weights_load_16718 {Type I LastRead 0 FirstWrite -1}
		weights_load_16719 {Type I LastRead 0 FirstWrite -1}
		weights_load_16720 {Type I LastRead 0 FirstWrite -1}
		weights_load_16721 {Type I LastRead 0 FirstWrite -1}
		weights_load_16722 {Type I LastRead 0 FirstWrite -1}
		weights_load_16723 {Type I LastRead 0 FirstWrite -1}
		weights_load_16724 {Type I LastRead 0 FirstWrite -1}
		weights_load_16725 {Type I LastRead 0 FirstWrite -1}
		weights_load_16726 {Type I LastRead 0 FirstWrite -1}
		weights_load_16727 {Type I LastRead 0 FirstWrite -1}
		weights_load_16728 {Type I LastRead 0 FirstWrite -1}
		weights_load_16729 {Type I LastRead 0 FirstWrite -1}
		weights_load_16730 {Type I LastRead 0 FirstWrite -1}
		weights_load_16731 {Type I LastRead 0 FirstWrite -1}
		weights_load_16732 {Type I LastRead 0 FirstWrite -1}
		weights_load_16733 {Type I LastRead 0 FirstWrite -1}
		weights_load_16734 {Type I LastRead 0 FirstWrite -1}
		weights_load_16735 {Type I LastRead 0 FirstWrite -1}
		weights_load_16736 {Type I LastRead 0 FirstWrite -1}
		weights_load_16737 {Type I LastRead 0 FirstWrite -1}
		weights_load_16738 {Type I LastRead 0 FirstWrite -1}
		weights_load_16739 {Type I LastRead 0 FirstWrite -1}
		weights_load_16740 {Type I LastRead 0 FirstWrite -1}
		weights_load_16741 {Type I LastRead 0 FirstWrite -1}
		weights_load_16742 {Type I LastRead 0 FirstWrite -1}
		weights_load_16743 {Type I LastRead 0 FirstWrite -1}
		weights_load_16744 {Type I LastRead 0 FirstWrite -1}
		weights_load_16745 {Type I LastRead 0 FirstWrite -1}
		weights_load_16746 {Type I LastRead 0 FirstWrite -1}
		weights_load_16747 {Type I LastRead 0 FirstWrite -1}
		weights_load_16748 {Type I LastRead 0 FirstWrite -1}
		weights_load_16749 {Type I LastRead 0 FirstWrite -1}
		weights_load_16750 {Type I LastRead 0 FirstWrite -1}
		weights_load_16751 {Type I LastRead 0 FirstWrite -1}
		weights_load_16752 {Type I LastRead 0 FirstWrite -1}
		weights_load_16753 {Type I LastRead 0 FirstWrite -1}
		weights_load_16754 {Type I LastRead 0 FirstWrite -1}
		weights_load_16755 {Type I LastRead 0 FirstWrite -1}
		weights_load_16756 {Type I LastRead 0 FirstWrite -1}
		weights_load_16757 {Type I LastRead 0 FirstWrite -1}
		weights_load_16758 {Type I LastRead 0 FirstWrite -1}
		weights_load_16759 {Type I LastRead 0 FirstWrite -1}
		weights_load_16760 {Type I LastRead 0 FirstWrite -1}
		weights_load_16761 {Type I LastRead 0 FirstWrite -1}
		weights_load_16762 {Type I LastRead 0 FirstWrite -1}
		weights_load_16763 {Type I LastRead 0 FirstWrite -1}
		weights_load_16764 {Type I LastRead 0 FirstWrite -1}
		weights_load_16765 {Type I LastRead 0 FirstWrite -1}
		weights_load_16766 {Type I LastRead 0 FirstWrite -1}
		weights_load_16767 {Type I LastRead 0 FirstWrite -1}
		weights_load_16768 {Type I LastRead 0 FirstWrite -1}
		weights_load_16769 {Type I LastRead 0 FirstWrite -1}
		weights_load_16770 {Type I LastRead 0 FirstWrite -1}
		weights_load_16771 {Type I LastRead 0 FirstWrite -1}
		weights_load_16772 {Type I LastRead 0 FirstWrite -1}
		weights_load_16773 {Type I LastRead 0 FirstWrite -1}
		weights_load_16774 {Type I LastRead 0 FirstWrite -1}
		weights_load_16775 {Type I LastRead 0 FirstWrite -1}
		weights_load_16776 {Type I LastRead 0 FirstWrite -1}
		weights_load_16777 {Type I LastRead 0 FirstWrite -1}
		weights_load_16778 {Type I LastRead 0 FirstWrite -1}
		weights_load_16779 {Type I LastRead 0 FirstWrite -1}
		weights_load_16780 {Type I LastRead 0 FirstWrite -1}
		weights_load_16781 {Type I LastRead 0 FirstWrite -1}
		weights_load_16782 {Type I LastRead 0 FirstWrite -1}
		weights_load_16783 {Type I LastRead 0 FirstWrite -1}
		weights_load_16784 {Type I LastRead 0 FirstWrite -1}
		weights_load_16785 {Type I LastRead 0 FirstWrite -1}
		weights_load_16786 {Type I LastRead 0 FirstWrite -1}
		weights_load_16787 {Type I LastRead 0 FirstWrite -1}
		weights_load_16788 {Type I LastRead 0 FirstWrite -1}
		weights_load_16789 {Type I LastRead 0 FirstWrite -1}
		weights_load_16790 {Type I LastRead 0 FirstWrite -1}
		weights_load_16791 {Type I LastRead 0 FirstWrite -1}
		weights_load_16792 {Type I LastRead 0 FirstWrite -1}
		weights_load_16793 {Type I LastRead 0 FirstWrite -1}
		weights_load_16794 {Type I LastRead 0 FirstWrite -1}
		weights_load_16795 {Type I LastRead 0 FirstWrite -1}
		weights_load_16796 {Type I LastRead 0 FirstWrite -1}
		weights_load_16797 {Type I LastRead 0 FirstWrite -1}
		weights_load_16798 {Type I LastRead 0 FirstWrite -1}
		weights_load_16799 {Type I LastRead 0 FirstWrite -1}
		weights_load_16800 {Type I LastRead 0 FirstWrite -1}
		weights_load_16801 {Type I LastRead 0 FirstWrite -1}
		weights_load_16802 {Type I LastRead 0 FirstWrite -1}
		weights_load_16803 {Type I LastRead 0 FirstWrite -1}
		weights_load_16804 {Type I LastRead 0 FirstWrite -1}
		weights_load_16805 {Type I LastRead 0 FirstWrite -1}
		weights_load_16806 {Type I LastRead 0 FirstWrite -1}
		weights_load_16807 {Type I LastRead 0 FirstWrite -1}
		weights_load_16808 {Type I LastRead 0 FirstWrite -1}
		weights_load_16809 {Type I LastRead 0 FirstWrite -1}
		weights_load_16810 {Type I LastRead 0 FirstWrite -1}
		weights_load_16811 {Type I LastRead 0 FirstWrite -1}
		weights_load_16812 {Type I LastRead 0 FirstWrite -1}
		weights_load_16813 {Type I LastRead 0 FirstWrite -1}
		weights_load_16814 {Type I LastRead 0 FirstWrite -1}
		weights_load_16815 {Type I LastRead 0 FirstWrite -1}
		weights_load_16816 {Type I LastRead 0 FirstWrite -1}
		weights_load_16817 {Type I LastRead 0 FirstWrite -1}
		weights_load_16818 {Type I LastRead 0 FirstWrite -1}
		weights_load_16819 {Type I LastRead 0 FirstWrite -1}
		weights_load_16820 {Type I LastRead 0 FirstWrite -1}
		weights_load_16821 {Type I LastRead 0 FirstWrite -1}
		weights_load_16822 {Type I LastRead 0 FirstWrite -1}
		weights_load_16823 {Type I LastRead 0 FirstWrite -1}
		weights_load_16824 {Type I LastRead 0 FirstWrite -1}
		weights_load_16825 {Type I LastRead 0 FirstWrite -1}
		weights_load_16826 {Type I LastRead 0 FirstWrite -1}
		weights_load_16827 {Type I LastRead 0 FirstWrite -1}
		weights_load_16828 {Type I LastRead 0 FirstWrite -1}
		weights_load_16829 {Type I LastRead 0 FirstWrite -1}
		weights_load_16830 {Type I LastRead 0 FirstWrite -1}
		weights_load_16831 {Type I LastRead 0 FirstWrite -1}
		weights_load_16832 {Type I LastRead 0 FirstWrite -1}
		weights_load_16833 {Type I LastRead 0 FirstWrite -1}
		weights_load_16834 {Type I LastRead 0 FirstWrite -1}
		weights_load_16835 {Type I LastRead 0 FirstWrite -1}
		weights_load_16836 {Type I LastRead 0 FirstWrite -1}
		weights_load_16837 {Type I LastRead 0 FirstWrite -1}
		weights_load_16838 {Type I LastRead 0 FirstWrite -1}
		weights_load_16839 {Type I LastRead 0 FirstWrite -1}
		weights_load_16840 {Type I LastRead 0 FirstWrite -1}
		weights_load_16841 {Type I LastRead 0 FirstWrite -1}
		weights_load_16842 {Type I LastRead 0 FirstWrite -1}
		weights_load_16843 {Type I LastRead 0 FirstWrite -1}
		weights_load_16844 {Type I LastRead 0 FirstWrite -1}
		weights_load_16845 {Type I LastRead 0 FirstWrite -1}
		weights_load_16846 {Type I LastRead 0 FirstWrite -1}
		weights_load_16847 {Type I LastRead 0 FirstWrite -1}
		weights_load_16848 {Type I LastRead 0 FirstWrite -1}
		weights_load_16849 {Type I LastRead 0 FirstWrite -1}
		weights_load_16850 {Type I LastRead 0 FirstWrite -1}
		weights_load_16851 {Type I LastRead 0 FirstWrite -1}
		weights_load_16852 {Type I LastRead 0 FirstWrite -1}
		weights_load_16853 {Type I LastRead 0 FirstWrite -1}
		weights_load_16854 {Type I LastRead 0 FirstWrite -1}
		weights_load_16855 {Type I LastRead 0 FirstWrite -1}
		weights_load_16856 {Type I LastRead 0 FirstWrite -1}
		weights_load_16857 {Type I LastRead 0 FirstWrite -1}
		weights_load_16858 {Type I LastRead 0 FirstWrite -1}
		weights_load_16859 {Type I LastRead 0 FirstWrite -1}
		weights_load_16860 {Type I LastRead 0 FirstWrite -1}
		weights_load_16861 {Type I LastRead 0 FirstWrite -1}
		weights_load_16862 {Type I LastRead 0 FirstWrite -1}
		weights_load_16863 {Type I LastRead 0 FirstWrite -1}
		weights_load_16864 {Type I LastRead 0 FirstWrite -1}
		weights_load_16865 {Type I LastRead 0 FirstWrite -1}
		weights_load_16866 {Type I LastRead 0 FirstWrite -1}
		weights_load_16867 {Type I LastRead 0 FirstWrite -1}
		weights_load_16868 {Type I LastRead 0 FirstWrite -1}
		weights_load_16869 {Type I LastRead 0 FirstWrite -1}
		weights_load_16870 {Type I LastRead 0 FirstWrite -1}
		weights_load_16871 {Type I LastRead 0 FirstWrite -1}
		weights_load_16872 {Type I LastRead 0 FirstWrite -1}
		weights_load_16873 {Type I LastRead 0 FirstWrite -1}
		weights_load_16874 {Type I LastRead 0 FirstWrite -1}
		weights_load_16875 {Type I LastRead 0 FirstWrite -1}
		weights_load_16876 {Type I LastRead 0 FirstWrite -1}
		weights_load_16877 {Type I LastRead 0 FirstWrite -1}
		weights_load_16878 {Type I LastRead 0 FirstWrite -1}
		weights_load_16879 {Type I LastRead 0 FirstWrite -1}
		weights_load_16880 {Type I LastRead 0 FirstWrite -1}
		weights_load_16881 {Type I LastRead 0 FirstWrite -1}
		weights_load_16882 {Type I LastRead 0 FirstWrite -1}
		weights_load_16883 {Type I LastRead 0 FirstWrite -1}
		weights_load_16884 {Type I LastRead 0 FirstWrite -1}
		weights_load_16885 {Type I LastRead 0 FirstWrite -1}
		weights_load_16886 {Type I LastRead 0 FirstWrite -1}
		weights_load_16887 {Type I LastRead 0 FirstWrite -1}
		weights_load_16888 {Type I LastRead 0 FirstWrite -1}
		weights_load_16889 {Type I LastRead 0 FirstWrite -1}
		weights_load_16890 {Type I LastRead 0 FirstWrite -1}
		weights_load_16891 {Type I LastRead 0 FirstWrite -1}
		weights_load_16892 {Type I LastRead 0 FirstWrite -1}
		weights_load_16893 {Type I LastRead 0 FirstWrite -1}
		weights_load_16894 {Type I LastRead 0 FirstWrite -1}
		weights_load_16895 {Type I LastRead 0 FirstWrite -1}
		weights_load_16896 {Type I LastRead 0 FirstWrite -1}
		weights_load_16897 {Type I LastRead 0 FirstWrite -1}
		weights_load_16898 {Type I LastRead 0 FirstWrite -1}
		weights_load_16899 {Type I LastRead 0 FirstWrite -1}
		weights_load_16900 {Type I LastRead 0 FirstWrite -1}
		weights_load_16901 {Type I LastRead 0 FirstWrite -1}
		weights_load_16902 {Type I LastRead 0 FirstWrite -1}
		weights_load_16903 {Type I LastRead 0 FirstWrite -1}
		weights_load_16904 {Type I LastRead 0 FirstWrite -1}
		weights_load_16905 {Type I LastRead 0 FirstWrite -1}
		weights_load_16906 {Type I LastRead 0 FirstWrite -1}
		weights_load_16907 {Type I LastRead 0 FirstWrite -1}
		weights_load_16908 {Type I LastRead 0 FirstWrite -1}
		weights_load_16909 {Type I LastRead 0 FirstWrite -1}
		weights_load_16910 {Type I LastRead 0 FirstWrite -1}
		weights_load_16911 {Type I LastRead 0 FirstWrite -1}
		weights_load_16912 {Type I LastRead 0 FirstWrite -1}
		weights_load_16913 {Type I LastRead 0 FirstWrite -1}
		weights_load_16914 {Type I LastRead 0 FirstWrite -1}
		weights_load_16915 {Type I LastRead 0 FirstWrite -1}
		weights_load_16916 {Type I LastRead 0 FirstWrite -1}
		weights_load_16917 {Type I LastRead 0 FirstWrite -1}
		weights_load_16918 {Type I LastRead 0 FirstWrite -1}
		weights_load_16919 {Type I LastRead 0 FirstWrite -1}
		weights_load_16920 {Type I LastRead 0 FirstWrite -1}
		weights_load_16921 {Type I LastRead 0 FirstWrite -1}
		weights_load_16922 {Type I LastRead 0 FirstWrite -1}
		weights_load_16923 {Type I LastRead 0 FirstWrite -1}
		weights_load_16924 {Type I LastRead 0 FirstWrite -1}
		weights_load_16925 {Type I LastRead 0 FirstWrite -1}
		weights_load_16926 {Type I LastRead 0 FirstWrite -1}
		weights_load_16927 {Type I LastRead 0 FirstWrite -1}
		weights_load_16928 {Type I LastRead 0 FirstWrite -1}
		weights_load_16929 {Type I LastRead 0 FirstWrite -1}
		weights_load_16930 {Type I LastRead 0 FirstWrite -1}
		weights_load_16931 {Type I LastRead 0 FirstWrite -1}
		weights_load_16932 {Type I LastRead 0 FirstWrite -1}
		weights_load_16933 {Type I LastRead 0 FirstWrite -1}
		weights_load_16934 {Type I LastRead 0 FirstWrite -1}
		weights_load_16935 {Type I LastRead 0 FirstWrite -1}
		weights_load_16936 {Type I LastRead 0 FirstWrite -1}
		weights_load_16937 {Type I LastRead 0 FirstWrite -1}
		weights_load_16938 {Type I LastRead 0 FirstWrite -1}
		weights_load_16939 {Type I LastRead 0 FirstWrite -1}
		weights_load_16940 {Type I LastRead 0 FirstWrite -1}
		weights_load_16941 {Type I LastRead 0 FirstWrite -1}
		weights_load_16942 {Type I LastRead 0 FirstWrite -1}
		weights_load_16943 {Type I LastRead 0 FirstWrite -1}
		weights_load_16944 {Type I LastRead 0 FirstWrite -1}
		weights_load_16945 {Type I LastRead 0 FirstWrite -1}
		weights_load_16946 {Type I LastRead 0 FirstWrite -1}
		weights_load_16947 {Type I LastRead 0 FirstWrite -1}
		weights_load_16948 {Type I LastRead 0 FirstWrite -1}
		weights_load_16949 {Type I LastRead 0 FirstWrite -1}
		weights_load_16950 {Type I LastRead 0 FirstWrite -1}
		weights_load_16951 {Type I LastRead 0 FirstWrite -1}
		weights_load_16952 {Type I LastRead 0 FirstWrite -1}
		weights_load_16953 {Type I LastRead 0 FirstWrite -1}
		weights_load_16954 {Type I LastRead 0 FirstWrite -1}
		weights_load_16955 {Type I LastRead 0 FirstWrite -1}
		weights_load_16956 {Type I LastRead 0 FirstWrite -1}
		weights_load_16957 {Type I LastRead 0 FirstWrite -1}
		weights_load_16958 {Type I LastRead 0 FirstWrite -1}
		weights_load_16959 {Type I LastRead 0 FirstWrite -1}
		weights_load_16960 {Type I LastRead 0 FirstWrite -1}
		weights_load_16961 {Type I LastRead 0 FirstWrite -1}
		weights_load_16962 {Type I LastRead 0 FirstWrite -1}
		weights_load_16963 {Type I LastRead 0 FirstWrite -1}
		weights_load_16964 {Type I LastRead 0 FirstWrite -1}
		weights_load_16965 {Type I LastRead 0 FirstWrite -1}
		weights_load_16966 {Type I LastRead 0 FirstWrite -1}
		weights_load_16967 {Type I LastRead 0 FirstWrite -1}
		weights_load_16968 {Type I LastRead 0 FirstWrite -1}
		weights_load_16969 {Type I LastRead 0 FirstWrite -1}
		weights_load_16970 {Type I LastRead 0 FirstWrite -1}
		weights_load_16971 {Type I LastRead 0 FirstWrite -1}
		weights_load_16972 {Type I LastRead 0 FirstWrite -1}
		weights_load_16973 {Type I LastRead 0 FirstWrite -1}
		weights_load_16974 {Type I LastRead 0 FirstWrite -1}
		weights_load_16975 {Type I LastRead 0 FirstWrite -1}
		weights_load_16976 {Type I LastRead 0 FirstWrite -1}
		weights_load_16977 {Type I LastRead 0 FirstWrite -1}
		weights_load_16978 {Type I LastRead 0 FirstWrite -1}
		weights_load_16979 {Type I LastRead 0 FirstWrite -1}
		weights_load_16980 {Type I LastRead 0 FirstWrite -1}
		weights_load_16981 {Type I LastRead 0 FirstWrite -1}
		weights_load_16982 {Type I LastRead 0 FirstWrite -1}
		weights_load_16983 {Type I LastRead 0 FirstWrite -1}
		weights_load_16984 {Type I LastRead 0 FirstWrite -1}
		weights_load_16985 {Type I LastRead 0 FirstWrite -1}
		weights_load_16986 {Type I LastRead 0 FirstWrite -1}
		weights_load_16987 {Type I LastRead 0 FirstWrite -1}
		weights_load_16988 {Type I LastRead 0 FirstWrite -1}
		weights_load_16989 {Type I LastRead 0 FirstWrite -1}
		weights_load_16990 {Type I LastRead 0 FirstWrite -1}
		weights_load_16991 {Type I LastRead 0 FirstWrite -1}
		weights_load_16992 {Type I LastRead 0 FirstWrite -1}
		weights_load_16993 {Type I LastRead 0 FirstWrite -1}
		weights_load_16994 {Type I LastRead 0 FirstWrite -1}
		weights_load_16995 {Type I LastRead 0 FirstWrite -1}
		weights_load_16996 {Type I LastRead 0 FirstWrite -1}
		weights_load_16997 {Type I LastRead 0 FirstWrite -1}
		weights_load_16998 {Type I LastRead 0 FirstWrite -1}
		weights_load_16999 {Type I LastRead 0 FirstWrite -1}
		weights_load_17000 {Type I LastRead 0 FirstWrite -1}
		weights_load_17001 {Type I LastRead 0 FirstWrite -1}
		weights_load_17002 {Type I LastRead 0 FirstWrite -1}
		weights_load_17003 {Type I LastRead 0 FirstWrite -1}
		weights_load_17004 {Type I LastRead 0 FirstWrite -1}
		weights_load_17005 {Type I LastRead 0 FirstWrite -1}
		weights_load_17006 {Type I LastRead 0 FirstWrite -1}
		weights_load_17007 {Type I LastRead 0 FirstWrite -1}
		weights_load_17008 {Type I LastRead 0 FirstWrite -1}
		weights_load_17009 {Type I LastRead 0 FirstWrite -1}
		weights_load_17010 {Type I LastRead 0 FirstWrite -1}
		weights_load_17011 {Type I LastRead 0 FirstWrite -1}
		weights_load_17012 {Type I LastRead 0 FirstWrite -1}
		weights_load_17013 {Type I LastRead 0 FirstWrite -1}
		weights_load_17014 {Type I LastRead 0 FirstWrite -1}
		weights_load_17015 {Type I LastRead 0 FirstWrite -1}
		weights_load_17016 {Type I LastRead 0 FirstWrite -1}
		weights_load_17017 {Type I LastRead 0 FirstWrite -1}
		weights_load_17018 {Type I LastRead 0 FirstWrite -1}
		weights_load_17019 {Type I LastRead 0 FirstWrite -1}
		weights_load_17020 {Type I LastRead 0 FirstWrite -1}
		weights_load_17021 {Type I LastRead 0 FirstWrite -1}
		weights_load_17022 {Type I LastRead 0 FirstWrite -1}
		weights_load_17023 {Type I LastRead 0 FirstWrite -1}
		weights_load_17024 {Type I LastRead 0 FirstWrite -1}
		weights_load_17025 {Type I LastRead 0 FirstWrite -1}
		weights_load_17026 {Type I LastRead 0 FirstWrite -1}
		weights_load_17027 {Type I LastRead 0 FirstWrite -1}
		weights_load_17028 {Type I LastRead 0 FirstWrite -1}
		weights_load_17029 {Type I LastRead 0 FirstWrite -1}
		weights_load_17030 {Type I LastRead 0 FirstWrite -1}
		weights_load_17031 {Type I LastRead 0 FirstWrite -1}
		weights_load_17032 {Type I LastRead 0 FirstWrite -1}
		weights_load_17033 {Type I LastRead 0 FirstWrite -1}
		weights_load_17034 {Type I LastRead 0 FirstWrite -1}
		weights_load_17035 {Type I LastRead 0 FirstWrite -1}
		weights_load_17036 {Type I LastRead 0 FirstWrite -1}
		weights_load_17037 {Type I LastRead 0 FirstWrite -1}
		weights_load_17038 {Type I LastRead 0 FirstWrite -1}
		weights_load_17039 {Type I LastRead 0 FirstWrite -1}
		weights_load_17040 {Type I LastRead 0 FirstWrite -1}
		weights_load_17041 {Type I LastRead 0 FirstWrite -1}
		weights_load_17042 {Type I LastRead 0 FirstWrite -1}
		weights_load_17043 {Type I LastRead 0 FirstWrite -1}
		weights_load_17044 {Type I LastRead 0 FirstWrite -1}
		weights_load_17045 {Type I LastRead 0 FirstWrite -1}
		weights_load_17046 {Type I LastRead 0 FirstWrite -1}
		weights_load_17047 {Type I LastRead 0 FirstWrite -1}
		weights_load_17048 {Type I LastRead 0 FirstWrite -1}
		weights_load_17049 {Type I LastRead 0 FirstWrite -1}
		weights_load_17050 {Type I LastRead 0 FirstWrite -1}
		weights_load_17051 {Type I LastRead 0 FirstWrite -1}
		weights_load_17052 {Type I LastRead 0 FirstWrite -1}
		weights_load_17053 {Type I LastRead 0 FirstWrite -1}
		weights_load_17054 {Type I LastRead 0 FirstWrite -1}
		weights_load_17055 {Type I LastRead 0 FirstWrite -1}
		weights_load_17056 {Type I LastRead 0 FirstWrite -1}
		weights_load_17057 {Type I LastRead 0 FirstWrite -1}
		weights_load_17058 {Type I LastRead 0 FirstWrite -1}
		weights_load_17059 {Type I LastRead 0 FirstWrite -1}
		weights_load_17060 {Type I LastRead 0 FirstWrite -1}
		weights_load_17061 {Type I LastRead 0 FirstWrite -1}
		weights_load_17062 {Type I LastRead 0 FirstWrite -1}
		weights_load_17063 {Type I LastRead 0 FirstWrite -1}
		weights_load_17064 {Type I LastRead 0 FirstWrite -1}
		weights_load_17065 {Type I LastRead 0 FirstWrite -1}
		weights_load_17066 {Type I LastRead 0 FirstWrite -1}
		weights_load_17067 {Type I LastRead 0 FirstWrite -1}
		weights_load_17068 {Type I LastRead 0 FirstWrite -1}
		weights_load_17069 {Type I LastRead 0 FirstWrite -1}
		weights_load_17070 {Type I LastRead 0 FirstWrite -1}
		weights_load_17071 {Type I LastRead 0 FirstWrite -1}
		weights_load_17072 {Type I LastRead 0 FirstWrite -1}
		weights_load_17073 {Type I LastRead 0 FirstWrite -1}
		weights_load_17074 {Type I LastRead 0 FirstWrite -1}
		weights_load_17075 {Type I LastRead 0 FirstWrite -1}
		weights_load_17076 {Type I LastRead 0 FirstWrite -1}
		weights_load_17077 {Type I LastRead 0 FirstWrite -1}
		weights_load_17078 {Type I LastRead 0 FirstWrite -1}
		weights_load_17079 {Type I LastRead 0 FirstWrite -1}
		weights_load_17080 {Type I LastRead 0 FirstWrite -1}
		weights_load_17081 {Type I LastRead 0 FirstWrite -1}
		weights_load_17082 {Type I LastRead 0 FirstWrite -1}
		weights_load_17083 {Type I LastRead 0 FirstWrite -1}
		weights_load_17084 {Type I LastRead 0 FirstWrite -1}
		weights_load_17085 {Type I LastRead 0 FirstWrite -1}
		weights_load_17086 {Type I LastRead 0 FirstWrite -1}
		weights_load_17087 {Type I LastRead 0 FirstWrite -1}
		weights_load_17088 {Type I LastRead 0 FirstWrite -1}
		weights_load_17089 {Type I LastRead 0 FirstWrite -1}
		weights_load_17090 {Type I LastRead 0 FirstWrite -1}
		weights_load_17091 {Type I LastRead 0 FirstWrite -1}
		weights_load_17092 {Type I LastRead 0 FirstWrite -1}
		weights_load_17093 {Type I LastRead 0 FirstWrite -1}
		weights_load_17094 {Type I LastRead 0 FirstWrite -1}
		weights_load_17095 {Type I LastRead 0 FirstWrite -1}
		weights_load_17096 {Type I LastRead 0 FirstWrite -1}
		weights_load_17097 {Type I LastRead 0 FirstWrite -1}
		weights_load_17098 {Type I LastRead 0 FirstWrite -1}
		weights_load_17099 {Type I LastRead 0 FirstWrite -1}
		weights_load_17100 {Type I LastRead 0 FirstWrite -1}
		weights_load_17101 {Type I LastRead 0 FirstWrite -1}
		weights_load_17102 {Type I LastRead 0 FirstWrite -1}
		weights_load_17103 {Type I LastRead 0 FirstWrite -1}
		weights_load_17104 {Type I LastRead 0 FirstWrite -1}
		weights_load_17105 {Type I LastRead 0 FirstWrite -1}
		weights_load_17106 {Type I LastRead 0 FirstWrite -1}
		weights_load_17107 {Type I LastRead 0 FirstWrite -1}
		weights_load_17108 {Type I LastRead 0 FirstWrite -1}
		weights_load_17109 {Type I LastRead 0 FirstWrite -1}
		weights_load_17110 {Type I LastRead 0 FirstWrite -1}
		weights_load_17111 {Type I LastRead 0 FirstWrite -1}
		weights_load_17112 {Type I LastRead 0 FirstWrite -1}
		weights_load_17113 {Type I LastRead 0 FirstWrite -1}
		weights_load_17114 {Type I LastRead 0 FirstWrite -1}
		weights_load_17115 {Type I LastRead 0 FirstWrite -1}
		weights_load_17116 {Type I LastRead 0 FirstWrite -1}
		weights_load_17117 {Type I LastRead 0 FirstWrite -1}
		weights_load_17118 {Type I LastRead 0 FirstWrite -1}
		weights_load_17119 {Type I LastRead 0 FirstWrite -1}
		weights_load_17120 {Type I LastRead 0 FirstWrite -1}
		weights_load_17121 {Type I LastRead 0 FirstWrite -1}
		weights_load_17122 {Type I LastRead 0 FirstWrite -1}
		weights_load_17123 {Type I LastRead 0 FirstWrite -1}
		weights_load_17124 {Type I LastRead 0 FirstWrite -1}
		weights_load_17125 {Type I LastRead 0 FirstWrite -1}
		weights_load_17126 {Type I LastRead 0 FirstWrite -1}
		weights_load_17127 {Type I LastRead 0 FirstWrite -1}
		weights_load_17128 {Type I LastRead 0 FirstWrite -1}
		weights_load_17129 {Type I LastRead 0 FirstWrite -1}
		weights_load_17130 {Type I LastRead 0 FirstWrite -1}
		weights_load_17131 {Type I LastRead 0 FirstWrite -1}
		weights_load_17132 {Type I LastRead 0 FirstWrite -1}
		weights_load_17133 {Type I LastRead 0 FirstWrite -1}
		weights_load_17134 {Type I LastRead 0 FirstWrite -1}
		weights_load_17135 {Type I LastRead 0 FirstWrite -1}
		weights_load_17136 {Type I LastRead 0 FirstWrite -1}
		weights_load_17137 {Type I LastRead 0 FirstWrite -1}
		weights_load_17138 {Type I LastRead 0 FirstWrite -1}
		weights_load_17139 {Type I LastRead 0 FirstWrite -1}
		weights_load_17140 {Type I LastRead 0 FirstWrite -1}
		weights_load_17141 {Type I LastRead 0 FirstWrite -1}
		weights_load_17142 {Type I LastRead 0 FirstWrite -1}
		weights_load_17143 {Type I LastRead 0 FirstWrite -1}
		weights_load_17144 {Type I LastRead 0 FirstWrite -1}
		weights_load_17145 {Type I LastRead 0 FirstWrite -1}
		weights_load_17146 {Type I LastRead 0 FirstWrite -1}
		weights_load_17147 {Type I LastRead 0 FirstWrite -1}
		weights_load_17148 {Type I LastRead 0 FirstWrite -1}
		weights_load_17149 {Type I LastRead 0 FirstWrite -1}
		weights_load_17150 {Type I LastRead 0 FirstWrite -1}
		weights_load_17151 {Type I LastRead 0 FirstWrite -1}
		weights_load_17152 {Type I LastRead 0 FirstWrite -1}
		weights_load_17153 {Type I LastRead 0 FirstWrite -1}
		weights_load_17154 {Type I LastRead 0 FirstWrite -1}
		weights_load_17155 {Type I LastRead 0 FirstWrite -1}
		weights_load_17156 {Type I LastRead 0 FirstWrite -1}
		weights_load_17157 {Type I LastRead 0 FirstWrite -1}
		weights_load_17158 {Type I LastRead 0 FirstWrite -1}
		weights_load_17159 {Type I LastRead 0 FirstWrite -1}
		weights_load_17160 {Type I LastRead 0 FirstWrite -1}
		weights_load_17161 {Type I LastRead 0 FirstWrite -1}
		weights_load_17162 {Type I LastRead 0 FirstWrite -1}
		weights_load_17163 {Type I LastRead 0 FirstWrite -1}
		weights_load_17164 {Type I LastRead 0 FirstWrite -1}
		weights_load_17165 {Type I LastRead 0 FirstWrite -1}
		weights_load_17166 {Type I LastRead 0 FirstWrite -1}
		weights_load_17167 {Type I LastRead 0 FirstWrite -1}
		weights_load_17168 {Type I LastRead 0 FirstWrite -1}
		weights_load_17169 {Type I LastRead 0 FirstWrite -1}
		weights_load_17170 {Type I LastRead 0 FirstWrite -1}
		weights_load_17171 {Type I LastRead 0 FirstWrite -1}
		weights_load_17172 {Type I LastRead 0 FirstWrite -1}
		weights_load_17173 {Type I LastRead 0 FirstWrite -1}
		weights_load_17174 {Type I LastRead 0 FirstWrite -1}
		weights_load_17175 {Type I LastRead 0 FirstWrite -1}
		weights_load_17176 {Type I LastRead 0 FirstWrite -1}
		weights_load_17177 {Type I LastRead 0 FirstWrite -1}
		weights_load_17178 {Type I LastRead 0 FirstWrite -1}
		weights_load_17179 {Type I LastRead 0 FirstWrite -1}
		weights_load_17180 {Type I LastRead 0 FirstWrite -1}
		weights_load_17181 {Type I LastRead 0 FirstWrite -1}
		weights_load_17182 {Type I LastRead 0 FirstWrite -1}
		weights_load_17183 {Type I LastRead 0 FirstWrite -1}
		weights_load_17184 {Type I LastRead 0 FirstWrite -1}
		weights_load_17185 {Type I LastRead 0 FirstWrite -1}
		weights_load_17186 {Type I LastRead 0 FirstWrite -1}
		weights_load_17187 {Type I LastRead 0 FirstWrite -1}
		weights_load_17188 {Type I LastRead 0 FirstWrite -1}
		weights_load_17189 {Type I LastRead 0 FirstWrite -1}
		weights_load_17190 {Type I LastRead 0 FirstWrite -1}
		weights_load_17191 {Type I LastRead 0 FirstWrite -1}
		weights_load_17192 {Type I LastRead 0 FirstWrite -1}
		weights_load_17193 {Type I LastRead 0 FirstWrite -1}
		weights_load_17194 {Type I LastRead 0 FirstWrite -1}
		weights_load_17195 {Type I LastRead 0 FirstWrite -1}
		weights_load_17196 {Type I LastRead 0 FirstWrite -1}
		weights_load_17197 {Type I LastRead 0 FirstWrite -1}
		weights_load_17198 {Type I LastRead 0 FirstWrite -1}
		weights_load_17199 {Type I LastRead 0 FirstWrite -1}
		weights_load_17200 {Type I LastRead 0 FirstWrite -1}
		weights_load_17201 {Type I LastRead 0 FirstWrite -1}
		weights_load_17202 {Type I LastRead 0 FirstWrite -1}
		weights_load_17203 {Type I LastRead 0 FirstWrite -1}
		weights_load_17204 {Type I LastRead 0 FirstWrite -1}
		weights_load_17205 {Type I LastRead 0 FirstWrite -1}
		weights_load_17206 {Type I LastRead 0 FirstWrite -1}
		weights_load_17207 {Type I LastRead 0 FirstWrite -1}
		weights_load_17208 {Type I LastRead 0 FirstWrite -1}
		weights_load_17209 {Type I LastRead 0 FirstWrite -1}
		weights_load_17210 {Type I LastRead 0 FirstWrite -1}
		weights_load_17211 {Type I LastRead 0 FirstWrite -1}
		weights_load_17212 {Type I LastRead 0 FirstWrite -1}
		weights_load_17213 {Type I LastRead 0 FirstWrite -1}
		weights_load_17214 {Type I LastRead 0 FirstWrite -1}
		weights_load_17215 {Type I LastRead 0 FirstWrite -1}
		weights_load_17216 {Type I LastRead 0 FirstWrite -1}
		weights_load_17217 {Type I LastRead 0 FirstWrite -1}
		weights_load_17218 {Type I LastRead 0 FirstWrite -1}
		weights_load_17219 {Type I LastRead 0 FirstWrite -1}
		weights_load_17220 {Type I LastRead 0 FirstWrite -1}
		weights_load_17221 {Type I LastRead 0 FirstWrite -1}
		weights_load_17222 {Type I LastRead 0 FirstWrite -1}
		weights_load_17223 {Type I LastRead 0 FirstWrite -1}
		weights_load_17224 {Type I LastRead 0 FirstWrite -1}
		weights_load_17225 {Type I LastRead 0 FirstWrite -1}
		weights_load_17226 {Type I LastRead 0 FirstWrite -1}
		weights_load_17227 {Type I LastRead 0 FirstWrite -1}
		weights_load_17228 {Type I LastRead 0 FirstWrite -1}
		weights_load_17229 {Type I LastRead 0 FirstWrite -1}
		weights_load_17230 {Type I LastRead 0 FirstWrite -1}
		weights_load_17231 {Type I LastRead 0 FirstWrite -1}
		weights_load_17232 {Type I LastRead 0 FirstWrite -1}
		weights_load_17233 {Type I LastRead 0 FirstWrite -1}
		weights_load_17234 {Type I LastRead 0 FirstWrite -1}
		weights_load_17235 {Type I LastRead 0 FirstWrite -1}
		weights_load_17236 {Type I LastRead 0 FirstWrite -1}
		weights_load_17237 {Type I LastRead 0 FirstWrite -1}
		weights_load_17238 {Type I LastRead 0 FirstWrite -1}
		weights_load_17239 {Type I LastRead 0 FirstWrite -1}
		weights_load_17240 {Type I LastRead 0 FirstWrite -1}
		weights_load_17241 {Type I LastRead 0 FirstWrite -1}
		weights_load_17242 {Type I LastRead 0 FirstWrite -1}
		weights_load_17243 {Type I LastRead 0 FirstWrite -1}
		weights_load_17244 {Type I LastRead 0 FirstWrite -1}
		weights_load_17245 {Type I LastRead 0 FirstWrite -1}
		weights_load_17246 {Type I LastRead 0 FirstWrite -1}
		weights_load_17247 {Type I LastRead 0 FirstWrite -1}
		weights_load_17248 {Type I LastRead 0 FirstWrite -1}
		weights_load_17249 {Type I LastRead 0 FirstWrite -1}
		weights_load_17250 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_10 { ap_fifo {  { conv2d_64_padded_window_stream_10_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_10_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_10_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_10_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_10_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_10 { ap_fifo {  { in_channel_map_stream_10_din fifo_port_we 1 32 }  { in_channel_map_stream_10_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_10_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_10_full_n fifo_status 0 1 }  { in_channel_map_stream_10_write fifo_data 1 1 } } }
}
