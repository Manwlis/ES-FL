set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_11
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.11}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_11 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_11 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_11", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_11", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_11_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_11_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_11_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_11_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_11_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_11_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_11_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_11_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_11_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_11_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_11_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_11", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_11_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_11", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_11_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_11", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_11_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_11", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_11_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_11", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_11_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_11", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_11_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_11", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_11_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_11", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_11_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_11", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_11_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_11", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_11",
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
			{"Name" : "conv2d_64_padded_window_stream_11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_11_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_11", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_11_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_11", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_11_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_11_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_11", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16101", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16102", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16103", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16104", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16105", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16106", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16107", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16108", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_11", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_16109", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16110", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16111", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16112", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16113", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16114", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16115", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16116", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16117", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16118", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16119", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16120", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16121", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16122", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16123", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16124", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16125", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16126", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16127", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16128", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16129", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16130", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16131", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16132", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16133", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16134", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16135", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16136", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16137", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16138", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16139", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16140", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16141", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16142", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16143", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16144", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16145", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16146", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16147", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16148", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16149", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16150", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16151", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16152", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16153", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16154", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16155", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16156", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16157", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16158", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16159", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16160", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16161", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16162", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16163", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16164", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16165", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16166", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16167", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16168", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16169", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16170", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16171", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16172", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16173", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16174", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16175", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16176", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16177", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16178", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16179", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16180", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16181", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16182", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16183", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16184", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16185", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16186", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16187", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16188", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16189", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16190", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16191", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16192", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16193", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16194", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16195", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16196", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16197", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16198", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16199", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16200", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16201", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16202", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16203", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16204", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16205", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16206", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16207", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16208", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16209", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16210", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16211", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16212", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16213", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16214", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16215", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16216", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16217", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16218", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16219", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16220", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16221", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16222", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16223", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16224", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16225", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16226", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16227", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16228", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16229", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16230", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16231", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16232", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16233", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16234", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16235", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16236", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16237", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16238", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16239", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16240", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16241", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16242", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16243", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16244", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16245", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16246", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16247", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16248", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16249", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16250", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16251", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16252", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16253", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16254", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16255", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16256", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16257", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16258", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16259", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16260", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16261", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16262", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16263", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16264", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16265", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16266", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16267", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16268", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16269", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16270", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16271", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16272", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16273", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16274", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16275", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16276", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16277", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16278", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16279", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16280", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16281", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16282", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16283", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16284", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16285", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16286", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16287", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16288", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16289", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16290", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16291", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16292", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16293", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16294", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16295", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16296", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16297", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16298", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16299", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16300", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16301", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16302", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16303", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16304", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16305", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16306", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16307", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16308", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16309", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16310", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16311", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16312", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16313", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16314", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16315", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16316", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16317", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16318", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16319", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16320", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16321", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16322", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16323", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16324", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16325", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16326", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16327", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16328", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16329", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16330", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16331", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16332", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16333", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16334", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16335", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16336", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16337", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16338", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16339", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16340", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16341", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16342", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16343", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16344", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16345", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16346", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16347", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16348", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16349", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16350", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16351", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16352", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16353", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16354", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16355", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16356", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16357", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16358", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16359", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16360", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16361", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16362", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16363", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16364", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16365", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16366", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16367", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16368", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16369", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16370", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16371", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16372", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16373", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16374", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16375", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16376", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16377", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16378", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16379", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16380", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16381", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16382", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16383", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16384", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16385", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16386", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16387", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16388", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16389", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16390", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16391", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16392", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16393", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16394", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16395", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16396", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16397", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16398", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16399", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16400", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16401", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16402", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16403", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16404", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16405", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16406", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16407", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16408", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16409", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16410", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16411", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16412", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16413", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16414", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16415", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16416", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16417", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16418", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16419", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16420", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16421", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16422", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16423", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16424", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16425", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16426", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16427", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16428", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16429", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16430", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16431", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16432", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16433", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16434", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16435", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16436", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16437", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16438", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16439", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16440", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16441", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16442", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16443", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16444", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16445", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16446", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16447", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16448", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16449", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16450", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16451", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16452", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16453", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16454", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16455", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16456", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16457", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16458", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16459", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16460", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16461", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16462", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16463", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16464", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16465", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16466", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16467", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16468", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16469", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16470", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16471", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16472", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16473", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16474", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16475", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16476", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16477", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16478", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16479", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16480", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16481", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16482", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16483", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16484", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16485", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16486", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16487", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16488", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16489", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16490", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16491", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16492", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16493", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16494", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16495", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16496", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16497", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16498", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16499", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16500", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16501", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16502", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16503", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16504", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16505", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16506", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16507", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16508", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16509", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16510", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16511", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16512", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16513", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16514", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16515", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16516", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16517", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16518", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16519", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16520", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16521", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16522", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16523", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16524", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16525", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16526", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16527", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16528", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16529", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16530", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16531", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16532", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16533", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16534", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16535", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16536", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16537", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16538", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16539", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16540", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16541", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16542", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16543", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16544", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16545", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16546", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16547", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16548", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16549", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16550", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16551", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16552", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16553", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16554", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16555", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16556", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16557", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16558", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16559", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16560", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16561", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16562", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16563", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16564", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16565", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16566", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16567", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16568", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16569", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16570", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16571", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16572", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16573", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16574", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16575", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16576", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16577", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16578", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16579", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16580", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16581", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16582", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16583", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16584", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16585", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16586", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16587", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16588", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16589", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16590", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16591", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16592", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16593", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16594", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16595", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16596", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16597", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16598", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16599", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16600", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16601", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16602", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16603", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16604", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16605", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16606", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16607", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16608", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16609", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16610", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16611", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16612", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16613", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16614", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16615", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16616", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16617", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16618", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16619", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16620", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16621", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16622", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16623", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16624", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16625", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16626", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16627", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16628", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16629", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16630", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16631", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16632", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16633", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16634", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16635", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16636", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16637", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16638", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16639", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16640", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16641", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16642", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16643", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16644", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16645", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16646", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16647", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16648", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16649", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16650", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16651", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16652", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16653", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16654", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16655", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16656", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16657", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16658", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16659", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16660", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16661", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16662", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16663", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16664", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16665", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16666", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16667", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16668", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16669", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16670", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16671", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16672", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16673", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16674", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16675", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_11_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U7134", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_11_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U7135", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_11_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U7136", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_11_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U7137", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_11_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U7138", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_11_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U7139", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_11_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U7140", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_11_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U7141", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_11_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U7142", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_11_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U7143", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_11_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U7144", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_11_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U7145", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_11_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U7146", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_11_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U7147", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_11_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U7148", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_11_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U7149", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_11_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U7150", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_11_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_11 {
		conv2d_64_padded_window_stream_11 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_11 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_11_Pipeline_inputs {
		conv2d_64_padded_window_stream_11 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_16101 {Type I LastRead 0 FirstWrite -1}
		weights_load_16102 {Type I LastRead 0 FirstWrite -1}
		weights_load_16103 {Type I LastRead 0 FirstWrite -1}
		weights_load_16104 {Type I LastRead 0 FirstWrite -1}
		weights_load_16105 {Type I LastRead 0 FirstWrite -1}
		weights_load_16106 {Type I LastRead 0 FirstWrite -1}
		weights_load_16107 {Type I LastRead 0 FirstWrite -1}
		weights_load_16108 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_11 {Type O LastRead -1 FirstWrite 16}
		weights_load_16109 {Type I LastRead 0 FirstWrite -1}
		weights_load_16110 {Type I LastRead 0 FirstWrite -1}
		weights_load_16111 {Type I LastRead 0 FirstWrite -1}
		weights_load_16112 {Type I LastRead 0 FirstWrite -1}
		weights_load_16113 {Type I LastRead 0 FirstWrite -1}
		weights_load_16114 {Type I LastRead 0 FirstWrite -1}
		weights_load_16115 {Type I LastRead 0 FirstWrite -1}
		weights_load_16116 {Type I LastRead 0 FirstWrite -1}
		weights_load_16117 {Type I LastRead 0 FirstWrite -1}
		weights_load_16118 {Type I LastRead 0 FirstWrite -1}
		weights_load_16119 {Type I LastRead 0 FirstWrite -1}
		weights_load_16120 {Type I LastRead 0 FirstWrite -1}
		weights_load_16121 {Type I LastRead 0 FirstWrite -1}
		weights_load_16122 {Type I LastRead 0 FirstWrite -1}
		weights_load_16123 {Type I LastRead 0 FirstWrite -1}
		weights_load_16124 {Type I LastRead 0 FirstWrite -1}
		weights_load_16125 {Type I LastRead 0 FirstWrite -1}
		weights_load_16126 {Type I LastRead 0 FirstWrite -1}
		weights_load_16127 {Type I LastRead 0 FirstWrite -1}
		weights_load_16128 {Type I LastRead 0 FirstWrite -1}
		weights_load_16129 {Type I LastRead 0 FirstWrite -1}
		weights_load_16130 {Type I LastRead 0 FirstWrite -1}
		weights_load_16131 {Type I LastRead 0 FirstWrite -1}
		weights_load_16132 {Type I LastRead 0 FirstWrite -1}
		weights_load_16133 {Type I LastRead 0 FirstWrite -1}
		weights_load_16134 {Type I LastRead 0 FirstWrite -1}
		weights_load_16135 {Type I LastRead 0 FirstWrite -1}
		weights_load_16136 {Type I LastRead 0 FirstWrite -1}
		weights_load_16137 {Type I LastRead 0 FirstWrite -1}
		weights_load_16138 {Type I LastRead 0 FirstWrite -1}
		weights_load_16139 {Type I LastRead 0 FirstWrite -1}
		weights_load_16140 {Type I LastRead 0 FirstWrite -1}
		weights_load_16141 {Type I LastRead 0 FirstWrite -1}
		weights_load_16142 {Type I LastRead 0 FirstWrite -1}
		weights_load_16143 {Type I LastRead 0 FirstWrite -1}
		weights_load_16144 {Type I LastRead 0 FirstWrite -1}
		weights_load_16145 {Type I LastRead 0 FirstWrite -1}
		weights_load_16146 {Type I LastRead 0 FirstWrite -1}
		weights_load_16147 {Type I LastRead 0 FirstWrite -1}
		weights_load_16148 {Type I LastRead 0 FirstWrite -1}
		weights_load_16149 {Type I LastRead 0 FirstWrite -1}
		weights_load_16150 {Type I LastRead 0 FirstWrite -1}
		weights_load_16151 {Type I LastRead 0 FirstWrite -1}
		weights_load_16152 {Type I LastRead 0 FirstWrite -1}
		weights_load_16153 {Type I LastRead 0 FirstWrite -1}
		weights_load_16154 {Type I LastRead 0 FirstWrite -1}
		weights_load_16155 {Type I LastRead 0 FirstWrite -1}
		weights_load_16156 {Type I LastRead 0 FirstWrite -1}
		weights_load_16157 {Type I LastRead 0 FirstWrite -1}
		weights_load_16158 {Type I LastRead 0 FirstWrite -1}
		weights_load_16159 {Type I LastRead 0 FirstWrite -1}
		weights_load_16160 {Type I LastRead 0 FirstWrite -1}
		weights_load_16161 {Type I LastRead 0 FirstWrite -1}
		weights_load_16162 {Type I LastRead 0 FirstWrite -1}
		weights_load_16163 {Type I LastRead 0 FirstWrite -1}
		weights_load_16164 {Type I LastRead 0 FirstWrite -1}
		weights_load_16165 {Type I LastRead 0 FirstWrite -1}
		weights_load_16166 {Type I LastRead 0 FirstWrite -1}
		weights_load_16167 {Type I LastRead 0 FirstWrite -1}
		weights_load_16168 {Type I LastRead 0 FirstWrite -1}
		weights_load_16169 {Type I LastRead 0 FirstWrite -1}
		weights_load_16170 {Type I LastRead 0 FirstWrite -1}
		weights_load_16171 {Type I LastRead 0 FirstWrite -1}
		weights_load_16172 {Type I LastRead 0 FirstWrite -1}
		weights_load_16173 {Type I LastRead 0 FirstWrite -1}
		weights_load_16174 {Type I LastRead 0 FirstWrite -1}
		weights_load_16175 {Type I LastRead 0 FirstWrite -1}
		weights_load_16176 {Type I LastRead 0 FirstWrite -1}
		weights_load_16177 {Type I LastRead 0 FirstWrite -1}
		weights_load_16178 {Type I LastRead 0 FirstWrite -1}
		weights_load_16179 {Type I LastRead 0 FirstWrite -1}
		weights_load_16180 {Type I LastRead 0 FirstWrite -1}
		weights_load_16181 {Type I LastRead 0 FirstWrite -1}
		weights_load_16182 {Type I LastRead 0 FirstWrite -1}
		weights_load_16183 {Type I LastRead 0 FirstWrite -1}
		weights_load_16184 {Type I LastRead 0 FirstWrite -1}
		weights_load_16185 {Type I LastRead 0 FirstWrite -1}
		weights_load_16186 {Type I LastRead 0 FirstWrite -1}
		weights_load_16187 {Type I LastRead 0 FirstWrite -1}
		weights_load_16188 {Type I LastRead 0 FirstWrite -1}
		weights_load_16189 {Type I LastRead 0 FirstWrite -1}
		weights_load_16190 {Type I LastRead 0 FirstWrite -1}
		weights_load_16191 {Type I LastRead 0 FirstWrite -1}
		weights_load_16192 {Type I LastRead 0 FirstWrite -1}
		weights_load_16193 {Type I LastRead 0 FirstWrite -1}
		weights_load_16194 {Type I LastRead 0 FirstWrite -1}
		weights_load_16195 {Type I LastRead 0 FirstWrite -1}
		weights_load_16196 {Type I LastRead 0 FirstWrite -1}
		weights_load_16197 {Type I LastRead 0 FirstWrite -1}
		weights_load_16198 {Type I LastRead 0 FirstWrite -1}
		weights_load_16199 {Type I LastRead 0 FirstWrite -1}
		weights_load_16200 {Type I LastRead 0 FirstWrite -1}
		weights_load_16201 {Type I LastRead 0 FirstWrite -1}
		weights_load_16202 {Type I LastRead 0 FirstWrite -1}
		weights_load_16203 {Type I LastRead 0 FirstWrite -1}
		weights_load_16204 {Type I LastRead 0 FirstWrite -1}
		weights_load_16205 {Type I LastRead 0 FirstWrite -1}
		weights_load_16206 {Type I LastRead 0 FirstWrite -1}
		weights_load_16207 {Type I LastRead 0 FirstWrite -1}
		weights_load_16208 {Type I LastRead 0 FirstWrite -1}
		weights_load_16209 {Type I LastRead 0 FirstWrite -1}
		weights_load_16210 {Type I LastRead 0 FirstWrite -1}
		weights_load_16211 {Type I LastRead 0 FirstWrite -1}
		weights_load_16212 {Type I LastRead 0 FirstWrite -1}
		weights_load_16213 {Type I LastRead 0 FirstWrite -1}
		weights_load_16214 {Type I LastRead 0 FirstWrite -1}
		weights_load_16215 {Type I LastRead 0 FirstWrite -1}
		weights_load_16216 {Type I LastRead 0 FirstWrite -1}
		weights_load_16217 {Type I LastRead 0 FirstWrite -1}
		weights_load_16218 {Type I LastRead 0 FirstWrite -1}
		weights_load_16219 {Type I LastRead 0 FirstWrite -1}
		weights_load_16220 {Type I LastRead 0 FirstWrite -1}
		weights_load_16221 {Type I LastRead 0 FirstWrite -1}
		weights_load_16222 {Type I LastRead 0 FirstWrite -1}
		weights_load_16223 {Type I LastRead 0 FirstWrite -1}
		weights_load_16224 {Type I LastRead 0 FirstWrite -1}
		weights_load_16225 {Type I LastRead 0 FirstWrite -1}
		weights_load_16226 {Type I LastRead 0 FirstWrite -1}
		weights_load_16227 {Type I LastRead 0 FirstWrite -1}
		weights_load_16228 {Type I LastRead 0 FirstWrite -1}
		weights_load_16229 {Type I LastRead 0 FirstWrite -1}
		weights_load_16230 {Type I LastRead 0 FirstWrite -1}
		weights_load_16231 {Type I LastRead 0 FirstWrite -1}
		weights_load_16232 {Type I LastRead 0 FirstWrite -1}
		weights_load_16233 {Type I LastRead 0 FirstWrite -1}
		weights_load_16234 {Type I LastRead 0 FirstWrite -1}
		weights_load_16235 {Type I LastRead 0 FirstWrite -1}
		weights_load_16236 {Type I LastRead 0 FirstWrite -1}
		weights_load_16237 {Type I LastRead 0 FirstWrite -1}
		weights_load_16238 {Type I LastRead 0 FirstWrite -1}
		weights_load_16239 {Type I LastRead 0 FirstWrite -1}
		weights_load_16240 {Type I LastRead 0 FirstWrite -1}
		weights_load_16241 {Type I LastRead 0 FirstWrite -1}
		weights_load_16242 {Type I LastRead 0 FirstWrite -1}
		weights_load_16243 {Type I LastRead 0 FirstWrite -1}
		weights_load_16244 {Type I LastRead 0 FirstWrite -1}
		weights_load_16245 {Type I LastRead 0 FirstWrite -1}
		weights_load_16246 {Type I LastRead 0 FirstWrite -1}
		weights_load_16247 {Type I LastRead 0 FirstWrite -1}
		weights_load_16248 {Type I LastRead 0 FirstWrite -1}
		weights_load_16249 {Type I LastRead 0 FirstWrite -1}
		weights_load_16250 {Type I LastRead 0 FirstWrite -1}
		weights_load_16251 {Type I LastRead 0 FirstWrite -1}
		weights_load_16252 {Type I LastRead 0 FirstWrite -1}
		weights_load_16253 {Type I LastRead 0 FirstWrite -1}
		weights_load_16254 {Type I LastRead 0 FirstWrite -1}
		weights_load_16255 {Type I LastRead 0 FirstWrite -1}
		weights_load_16256 {Type I LastRead 0 FirstWrite -1}
		weights_load_16257 {Type I LastRead 0 FirstWrite -1}
		weights_load_16258 {Type I LastRead 0 FirstWrite -1}
		weights_load_16259 {Type I LastRead 0 FirstWrite -1}
		weights_load_16260 {Type I LastRead 0 FirstWrite -1}
		weights_load_16261 {Type I LastRead 0 FirstWrite -1}
		weights_load_16262 {Type I LastRead 0 FirstWrite -1}
		weights_load_16263 {Type I LastRead 0 FirstWrite -1}
		weights_load_16264 {Type I LastRead 0 FirstWrite -1}
		weights_load_16265 {Type I LastRead 0 FirstWrite -1}
		weights_load_16266 {Type I LastRead 0 FirstWrite -1}
		weights_load_16267 {Type I LastRead 0 FirstWrite -1}
		weights_load_16268 {Type I LastRead 0 FirstWrite -1}
		weights_load_16269 {Type I LastRead 0 FirstWrite -1}
		weights_load_16270 {Type I LastRead 0 FirstWrite -1}
		weights_load_16271 {Type I LastRead 0 FirstWrite -1}
		weights_load_16272 {Type I LastRead 0 FirstWrite -1}
		weights_load_16273 {Type I LastRead 0 FirstWrite -1}
		weights_load_16274 {Type I LastRead 0 FirstWrite -1}
		weights_load_16275 {Type I LastRead 0 FirstWrite -1}
		weights_load_16276 {Type I LastRead 0 FirstWrite -1}
		weights_load_16277 {Type I LastRead 0 FirstWrite -1}
		weights_load_16278 {Type I LastRead 0 FirstWrite -1}
		weights_load_16279 {Type I LastRead 0 FirstWrite -1}
		weights_load_16280 {Type I LastRead 0 FirstWrite -1}
		weights_load_16281 {Type I LastRead 0 FirstWrite -1}
		weights_load_16282 {Type I LastRead 0 FirstWrite -1}
		weights_load_16283 {Type I LastRead 0 FirstWrite -1}
		weights_load_16284 {Type I LastRead 0 FirstWrite -1}
		weights_load_16285 {Type I LastRead 0 FirstWrite -1}
		weights_load_16286 {Type I LastRead 0 FirstWrite -1}
		weights_load_16287 {Type I LastRead 0 FirstWrite -1}
		weights_load_16288 {Type I LastRead 0 FirstWrite -1}
		weights_load_16289 {Type I LastRead 0 FirstWrite -1}
		weights_load_16290 {Type I LastRead 0 FirstWrite -1}
		weights_load_16291 {Type I LastRead 0 FirstWrite -1}
		weights_load_16292 {Type I LastRead 0 FirstWrite -1}
		weights_load_16293 {Type I LastRead 0 FirstWrite -1}
		weights_load_16294 {Type I LastRead 0 FirstWrite -1}
		weights_load_16295 {Type I LastRead 0 FirstWrite -1}
		weights_load_16296 {Type I LastRead 0 FirstWrite -1}
		weights_load_16297 {Type I LastRead 0 FirstWrite -1}
		weights_load_16298 {Type I LastRead 0 FirstWrite -1}
		weights_load_16299 {Type I LastRead 0 FirstWrite -1}
		weights_load_16300 {Type I LastRead 0 FirstWrite -1}
		weights_load_16301 {Type I LastRead 0 FirstWrite -1}
		weights_load_16302 {Type I LastRead 0 FirstWrite -1}
		weights_load_16303 {Type I LastRead 0 FirstWrite -1}
		weights_load_16304 {Type I LastRead 0 FirstWrite -1}
		weights_load_16305 {Type I LastRead 0 FirstWrite -1}
		weights_load_16306 {Type I LastRead 0 FirstWrite -1}
		weights_load_16307 {Type I LastRead 0 FirstWrite -1}
		weights_load_16308 {Type I LastRead 0 FirstWrite -1}
		weights_load_16309 {Type I LastRead 0 FirstWrite -1}
		weights_load_16310 {Type I LastRead 0 FirstWrite -1}
		weights_load_16311 {Type I LastRead 0 FirstWrite -1}
		weights_load_16312 {Type I LastRead 0 FirstWrite -1}
		weights_load_16313 {Type I LastRead 0 FirstWrite -1}
		weights_load_16314 {Type I LastRead 0 FirstWrite -1}
		weights_load_16315 {Type I LastRead 0 FirstWrite -1}
		weights_load_16316 {Type I LastRead 0 FirstWrite -1}
		weights_load_16317 {Type I LastRead 0 FirstWrite -1}
		weights_load_16318 {Type I LastRead 0 FirstWrite -1}
		weights_load_16319 {Type I LastRead 0 FirstWrite -1}
		weights_load_16320 {Type I LastRead 0 FirstWrite -1}
		weights_load_16321 {Type I LastRead 0 FirstWrite -1}
		weights_load_16322 {Type I LastRead 0 FirstWrite -1}
		weights_load_16323 {Type I LastRead 0 FirstWrite -1}
		weights_load_16324 {Type I LastRead 0 FirstWrite -1}
		weights_load_16325 {Type I LastRead 0 FirstWrite -1}
		weights_load_16326 {Type I LastRead 0 FirstWrite -1}
		weights_load_16327 {Type I LastRead 0 FirstWrite -1}
		weights_load_16328 {Type I LastRead 0 FirstWrite -1}
		weights_load_16329 {Type I LastRead 0 FirstWrite -1}
		weights_load_16330 {Type I LastRead 0 FirstWrite -1}
		weights_load_16331 {Type I LastRead 0 FirstWrite -1}
		weights_load_16332 {Type I LastRead 0 FirstWrite -1}
		weights_load_16333 {Type I LastRead 0 FirstWrite -1}
		weights_load_16334 {Type I LastRead 0 FirstWrite -1}
		weights_load_16335 {Type I LastRead 0 FirstWrite -1}
		weights_load_16336 {Type I LastRead 0 FirstWrite -1}
		weights_load_16337 {Type I LastRead 0 FirstWrite -1}
		weights_load_16338 {Type I LastRead 0 FirstWrite -1}
		weights_load_16339 {Type I LastRead 0 FirstWrite -1}
		weights_load_16340 {Type I LastRead 0 FirstWrite -1}
		weights_load_16341 {Type I LastRead 0 FirstWrite -1}
		weights_load_16342 {Type I LastRead 0 FirstWrite -1}
		weights_load_16343 {Type I LastRead 0 FirstWrite -1}
		weights_load_16344 {Type I LastRead 0 FirstWrite -1}
		weights_load_16345 {Type I LastRead 0 FirstWrite -1}
		weights_load_16346 {Type I LastRead 0 FirstWrite -1}
		weights_load_16347 {Type I LastRead 0 FirstWrite -1}
		weights_load_16348 {Type I LastRead 0 FirstWrite -1}
		weights_load_16349 {Type I LastRead 0 FirstWrite -1}
		weights_load_16350 {Type I LastRead 0 FirstWrite -1}
		weights_load_16351 {Type I LastRead 0 FirstWrite -1}
		weights_load_16352 {Type I LastRead 0 FirstWrite -1}
		weights_load_16353 {Type I LastRead 0 FirstWrite -1}
		weights_load_16354 {Type I LastRead 0 FirstWrite -1}
		weights_load_16355 {Type I LastRead 0 FirstWrite -1}
		weights_load_16356 {Type I LastRead 0 FirstWrite -1}
		weights_load_16357 {Type I LastRead 0 FirstWrite -1}
		weights_load_16358 {Type I LastRead 0 FirstWrite -1}
		weights_load_16359 {Type I LastRead 0 FirstWrite -1}
		weights_load_16360 {Type I LastRead 0 FirstWrite -1}
		weights_load_16361 {Type I LastRead 0 FirstWrite -1}
		weights_load_16362 {Type I LastRead 0 FirstWrite -1}
		weights_load_16363 {Type I LastRead 0 FirstWrite -1}
		weights_load_16364 {Type I LastRead 0 FirstWrite -1}
		weights_load_16365 {Type I LastRead 0 FirstWrite -1}
		weights_load_16366 {Type I LastRead 0 FirstWrite -1}
		weights_load_16367 {Type I LastRead 0 FirstWrite -1}
		weights_load_16368 {Type I LastRead 0 FirstWrite -1}
		weights_load_16369 {Type I LastRead 0 FirstWrite -1}
		weights_load_16370 {Type I LastRead 0 FirstWrite -1}
		weights_load_16371 {Type I LastRead 0 FirstWrite -1}
		weights_load_16372 {Type I LastRead 0 FirstWrite -1}
		weights_load_16373 {Type I LastRead 0 FirstWrite -1}
		weights_load_16374 {Type I LastRead 0 FirstWrite -1}
		weights_load_16375 {Type I LastRead 0 FirstWrite -1}
		weights_load_16376 {Type I LastRead 0 FirstWrite -1}
		weights_load_16377 {Type I LastRead 0 FirstWrite -1}
		weights_load_16378 {Type I LastRead 0 FirstWrite -1}
		weights_load_16379 {Type I LastRead 0 FirstWrite -1}
		weights_load_16380 {Type I LastRead 0 FirstWrite -1}
		weights_load_16381 {Type I LastRead 0 FirstWrite -1}
		weights_load_16382 {Type I LastRead 0 FirstWrite -1}
		weights_load_16383 {Type I LastRead 0 FirstWrite -1}
		weights_load_16384 {Type I LastRead 0 FirstWrite -1}
		weights_load_16385 {Type I LastRead 0 FirstWrite -1}
		weights_load_16386 {Type I LastRead 0 FirstWrite -1}
		weights_load_16387 {Type I LastRead 0 FirstWrite -1}
		weights_load_16388 {Type I LastRead 0 FirstWrite -1}
		weights_load_16389 {Type I LastRead 0 FirstWrite -1}
		weights_load_16390 {Type I LastRead 0 FirstWrite -1}
		weights_load_16391 {Type I LastRead 0 FirstWrite -1}
		weights_load_16392 {Type I LastRead 0 FirstWrite -1}
		weights_load_16393 {Type I LastRead 0 FirstWrite -1}
		weights_load_16394 {Type I LastRead 0 FirstWrite -1}
		weights_load_16395 {Type I LastRead 0 FirstWrite -1}
		weights_load_16396 {Type I LastRead 0 FirstWrite -1}
		weights_load_16397 {Type I LastRead 0 FirstWrite -1}
		weights_load_16398 {Type I LastRead 0 FirstWrite -1}
		weights_load_16399 {Type I LastRead 0 FirstWrite -1}
		weights_load_16400 {Type I LastRead 0 FirstWrite -1}
		weights_load_16401 {Type I LastRead 0 FirstWrite -1}
		weights_load_16402 {Type I LastRead 0 FirstWrite -1}
		weights_load_16403 {Type I LastRead 0 FirstWrite -1}
		weights_load_16404 {Type I LastRead 0 FirstWrite -1}
		weights_load_16405 {Type I LastRead 0 FirstWrite -1}
		weights_load_16406 {Type I LastRead 0 FirstWrite -1}
		weights_load_16407 {Type I LastRead 0 FirstWrite -1}
		weights_load_16408 {Type I LastRead 0 FirstWrite -1}
		weights_load_16409 {Type I LastRead 0 FirstWrite -1}
		weights_load_16410 {Type I LastRead 0 FirstWrite -1}
		weights_load_16411 {Type I LastRead 0 FirstWrite -1}
		weights_load_16412 {Type I LastRead 0 FirstWrite -1}
		weights_load_16413 {Type I LastRead 0 FirstWrite -1}
		weights_load_16414 {Type I LastRead 0 FirstWrite -1}
		weights_load_16415 {Type I LastRead 0 FirstWrite -1}
		weights_load_16416 {Type I LastRead 0 FirstWrite -1}
		weights_load_16417 {Type I LastRead 0 FirstWrite -1}
		weights_load_16418 {Type I LastRead 0 FirstWrite -1}
		weights_load_16419 {Type I LastRead 0 FirstWrite -1}
		weights_load_16420 {Type I LastRead 0 FirstWrite -1}
		weights_load_16421 {Type I LastRead 0 FirstWrite -1}
		weights_load_16422 {Type I LastRead 0 FirstWrite -1}
		weights_load_16423 {Type I LastRead 0 FirstWrite -1}
		weights_load_16424 {Type I LastRead 0 FirstWrite -1}
		weights_load_16425 {Type I LastRead 0 FirstWrite -1}
		weights_load_16426 {Type I LastRead 0 FirstWrite -1}
		weights_load_16427 {Type I LastRead 0 FirstWrite -1}
		weights_load_16428 {Type I LastRead 0 FirstWrite -1}
		weights_load_16429 {Type I LastRead 0 FirstWrite -1}
		weights_load_16430 {Type I LastRead 0 FirstWrite -1}
		weights_load_16431 {Type I LastRead 0 FirstWrite -1}
		weights_load_16432 {Type I LastRead 0 FirstWrite -1}
		weights_load_16433 {Type I LastRead 0 FirstWrite -1}
		weights_load_16434 {Type I LastRead 0 FirstWrite -1}
		weights_load_16435 {Type I LastRead 0 FirstWrite -1}
		weights_load_16436 {Type I LastRead 0 FirstWrite -1}
		weights_load_16437 {Type I LastRead 0 FirstWrite -1}
		weights_load_16438 {Type I LastRead 0 FirstWrite -1}
		weights_load_16439 {Type I LastRead 0 FirstWrite -1}
		weights_load_16440 {Type I LastRead 0 FirstWrite -1}
		weights_load_16441 {Type I LastRead 0 FirstWrite -1}
		weights_load_16442 {Type I LastRead 0 FirstWrite -1}
		weights_load_16443 {Type I LastRead 0 FirstWrite -1}
		weights_load_16444 {Type I LastRead 0 FirstWrite -1}
		weights_load_16445 {Type I LastRead 0 FirstWrite -1}
		weights_load_16446 {Type I LastRead 0 FirstWrite -1}
		weights_load_16447 {Type I LastRead 0 FirstWrite -1}
		weights_load_16448 {Type I LastRead 0 FirstWrite -1}
		weights_load_16449 {Type I LastRead 0 FirstWrite -1}
		weights_load_16450 {Type I LastRead 0 FirstWrite -1}
		weights_load_16451 {Type I LastRead 0 FirstWrite -1}
		weights_load_16452 {Type I LastRead 0 FirstWrite -1}
		weights_load_16453 {Type I LastRead 0 FirstWrite -1}
		weights_load_16454 {Type I LastRead 0 FirstWrite -1}
		weights_load_16455 {Type I LastRead 0 FirstWrite -1}
		weights_load_16456 {Type I LastRead 0 FirstWrite -1}
		weights_load_16457 {Type I LastRead 0 FirstWrite -1}
		weights_load_16458 {Type I LastRead 0 FirstWrite -1}
		weights_load_16459 {Type I LastRead 0 FirstWrite -1}
		weights_load_16460 {Type I LastRead 0 FirstWrite -1}
		weights_load_16461 {Type I LastRead 0 FirstWrite -1}
		weights_load_16462 {Type I LastRead 0 FirstWrite -1}
		weights_load_16463 {Type I LastRead 0 FirstWrite -1}
		weights_load_16464 {Type I LastRead 0 FirstWrite -1}
		weights_load_16465 {Type I LastRead 0 FirstWrite -1}
		weights_load_16466 {Type I LastRead 0 FirstWrite -1}
		weights_load_16467 {Type I LastRead 0 FirstWrite -1}
		weights_load_16468 {Type I LastRead 0 FirstWrite -1}
		weights_load_16469 {Type I LastRead 0 FirstWrite -1}
		weights_load_16470 {Type I LastRead 0 FirstWrite -1}
		weights_load_16471 {Type I LastRead 0 FirstWrite -1}
		weights_load_16472 {Type I LastRead 0 FirstWrite -1}
		weights_load_16473 {Type I LastRead 0 FirstWrite -1}
		weights_load_16474 {Type I LastRead 0 FirstWrite -1}
		weights_load_16475 {Type I LastRead 0 FirstWrite -1}
		weights_load_16476 {Type I LastRead 0 FirstWrite -1}
		weights_load_16477 {Type I LastRead 0 FirstWrite -1}
		weights_load_16478 {Type I LastRead 0 FirstWrite -1}
		weights_load_16479 {Type I LastRead 0 FirstWrite -1}
		weights_load_16480 {Type I LastRead 0 FirstWrite -1}
		weights_load_16481 {Type I LastRead 0 FirstWrite -1}
		weights_load_16482 {Type I LastRead 0 FirstWrite -1}
		weights_load_16483 {Type I LastRead 0 FirstWrite -1}
		weights_load_16484 {Type I LastRead 0 FirstWrite -1}
		weights_load_16485 {Type I LastRead 0 FirstWrite -1}
		weights_load_16486 {Type I LastRead 0 FirstWrite -1}
		weights_load_16487 {Type I LastRead 0 FirstWrite -1}
		weights_load_16488 {Type I LastRead 0 FirstWrite -1}
		weights_load_16489 {Type I LastRead 0 FirstWrite -1}
		weights_load_16490 {Type I LastRead 0 FirstWrite -1}
		weights_load_16491 {Type I LastRead 0 FirstWrite -1}
		weights_load_16492 {Type I LastRead 0 FirstWrite -1}
		weights_load_16493 {Type I LastRead 0 FirstWrite -1}
		weights_load_16494 {Type I LastRead 0 FirstWrite -1}
		weights_load_16495 {Type I LastRead 0 FirstWrite -1}
		weights_load_16496 {Type I LastRead 0 FirstWrite -1}
		weights_load_16497 {Type I LastRead 0 FirstWrite -1}
		weights_load_16498 {Type I LastRead 0 FirstWrite -1}
		weights_load_16499 {Type I LastRead 0 FirstWrite -1}
		weights_load_16500 {Type I LastRead 0 FirstWrite -1}
		weights_load_16501 {Type I LastRead 0 FirstWrite -1}
		weights_load_16502 {Type I LastRead 0 FirstWrite -1}
		weights_load_16503 {Type I LastRead 0 FirstWrite -1}
		weights_load_16504 {Type I LastRead 0 FirstWrite -1}
		weights_load_16505 {Type I LastRead 0 FirstWrite -1}
		weights_load_16506 {Type I LastRead 0 FirstWrite -1}
		weights_load_16507 {Type I LastRead 0 FirstWrite -1}
		weights_load_16508 {Type I LastRead 0 FirstWrite -1}
		weights_load_16509 {Type I LastRead 0 FirstWrite -1}
		weights_load_16510 {Type I LastRead 0 FirstWrite -1}
		weights_load_16511 {Type I LastRead 0 FirstWrite -1}
		weights_load_16512 {Type I LastRead 0 FirstWrite -1}
		weights_load_16513 {Type I LastRead 0 FirstWrite -1}
		weights_load_16514 {Type I LastRead 0 FirstWrite -1}
		weights_load_16515 {Type I LastRead 0 FirstWrite -1}
		weights_load_16516 {Type I LastRead 0 FirstWrite -1}
		weights_load_16517 {Type I LastRead 0 FirstWrite -1}
		weights_load_16518 {Type I LastRead 0 FirstWrite -1}
		weights_load_16519 {Type I LastRead 0 FirstWrite -1}
		weights_load_16520 {Type I LastRead 0 FirstWrite -1}
		weights_load_16521 {Type I LastRead 0 FirstWrite -1}
		weights_load_16522 {Type I LastRead 0 FirstWrite -1}
		weights_load_16523 {Type I LastRead 0 FirstWrite -1}
		weights_load_16524 {Type I LastRead 0 FirstWrite -1}
		weights_load_16525 {Type I LastRead 0 FirstWrite -1}
		weights_load_16526 {Type I LastRead 0 FirstWrite -1}
		weights_load_16527 {Type I LastRead 0 FirstWrite -1}
		weights_load_16528 {Type I LastRead 0 FirstWrite -1}
		weights_load_16529 {Type I LastRead 0 FirstWrite -1}
		weights_load_16530 {Type I LastRead 0 FirstWrite -1}
		weights_load_16531 {Type I LastRead 0 FirstWrite -1}
		weights_load_16532 {Type I LastRead 0 FirstWrite -1}
		weights_load_16533 {Type I LastRead 0 FirstWrite -1}
		weights_load_16534 {Type I LastRead 0 FirstWrite -1}
		weights_load_16535 {Type I LastRead 0 FirstWrite -1}
		weights_load_16536 {Type I LastRead 0 FirstWrite -1}
		weights_load_16537 {Type I LastRead 0 FirstWrite -1}
		weights_load_16538 {Type I LastRead 0 FirstWrite -1}
		weights_load_16539 {Type I LastRead 0 FirstWrite -1}
		weights_load_16540 {Type I LastRead 0 FirstWrite -1}
		weights_load_16541 {Type I LastRead 0 FirstWrite -1}
		weights_load_16542 {Type I LastRead 0 FirstWrite -1}
		weights_load_16543 {Type I LastRead 0 FirstWrite -1}
		weights_load_16544 {Type I LastRead 0 FirstWrite -1}
		weights_load_16545 {Type I LastRead 0 FirstWrite -1}
		weights_load_16546 {Type I LastRead 0 FirstWrite -1}
		weights_load_16547 {Type I LastRead 0 FirstWrite -1}
		weights_load_16548 {Type I LastRead 0 FirstWrite -1}
		weights_load_16549 {Type I LastRead 0 FirstWrite -1}
		weights_load_16550 {Type I LastRead 0 FirstWrite -1}
		weights_load_16551 {Type I LastRead 0 FirstWrite -1}
		weights_load_16552 {Type I LastRead 0 FirstWrite -1}
		weights_load_16553 {Type I LastRead 0 FirstWrite -1}
		weights_load_16554 {Type I LastRead 0 FirstWrite -1}
		weights_load_16555 {Type I LastRead 0 FirstWrite -1}
		weights_load_16556 {Type I LastRead 0 FirstWrite -1}
		weights_load_16557 {Type I LastRead 0 FirstWrite -1}
		weights_load_16558 {Type I LastRead 0 FirstWrite -1}
		weights_load_16559 {Type I LastRead 0 FirstWrite -1}
		weights_load_16560 {Type I LastRead 0 FirstWrite -1}
		weights_load_16561 {Type I LastRead 0 FirstWrite -1}
		weights_load_16562 {Type I LastRead 0 FirstWrite -1}
		weights_load_16563 {Type I LastRead 0 FirstWrite -1}
		weights_load_16564 {Type I LastRead 0 FirstWrite -1}
		weights_load_16565 {Type I LastRead 0 FirstWrite -1}
		weights_load_16566 {Type I LastRead 0 FirstWrite -1}
		weights_load_16567 {Type I LastRead 0 FirstWrite -1}
		weights_load_16568 {Type I LastRead 0 FirstWrite -1}
		weights_load_16569 {Type I LastRead 0 FirstWrite -1}
		weights_load_16570 {Type I LastRead 0 FirstWrite -1}
		weights_load_16571 {Type I LastRead 0 FirstWrite -1}
		weights_load_16572 {Type I LastRead 0 FirstWrite -1}
		weights_load_16573 {Type I LastRead 0 FirstWrite -1}
		weights_load_16574 {Type I LastRead 0 FirstWrite -1}
		weights_load_16575 {Type I LastRead 0 FirstWrite -1}
		weights_load_16576 {Type I LastRead 0 FirstWrite -1}
		weights_load_16577 {Type I LastRead 0 FirstWrite -1}
		weights_load_16578 {Type I LastRead 0 FirstWrite -1}
		weights_load_16579 {Type I LastRead 0 FirstWrite -1}
		weights_load_16580 {Type I LastRead 0 FirstWrite -1}
		weights_load_16581 {Type I LastRead 0 FirstWrite -1}
		weights_load_16582 {Type I LastRead 0 FirstWrite -1}
		weights_load_16583 {Type I LastRead 0 FirstWrite -1}
		weights_load_16584 {Type I LastRead 0 FirstWrite -1}
		weights_load_16585 {Type I LastRead 0 FirstWrite -1}
		weights_load_16586 {Type I LastRead 0 FirstWrite -1}
		weights_load_16587 {Type I LastRead 0 FirstWrite -1}
		weights_load_16588 {Type I LastRead 0 FirstWrite -1}
		weights_load_16589 {Type I LastRead 0 FirstWrite -1}
		weights_load_16590 {Type I LastRead 0 FirstWrite -1}
		weights_load_16591 {Type I LastRead 0 FirstWrite -1}
		weights_load_16592 {Type I LastRead 0 FirstWrite -1}
		weights_load_16593 {Type I LastRead 0 FirstWrite -1}
		weights_load_16594 {Type I LastRead 0 FirstWrite -1}
		weights_load_16595 {Type I LastRead 0 FirstWrite -1}
		weights_load_16596 {Type I LastRead 0 FirstWrite -1}
		weights_load_16597 {Type I LastRead 0 FirstWrite -1}
		weights_load_16598 {Type I LastRead 0 FirstWrite -1}
		weights_load_16599 {Type I LastRead 0 FirstWrite -1}
		weights_load_16600 {Type I LastRead 0 FirstWrite -1}
		weights_load_16601 {Type I LastRead 0 FirstWrite -1}
		weights_load_16602 {Type I LastRead 0 FirstWrite -1}
		weights_load_16603 {Type I LastRead 0 FirstWrite -1}
		weights_load_16604 {Type I LastRead 0 FirstWrite -1}
		weights_load_16605 {Type I LastRead 0 FirstWrite -1}
		weights_load_16606 {Type I LastRead 0 FirstWrite -1}
		weights_load_16607 {Type I LastRead 0 FirstWrite -1}
		weights_load_16608 {Type I LastRead 0 FirstWrite -1}
		weights_load_16609 {Type I LastRead 0 FirstWrite -1}
		weights_load_16610 {Type I LastRead 0 FirstWrite -1}
		weights_load_16611 {Type I LastRead 0 FirstWrite -1}
		weights_load_16612 {Type I LastRead 0 FirstWrite -1}
		weights_load_16613 {Type I LastRead 0 FirstWrite -1}
		weights_load_16614 {Type I LastRead 0 FirstWrite -1}
		weights_load_16615 {Type I LastRead 0 FirstWrite -1}
		weights_load_16616 {Type I LastRead 0 FirstWrite -1}
		weights_load_16617 {Type I LastRead 0 FirstWrite -1}
		weights_load_16618 {Type I LastRead 0 FirstWrite -1}
		weights_load_16619 {Type I LastRead 0 FirstWrite -1}
		weights_load_16620 {Type I LastRead 0 FirstWrite -1}
		weights_load_16621 {Type I LastRead 0 FirstWrite -1}
		weights_load_16622 {Type I LastRead 0 FirstWrite -1}
		weights_load_16623 {Type I LastRead 0 FirstWrite -1}
		weights_load_16624 {Type I LastRead 0 FirstWrite -1}
		weights_load_16625 {Type I LastRead 0 FirstWrite -1}
		weights_load_16626 {Type I LastRead 0 FirstWrite -1}
		weights_load_16627 {Type I LastRead 0 FirstWrite -1}
		weights_load_16628 {Type I LastRead 0 FirstWrite -1}
		weights_load_16629 {Type I LastRead 0 FirstWrite -1}
		weights_load_16630 {Type I LastRead 0 FirstWrite -1}
		weights_load_16631 {Type I LastRead 0 FirstWrite -1}
		weights_load_16632 {Type I LastRead 0 FirstWrite -1}
		weights_load_16633 {Type I LastRead 0 FirstWrite -1}
		weights_load_16634 {Type I LastRead 0 FirstWrite -1}
		weights_load_16635 {Type I LastRead 0 FirstWrite -1}
		weights_load_16636 {Type I LastRead 0 FirstWrite -1}
		weights_load_16637 {Type I LastRead 0 FirstWrite -1}
		weights_load_16638 {Type I LastRead 0 FirstWrite -1}
		weights_load_16639 {Type I LastRead 0 FirstWrite -1}
		weights_load_16640 {Type I LastRead 0 FirstWrite -1}
		weights_load_16641 {Type I LastRead 0 FirstWrite -1}
		weights_load_16642 {Type I LastRead 0 FirstWrite -1}
		weights_load_16643 {Type I LastRead 0 FirstWrite -1}
		weights_load_16644 {Type I LastRead 0 FirstWrite -1}
		weights_load_16645 {Type I LastRead 0 FirstWrite -1}
		weights_load_16646 {Type I LastRead 0 FirstWrite -1}
		weights_load_16647 {Type I LastRead 0 FirstWrite -1}
		weights_load_16648 {Type I LastRead 0 FirstWrite -1}
		weights_load_16649 {Type I LastRead 0 FirstWrite -1}
		weights_load_16650 {Type I LastRead 0 FirstWrite -1}
		weights_load_16651 {Type I LastRead 0 FirstWrite -1}
		weights_load_16652 {Type I LastRead 0 FirstWrite -1}
		weights_load_16653 {Type I LastRead 0 FirstWrite -1}
		weights_load_16654 {Type I LastRead 0 FirstWrite -1}
		weights_load_16655 {Type I LastRead 0 FirstWrite -1}
		weights_load_16656 {Type I LastRead 0 FirstWrite -1}
		weights_load_16657 {Type I LastRead 0 FirstWrite -1}
		weights_load_16658 {Type I LastRead 0 FirstWrite -1}
		weights_load_16659 {Type I LastRead 0 FirstWrite -1}
		weights_load_16660 {Type I LastRead 0 FirstWrite -1}
		weights_load_16661 {Type I LastRead 0 FirstWrite -1}
		weights_load_16662 {Type I LastRead 0 FirstWrite -1}
		weights_load_16663 {Type I LastRead 0 FirstWrite -1}
		weights_load_16664 {Type I LastRead 0 FirstWrite -1}
		weights_load_16665 {Type I LastRead 0 FirstWrite -1}
		weights_load_16666 {Type I LastRead 0 FirstWrite -1}
		weights_load_16667 {Type I LastRead 0 FirstWrite -1}
		weights_load_16668 {Type I LastRead 0 FirstWrite -1}
		weights_load_16669 {Type I LastRead 0 FirstWrite -1}
		weights_load_16670 {Type I LastRead 0 FirstWrite -1}
		weights_load_16671 {Type I LastRead 0 FirstWrite -1}
		weights_load_16672 {Type I LastRead 0 FirstWrite -1}
		weights_load_16673 {Type I LastRead 0 FirstWrite -1}
		weights_load_16674 {Type I LastRead 0 FirstWrite -1}
		weights_load_16675 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_11 { ap_fifo {  { conv2d_64_padded_window_stream_11_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_11_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_11_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_11_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_11_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_11 { ap_fifo {  { in_channel_map_stream_11_din fifo_port_we 1 32 }  { in_channel_map_stream_11_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_11_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_11_full_n fifo_status 0 1 }  { in_channel_map_stream_11_write fifo_data 1 1 } } }
}
