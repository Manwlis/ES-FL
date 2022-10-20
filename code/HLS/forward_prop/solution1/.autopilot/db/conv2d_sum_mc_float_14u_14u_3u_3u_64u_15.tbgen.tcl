set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_15
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.15}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_15 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_15 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_15", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_15", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_15_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_15_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_15_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_15_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_15_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_15_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_15_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_15_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_15_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_15_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_15_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_15", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_15_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_15", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_15_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_15", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_15_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_15", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_15_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_15", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_15_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_15", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_15_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_15", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_15_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_15", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_15_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_15", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_15_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_15", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_15",
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
			{"Name" : "conv2d_64_padded_window_stream_15", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_15_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_15", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_15", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_15_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_15", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_15_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_15_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_15", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13801", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13802", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13803", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13804", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13805", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13806", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13807", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13808", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_15", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_13809", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13810", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13811", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13812", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13813", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13814", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13815", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13816", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13817", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13818", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13819", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13820", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13821", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13822", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13823", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13824", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13825", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13826", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13827", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13828", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13829", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13830", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13831", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13832", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13833", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13834", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13835", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13836", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13837", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13838", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13839", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13840", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13841", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13842", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13843", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13844", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13845", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13846", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13847", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13848", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13849", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13850", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13851", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13852", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13853", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13854", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13855", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13856", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13857", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13858", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13859", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13860", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13861", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13862", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13863", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13864", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13865", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13866", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13867", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13868", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13869", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13870", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13871", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13872", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13873", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13874", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13875", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13876", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13877", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13878", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13879", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13880", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13881", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13882", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13883", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13884", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13885", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13886", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13887", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13888", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13889", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13890", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13891", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13892", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13893", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13894", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13895", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13896", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13897", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13898", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13899", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13900", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13901", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13902", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13903", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13904", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13905", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13906", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13907", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13908", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13909", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13910", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13911", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13912", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13913", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13914", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13915", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13916", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13917", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13918", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13919", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13920", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13921", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13922", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13923", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13924", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13925", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13926", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13927", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13928", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13929", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13930", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13931", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13932", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13933", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13934", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13935", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13936", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13937", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13938", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13939", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13940", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13941", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13942", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13943", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13944", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13945", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13946", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13947", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13948", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13949", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13950", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13951", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13952", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13953", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13954", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13955", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13956", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13957", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13958", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13959", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13960", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13961", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13962", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13963", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13964", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13965", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13966", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13967", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13968", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13969", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13970", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13971", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13972", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13973", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13974", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13975", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13976", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13977", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13978", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13979", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13980", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13981", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13982", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13983", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13984", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13985", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13986", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13987", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13988", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13989", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13990", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13991", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13992", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13993", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13994", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13995", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13996", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13997", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13998", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13999", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14000", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14001", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14002", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14003", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14004", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14005", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14006", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14007", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14008", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14009", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14010", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14011", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14012", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14013", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14014", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14015", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14016", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14017", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14018", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14019", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14020", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14021", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14022", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14023", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14024", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14025", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14026", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14027", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14028", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14029", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14030", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14031", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14032", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14033", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14034", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14035", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14036", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14037", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14038", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14039", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14040", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14041", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14042", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14043", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14044", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14045", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14046", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14047", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14048", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14049", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14050", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14051", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14052", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14053", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14054", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14055", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14056", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14057", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14058", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14059", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14060", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14061", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14062", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14063", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14064", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14065", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14066", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14067", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14068", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14069", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14070", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14071", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14072", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14073", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14074", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14075", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14076", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14077", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14078", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14079", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14080", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14081", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14082", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14083", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14084", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14085", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14086", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14087", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14088", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14089", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14090", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14091", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14092", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14093", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14094", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14095", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14096", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14097", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14098", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14099", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14100", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14101", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14102", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14103", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14104", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14105", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14106", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14107", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14108", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14109", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14110", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14111", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14112", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14113", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14114", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14115", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14116", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14117", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14118", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14119", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14120", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14121", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14122", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14123", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14124", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14125", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14126", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14127", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14128", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14129", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14130", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14131", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14132", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14133", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14134", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14135", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14136", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14137", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14138", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14139", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14140", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14141", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14142", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14143", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14144", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14145", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14146", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14147", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14148", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14149", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14150", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14151", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14152", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14153", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14154", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14155", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14156", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14157", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14158", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14159", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14160", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14161", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14162", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14163", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14164", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14165", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14166", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14167", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14168", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14169", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14170", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14171", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14172", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14173", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14174", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14175", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14176", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14177", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14178", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14179", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14180", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14181", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14182", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14183", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14184", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14185", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14186", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14187", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14188", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14189", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14190", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14191", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14192", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14193", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14194", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14195", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14196", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14197", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14198", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14199", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14200", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14201", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14202", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14203", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14204", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14205", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14206", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14207", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14208", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14209", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14210", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14211", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14212", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14213", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14214", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14215", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14216", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14217", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14218", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14219", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14220", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14221", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14222", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14223", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14224", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14225", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14226", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14227", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14228", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14229", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14230", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14231", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14232", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14233", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14234", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14235", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14236", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14237", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14238", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14239", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14240", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14241", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14242", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14243", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14244", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14245", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14246", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14247", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14248", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14249", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14250", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14251", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14252", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14253", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14254", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14255", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14256", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14257", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14258", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14259", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14260", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14261", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14262", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14263", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14264", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14265", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14266", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14267", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14268", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14269", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14270", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14271", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14272", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14273", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14274", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14275", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14276", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14277", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14278", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14279", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14280", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14281", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14282", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14283", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14284", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14285", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14286", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14287", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14288", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14289", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14290", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14291", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14292", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14293", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14294", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14295", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14296", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14297", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14298", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14299", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14300", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14301", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14302", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14303", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14304", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14305", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14306", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14307", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14308", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14309", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14310", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14311", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14312", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14313", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14314", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14315", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14316", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14317", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14318", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14319", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14320", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14321", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14322", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14323", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14324", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14325", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14326", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14327", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14328", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14329", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14330", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14331", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14332", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14333", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14334", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14335", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14336", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14337", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14338", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14339", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14340", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14341", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14342", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14343", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14344", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14345", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14346", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14347", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14348", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14349", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14350", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14351", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14352", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14353", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14354", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14355", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14356", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14357", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14358", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14359", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14360", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14361", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14362", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14363", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14364", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14365", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14366", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14367", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14368", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14369", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14370", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14371", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14372", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14373", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14374", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14375", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_15_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U9526", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_15_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U9527", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_15_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U9528", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_15_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U9529", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_15_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U9530", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_15_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U9531", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_15_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U9532", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_15_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U9533", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_15_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U9534", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_15_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U9535", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_15_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U9536", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_15_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U9537", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_15_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U9538", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_15_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U9539", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_15_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U9540", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_15_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U9541", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_15_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U9542", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_15_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_15 {
		conv2d_64_padded_window_stream_15 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_15 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_15_Pipeline_inputs {
		conv2d_64_padded_window_stream_15 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_13801 {Type I LastRead 0 FirstWrite -1}
		weights_load_13802 {Type I LastRead 0 FirstWrite -1}
		weights_load_13803 {Type I LastRead 0 FirstWrite -1}
		weights_load_13804 {Type I LastRead 0 FirstWrite -1}
		weights_load_13805 {Type I LastRead 0 FirstWrite -1}
		weights_load_13806 {Type I LastRead 0 FirstWrite -1}
		weights_load_13807 {Type I LastRead 0 FirstWrite -1}
		weights_load_13808 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_15 {Type O LastRead -1 FirstWrite 16}
		weights_load_13809 {Type I LastRead 0 FirstWrite -1}
		weights_load_13810 {Type I LastRead 0 FirstWrite -1}
		weights_load_13811 {Type I LastRead 0 FirstWrite -1}
		weights_load_13812 {Type I LastRead 0 FirstWrite -1}
		weights_load_13813 {Type I LastRead 0 FirstWrite -1}
		weights_load_13814 {Type I LastRead 0 FirstWrite -1}
		weights_load_13815 {Type I LastRead 0 FirstWrite -1}
		weights_load_13816 {Type I LastRead 0 FirstWrite -1}
		weights_load_13817 {Type I LastRead 0 FirstWrite -1}
		weights_load_13818 {Type I LastRead 0 FirstWrite -1}
		weights_load_13819 {Type I LastRead 0 FirstWrite -1}
		weights_load_13820 {Type I LastRead 0 FirstWrite -1}
		weights_load_13821 {Type I LastRead 0 FirstWrite -1}
		weights_load_13822 {Type I LastRead 0 FirstWrite -1}
		weights_load_13823 {Type I LastRead 0 FirstWrite -1}
		weights_load_13824 {Type I LastRead 0 FirstWrite -1}
		weights_load_13825 {Type I LastRead 0 FirstWrite -1}
		weights_load_13826 {Type I LastRead 0 FirstWrite -1}
		weights_load_13827 {Type I LastRead 0 FirstWrite -1}
		weights_load_13828 {Type I LastRead 0 FirstWrite -1}
		weights_load_13829 {Type I LastRead 0 FirstWrite -1}
		weights_load_13830 {Type I LastRead 0 FirstWrite -1}
		weights_load_13831 {Type I LastRead 0 FirstWrite -1}
		weights_load_13832 {Type I LastRead 0 FirstWrite -1}
		weights_load_13833 {Type I LastRead 0 FirstWrite -1}
		weights_load_13834 {Type I LastRead 0 FirstWrite -1}
		weights_load_13835 {Type I LastRead 0 FirstWrite -1}
		weights_load_13836 {Type I LastRead 0 FirstWrite -1}
		weights_load_13837 {Type I LastRead 0 FirstWrite -1}
		weights_load_13838 {Type I LastRead 0 FirstWrite -1}
		weights_load_13839 {Type I LastRead 0 FirstWrite -1}
		weights_load_13840 {Type I LastRead 0 FirstWrite -1}
		weights_load_13841 {Type I LastRead 0 FirstWrite -1}
		weights_load_13842 {Type I LastRead 0 FirstWrite -1}
		weights_load_13843 {Type I LastRead 0 FirstWrite -1}
		weights_load_13844 {Type I LastRead 0 FirstWrite -1}
		weights_load_13845 {Type I LastRead 0 FirstWrite -1}
		weights_load_13846 {Type I LastRead 0 FirstWrite -1}
		weights_load_13847 {Type I LastRead 0 FirstWrite -1}
		weights_load_13848 {Type I LastRead 0 FirstWrite -1}
		weights_load_13849 {Type I LastRead 0 FirstWrite -1}
		weights_load_13850 {Type I LastRead 0 FirstWrite -1}
		weights_load_13851 {Type I LastRead 0 FirstWrite -1}
		weights_load_13852 {Type I LastRead 0 FirstWrite -1}
		weights_load_13853 {Type I LastRead 0 FirstWrite -1}
		weights_load_13854 {Type I LastRead 0 FirstWrite -1}
		weights_load_13855 {Type I LastRead 0 FirstWrite -1}
		weights_load_13856 {Type I LastRead 0 FirstWrite -1}
		weights_load_13857 {Type I LastRead 0 FirstWrite -1}
		weights_load_13858 {Type I LastRead 0 FirstWrite -1}
		weights_load_13859 {Type I LastRead 0 FirstWrite -1}
		weights_load_13860 {Type I LastRead 0 FirstWrite -1}
		weights_load_13861 {Type I LastRead 0 FirstWrite -1}
		weights_load_13862 {Type I LastRead 0 FirstWrite -1}
		weights_load_13863 {Type I LastRead 0 FirstWrite -1}
		weights_load_13864 {Type I LastRead 0 FirstWrite -1}
		weights_load_13865 {Type I LastRead 0 FirstWrite -1}
		weights_load_13866 {Type I LastRead 0 FirstWrite -1}
		weights_load_13867 {Type I LastRead 0 FirstWrite -1}
		weights_load_13868 {Type I LastRead 0 FirstWrite -1}
		weights_load_13869 {Type I LastRead 0 FirstWrite -1}
		weights_load_13870 {Type I LastRead 0 FirstWrite -1}
		weights_load_13871 {Type I LastRead 0 FirstWrite -1}
		weights_load_13872 {Type I LastRead 0 FirstWrite -1}
		weights_load_13873 {Type I LastRead 0 FirstWrite -1}
		weights_load_13874 {Type I LastRead 0 FirstWrite -1}
		weights_load_13875 {Type I LastRead 0 FirstWrite -1}
		weights_load_13876 {Type I LastRead 0 FirstWrite -1}
		weights_load_13877 {Type I LastRead 0 FirstWrite -1}
		weights_load_13878 {Type I LastRead 0 FirstWrite -1}
		weights_load_13879 {Type I LastRead 0 FirstWrite -1}
		weights_load_13880 {Type I LastRead 0 FirstWrite -1}
		weights_load_13881 {Type I LastRead 0 FirstWrite -1}
		weights_load_13882 {Type I LastRead 0 FirstWrite -1}
		weights_load_13883 {Type I LastRead 0 FirstWrite -1}
		weights_load_13884 {Type I LastRead 0 FirstWrite -1}
		weights_load_13885 {Type I LastRead 0 FirstWrite -1}
		weights_load_13886 {Type I LastRead 0 FirstWrite -1}
		weights_load_13887 {Type I LastRead 0 FirstWrite -1}
		weights_load_13888 {Type I LastRead 0 FirstWrite -1}
		weights_load_13889 {Type I LastRead 0 FirstWrite -1}
		weights_load_13890 {Type I LastRead 0 FirstWrite -1}
		weights_load_13891 {Type I LastRead 0 FirstWrite -1}
		weights_load_13892 {Type I LastRead 0 FirstWrite -1}
		weights_load_13893 {Type I LastRead 0 FirstWrite -1}
		weights_load_13894 {Type I LastRead 0 FirstWrite -1}
		weights_load_13895 {Type I LastRead 0 FirstWrite -1}
		weights_load_13896 {Type I LastRead 0 FirstWrite -1}
		weights_load_13897 {Type I LastRead 0 FirstWrite -1}
		weights_load_13898 {Type I LastRead 0 FirstWrite -1}
		weights_load_13899 {Type I LastRead 0 FirstWrite -1}
		weights_load_13900 {Type I LastRead 0 FirstWrite -1}
		weights_load_13901 {Type I LastRead 0 FirstWrite -1}
		weights_load_13902 {Type I LastRead 0 FirstWrite -1}
		weights_load_13903 {Type I LastRead 0 FirstWrite -1}
		weights_load_13904 {Type I LastRead 0 FirstWrite -1}
		weights_load_13905 {Type I LastRead 0 FirstWrite -1}
		weights_load_13906 {Type I LastRead 0 FirstWrite -1}
		weights_load_13907 {Type I LastRead 0 FirstWrite -1}
		weights_load_13908 {Type I LastRead 0 FirstWrite -1}
		weights_load_13909 {Type I LastRead 0 FirstWrite -1}
		weights_load_13910 {Type I LastRead 0 FirstWrite -1}
		weights_load_13911 {Type I LastRead 0 FirstWrite -1}
		weights_load_13912 {Type I LastRead 0 FirstWrite -1}
		weights_load_13913 {Type I LastRead 0 FirstWrite -1}
		weights_load_13914 {Type I LastRead 0 FirstWrite -1}
		weights_load_13915 {Type I LastRead 0 FirstWrite -1}
		weights_load_13916 {Type I LastRead 0 FirstWrite -1}
		weights_load_13917 {Type I LastRead 0 FirstWrite -1}
		weights_load_13918 {Type I LastRead 0 FirstWrite -1}
		weights_load_13919 {Type I LastRead 0 FirstWrite -1}
		weights_load_13920 {Type I LastRead 0 FirstWrite -1}
		weights_load_13921 {Type I LastRead 0 FirstWrite -1}
		weights_load_13922 {Type I LastRead 0 FirstWrite -1}
		weights_load_13923 {Type I LastRead 0 FirstWrite -1}
		weights_load_13924 {Type I LastRead 0 FirstWrite -1}
		weights_load_13925 {Type I LastRead 0 FirstWrite -1}
		weights_load_13926 {Type I LastRead 0 FirstWrite -1}
		weights_load_13927 {Type I LastRead 0 FirstWrite -1}
		weights_load_13928 {Type I LastRead 0 FirstWrite -1}
		weights_load_13929 {Type I LastRead 0 FirstWrite -1}
		weights_load_13930 {Type I LastRead 0 FirstWrite -1}
		weights_load_13931 {Type I LastRead 0 FirstWrite -1}
		weights_load_13932 {Type I LastRead 0 FirstWrite -1}
		weights_load_13933 {Type I LastRead 0 FirstWrite -1}
		weights_load_13934 {Type I LastRead 0 FirstWrite -1}
		weights_load_13935 {Type I LastRead 0 FirstWrite -1}
		weights_load_13936 {Type I LastRead 0 FirstWrite -1}
		weights_load_13937 {Type I LastRead 0 FirstWrite -1}
		weights_load_13938 {Type I LastRead 0 FirstWrite -1}
		weights_load_13939 {Type I LastRead 0 FirstWrite -1}
		weights_load_13940 {Type I LastRead 0 FirstWrite -1}
		weights_load_13941 {Type I LastRead 0 FirstWrite -1}
		weights_load_13942 {Type I LastRead 0 FirstWrite -1}
		weights_load_13943 {Type I LastRead 0 FirstWrite -1}
		weights_load_13944 {Type I LastRead 0 FirstWrite -1}
		weights_load_13945 {Type I LastRead 0 FirstWrite -1}
		weights_load_13946 {Type I LastRead 0 FirstWrite -1}
		weights_load_13947 {Type I LastRead 0 FirstWrite -1}
		weights_load_13948 {Type I LastRead 0 FirstWrite -1}
		weights_load_13949 {Type I LastRead 0 FirstWrite -1}
		weights_load_13950 {Type I LastRead 0 FirstWrite -1}
		weights_load_13951 {Type I LastRead 0 FirstWrite -1}
		weights_load_13952 {Type I LastRead 0 FirstWrite -1}
		weights_load_13953 {Type I LastRead 0 FirstWrite -1}
		weights_load_13954 {Type I LastRead 0 FirstWrite -1}
		weights_load_13955 {Type I LastRead 0 FirstWrite -1}
		weights_load_13956 {Type I LastRead 0 FirstWrite -1}
		weights_load_13957 {Type I LastRead 0 FirstWrite -1}
		weights_load_13958 {Type I LastRead 0 FirstWrite -1}
		weights_load_13959 {Type I LastRead 0 FirstWrite -1}
		weights_load_13960 {Type I LastRead 0 FirstWrite -1}
		weights_load_13961 {Type I LastRead 0 FirstWrite -1}
		weights_load_13962 {Type I LastRead 0 FirstWrite -1}
		weights_load_13963 {Type I LastRead 0 FirstWrite -1}
		weights_load_13964 {Type I LastRead 0 FirstWrite -1}
		weights_load_13965 {Type I LastRead 0 FirstWrite -1}
		weights_load_13966 {Type I LastRead 0 FirstWrite -1}
		weights_load_13967 {Type I LastRead 0 FirstWrite -1}
		weights_load_13968 {Type I LastRead 0 FirstWrite -1}
		weights_load_13969 {Type I LastRead 0 FirstWrite -1}
		weights_load_13970 {Type I LastRead 0 FirstWrite -1}
		weights_load_13971 {Type I LastRead 0 FirstWrite -1}
		weights_load_13972 {Type I LastRead 0 FirstWrite -1}
		weights_load_13973 {Type I LastRead 0 FirstWrite -1}
		weights_load_13974 {Type I LastRead 0 FirstWrite -1}
		weights_load_13975 {Type I LastRead 0 FirstWrite -1}
		weights_load_13976 {Type I LastRead 0 FirstWrite -1}
		weights_load_13977 {Type I LastRead 0 FirstWrite -1}
		weights_load_13978 {Type I LastRead 0 FirstWrite -1}
		weights_load_13979 {Type I LastRead 0 FirstWrite -1}
		weights_load_13980 {Type I LastRead 0 FirstWrite -1}
		weights_load_13981 {Type I LastRead 0 FirstWrite -1}
		weights_load_13982 {Type I LastRead 0 FirstWrite -1}
		weights_load_13983 {Type I LastRead 0 FirstWrite -1}
		weights_load_13984 {Type I LastRead 0 FirstWrite -1}
		weights_load_13985 {Type I LastRead 0 FirstWrite -1}
		weights_load_13986 {Type I LastRead 0 FirstWrite -1}
		weights_load_13987 {Type I LastRead 0 FirstWrite -1}
		weights_load_13988 {Type I LastRead 0 FirstWrite -1}
		weights_load_13989 {Type I LastRead 0 FirstWrite -1}
		weights_load_13990 {Type I LastRead 0 FirstWrite -1}
		weights_load_13991 {Type I LastRead 0 FirstWrite -1}
		weights_load_13992 {Type I LastRead 0 FirstWrite -1}
		weights_load_13993 {Type I LastRead 0 FirstWrite -1}
		weights_load_13994 {Type I LastRead 0 FirstWrite -1}
		weights_load_13995 {Type I LastRead 0 FirstWrite -1}
		weights_load_13996 {Type I LastRead 0 FirstWrite -1}
		weights_load_13997 {Type I LastRead 0 FirstWrite -1}
		weights_load_13998 {Type I LastRead 0 FirstWrite -1}
		weights_load_13999 {Type I LastRead 0 FirstWrite -1}
		weights_load_14000 {Type I LastRead 0 FirstWrite -1}
		weights_load_14001 {Type I LastRead 0 FirstWrite -1}
		weights_load_14002 {Type I LastRead 0 FirstWrite -1}
		weights_load_14003 {Type I LastRead 0 FirstWrite -1}
		weights_load_14004 {Type I LastRead 0 FirstWrite -1}
		weights_load_14005 {Type I LastRead 0 FirstWrite -1}
		weights_load_14006 {Type I LastRead 0 FirstWrite -1}
		weights_load_14007 {Type I LastRead 0 FirstWrite -1}
		weights_load_14008 {Type I LastRead 0 FirstWrite -1}
		weights_load_14009 {Type I LastRead 0 FirstWrite -1}
		weights_load_14010 {Type I LastRead 0 FirstWrite -1}
		weights_load_14011 {Type I LastRead 0 FirstWrite -1}
		weights_load_14012 {Type I LastRead 0 FirstWrite -1}
		weights_load_14013 {Type I LastRead 0 FirstWrite -1}
		weights_load_14014 {Type I LastRead 0 FirstWrite -1}
		weights_load_14015 {Type I LastRead 0 FirstWrite -1}
		weights_load_14016 {Type I LastRead 0 FirstWrite -1}
		weights_load_14017 {Type I LastRead 0 FirstWrite -1}
		weights_load_14018 {Type I LastRead 0 FirstWrite -1}
		weights_load_14019 {Type I LastRead 0 FirstWrite -1}
		weights_load_14020 {Type I LastRead 0 FirstWrite -1}
		weights_load_14021 {Type I LastRead 0 FirstWrite -1}
		weights_load_14022 {Type I LastRead 0 FirstWrite -1}
		weights_load_14023 {Type I LastRead 0 FirstWrite -1}
		weights_load_14024 {Type I LastRead 0 FirstWrite -1}
		weights_load_14025 {Type I LastRead 0 FirstWrite -1}
		weights_load_14026 {Type I LastRead 0 FirstWrite -1}
		weights_load_14027 {Type I LastRead 0 FirstWrite -1}
		weights_load_14028 {Type I LastRead 0 FirstWrite -1}
		weights_load_14029 {Type I LastRead 0 FirstWrite -1}
		weights_load_14030 {Type I LastRead 0 FirstWrite -1}
		weights_load_14031 {Type I LastRead 0 FirstWrite -1}
		weights_load_14032 {Type I LastRead 0 FirstWrite -1}
		weights_load_14033 {Type I LastRead 0 FirstWrite -1}
		weights_load_14034 {Type I LastRead 0 FirstWrite -1}
		weights_load_14035 {Type I LastRead 0 FirstWrite -1}
		weights_load_14036 {Type I LastRead 0 FirstWrite -1}
		weights_load_14037 {Type I LastRead 0 FirstWrite -1}
		weights_load_14038 {Type I LastRead 0 FirstWrite -1}
		weights_load_14039 {Type I LastRead 0 FirstWrite -1}
		weights_load_14040 {Type I LastRead 0 FirstWrite -1}
		weights_load_14041 {Type I LastRead 0 FirstWrite -1}
		weights_load_14042 {Type I LastRead 0 FirstWrite -1}
		weights_load_14043 {Type I LastRead 0 FirstWrite -1}
		weights_load_14044 {Type I LastRead 0 FirstWrite -1}
		weights_load_14045 {Type I LastRead 0 FirstWrite -1}
		weights_load_14046 {Type I LastRead 0 FirstWrite -1}
		weights_load_14047 {Type I LastRead 0 FirstWrite -1}
		weights_load_14048 {Type I LastRead 0 FirstWrite -1}
		weights_load_14049 {Type I LastRead 0 FirstWrite -1}
		weights_load_14050 {Type I LastRead 0 FirstWrite -1}
		weights_load_14051 {Type I LastRead 0 FirstWrite -1}
		weights_load_14052 {Type I LastRead 0 FirstWrite -1}
		weights_load_14053 {Type I LastRead 0 FirstWrite -1}
		weights_load_14054 {Type I LastRead 0 FirstWrite -1}
		weights_load_14055 {Type I LastRead 0 FirstWrite -1}
		weights_load_14056 {Type I LastRead 0 FirstWrite -1}
		weights_load_14057 {Type I LastRead 0 FirstWrite -1}
		weights_load_14058 {Type I LastRead 0 FirstWrite -1}
		weights_load_14059 {Type I LastRead 0 FirstWrite -1}
		weights_load_14060 {Type I LastRead 0 FirstWrite -1}
		weights_load_14061 {Type I LastRead 0 FirstWrite -1}
		weights_load_14062 {Type I LastRead 0 FirstWrite -1}
		weights_load_14063 {Type I LastRead 0 FirstWrite -1}
		weights_load_14064 {Type I LastRead 0 FirstWrite -1}
		weights_load_14065 {Type I LastRead 0 FirstWrite -1}
		weights_load_14066 {Type I LastRead 0 FirstWrite -1}
		weights_load_14067 {Type I LastRead 0 FirstWrite -1}
		weights_load_14068 {Type I LastRead 0 FirstWrite -1}
		weights_load_14069 {Type I LastRead 0 FirstWrite -1}
		weights_load_14070 {Type I LastRead 0 FirstWrite -1}
		weights_load_14071 {Type I LastRead 0 FirstWrite -1}
		weights_load_14072 {Type I LastRead 0 FirstWrite -1}
		weights_load_14073 {Type I LastRead 0 FirstWrite -1}
		weights_load_14074 {Type I LastRead 0 FirstWrite -1}
		weights_load_14075 {Type I LastRead 0 FirstWrite -1}
		weights_load_14076 {Type I LastRead 0 FirstWrite -1}
		weights_load_14077 {Type I LastRead 0 FirstWrite -1}
		weights_load_14078 {Type I LastRead 0 FirstWrite -1}
		weights_load_14079 {Type I LastRead 0 FirstWrite -1}
		weights_load_14080 {Type I LastRead 0 FirstWrite -1}
		weights_load_14081 {Type I LastRead 0 FirstWrite -1}
		weights_load_14082 {Type I LastRead 0 FirstWrite -1}
		weights_load_14083 {Type I LastRead 0 FirstWrite -1}
		weights_load_14084 {Type I LastRead 0 FirstWrite -1}
		weights_load_14085 {Type I LastRead 0 FirstWrite -1}
		weights_load_14086 {Type I LastRead 0 FirstWrite -1}
		weights_load_14087 {Type I LastRead 0 FirstWrite -1}
		weights_load_14088 {Type I LastRead 0 FirstWrite -1}
		weights_load_14089 {Type I LastRead 0 FirstWrite -1}
		weights_load_14090 {Type I LastRead 0 FirstWrite -1}
		weights_load_14091 {Type I LastRead 0 FirstWrite -1}
		weights_load_14092 {Type I LastRead 0 FirstWrite -1}
		weights_load_14093 {Type I LastRead 0 FirstWrite -1}
		weights_load_14094 {Type I LastRead 0 FirstWrite -1}
		weights_load_14095 {Type I LastRead 0 FirstWrite -1}
		weights_load_14096 {Type I LastRead 0 FirstWrite -1}
		weights_load_14097 {Type I LastRead 0 FirstWrite -1}
		weights_load_14098 {Type I LastRead 0 FirstWrite -1}
		weights_load_14099 {Type I LastRead 0 FirstWrite -1}
		weights_load_14100 {Type I LastRead 0 FirstWrite -1}
		weights_load_14101 {Type I LastRead 0 FirstWrite -1}
		weights_load_14102 {Type I LastRead 0 FirstWrite -1}
		weights_load_14103 {Type I LastRead 0 FirstWrite -1}
		weights_load_14104 {Type I LastRead 0 FirstWrite -1}
		weights_load_14105 {Type I LastRead 0 FirstWrite -1}
		weights_load_14106 {Type I LastRead 0 FirstWrite -1}
		weights_load_14107 {Type I LastRead 0 FirstWrite -1}
		weights_load_14108 {Type I LastRead 0 FirstWrite -1}
		weights_load_14109 {Type I LastRead 0 FirstWrite -1}
		weights_load_14110 {Type I LastRead 0 FirstWrite -1}
		weights_load_14111 {Type I LastRead 0 FirstWrite -1}
		weights_load_14112 {Type I LastRead 0 FirstWrite -1}
		weights_load_14113 {Type I LastRead 0 FirstWrite -1}
		weights_load_14114 {Type I LastRead 0 FirstWrite -1}
		weights_load_14115 {Type I LastRead 0 FirstWrite -1}
		weights_load_14116 {Type I LastRead 0 FirstWrite -1}
		weights_load_14117 {Type I LastRead 0 FirstWrite -1}
		weights_load_14118 {Type I LastRead 0 FirstWrite -1}
		weights_load_14119 {Type I LastRead 0 FirstWrite -1}
		weights_load_14120 {Type I LastRead 0 FirstWrite -1}
		weights_load_14121 {Type I LastRead 0 FirstWrite -1}
		weights_load_14122 {Type I LastRead 0 FirstWrite -1}
		weights_load_14123 {Type I LastRead 0 FirstWrite -1}
		weights_load_14124 {Type I LastRead 0 FirstWrite -1}
		weights_load_14125 {Type I LastRead 0 FirstWrite -1}
		weights_load_14126 {Type I LastRead 0 FirstWrite -1}
		weights_load_14127 {Type I LastRead 0 FirstWrite -1}
		weights_load_14128 {Type I LastRead 0 FirstWrite -1}
		weights_load_14129 {Type I LastRead 0 FirstWrite -1}
		weights_load_14130 {Type I LastRead 0 FirstWrite -1}
		weights_load_14131 {Type I LastRead 0 FirstWrite -1}
		weights_load_14132 {Type I LastRead 0 FirstWrite -1}
		weights_load_14133 {Type I LastRead 0 FirstWrite -1}
		weights_load_14134 {Type I LastRead 0 FirstWrite -1}
		weights_load_14135 {Type I LastRead 0 FirstWrite -1}
		weights_load_14136 {Type I LastRead 0 FirstWrite -1}
		weights_load_14137 {Type I LastRead 0 FirstWrite -1}
		weights_load_14138 {Type I LastRead 0 FirstWrite -1}
		weights_load_14139 {Type I LastRead 0 FirstWrite -1}
		weights_load_14140 {Type I LastRead 0 FirstWrite -1}
		weights_load_14141 {Type I LastRead 0 FirstWrite -1}
		weights_load_14142 {Type I LastRead 0 FirstWrite -1}
		weights_load_14143 {Type I LastRead 0 FirstWrite -1}
		weights_load_14144 {Type I LastRead 0 FirstWrite -1}
		weights_load_14145 {Type I LastRead 0 FirstWrite -1}
		weights_load_14146 {Type I LastRead 0 FirstWrite -1}
		weights_load_14147 {Type I LastRead 0 FirstWrite -1}
		weights_load_14148 {Type I LastRead 0 FirstWrite -1}
		weights_load_14149 {Type I LastRead 0 FirstWrite -1}
		weights_load_14150 {Type I LastRead 0 FirstWrite -1}
		weights_load_14151 {Type I LastRead 0 FirstWrite -1}
		weights_load_14152 {Type I LastRead 0 FirstWrite -1}
		weights_load_14153 {Type I LastRead 0 FirstWrite -1}
		weights_load_14154 {Type I LastRead 0 FirstWrite -1}
		weights_load_14155 {Type I LastRead 0 FirstWrite -1}
		weights_load_14156 {Type I LastRead 0 FirstWrite -1}
		weights_load_14157 {Type I LastRead 0 FirstWrite -1}
		weights_load_14158 {Type I LastRead 0 FirstWrite -1}
		weights_load_14159 {Type I LastRead 0 FirstWrite -1}
		weights_load_14160 {Type I LastRead 0 FirstWrite -1}
		weights_load_14161 {Type I LastRead 0 FirstWrite -1}
		weights_load_14162 {Type I LastRead 0 FirstWrite -1}
		weights_load_14163 {Type I LastRead 0 FirstWrite -1}
		weights_load_14164 {Type I LastRead 0 FirstWrite -1}
		weights_load_14165 {Type I LastRead 0 FirstWrite -1}
		weights_load_14166 {Type I LastRead 0 FirstWrite -1}
		weights_load_14167 {Type I LastRead 0 FirstWrite -1}
		weights_load_14168 {Type I LastRead 0 FirstWrite -1}
		weights_load_14169 {Type I LastRead 0 FirstWrite -1}
		weights_load_14170 {Type I LastRead 0 FirstWrite -1}
		weights_load_14171 {Type I LastRead 0 FirstWrite -1}
		weights_load_14172 {Type I LastRead 0 FirstWrite -1}
		weights_load_14173 {Type I LastRead 0 FirstWrite -1}
		weights_load_14174 {Type I LastRead 0 FirstWrite -1}
		weights_load_14175 {Type I LastRead 0 FirstWrite -1}
		weights_load_14176 {Type I LastRead 0 FirstWrite -1}
		weights_load_14177 {Type I LastRead 0 FirstWrite -1}
		weights_load_14178 {Type I LastRead 0 FirstWrite -1}
		weights_load_14179 {Type I LastRead 0 FirstWrite -1}
		weights_load_14180 {Type I LastRead 0 FirstWrite -1}
		weights_load_14181 {Type I LastRead 0 FirstWrite -1}
		weights_load_14182 {Type I LastRead 0 FirstWrite -1}
		weights_load_14183 {Type I LastRead 0 FirstWrite -1}
		weights_load_14184 {Type I LastRead 0 FirstWrite -1}
		weights_load_14185 {Type I LastRead 0 FirstWrite -1}
		weights_load_14186 {Type I LastRead 0 FirstWrite -1}
		weights_load_14187 {Type I LastRead 0 FirstWrite -1}
		weights_load_14188 {Type I LastRead 0 FirstWrite -1}
		weights_load_14189 {Type I LastRead 0 FirstWrite -1}
		weights_load_14190 {Type I LastRead 0 FirstWrite -1}
		weights_load_14191 {Type I LastRead 0 FirstWrite -1}
		weights_load_14192 {Type I LastRead 0 FirstWrite -1}
		weights_load_14193 {Type I LastRead 0 FirstWrite -1}
		weights_load_14194 {Type I LastRead 0 FirstWrite -1}
		weights_load_14195 {Type I LastRead 0 FirstWrite -1}
		weights_load_14196 {Type I LastRead 0 FirstWrite -1}
		weights_load_14197 {Type I LastRead 0 FirstWrite -1}
		weights_load_14198 {Type I LastRead 0 FirstWrite -1}
		weights_load_14199 {Type I LastRead 0 FirstWrite -1}
		weights_load_14200 {Type I LastRead 0 FirstWrite -1}
		weights_load_14201 {Type I LastRead 0 FirstWrite -1}
		weights_load_14202 {Type I LastRead 0 FirstWrite -1}
		weights_load_14203 {Type I LastRead 0 FirstWrite -1}
		weights_load_14204 {Type I LastRead 0 FirstWrite -1}
		weights_load_14205 {Type I LastRead 0 FirstWrite -1}
		weights_load_14206 {Type I LastRead 0 FirstWrite -1}
		weights_load_14207 {Type I LastRead 0 FirstWrite -1}
		weights_load_14208 {Type I LastRead 0 FirstWrite -1}
		weights_load_14209 {Type I LastRead 0 FirstWrite -1}
		weights_load_14210 {Type I LastRead 0 FirstWrite -1}
		weights_load_14211 {Type I LastRead 0 FirstWrite -1}
		weights_load_14212 {Type I LastRead 0 FirstWrite -1}
		weights_load_14213 {Type I LastRead 0 FirstWrite -1}
		weights_load_14214 {Type I LastRead 0 FirstWrite -1}
		weights_load_14215 {Type I LastRead 0 FirstWrite -1}
		weights_load_14216 {Type I LastRead 0 FirstWrite -1}
		weights_load_14217 {Type I LastRead 0 FirstWrite -1}
		weights_load_14218 {Type I LastRead 0 FirstWrite -1}
		weights_load_14219 {Type I LastRead 0 FirstWrite -1}
		weights_load_14220 {Type I LastRead 0 FirstWrite -1}
		weights_load_14221 {Type I LastRead 0 FirstWrite -1}
		weights_load_14222 {Type I LastRead 0 FirstWrite -1}
		weights_load_14223 {Type I LastRead 0 FirstWrite -1}
		weights_load_14224 {Type I LastRead 0 FirstWrite -1}
		weights_load_14225 {Type I LastRead 0 FirstWrite -1}
		weights_load_14226 {Type I LastRead 0 FirstWrite -1}
		weights_load_14227 {Type I LastRead 0 FirstWrite -1}
		weights_load_14228 {Type I LastRead 0 FirstWrite -1}
		weights_load_14229 {Type I LastRead 0 FirstWrite -1}
		weights_load_14230 {Type I LastRead 0 FirstWrite -1}
		weights_load_14231 {Type I LastRead 0 FirstWrite -1}
		weights_load_14232 {Type I LastRead 0 FirstWrite -1}
		weights_load_14233 {Type I LastRead 0 FirstWrite -1}
		weights_load_14234 {Type I LastRead 0 FirstWrite -1}
		weights_load_14235 {Type I LastRead 0 FirstWrite -1}
		weights_load_14236 {Type I LastRead 0 FirstWrite -1}
		weights_load_14237 {Type I LastRead 0 FirstWrite -1}
		weights_load_14238 {Type I LastRead 0 FirstWrite -1}
		weights_load_14239 {Type I LastRead 0 FirstWrite -1}
		weights_load_14240 {Type I LastRead 0 FirstWrite -1}
		weights_load_14241 {Type I LastRead 0 FirstWrite -1}
		weights_load_14242 {Type I LastRead 0 FirstWrite -1}
		weights_load_14243 {Type I LastRead 0 FirstWrite -1}
		weights_load_14244 {Type I LastRead 0 FirstWrite -1}
		weights_load_14245 {Type I LastRead 0 FirstWrite -1}
		weights_load_14246 {Type I LastRead 0 FirstWrite -1}
		weights_load_14247 {Type I LastRead 0 FirstWrite -1}
		weights_load_14248 {Type I LastRead 0 FirstWrite -1}
		weights_load_14249 {Type I LastRead 0 FirstWrite -1}
		weights_load_14250 {Type I LastRead 0 FirstWrite -1}
		weights_load_14251 {Type I LastRead 0 FirstWrite -1}
		weights_load_14252 {Type I LastRead 0 FirstWrite -1}
		weights_load_14253 {Type I LastRead 0 FirstWrite -1}
		weights_load_14254 {Type I LastRead 0 FirstWrite -1}
		weights_load_14255 {Type I LastRead 0 FirstWrite -1}
		weights_load_14256 {Type I LastRead 0 FirstWrite -1}
		weights_load_14257 {Type I LastRead 0 FirstWrite -1}
		weights_load_14258 {Type I LastRead 0 FirstWrite -1}
		weights_load_14259 {Type I LastRead 0 FirstWrite -1}
		weights_load_14260 {Type I LastRead 0 FirstWrite -1}
		weights_load_14261 {Type I LastRead 0 FirstWrite -1}
		weights_load_14262 {Type I LastRead 0 FirstWrite -1}
		weights_load_14263 {Type I LastRead 0 FirstWrite -1}
		weights_load_14264 {Type I LastRead 0 FirstWrite -1}
		weights_load_14265 {Type I LastRead 0 FirstWrite -1}
		weights_load_14266 {Type I LastRead 0 FirstWrite -1}
		weights_load_14267 {Type I LastRead 0 FirstWrite -1}
		weights_load_14268 {Type I LastRead 0 FirstWrite -1}
		weights_load_14269 {Type I LastRead 0 FirstWrite -1}
		weights_load_14270 {Type I LastRead 0 FirstWrite -1}
		weights_load_14271 {Type I LastRead 0 FirstWrite -1}
		weights_load_14272 {Type I LastRead 0 FirstWrite -1}
		weights_load_14273 {Type I LastRead 0 FirstWrite -1}
		weights_load_14274 {Type I LastRead 0 FirstWrite -1}
		weights_load_14275 {Type I LastRead 0 FirstWrite -1}
		weights_load_14276 {Type I LastRead 0 FirstWrite -1}
		weights_load_14277 {Type I LastRead 0 FirstWrite -1}
		weights_load_14278 {Type I LastRead 0 FirstWrite -1}
		weights_load_14279 {Type I LastRead 0 FirstWrite -1}
		weights_load_14280 {Type I LastRead 0 FirstWrite -1}
		weights_load_14281 {Type I LastRead 0 FirstWrite -1}
		weights_load_14282 {Type I LastRead 0 FirstWrite -1}
		weights_load_14283 {Type I LastRead 0 FirstWrite -1}
		weights_load_14284 {Type I LastRead 0 FirstWrite -1}
		weights_load_14285 {Type I LastRead 0 FirstWrite -1}
		weights_load_14286 {Type I LastRead 0 FirstWrite -1}
		weights_load_14287 {Type I LastRead 0 FirstWrite -1}
		weights_load_14288 {Type I LastRead 0 FirstWrite -1}
		weights_load_14289 {Type I LastRead 0 FirstWrite -1}
		weights_load_14290 {Type I LastRead 0 FirstWrite -1}
		weights_load_14291 {Type I LastRead 0 FirstWrite -1}
		weights_load_14292 {Type I LastRead 0 FirstWrite -1}
		weights_load_14293 {Type I LastRead 0 FirstWrite -1}
		weights_load_14294 {Type I LastRead 0 FirstWrite -1}
		weights_load_14295 {Type I LastRead 0 FirstWrite -1}
		weights_load_14296 {Type I LastRead 0 FirstWrite -1}
		weights_load_14297 {Type I LastRead 0 FirstWrite -1}
		weights_load_14298 {Type I LastRead 0 FirstWrite -1}
		weights_load_14299 {Type I LastRead 0 FirstWrite -1}
		weights_load_14300 {Type I LastRead 0 FirstWrite -1}
		weights_load_14301 {Type I LastRead 0 FirstWrite -1}
		weights_load_14302 {Type I LastRead 0 FirstWrite -1}
		weights_load_14303 {Type I LastRead 0 FirstWrite -1}
		weights_load_14304 {Type I LastRead 0 FirstWrite -1}
		weights_load_14305 {Type I LastRead 0 FirstWrite -1}
		weights_load_14306 {Type I LastRead 0 FirstWrite -1}
		weights_load_14307 {Type I LastRead 0 FirstWrite -1}
		weights_load_14308 {Type I LastRead 0 FirstWrite -1}
		weights_load_14309 {Type I LastRead 0 FirstWrite -1}
		weights_load_14310 {Type I LastRead 0 FirstWrite -1}
		weights_load_14311 {Type I LastRead 0 FirstWrite -1}
		weights_load_14312 {Type I LastRead 0 FirstWrite -1}
		weights_load_14313 {Type I LastRead 0 FirstWrite -1}
		weights_load_14314 {Type I LastRead 0 FirstWrite -1}
		weights_load_14315 {Type I LastRead 0 FirstWrite -1}
		weights_load_14316 {Type I LastRead 0 FirstWrite -1}
		weights_load_14317 {Type I LastRead 0 FirstWrite -1}
		weights_load_14318 {Type I LastRead 0 FirstWrite -1}
		weights_load_14319 {Type I LastRead 0 FirstWrite -1}
		weights_load_14320 {Type I LastRead 0 FirstWrite -1}
		weights_load_14321 {Type I LastRead 0 FirstWrite -1}
		weights_load_14322 {Type I LastRead 0 FirstWrite -1}
		weights_load_14323 {Type I LastRead 0 FirstWrite -1}
		weights_load_14324 {Type I LastRead 0 FirstWrite -1}
		weights_load_14325 {Type I LastRead 0 FirstWrite -1}
		weights_load_14326 {Type I LastRead 0 FirstWrite -1}
		weights_load_14327 {Type I LastRead 0 FirstWrite -1}
		weights_load_14328 {Type I LastRead 0 FirstWrite -1}
		weights_load_14329 {Type I LastRead 0 FirstWrite -1}
		weights_load_14330 {Type I LastRead 0 FirstWrite -1}
		weights_load_14331 {Type I LastRead 0 FirstWrite -1}
		weights_load_14332 {Type I LastRead 0 FirstWrite -1}
		weights_load_14333 {Type I LastRead 0 FirstWrite -1}
		weights_load_14334 {Type I LastRead 0 FirstWrite -1}
		weights_load_14335 {Type I LastRead 0 FirstWrite -1}
		weights_load_14336 {Type I LastRead 0 FirstWrite -1}
		weights_load_14337 {Type I LastRead 0 FirstWrite -1}
		weights_load_14338 {Type I LastRead 0 FirstWrite -1}
		weights_load_14339 {Type I LastRead 0 FirstWrite -1}
		weights_load_14340 {Type I LastRead 0 FirstWrite -1}
		weights_load_14341 {Type I LastRead 0 FirstWrite -1}
		weights_load_14342 {Type I LastRead 0 FirstWrite -1}
		weights_load_14343 {Type I LastRead 0 FirstWrite -1}
		weights_load_14344 {Type I LastRead 0 FirstWrite -1}
		weights_load_14345 {Type I LastRead 0 FirstWrite -1}
		weights_load_14346 {Type I LastRead 0 FirstWrite -1}
		weights_load_14347 {Type I LastRead 0 FirstWrite -1}
		weights_load_14348 {Type I LastRead 0 FirstWrite -1}
		weights_load_14349 {Type I LastRead 0 FirstWrite -1}
		weights_load_14350 {Type I LastRead 0 FirstWrite -1}
		weights_load_14351 {Type I LastRead 0 FirstWrite -1}
		weights_load_14352 {Type I LastRead 0 FirstWrite -1}
		weights_load_14353 {Type I LastRead 0 FirstWrite -1}
		weights_load_14354 {Type I LastRead 0 FirstWrite -1}
		weights_load_14355 {Type I LastRead 0 FirstWrite -1}
		weights_load_14356 {Type I LastRead 0 FirstWrite -1}
		weights_load_14357 {Type I LastRead 0 FirstWrite -1}
		weights_load_14358 {Type I LastRead 0 FirstWrite -1}
		weights_load_14359 {Type I LastRead 0 FirstWrite -1}
		weights_load_14360 {Type I LastRead 0 FirstWrite -1}
		weights_load_14361 {Type I LastRead 0 FirstWrite -1}
		weights_load_14362 {Type I LastRead 0 FirstWrite -1}
		weights_load_14363 {Type I LastRead 0 FirstWrite -1}
		weights_load_14364 {Type I LastRead 0 FirstWrite -1}
		weights_load_14365 {Type I LastRead 0 FirstWrite -1}
		weights_load_14366 {Type I LastRead 0 FirstWrite -1}
		weights_load_14367 {Type I LastRead 0 FirstWrite -1}
		weights_load_14368 {Type I LastRead 0 FirstWrite -1}
		weights_load_14369 {Type I LastRead 0 FirstWrite -1}
		weights_load_14370 {Type I LastRead 0 FirstWrite -1}
		weights_load_14371 {Type I LastRead 0 FirstWrite -1}
		weights_load_14372 {Type I LastRead 0 FirstWrite -1}
		weights_load_14373 {Type I LastRead 0 FirstWrite -1}
		weights_load_14374 {Type I LastRead 0 FirstWrite -1}
		weights_load_14375 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_15 { ap_fifo {  { conv2d_64_padded_window_stream_15_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_15_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_15_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_15_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_15_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_15 { ap_fifo {  { in_channel_map_stream_15_din fifo_port_we 1 32 }  { in_channel_map_stream_15_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_15_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_15_full_n fifo_status 0 1 }  { in_channel_map_stream_15_write fifo_data 1 1 } } }
}
