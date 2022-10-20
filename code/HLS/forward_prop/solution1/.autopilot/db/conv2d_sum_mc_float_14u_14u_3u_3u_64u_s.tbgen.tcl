set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_s
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_0 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_0 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_0", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_0_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_0_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_0_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_0_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_0_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_0_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_0_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_0_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_0_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_0_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_0", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_0", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_0", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_0", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_0", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_0", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_0", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_0", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_0", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_0", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_s",
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
			{"Name" : "conv2d_64_padded_window_stream_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_0", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_0", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17826", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17827", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17828", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17829", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17830", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17831", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17832", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17833", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_17834", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17835", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17836", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17837", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17838", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17839", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17840", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17841", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17842", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17843", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17844", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17845", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17846", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17847", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17848", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17849", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17850", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17851", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17852", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17853", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17854", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17855", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17856", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17857", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17858", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17859", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17860", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17861", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17862", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17863", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17864", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17865", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17866", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17867", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17868", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17869", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17870", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17871", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17872", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17873", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17874", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17875", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17876", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17877", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17878", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17879", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17880", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17881", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17882", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17883", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17884", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17885", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17886", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17887", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17888", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17889", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17890", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17891", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17892", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17893", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17894", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17895", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17896", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17897", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17898", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17899", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17900", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17901", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17902", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17903", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17904", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17905", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17906", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17907", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17908", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17909", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17910", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17911", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17912", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17913", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17914", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17915", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17916", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17917", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17918", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17919", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17920", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17921", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17922", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17923", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17924", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17925", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17926", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17927", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17928", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17929", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17930", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17931", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17932", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17933", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17934", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17935", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17936", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17937", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17938", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17939", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17940", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17941", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17942", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17943", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17944", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17945", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17946", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17947", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17948", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17949", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17950", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17951", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17952", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17953", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17954", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17955", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17956", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17957", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17958", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17959", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17960", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17961", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17962", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17963", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17964", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17965", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17966", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17967", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17968", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17969", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17970", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17971", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17972", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17973", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17974", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17975", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17976", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17977", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17978", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17979", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17980", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17981", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17982", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17983", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17984", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17985", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17986", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17987", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17988", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17989", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17990", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17991", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17992", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17993", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17994", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17995", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17996", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17997", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17998", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17999", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18000", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18001", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18002", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18003", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18004", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18005", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18006", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18007", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18008", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18009", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18010", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18011", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18012", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18013", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18014", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18015", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18016", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18017", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18018", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18019", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18020", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18021", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18022", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18023", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18024", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18025", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18026", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18027", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18028", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18029", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18030", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18031", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18032", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18033", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18034", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18035", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18036", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18037", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18038", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18039", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18040", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18041", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18042", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18043", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18044", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18045", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18046", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18047", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18048", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18049", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18050", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18051", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18052", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18053", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18054", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18055", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18056", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18057", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18058", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18059", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18060", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18061", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18062", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18063", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18064", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18065", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18066", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18067", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18068", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18069", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18070", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18071", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18072", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18073", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18074", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18075", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18076", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18077", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18078", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18079", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18080", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18081", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18082", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18083", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18084", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18085", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18086", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18087", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18088", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18089", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18090", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18091", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18092", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18093", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18094", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18095", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18096", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18097", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18098", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18099", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18100", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18101", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18102", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18103", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18104", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18105", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18106", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18107", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18108", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18109", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18110", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18111", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18112", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18113", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18114", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18115", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18116", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18117", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18118", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18119", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18120", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18121", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18122", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18123", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18124", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18125", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18126", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18127", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18128", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18129", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18130", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18131", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18132", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18133", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18134", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18135", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18136", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18137", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18138", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18139", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18140", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18141", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18142", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18143", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18144", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18145", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18146", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18147", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18148", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18149", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18150", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18151", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18152", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18153", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18154", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18155", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18156", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18157", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18158", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18159", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18160", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18161", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18162", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18163", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18164", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18165", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18166", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18167", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18168", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18169", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18170", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18171", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18172", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18173", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18174", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18175", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18176", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18177", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18178", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18179", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18180", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18181", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18182", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18183", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18184", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18185", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18186", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18187", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18188", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18189", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18190", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18191", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18192", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18193", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18194", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18195", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18196", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18197", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18198", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18199", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18200", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18201", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18202", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18203", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18204", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18205", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18206", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18207", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18208", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18209", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18210", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18211", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18212", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18213", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18214", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18215", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18216", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18217", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18218", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18219", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18220", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18221", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18222", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18223", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18224", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18225", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18226", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18227", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18228", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18229", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18230", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18231", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18232", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18233", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18234", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18235", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18236", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18237", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18238", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18239", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18240", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18241", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18242", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18243", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18244", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18245", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18246", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18247", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18248", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18249", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18250", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18251", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18252", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18253", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18254", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18255", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18256", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18257", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18258", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18259", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18260", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18261", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18262", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18263", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18264", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18265", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18266", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18267", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18268", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18269", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18270", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18271", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18272", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18273", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18274", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18275", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18276", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18277", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18278", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18279", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18280", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18281", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18282", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18283", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18284", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18285", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18286", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18287", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18288", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18289", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18290", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18291", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18292", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18293", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18294", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18295", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18296", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18297", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18298", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18299", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18300", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18301", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18302", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18303", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18304", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18305", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18306", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18307", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18308", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18309", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18310", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18311", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18312", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18313", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18314", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18315", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18316", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18317", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18318", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18319", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18320", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18321", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18322", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18323", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18324", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18325", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18326", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18327", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18328", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18329", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18330", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18331", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18332", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18333", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18334", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18335", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18336", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18337", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18338", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18339", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18340", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18341", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18342", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18343", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18344", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18345", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18346", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18347", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18348", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18349", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18350", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18351", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18352", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18353", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18354", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18355", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18356", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18357", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18358", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18359", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18360", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18361", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18362", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18363", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18364", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18365", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18366", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18367", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18368", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18369", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18370", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18371", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18372", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18373", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18374", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18375", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18376", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18377", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18378", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18379", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18380", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18381", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18382", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18383", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18384", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18385", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18386", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18387", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18388", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18389", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18390", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18391", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18392", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18393", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18394", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18395", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18396", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18397", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18398", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18399", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18400", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U556", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U557", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U558", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U559", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U560", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U561", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U562", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U563", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U564", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U565", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U566", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U567", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U568", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U569", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U570", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U571", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U572", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_s {
		conv2d_64_padded_window_stream_0 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_0 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_Pipeline_inputs {
		conv2d_64_padded_window_stream_0 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_17826 {Type I LastRead 0 FirstWrite -1}
		weights_load_17827 {Type I LastRead 0 FirstWrite -1}
		weights_load_17828 {Type I LastRead 0 FirstWrite -1}
		weights_load_17829 {Type I LastRead 0 FirstWrite -1}
		weights_load_17830 {Type I LastRead 0 FirstWrite -1}
		weights_load_17831 {Type I LastRead 0 FirstWrite -1}
		weights_load_17832 {Type I LastRead 0 FirstWrite -1}
		weights_load_17833 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_0 {Type O LastRead -1 FirstWrite 16}
		weights_load_17834 {Type I LastRead 0 FirstWrite -1}
		weights_load_17835 {Type I LastRead 0 FirstWrite -1}
		weights_load_17836 {Type I LastRead 0 FirstWrite -1}
		weights_load_17837 {Type I LastRead 0 FirstWrite -1}
		weights_load_17838 {Type I LastRead 0 FirstWrite -1}
		weights_load_17839 {Type I LastRead 0 FirstWrite -1}
		weights_load_17840 {Type I LastRead 0 FirstWrite -1}
		weights_load_17841 {Type I LastRead 0 FirstWrite -1}
		weights_load_17842 {Type I LastRead 0 FirstWrite -1}
		weights_load_17843 {Type I LastRead 0 FirstWrite -1}
		weights_load_17844 {Type I LastRead 0 FirstWrite -1}
		weights_load_17845 {Type I LastRead 0 FirstWrite -1}
		weights_load_17846 {Type I LastRead 0 FirstWrite -1}
		weights_load_17847 {Type I LastRead 0 FirstWrite -1}
		weights_load_17848 {Type I LastRead 0 FirstWrite -1}
		weights_load_17849 {Type I LastRead 0 FirstWrite -1}
		weights_load_17850 {Type I LastRead 0 FirstWrite -1}
		weights_load_17851 {Type I LastRead 0 FirstWrite -1}
		weights_load_17852 {Type I LastRead 0 FirstWrite -1}
		weights_load_17853 {Type I LastRead 0 FirstWrite -1}
		weights_load_17854 {Type I LastRead 0 FirstWrite -1}
		weights_load_17855 {Type I LastRead 0 FirstWrite -1}
		weights_load_17856 {Type I LastRead 0 FirstWrite -1}
		weights_load_17857 {Type I LastRead 0 FirstWrite -1}
		weights_load_17858 {Type I LastRead 0 FirstWrite -1}
		weights_load_17859 {Type I LastRead 0 FirstWrite -1}
		weights_load_17860 {Type I LastRead 0 FirstWrite -1}
		weights_load_17861 {Type I LastRead 0 FirstWrite -1}
		weights_load_17862 {Type I LastRead 0 FirstWrite -1}
		weights_load_17863 {Type I LastRead 0 FirstWrite -1}
		weights_load_17864 {Type I LastRead 0 FirstWrite -1}
		weights_load_17865 {Type I LastRead 0 FirstWrite -1}
		weights_load_17866 {Type I LastRead 0 FirstWrite -1}
		weights_load_17867 {Type I LastRead 0 FirstWrite -1}
		weights_load_17868 {Type I LastRead 0 FirstWrite -1}
		weights_load_17869 {Type I LastRead 0 FirstWrite -1}
		weights_load_17870 {Type I LastRead 0 FirstWrite -1}
		weights_load_17871 {Type I LastRead 0 FirstWrite -1}
		weights_load_17872 {Type I LastRead 0 FirstWrite -1}
		weights_load_17873 {Type I LastRead 0 FirstWrite -1}
		weights_load_17874 {Type I LastRead 0 FirstWrite -1}
		weights_load_17875 {Type I LastRead 0 FirstWrite -1}
		weights_load_17876 {Type I LastRead 0 FirstWrite -1}
		weights_load_17877 {Type I LastRead 0 FirstWrite -1}
		weights_load_17878 {Type I LastRead 0 FirstWrite -1}
		weights_load_17879 {Type I LastRead 0 FirstWrite -1}
		weights_load_17880 {Type I LastRead 0 FirstWrite -1}
		weights_load_17881 {Type I LastRead 0 FirstWrite -1}
		weights_load_17882 {Type I LastRead 0 FirstWrite -1}
		weights_load_17883 {Type I LastRead 0 FirstWrite -1}
		weights_load_17884 {Type I LastRead 0 FirstWrite -1}
		weights_load_17885 {Type I LastRead 0 FirstWrite -1}
		weights_load_17886 {Type I LastRead 0 FirstWrite -1}
		weights_load_17887 {Type I LastRead 0 FirstWrite -1}
		weights_load_17888 {Type I LastRead 0 FirstWrite -1}
		weights_load_17889 {Type I LastRead 0 FirstWrite -1}
		weights_load_17890 {Type I LastRead 0 FirstWrite -1}
		weights_load_17891 {Type I LastRead 0 FirstWrite -1}
		weights_load_17892 {Type I LastRead 0 FirstWrite -1}
		weights_load_17893 {Type I LastRead 0 FirstWrite -1}
		weights_load_17894 {Type I LastRead 0 FirstWrite -1}
		weights_load_17895 {Type I LastRead 0 FirstWrite -1}
		weights_load_17896 {Type I LastRead 0 FirstWrite -1}
		weights_load_17897 {Type I LastRead 0 FirstWrite -1}
		weights_load_17898 {Type I LastRead 0 FirstWrite -1}
		weights_load_17899 {Type I LastRead 0 FirstWrite -1}
		weights_load_17900 {Type I LastRead 0 FirstWrite -1}
		weights_load_17901 {Type I LastRead 0 FirstWrite -1}
		weights_load_17902 {Type I LastRead 0 FirstWrite -1}
		weights_load_17903 {Type I LastRead 0 FirstWrite -1}
		weights_load_17904 {Type I LastRead 0 FirstWrite -1}
		weights_load_17905 {Type I LastRead 0 FirstWrite -1}
		weights_load_17906 {Type I LastRead 0 FirstWrite -1}
		weights_load_17907 {Type I LastRead 0 FirstWrite -1}
		weights_load_17908 {Type I LastRead 0 FirstWrite -1}
		weights_load_17909 {Type I LastRead 0 FirstWrite -1}
		weights_load_17910 {Type I LastRead 0 FirstWrite -1}
		weights_load_17911 {Type I LastRead 0 FirstWrite -1}
		weights_load_17912 {Type I LastRead 0 FirstWrite -1}
		weights_load_17913 {Type I LastRead 0 FirstWrite -1}
		weights_load_17914 {Type I LastRead 0 FirstWrite -1}
		weights_load_17915 {Type I LastRead 0 FirstWrite -1}
		weights_load_17916 {Type I LastRead 0 FirstWrite -1}
		weights_load_17917 {Type I LastRead 0 FirstWrite -1}
		weights_load_17918 {Type I LastRead 0 FirstWrite -1}
		weights_load_17919 {Type I LastRead 0 FirstWrite -1}
		weights_load_17920 {Type I LastRead 0 FirstWrite -1}
		weights_load_17921 {Type I LastRead 0 FirstWrite -1}
		weights_load_17922 {Type I LastRead 0 FirstWrite -1}
		weights_load_17923 {Type I LastRead 0 FirstWrite -1}
		weights_load_17924 {Type I LastRead 0 FirstWrite -1}
		weights_load_17925 {Type I LastRead 0 FirstWrite -1}
		weights_load_17926 {Type I LastRead 0 FirstWrite -1}
		weights_load_17927 {Type I LastRead 0 FirstWrite -1}
		weights_load_17928 {Type I LastRead 0 FirstWrite -1}
		weights_load_17929 {Type I LastRead 0 FirstWrite -1}
		weights_load_17930 {Type I LastRead 0 FirstWrite -1}
		weights_load_17931 {Type I LastRead 0 FirstWrite -1}
		weights_load_17932 {Type I LastRead 0 FirstWrite -1}
		weights_load_17933 {Type I LastRead 0 FirstWrite -1}
		weights_load_17934 {Type I LastRead 0 FirstWrite -1}
		weights_load_17935 {Type I LastRead 0 FirstWrite -1}
		weights_load_17936 {Type I LastRead 0 FirstWrite -1}
		weights_load_17937 {Type I LastRead 0 FirstWrite -1}
		weights_load_17938 {Type I LastRead 0 FirstWrite -1}
		weights_load_17939 {Type I LastRead 0 FirstWrite -1}
		weights_load_17940 {Type I LastRead 0 FirstWrite -1}
		weights_load_17941 {Type I LastRead 0 FirstWrite -1}
		weights_load_17942 {Type I LastRead 0 FirstWrite -1}
		weights_load_17943 {Type I LastRead 0 FirstWrite -1}
		weights_load_17944 {Type I LastRead 0 FirstWrite -1}
		weights_load_17945 {Type I LastRead 0 FirstWrite -1}
		weights_load_17946 {Type I LastRead 0 FirstWrite -1}
		weights_load_17947 {Type I LastRead 0 FirstWrite -1}
		weights_load_17948 {Type I LastRead 0 FirstWrite -1}
		weights_load_17949 {Type I LastRead 0 FirstWrite -1}
		weights_load_17950 {Type I LastRead 0 FirstWrite -1}
		weights_load_17951 {Type I LastRead 0 FirstWrite -1}
		weights_load_17952 {Type I LastRead 0 FirstWrite -1}
		weights_load_17953 {Type I LastRead 0 FirstWrite -1}
		weights_load_17954 {Type I LastRead 0 FirstWrite -1}
		weights_load_17955 {Type I LastRead 0 FirstWrite -1}
		weights_load_17956 {Type I LastRead 0 FirstWrite -1}
		weights_load_17957 {Type I LastRead 0 FirstWrite -1}
		weights_load_17958 {Type I LastRead 0 FirstWrite -1}
		weights_load_17959 {Type I LastRead 0 FirstWrite -1}
		weights_load_17960 {Type I LastRead 0 FirstWrite -1}
		weights_load_17961 {Type I LastRead 0 FirstWrite -1}
		weights_load_17962 {Type I LastRead 0 FirstWrite -1}
		weights_load_17963 {Type I LastRead 0 FirstWrite -1}
		weights_load_17964 {Type I LastRead 0 FirstWrite -1}
		weights_load_17965 {Type I LastRead 0 FirstWrite -1}
		weights_load_17966 {Type I LastRead 0 FirstWrite -1}
		weights_load_17967 {Type I LastRead 0 FirstWrite -1}
		weights_load_17968 {Type I LastRead 0 FirstWrite -1}
		weights_load_17969 {Type I LastRead 0 FirstWrite -1}
		weights_load_17970 {Type I LastRead 0 FirstWrite -1}
		weights_load_17971 {Type I LastRead 0 FirstWrite -1}
		weights_load_17972 {Type I LastRead 0 FirstWrite -1}
		weights_load_17973 {Type I LastRead 0 FirstWrite -1}
		weights_load_17974 {Type I LastRead 0 FirstWrite -1}
		weights_load_17975 {Type I LastRead 0 FirstWrite -1}
		weights_load_17976 {Type I LastRead 0 FirstWrite -1}
		weights_load_17977 {Type I LastRead 0 FirstWrite -1}
		weights_load_17978 {Type I LastRead 0 FirstWrite -1}
		weights_load_17979 {Type I LastRead 0 FirstWrite -1}
		weights_load_17980 {Type I LastRead 0 FirstWrite -1}
		weights_load_17981 {Type I LastRead 0 FirstWrite -1}
		weights_load_17982 {Type I LastRead 0 FirstWrite -1}
		weights_load_17983 {Type I LastRead 0 FirstWrite -1}
		weights_load_17984 {Type I LastRead 0 FirstWrite -1}
		weights_load_17985 {Type I LastRead 0 FirstWrite -1}
		weights_load_17986 {Type I LastRead 0 FirstWrite -1}
		weights_load_17987 {Type I LastRead 0 FirstWrite -1}
		weights_load_17988 {Type I LastRead 0 FirstWrite -1}
		weights_load_17989 {Type I LastRead 0 FirstWrite -1}
		weights_load_17990 {Type I LastRead 0 FirstWrite -1}
		weights_load_17991 {Type I LastRead 0 FirstWrite -1}
		weights_load_17992 {Type I LastRead 0 FirstWrite -1}
		weights_load_17993 {Type I LastRead 0 FirstWrite -1}
		weights_load_17994 {Type I LastRead 0 FirstWrite -1}
		weights_load_17995 {Type I LastRead 0 FirstWrite -1}
		weights_load_17996 {Type I LastRead 0 FirstWrite -1}
		weights_load_17997 {Type I LastRead 0 FirstWrite -1}
		weights_load_17998 {Type I LastRead 0 FirstWrite -1}
		weights_load_17999 {Type I LastRead 0 FirstWrite -1}
		weights_load_18000 {Type I LastRead 0 FirstWrite -1}
		weights_load_18001 {Type I LastRead 0 FirstWrite -1}
		weights_load_18002 {Type I LastRead 0 FirstWrite -1}
		weights_load_18003 {Type I LastRead 0 FirstWrite -1}
		weights_load_18004 {Type I LastRead 0 FirstWrite -1}
		weights_load_18005 {Type I LastRead 0 FirstWrite -1}
		weights_load_18006 {Type I LastRead 0 FirstWrite -1}
		weights_load_18007 {Type I LastRead 0 FirstWrite -1}
		weights_load_18008 {Type I LastRead 0 FirstWrite -1}
		weights_load_18009 {Type I LastRead 0 FirstWrite -1}
		weights_load_18010 {Type I LastRead 0 FirstWrite -1}
		weights_load_18011 {Type I LastRead 0 FirstWrite -1}
		weights_load_18012 {Type I LastRead 0 FirstWrite -1}
		weights_load_18013 {Type I LastRead 0 FirstWrite -1}
		weights_load_18014 {Type I LastRead 0 FirstWrite -1}
		weights_load_18015 {Type I LastRead 0 FirstWrite -1}
		weights_load_18016 {Type I LastRead 0 FirstWrite -1}
		weights_load_18017 {Type I LastRead 0 FirstWrite -1}
		weights_load_18018 {Type I LastRead 0 FirstWrite -1}
		weights_load_18019 {Type I LastRead 0 FirstWrite -1}
		weights_load_18020 {Type I LastRead 0 FirstWrite -1}
		weights_load_18021 {Type I LastRead 0 FirstWrite -1}
		weights_load_18022 {Type I LastRead 0 FirstWrite -1}
		weights_load_18023 {Type I LastRead 0 FirstWrite -1}
		weights_load_18024 {Type I LastRead 0 FirstWrite -1}
		weights_load_18025 {Type I LastRead 0 FirstWrite -1}
		weights_load_18026 {Type I LastRead 0 FirstWrite -1}
		weights_load_18027 {Type I LastRead 0 FirstWrite -1}
		weights_load_18028 {Type I LastRead 0 FirstWrite -1}
		weights_load_18029 {Type I LastRead 0 FirstWrite -1}
		weights_load_18030 {Type I LastRead 0 FirstWrite -1}
		weights_load_18031 {Type I LastRead 0 FirstWrite -1}
		weights_load_18032 {Type I LastRead 0 FirstWrite -1}
		weights_load_18033 {Type I LastRead 0 FirstWrite -1}
		weights_load_18034 {Type I LastRead 0 FirstWrite -1}
		weights_load_18035 {Type I LastRead 0 FirstWrite -1}
		weights_load_18036 {Type I LastRead 0 FirstWrite -1}
		weights_load_18037 {Type I LastRead 0 FirstWrite -1}
		weights_load_18038 {Type I LastRead 0 FirstWrite -1}
		weights_load_18039 {Type I LastRead 0 FirstWrite -1}
		weights_load_18040 {Type I LastRead 0 FirstWrite -1}
		weights_load_18041 {Type I LastRead 0 FirstWrite -1}
		weights_load_18042 {Type I LastRead 0 FirstWrite -1}
		weights_load_18043 {Type I LastRead 0 FirstWrite -1}
		weights_load_18044 {Type I LastRead 0 FirstWrite -1}
		weights_load_18045 {Type I LastRead 0 FirstWrite -1}
		weights_load_18046 {Type I LastRead 0 FirstWrite -1}
		weights_load_18047 {Type I LastRead 0 FirstWrite -1}
		weights_load_18048 {Type I LastRead 0 FirstWrite -1}
		weights_load_18049 {Type I LastRead 0 FirstWrite -1}
		weights_load_18050 {Type I LastRead 0 FirstWrite -1}
		weights_load_18051 {Type I LastRead 0 FirstWrite -1}
		weights_load_18052 {Type I LastRead 0 FirstWrite -1}
		weights_load_18053 {Type I LastRead 0 FirstWrite -1}
		weights_load_18054 {Type I LastRead 0 FirstWrite -1}
		weights_load_18055 {Type I LastRead 0 FirstWrite -1}
		weights_load_18056 {Type I LastRead 0 FirstWrite -1}
		weights_load_18057 {Type I LastRead 0 FirstWrite -1}
		weights_load_18058 {Type I LastRead 0 FirstWrite -1}
		weights_load_18059 {Type I LastRead 0 FirstWrite -1}
		weights_load_18060 {Type I LastRead 0 FirstWrite -1}
		weights_load_18061 {Type I LastRead 0 FirstWrite -1}
		weights_load_18062 {Type I LastRead 0 FirstWrite -1}
		weights_load_18063 {Type I LastRead 0 FirstWrite -1}
		weights_load_18064 {Type I LastRead 0 FirstWrite -1}
		weights_load_18065 {Type I LastRead 0 FirstWrite -1}
		weights_load_18066 {Type I LastRead 0 FirstWrite -1}
		weights_load_18067 {Type I LastRead 0 FirstWrite -1}
		weights_load_18068 {Type I LastRead 0 FirstWrite -1}
		weights_load_18069 {Type I LastRead 0 FirstWrite -1}
		weights_load_18070 {Type I LastRead 0 FirstWrite -1}
		weights_load_18071 {Type I LastRead 0 FirstWrite -1}
		weights_load_18072 {Type I LastRead 0 FirstWrite -1}
		weights_load_18073 {Type I LastRead 0 FirstWrite -1}
		weights_load_18074 {Type I LastRead 0 FirstWrite -1}
		weights_load_18075 {Type I LastRead 0 FirstWrite -1}
		weights_load_18076 {Type I LastRead 0 FirstWrite -1}
		weights_load_18077 {Type I LastRead 0 FirstWrite -1}
		weights_load_18078 {Type I LastRead 0 FirstWrite -1}
		weights_load_18079 {Type I LastRead 0 FirstWrite -1}
		weights_load_18080 {Type I LastRead 0 FirstWrite -1}
		weights_load_18081 {Type I LastRead 0 FirstWrite -1}
		weights_load_18082 {Type I LastRead 0 FirstWrite -1}
		weights_load_18083 {Type I LastRead 0 FirstWrite -1}
		weights_load_18084 {Type I LastRead 0 FirstWrite -1}
		weights_load_18085 {Type I LastRead 0 FirstWrite -1}
		weights_load_18086 {Type I LastRead 0 FirstWrite -1}
		weights_load_18087 {Type I LastRead 0 FirstWrite -1}
		weights_load_18088 {Type I LastRead 0 FirstWrite -1}
		weights_load_18089 {Type I LastRead 0 FirstWrite -1}
		weights_load_18090 {Type I LastRead 0 FirstWrite -1}
		weights_load_18091 {Type I LastRead 0 FirstWrite -1}
		weights_load_18092 {Type I LastRead 0 FirstWrite -1}
		weights_load_18093 {Type I LastRead 0 FirstWrite -1}
		weights_load_18094 {Type I LastRead 0 FirstWrite -1}
		weights_load_18095 {Type I LastRead 0 FirstWrite -1}
		weights_load_18096 {Type I LastRead 0 FirstWrite -1}
		weights_load_18097 {Type I LastRead 0 FirstWrite -1}
		weights_load_18098 {Type I LastRead 0 FirstWrite -1}
		weights_load_18099 {Type I LastRead 0 FirstWrite -1}
		weights_load_18100 {Type I LastRead 0 FirstWrite -1}
		weights_load_18101 {Type I LastRead 0 FirstWrite -1}
		weights_load_18102 {Type I LastRead 0 FirstWrite -1}
		weights_load_18103 {Type I LastRead 0 FirstWrite -1}
		weights_load_18104 {Type I LastRead 0 FirstWrite -1}
		weights_load_18105 {Type I LastRead 0 FirstWrite -1}
		weights_load_18106 {Type I LastRead 0 FirstWrite -1}
		weights_load_18107 {Type I LastRead 0 FirstWrite -1}
		weights_load_18108 {Type I LastRead 0 FirstWrite -1}
		weights_load_18109 {Type I LastRead 0 FirstWrite -1}
		weights_load_18110 {Type I LastRead 0 FirstWrite -1}
		weights_load_18111 {Type I LastRead 0 FirstWrite -1}
		weights_load_18112 {Type I LastRead 0 FirstWrite -1}
		weights_load_18113 {Type I LastRead 0 FirstWrite -1}
		weights_load_18114 {Type I LastRead 0 FirstWrite -1}
		weights_load_18115 {Type I LastRead 0 FirstWrite -1}
		weights_load_18116 {Type I LastRead 0 FirstWrite -1}
		weights_load_18117 {Type I LastRead 0 FirstWrite -1}
		weights_load_18118 {Type I LastRead 0 FirstWrite -1}
		weights_load_18119 {Type I LastRead 0 FirstWrite -1}
		weights_load_18120 {Type I LastRead 0 FirstWrite -1}
		weights_load_18121 {Type I LastRead 0 FirstWrite -1}
		weights_load_18122 {Type I LastRead 0 FirstWrite -1}
		weights_load_18123 {Type I LastRead 0 FirstWrite -1}
		weights_load_18124 {Type I LastRead 0 FirstWrite -1}
		weights_load_18125 {Type I LastRead 0 FirstWrite -1}
		weights_load_18126 {Type I LastRead 0 FirstWrite -1}
		weights_load_18127 {Type I LastRead 0 FirstWrite -1}
		weights_load_18128 {Type I LastRead 0 FirstWrite -1}
		weights_load_18129 {Type I LastRead 0 FirstWrite -1}
		weights_load_18130 {Type I LastRead 0 FirstWrite -1}
		weights_load_18131 {Type I LastRead 0 FirstWrite -1}
		weights_load_18132 {Type I LastRead 0 FirstWrite -1}
		weights_load_18133 {Type I LastRead 0 FirstWrite -1}
		weights_load_18134 {Type I LastRead 0 FirstWrite -1}
		weights_load_18135 {Type I LastRead 0 FirstWrite -1}
		weights_load_18136 {Type I LastRead 0 FirstWrite -1}
		weights_load_18137 {Type I LastRead 0 FirstWrite -1}
		weights_load_18138 {Type I LastRead 0 FirstWrite -1}
		weights_load_18139 {Type I LastRead 0 FirstWrite -1}
		weights_load_18140 {Type I LastRead 0 FirstWrite -1}
		weights_load_18141 {Type I LastRead 0 FirstWrite -1}
		weights_load_18142 {Type I LastRead 0 FirstWrite -1}
		weights_load_18143 {Type I LastRead 0 FirstWrite -1}
		weights_load_18144 {Type I LastRead 0 FirstWrite -1}
		weights_load_18145 {Type I LastRead 0 FirstWrite -1}
		weights_load_18146 {Type I LastRead 0 FirstWrite -1}
		weights_load_18147 {Type I LastRead 0 FirstWrite -1}
		weights_load_18148 {Type I LastRead 0 FirstWrite -1}
		weights_load_18149 {Type I LastRead 0 FirstWrite -1}
		weights_load_18150 {Type I LastRead 0 FirstWrite -1}
		weights_load_18151 {Type I LastRead 0 FirstWrite -1}
		weights_load_18152 {Type I LastRead 0 FirstWrite -1}
		weights_load_18153 {Type I LastRead 0 FirstWrite -1}
		weights_load_18154 {Type I LastRead 0 FirstWrite -1}
		weights_load_18155 {Type I LastRead 0 FirstWrite -1}
		weights_load_18156 {Type I LastRead 0 FirstWrite -1}
		weights_load_18157 {Type I LastRead 0 FirstWrite -1}
		weights_load_18158 {Type I LastRead 0 FirstWrite -1}
		weights_load_18159 {Type I LastRead 0 FirstWrite -1}
		weights_load_18160 {Type I LastRead 0 FirstWrite -1}
		weights_load_18161 {Type I LastRead 0 FirstWrite -1}
		weights_load_18162 {Type I LastRead 0 FirstWrite -1}
		weights_load_18163 {Type I LastRead 0 FirstWrite -1}
		weights_load_18164 {Type I LastRead 0 FirstWrite -1}
		weights_load_18165 {Type I LastRead 0 FirstWrite -1}
		weights_load_18166 {Type I LastRead 0 FirstWrite -1}
		weights_load_18167 {Type I LastRead 0 FirstWrite -1}
		weights_load_18168 {Type I LastRead 0 FirstWrite -1}
		weights_load_18169 {Type I LastRead 0 FirstWrite -1}
		weights_load_18170 {Type I LastRead 0 FirstWrite -1}
		weights_load_18171 {Type I LastRead 0 FirstWrite -1}
		weights_load_18172 {Type I LastRead 0 FirstWrite -1}
		weights_load_18173 {Type I LastRead 0 FirstWrite -1}
		weights_load_18174 {Type I LastRead 0 FirstWrite -1}
		weights_load_18175 {Type I LastRead 0 FirstWrite -1}
		weights_load_18176 {Type I LastRead 0 FirstWrite -1}
		weights_load_18177 {Type I LastRead 0 FirstWrite -1}
		weights_load_18178 {Type I LastRead 0 FirstWrite -1}
		weights_load_18179 {Type I LastRead 0 FirstWrite -1}
		weights_load_18180 {Type I LastRead 0 FirstWrite -1}
		weights_load_18181 {Type I LastRead 0 FirstWrite -1}
		weights_load_18182 {Type I LastRead 0 FirstWrite -1}
		weights_load_18183 {Type I LastRead 0 FirstWrite -1}
		weights_load_18184 {Type I LastRead 0 FirstWrite -1}
		weights_load_18185 {Type I LastRead 0 FirstWrite -1}
		weights_load_18186 {Type I LastRead 0 FirstWrite -1}
		weights_load_18187 {Type I LastRead 0 FirstWrite -1}
		weights_load_18188 {Type I LastRead 0 FirstWrite -1}
		weights_load_18189 {Type I LastRead 0 FirstWrite -1}
		weights_load_18190 {Type I LastRead 0 FirstWrite -1}
		weights_load_18191 {Type I LastRead 0 FirstWrite -1}
		weights_load_18192 {Type I LastRead 0 FirstWrite -1}
		weights_load_18193 {Type I LastRead 0 FirstWrite -1}
		weights_load_18194 {Type I LastRead 0 FirstWrite -1}
		weights_load_18195 {Type I LastRead 0 FirstWrite -1}
		weights_load_18196 {Type I LastRead 0 FirstWrite -1}
		weights_load_18197 {Type I LastRead 0 FirstWrite -1}
		weights_load_18198 {Type I LastRead 0 FirstWrite -1}
		weights_load_18199 {Type I LastRead 0 FirstWrite -1}
		weights_load_18200 {Type I LastRead 0 FirstWrite -1}
		weights_load_18201 {Type I LastRead 0 FirstWrite -1}
		weights_load_18202 {Type I LastRead 0 FirstWrite -1}
		weights_load_18203 {Type I LastRead 0 FirstWrite -1}
		weights_load_18204 {Type I LastRead 0 FirstWrite -1}
		weights_load_18205 {Type I LastRead 0 FirstWrite -1}
		weights_load_18206 {Type I LastRead 0 FirstWrite -1}
		weights_load_18207 {Type I LastRead 0 FirstWrite -1}
		weights_load_18208 {Type I LastRead 0 FirstWrite -1}
		weights_load_18209 {Type I LastRead 0 FirstWrite -1}
		weights_load_18210 {Type I LastRead 0 FirstWrite -1}
		weights_load_18211 {Type I LastRead 0 FirstWrite -1}
		weights_load_18212 {Type I LastRead 0 FirstWrite -1}
		weights_load_18213 {Type I LastRead 0 FirstWrite -1}
		weights_load_18214 {Type I LastRead 0 FirstWrite -1}
		weights_load_18215 {Type I LastRead 0 FirstWrite -1}
		weights_load_18216 {Type I LastRead 0 FirstWrite -1}
		weights_load_18217 {Type I LastRead 0 FirstWrite -1}
		weights_load_18218 {Type I LastRead 0 FirstWrite -1}
		weights_load_18219 {Type I LastRead 0 FirstWrite -1}
		weights_load_18220 {Type I LastRead 0 FirstWrite -1}
		weights_load_18221 {Type I LastRead 0 FirstWrite -1}
		weights_load_18222 {Type I LastRead 0 FirstWrite -1}
		weights_load_18223 {Type I LastRead 0 FirstWrite -1}
		weights_load_18224 {Type I LastRead 0 FirstWrite -1}
		weights_load_18225 {Type I LastRead 0 FirstWrite -1}
		weights_load_18226 {Type I LastRead 0 FirstWrite -1}
		weights_load_18227 {Type I LastRead 0 FirstWrite -1}
		weights_load_18228 {Type I LastRead 0 FirstWrite -1}
		weights_load_18229 {Type I LastRead 0 FirstWrite -1}
		weights_load_18230 {Type I LastRead 0 FirstWrite -1}
		weights_load_18231 {Type I LastRead 0 FirstWrite -1}
		weights_load_18232 {Type I LastRead 0 FirstWrite -1}
		weights_load_18233 {Type I LastRead 0 FirstWrite -1}
		weights_load_18234 {Type I LastRead 0 FirstWrite -1}
		weights_load_18235 {Type I LastRead 0 FirstWrite -1}
		weights_load_18236 {Type I LastRead 0 FirstWrite -1}
		weights_load_18237 {Type I LastRead 0 FirstWrite -1}
		weights_load_18238 {Type I LastRead 0 FirstWrite -1}
		weights_load_18239 {Type I LastRead 0 FirstWrite -1}
		weights_load_18240 {Type I LastRead 0 FirstWrite -1}
		weights_load_18241 {Type I LastRead 0 FirstWrite -1}
		weights_load_18242 {Type I LastRead 0 FirstWrite -1}
		weights_load_18243 {Type I LastRead 0 FirstWrite -1}
		weights_load_18244 {Type I LastRead 0 FirstWrite -1}
		weights_load_18245 {Type I LastRead 0 FirstWrite -1}
		weights_load_18246 {Type I LastRead 0 FirstWrite -1}
		weights_load_18247 {Type I LastRead 0 FirstWrite -1}
		weights_load_18248 {Type I LastRead 0 FirstWrite -1}
		weights_load_18249 {Type I LastRead 0 FirstWrite -1}
		weights_load_18250 {Type I LastRead 0 FirstWrite -1}
		weights_load_18251 {Type I LastRead 0 FirstWrite -1}
		weights_load_18252 {Type I LastRead 0 FirstWrite -1}
		weights_load_18253 {Type I LastRead 0 FirstWrite -1}
		weights_load_18254 {Type I LastRead 0 FirstWrite -1}
		weights_load_18255 {Type I LastRead 0 FirstWrite -1}
		weights_load_18256 {Type I LastRead 0 FirstWrite -1}
		weights_load_18257 {Type I LastRead 0 FirstWrite -1}
		weights_load_18258 {Type I LastRead 0 FirstWrite -1}
		weights_load_18259 {Type I LastRead 0 FirstWrite -1}
		weights_load_18260 {Type I LastRead 0 FirstWrite -1}
		weights_load_18261 {Type I LastRead 0 FirstWrite -1}
		weights_load_18262 {Type I LastRead 0 FirstWrite -1}
		weights_load_18263 {Type I LastRead 0 FirstWrite -1}
		weights_load_18264 {Type I LastRead 0 FirstWrite -1}
		weights_load_18265 {Type I LastRead 0 FirstWrite -1}
		weights_load_18266 {Type I LastRead 0 FirstWrite -1}
		weights_load_18267 {Type I LastRead 0 FirstWrite -1}
		weights_load_18268 {Type I LastRead 0 FirstWrite -1}
		weights_load_18269 {Type I LastRead 0 FirstWrite -1}
		weights_load_18270 {Type I LastRead 0 FirstWrite -1}
		weights_load_18271 {Type I LastRead 0 FirstWrite -1}
		weights_load_18272 {Type I LastRead 0 FirstWrite -1}
		weights_load_18273 {Type I LastRead 0 FirstWrite -1}
		weights_load_18274 {Type I LastRead 0 FirstWrite -1}
		weights_load_18275 {Type I LastRead 0 FirstWrite -1}
		weights_load_18276 {Type I LastRead 0 FirstWrite -1}
		weights_load_18277 {Type I LastRead 0 FirstWrite -1}
		weights_load_18278 {Type I LastRead 0 FirstWrite -1}
		weights_load_18279 {Type I LastRead 0 FirstWrite -1}
		weights_load_18280 {Type I LastRead 0 FirstWrite -1}
		weights_load_18281 {Type I LastRead 0 FirstWrite -1}
		weights_load_18282 {Type I LastRead 0 FirstWrite -1}
		weights_load_18283 {Type I LastRead 0 FirstWrite -1}
		weights_load_18284 {Type I LastRead 0 FirstWrite -1}
		weights_load_18285 {Type I LastRead 0 FirstWrite -1}
		weights_load_18286 {Type I LastRead 0 FirstWrite -1}
		weights_load_18287 {Type I LastRead 0 FirstWrite -1}
		weights_load_18288 {Type I LastRead 0 FirstWrite -1}
		weights_load_18289 {Type I LastRead 0 FirstWrite -1}
		weights_load_18290 {Type I LastRead 0 FirstWrite -1}
		weights_load_18291 {Type I LastRead 0 FirstWrite -1}
		weights_load_18292 {Type I LastRead 0 FirstWrite -1}
		weights_load_18293 {Type I LastRead 0 FirstWrite -1}
		weights_load_18294 {Type I LastRead 0 FirstWrite -1}
		weights_load_18295 {Type I LastRead 0 FirstWrite -1}
		weights_load_18296 {Type I LastRead 0 FirstWrite -1}
		weights_load_18297 {Type I LastRead 0 FirstWrite -1}
		weights_load_18298 {Type I LastRead 0 FirstWrite -1}
		weights_load_18299 {Type I LastRead 0 FirstWrite -1}
		weights_load_18300 {Type I LastRead 0 FirstWrite -1}
		weights_load_18301 {Type I LastRead 0 FirstWrite -1}
		weights_load_18302 {Type I LastRead 0 FirstWrite -1}
		weights_load_18303 {Type I LastRead 0 FirstWrite -1}
		weights_load_18304 {Type I LastRead 0 FirstWrite -1}
		weights_load_18305 {Type I LastRead 0 FirstWrite -1}
		weights_load_18306 {Type I LastRead 0 FirstWrite -1}
		weights_load_18307 {Type I LastRead 0 FirstWrite -1}
		weights_load_18308 {Type I LastRead 0 FirstWrite -1}
		weights_load_18309 {Type I LastRead 0 FirstWrite -1}
		weights_load_18310 {Type I LastRead 0 FirstWrite -1}
		weights_load_18311 {Type I LastRead 0 FirstWrite -1}
		weights_load_18312 {Type I LastRead 0 FirstWrite -1}
		weights_load_18313 {Type I LastRead 0 FirstWrite -1}
		weights_load_18314 {Type I LastRead 0 FirstWrite -1}
		weights_load_18315 {Type I LastRead 0 FirstWrite -1}
		weights_load_18316 {Type I LastRead 0 FirstWrite -1}
		weights_load_18317 {Type I LastRead 0 FirstWrite -1}
		weights_load_18318 {Type I LastRead 0 FirstWrite -1}
		weights_load_18319 {Type I LastRead 0 FirstWrite -1}
		weights_load_18320 {Type I LastRead 0 FirstWrite -1}
		weights_load_18321 {Type I LastRead 0 FirstWrite -1}
		weights_load_18322 {Type I LastRead 0 FirstWrite -1}
		weights_load_18323 {Type I LastRead 0 FirstWrite -1}
		weights_load_18324 {Type I LastRead 0 FirstWrite -1}
		weights_load_18325 {Type I LastRead 0 FirstWrite -1}
		weights_load_18326 {Type I LastRead 0 FirstWrite -1}
		weights_load_18327 {Type I LastRead 0 FirstWrite -1}
		weights_load_18328 {Type I LastRead 0 FirstWrite -1}
		weights_load_18329 {Type I LastRead 0 FirstWrite -1}
		weights_load_18330 {Type I LastRead 0 FirstWrite -1}
		weights_load_18331 {Type I LastRead 0 FirstWrite -1}
		weights_load_18332 {Type I LastRead 0 FirstWrite -1}
		weights_load_18333 {Type I LastRead 0 FirstWrite -1}
		weights_load_18334 {Type I LastRead 0 FirstWrite -1}
		weights_load_18335 {Type I LastRead 0 FirstWrite -1}
		weights_load_18336 {Type I LastRead 0 FirstWrite -1}
		weights_load_18337 {Type I LastRead 0 FirstWrite -1}
		weights_load_18338 {Type I LastRead 0 FirstWrite -1}
		weights_load_18339 {Type I LastRead 0 FirstWrite -1}
		weights_load_18340 {Type I LastRead 0 FirstWrite -1}
		weights_load_18341 {Type I LastRead 0 FirstWrite -1}
		weights_load_18342 {Type I LastRead 0 FirstWrite -1}
		weights_load_18343 {Type I LastRead 0 FirstWrite -1}
		weights_load_18344 {Type I LastRead 0 FirstWrite -1}
		weights_load_18345 {Type I LastRead 0 FirstWrite -1}
		weights_load_18346 {Type I LastRead 0 FirstWrite -1}
		weights_load_18347 {Type I LastRead 0 FirstWrite -1}
		weights_load_18348 {Type I LastRead 0 FirstWrite -1}
		weights_load_18349 {Type I LastRead 0 FirstWrite -1}
		weights_load_18350 {Type I LastRead 0 FirstWrite -1}
		weights_load_18351 {Type I LastRead 0 FirstWrite -1}
		weights_load_18352 {Type I LastRead 0 FirstWrite -1}
		weights_load_18353 {Type I LastRead 0 FirstWrite -1}
		weights_load_18354 {Type I LastRead 0 FirstWrite -1}
		weights_load_18355 {Type I LastRead 0 FirstWrite -1}
		weights_load_18356 {Type I LastRead 0 FirstWrite -1}
		weights_load_18357 {Type I LastRead 0 FirstWrite -1}
		weights_load_18358 {Type I LastRead 0 FirstWrite -1}
		weights_load_18359 {Type I LastRead 0 FirstWrite -1}
		weights_load_18360 {Type I LastRead 0 FirstWrite -1}
		weights_load_18361 {Type I LastRead 0 FirstWrite -1}
		weights_load_18362 {Type I LastRead 0 FirstWrite -1}
		weights_load_18363 {Type I LastRead 0 FirstWrite -1}
		weights_load_18364 {Type I LastRead 0 FirstWrite -1}
		weights_load_18365 {Type I LastRead 0 FirstWrite -1}
		weights_load_18366 {Type I LastRead 0 FirstWrite -1}
		weights_load_18367 {Type I LastRead 0 FirstWrite -1}
		weights_load_18368 {Type I LastRead 0 FirstWrite -1}
		weights_load_18369 {Type I LastRead 0 FirstWrite -1}
		weights_load_18370 {Type I LastRead 0 FirstWrite -1}
		weights_load_18371 {Type I LastRead 0 FirstWrite -1}
		weights_load_18372 {Type I LastRead 0 FirstWrite -1}
		weights_load_18373 {Type I LastRead 0 FirstWrite -1}
		weights_load_18374 {Type I LastRead 0 FirstWrite -1}
		weights_load_18375 {Type I LastRead 0 FirstWrite -1}
		weights_load_18376 {Type I LastRead 0 FirstWrite -1}
		weights_load_18377 {Type I LastRead 0 FirstWrite -1}
		weights_load_18378 {Type I LastRead 0 FirstWrite -1}
		weights_load_18379 {Type I LastRead 0 FirstWrite -1}
		weights_load_18380 {Type I LastRead 0 FirstWrite -1}
		weights_load_18381 {Type I LastRead 0 FirstWrite -1}
		weights_load_18382 {Type I LastRead 0 FirstWrite -1}
		weights_load_18383 {Type I LastRead 0 FirstWrite -1}
		weights_load_18384 {Type I LastRead 0 FirstWrite -1}
		weights_load_18385 {Type I LastRead 0 FirstWrite -1}
		weights_load_18386 {Type I LastRead 0 FirstWrite -1}
		weights_load_18387 {Type I LastRead 0 FirstWrite -1}
		weights_load_18388 {Type I LastRead 0 FirstWrite -1}
		weights_load_18389 {Type I LastRead 0 FirstWrite -1}
		weights_load_18390 {Type I LastRead 0 FirstWrite -1}
		weights_load_18391 {Type I LastRead 0 FirstWrite -1}
		weights_load_18392 {Type I LastRead 0 FirstWrite -1}
		weights_load_18393 {Type I LastRead 0 FirstWrite -1}
		weights_load_18394 {Type I LastRead 0 FirstWrite -1}
		weights_load_18395 {Type I LastRead 0 FirstWrite -1}
		weights_load_18396 {Type I LastRead 0 FirstWrite -1}
		weights_load_18397 {Type I LastRead 0 FirstWrite -1}
		weights_load_18398 {Type I LastRead 0 FirstWrite -1}
		weights_load_18399 {Type I LastRead 0 FirstWrite -1}
		weights_load_18400 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_0 { ap_fifo {  { conv2d_64_padded_window_stream_0_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_0_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_0_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_0_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_0_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_0 { ap_fifo {  { in_channel_map_stream_0_din fifo_port_we 1 32 }  { in_channel_map_stream_0_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_0_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_0_full_n fifo_status 0 1 }  { in_channel_map_stream_0_write fifo_data 1 1 } } }
}
