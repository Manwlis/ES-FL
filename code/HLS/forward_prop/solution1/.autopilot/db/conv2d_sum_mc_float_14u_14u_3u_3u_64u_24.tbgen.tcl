set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_24
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.24}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_24 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_24 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_24", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_24", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_24_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_24_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_24_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_24_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_24_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_24_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_24_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_24_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_24_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_24_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_24_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_24", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_24_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_24", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_24_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_24", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_24_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_24", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_24_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_24", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_24_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_24", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_24_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_24", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_24_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_24", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_24_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_24", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_24_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_24", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_24",
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
			{"Name" : "conv2d_64_padded_window_stream_24", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_24_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_24", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_24", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_24_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_24", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_24_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_24_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_24", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_24_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8051", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8052", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8053", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8054", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8055", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8056", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8057", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8058", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_24", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_24_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_8059", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8060", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8061", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8062", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8063", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8064", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8065", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8066", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8067", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8068", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8069", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8070", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8071", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8072", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8073", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8074", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8075", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8076", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8077", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8078", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8079", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8080", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8081", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8082", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8083", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8084", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8085", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8086", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8087", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8088", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8089", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8090", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8091", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8092", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8093", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8094", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8095", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8096", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8097", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8098", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8099", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8100", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8101", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8102", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8103", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8104", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8105", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8106", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8107", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8108", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8109", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8110", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8111", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8112", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8113", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8114", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8115", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8116", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8117", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8118", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8119", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8120", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8121", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8122", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8123", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8124", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8125", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8126", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8127", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8128", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8129", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8130", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8131", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8132", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8133", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8134", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8135", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8136", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8137", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8138", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8139", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8140", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8141", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8142", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8143", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8144", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8145", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8146", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8147", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8148", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8149", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8150", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8151", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8152", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8153", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8154", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8155", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8156", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8157", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8158", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8159", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8160", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8161", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8162", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8163", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8164", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8165", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8166", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8167", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8168", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8169", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8170", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8171", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8172", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8173", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8174", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8175", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8176", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8177", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8178", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8179", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8180", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8181", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8182", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8183", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8184", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8185", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8186", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8187", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8188", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8189", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8190", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8191", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8192", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8193", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8194", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8195", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8196", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8197", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8198", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8199", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8200", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8201", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8202", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8203", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8204", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8205", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8206", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8207", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8208", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8209", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8210", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8211", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8212", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8213", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8214", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8215", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8216", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8217", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8218", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8219", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8220", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8221", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8222", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8223", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8224", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8225", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8226", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8227", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8228", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8229", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8230", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8231", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8232", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8233", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8234", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8235", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8236", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8237", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8238", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8239", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8240", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8241", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8242", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8243", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8244", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8245", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8246", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8247", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8248", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8249", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8250", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8251", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8252", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8253", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8254", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8255", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8256", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8257", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8258", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8259", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8260", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8261", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8262", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8263", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8264", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8265", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8266", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8267", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8268", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8269", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8270", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8271", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8272", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8273", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8274", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8275", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8276", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8277", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8278", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8279", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8280", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8281", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8282", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8283", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8284", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8285", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8286", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8287", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8288", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8289", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8290", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8291", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8292", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8293", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8294", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8295", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8296", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8297", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8298", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8299", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8300", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8301", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8302", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8303", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8304", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8305", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8306", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8307", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8308", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8309", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8310", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8311", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8312", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8313", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8314", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8315", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8316", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8317", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8318", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8319", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8320", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8321", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8322", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8323", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8324", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8325", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8326", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8327", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8328", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8329", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8330", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8331", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8332", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8333", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8334", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8335", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8336", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8337", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8338", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8339", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8340", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8341", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8342", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8343", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8344", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8345", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8346", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8347", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8348", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8349", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8350", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8351", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8352", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8353", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8354", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8355", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8356", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8357", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8358", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8359", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8360", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8361", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8362", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8363", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8364", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8365", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8366", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8367", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8368", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8369", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8370", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8371", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8372", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8373", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8374", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8375", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8376", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8377", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8378", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8379", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8380", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8381", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8382", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8383", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8384", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8385", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8386", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8387", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8388", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8389", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8390", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8391", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8392", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8393", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8394", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8395", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8396", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8397", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8398", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8399", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8400", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8401", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8402", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8403", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8404", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8405", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8406", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8407", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8408", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8409", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8410", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8411", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8412", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8413", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8414", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8415", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8416", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8417", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8418", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8419", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8420", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8421", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8422", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8423", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8424", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8425", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8426", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8427", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8428", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8429", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8430", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8431", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8432", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8433", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8434", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8435", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8436", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8437", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8438", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8439", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8440", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8441", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8442", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8443", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8444", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8445", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8446", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8447", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8448", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8449", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8450", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8451", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8452", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8453", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8454", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8455", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8456", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8457", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8458", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8459", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8460", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8461", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8462", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8463", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8464", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8465", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8466", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8467", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8468", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8469", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8470", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8471", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8472", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8473", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8474", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8475", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8476", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8477", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8478", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8479", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8480", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8481", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8482", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8483", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8484", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8485", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8486", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8487", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8488", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8489", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8490", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8491", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8492", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8493", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8494", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8495", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8496", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8497", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8498", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8499", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8500", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8501", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8502", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8503", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8504", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8505", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8506", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8507", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8508", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8509", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8510", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8511", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8512", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8513", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8514", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8515", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8516", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8517", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8518", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8519", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8520", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8521", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8522", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8523", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8524", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8525", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8526", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8527", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8528", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8529", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8530", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8531", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8532", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8533", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8534", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8535", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8536", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8537", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8538", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8539", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8540", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8541", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8542", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8543", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8544", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8545", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8546", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8547", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8548", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8549", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8550", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8551", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8552", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8553", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8554", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8555", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8556", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8557", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8558", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8559", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8560", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8561", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8562", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8563", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8564", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8565", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8566", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8567", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8568", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8569", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8570", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8571", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8572", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8573", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8574", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8575", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8576", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8577", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8578", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8579", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8580", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8581", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8582", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8583", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8584", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8585", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8586", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8587", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8588", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8589", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8590", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8591", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8592", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8593", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8594", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8595", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8596", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8597", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8598", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8599", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8600", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8601", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8602", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8603", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8604", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8605", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8606", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8607", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8608", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8609", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8610", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8611", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8612", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8613", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8614", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8615", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8616", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8617", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8618", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8619", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8620", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8621", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8622", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8623", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8624", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8625", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_24_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U14908", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_24_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U14909", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_24_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U14910", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_24_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U14911", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_24_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U14912", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_24_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U14913", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_24_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U14914", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_24_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U14915", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_24_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U14916", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_24_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U14917", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_24_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U14918", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_24_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U14919", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_24_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U14920", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_24_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U14921", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_24_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U14922", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_24_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U14923", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_24_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U14924", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_24_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_24 {
		conv2d_64_padded_window_stream_24 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_24 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_24_Pipeline_inputs {
		conv2d_64_padded_window_stream_24 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_8051 {Type I LastRead 0 FirstWrite -1}
		weights_load_8052 {Type I LastRead 0 FirstWrite -1}
		weights_load_8053 {Type I LastRead 0 FirstWrite -1}
		weights_load_8054 {Type I LastRead 0 FirstWrite -1}
		weights_load_8055 {Type I LastRead 0 FirstWrite -1}
		weights_load_8056 {Type I LastRead 0 FirstWrite -1}
		weights_load_8057 {Type I LastRead 0 FirstWrite -1}
		weights_load_8058 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_24 {Type O LastRead -1 FirstWrite 16}
		weights_load_8059 {Type I LastRead 0 FirstWrite -1}
		weights_load_8060 {Type I LastRead 0 FirstWrite -1}
		weights_load_8061 {Type I LastRead 0 FirstWrite -1}
		weights_load_8062 {Type I LastRead 0 FirstWrite -1}
		weights_load_8063 {Type I LastRead 0 FirstWrite -1}
		weights_load_8064 {Type I LastRead 0 FirstWrite -1}
		weights_load_8065 {Type I LastRead 0 FirstWrite -1}
		weights_load_8066 {Type I LastRead 0 FirstWrite -1}
		weights_load_8067 {Type I LastRead 0 FirstWrite -1}
		weights_load_8068 {Type I LastRead 0 FirstWrite -1}
		weights_load_8069 {Type I LastRead 0 FirstWrite -1}
		weights_load_8070 {Type I LastRead 0 FirstWrite -1}
		weights_load_8071 {Type I LastRead 0 FirstWrite -1}
		weights_load_8072 {Type I LastRead 0 FirstWrite -1}
		weights_load_8073 {Type I LastRead 0 FirstWrite -1}
		weights_load_8074 {Type I LastRead 0 FirstWrite -1}
		weights_load_8075 {Type I LastRead 0 FirstWrite -1}
		weights_load_8076 {Type I LastRead 0 FirstWrite -1}
		weights_load_8077 {Type I LastRead 0 FirstWrite -1}
		weights_load_8078 {Type I LastRead 0 FirstWrite -1}
		weights_load_8079 {Type I LastRead 0 FirstWrite -1}
		weights_load_8080 {Type I LastRead 0 FirstWrite -1}
		weights_load_8081 {Type I LastRead 0 FirstWrite -1}
		weights_load_8082 {Type I LastRead 0 FirstWrite -1}
		weights_load_8083 {Type I LastRead 0 FirstWrite -1}
		weights_load_8084 {Type I LastRead 0 FirstWrite -1}
		weights_load_8085 {Type I LastRead 0 FirstWrite -1}
		weights_load_8086 {Type I LastRead 0 FirstWrite -1}
		weights_load_8087 {Type I LastRead 0 FirstWrite -1}
		weights_load_8088 {Type I LastRead 0 FirstWrite -1}
		weights_load_8089 {Type I LastRead 0 FirstWrite -1}
		weights_load_8090 {Type I LastRead 0 FirstWrite -1}
		weights_load_8091 {Type I LastRead 0 FirstWrite -1}
		weights_load_8092 {Type I LastRead 0 FirstWrite -1}
		weights_load_8093 {Type I LastRead 0 FirstWrite -1}
		weights_load_8094 {Type I LastRead 0 FirstWrite -1}
		weights_load_8095 {Type I LastRead 0 FirstWrite -1}
		weights_load_8096 {Type I LastRead 0 FirstWrite -1}
		weights_load_8097 {Type I LastRead 0 FirstWrite -1}
		weights_load_8098 {Type I LastRead 0 FirstWrite -1}
		weights_load_8099 {Type I LastRead 0 FirstWrite -1}
		weights_load_8100 {Type I LastRead 0 FirstWrite -1}
		weights_load_8101 {Type I LastRead 0 FirstWrite -1}
		weights_load_8102 {Type I LastRead 0 FirstWrite -1}
		weights_load_8103 {Type I LastRead 0 FirstWrite -1}
		weights_load_8104 {Type I LastRead 0 FirstWrite -1}
		weights_load_8105 {Type I LastRead 0 FirstWrite -1}
		weights_load_8106 {Type I LastRead 0 FirstWrite -1}
		weights_load_8107 {Type I LastRead 0 FirstWrite -1}
		weights_load_8108 {Type I LastRead 0 FirstWrite -1}
		weights_load_8109 {Type I LastRead 0 FirstWrite -1}
		weights_load_8110 {Type I LastRead 0 FirstWrite -1}
		weights_load_8111 {Type I LastRead 0 FirstWrite -1}
		weights_load_8112 {Type I LastRead 0 FirstWrite -1}
		weights_load_8113 {Type I LastRead 0 FirstWrite -1}
		weights_load_8114 {Type I LastRead 0 FirstWrite -1}
		weights_load_8115 {Type I LastRead 0 FirstWrite -1}
		weights_load_8116 {Type I LastRead 0 FirstWrite -1}
		weights_load_8117 {Type I LastRead 0 FirstWrite -1}
		weights_load_8118 {Type I LastRead 0 FirstWrite -1}
		weights_load_8119 {Type I LastRead 0 FirstWrite -1}
		weights_load_8120 {Type I LastRead 0 FirstWrite -1}
		weights_load_8121 {Type I LastRead 0 FirstWrite -1}
		weights_load_8122 {Type I LastRead 0 FirstWrite -1}
		weights_load_8123 {Type I LastRead 0 FirstWrite -1}
		weights_load_8124 {Type I LastRead 0 FirstWrite -1}
		weights_load_8125 {Type I LastRead 0 FirstWrite -1}
		weights_load_8126 {Type I LastRead 0 FirstWrite -1}
		weights_load_8127 {Type I LastRead 0 FirstWrite -1}
		weights_load_8128 {Type I LastRead 0 FirstWrite -1}
		weights_load_8129 {Type I LastRead 0 FirstWrite -1}
		weights_load_8130 {Type I LastRead 0 FirstWrite -1}
		weights_load_8131 {Type I LastRead 0 FirstWrite -1}
		weights_load_8132 {Type I LastRead 0 FirstWrite -1}
		weights_load_8133 {Type I LastRead 0 FirstWrite -1}
		weights_load_8134 {Type I LastRead 0 FirstWrite -1}
		weights_load_8135 {Type I LastRead 0 FirstWrite -1}
		weights_load_8136 {Type I LastRead 0 FirstWrite -1}
		weights_load_8137 {Type I LastRead 0 FirstWrite -1}
		weights_load_8138 {Type I LastRead 0 FirstWrite -1}
		weights_load_8139 {Type I LastRead 0 FirstWrite -1}
		weights_load_8140 {Type I LastRead 0 FirstWrite -1}
		weights_load_8141 {Type I LastRead 0 FirstWrite -1}
		weights_load_8142 {Type I LastRead 0 FirstWrite -1}
		weights_load_8143 {Type I LastRead 0 FirstWrite -1}
		weights_load_8144 {Type I LastRead 0 FirstWrite -1}
		weights_load_8145 {Type I LastRead 0 FirstWrite -1}
		weights_load_8146 {Type I LastRead 0 FirstWrite -1}
		weights_load_8147 {Type I LastRead 0 FirstWrite -1}
		weights_load_8148 {Type I LastRead 0 FirstWrite -1}
		weights_load_8149 {Type I LastRead 0 FirstWrite -1}
		weights_load_8150 {Type I LastRead 0 FirstWrite -1}
		weights_load_8151 {Type I LastRead 0 FirstWrite -1}
		weights_load_8152 {Type I LastRead 0 FirstWrite -1}
		weights_load_8153 {Type I LastRead 0 FirstWrite -1}
		weights_load_8154 {Type I LastRead 0 FirstWrite -1}
		weights_load_8155 {Type I LastRead 0 FirstWrite -1}
		weights_load_8156 {Type I LastRead 0 FirstWrite -1}
		weights_load_8157 {Type I LastRead 0 FirstWrite -1}
		weights_load_8158 {Type I LastRead 0 FirstWrite -1}
		weights_load_8159 {Type I LastRead 0 FirstWrite -1}
		weights_load_8160 {Type I LastRead 0 FirstWrite -1}
		weights_load_8161 {Type I LastRead 0 FirstWrite -1}
		weights_load_8162 {Type I LastRead 0 FirstWrite -1}
		weights_load_8163 {Type I LastRead 0 FirstWrite -1}
		weights_load_8164 {Type I LastRead 0 FirstWrite -1}
		weights_load_8165 {Type I LastRead 0 FirstWrite -1}
		weights_load_8166 {Type I LastRead 0 FirstWrite -1}
		weights_load_8167 {Type I LastRead 0 FirstWrite -1}
		weights_load_8168 {Type I LastRead 0 FirstWrite -1}
		weights_load_8169 {Type I LastRead 0 FirstWrite -1}
		weights_load_8170 {Type I LastRead 0 FirstWrite -1}
		weights_load_8171 {Type I LastRead 0 FirstWrite -1}
		weights_load_8172 {Type I LastRead 0 FirstWrite -1}
		weights_load_8173 {Type I LastRead 0 FirstWrite -1}
		weights_load_8174 {Type I LastRead 0 FirstWrite -1}
		weights_load_8175 {Type I LastRead 0 FirstWrite -1}
		weights_load_8176 {Type I LastRead 0 FirstWrite -1}
		weights_load_8177 {Type I LastRead 0 FirstWrite -1}
		weights_load_8178 {Type I LastRead 0 FirstWrite -1}
		weights_load_8179 {Type I LastRead 0 FirstWrite -1}
		weights_load_8180 {Type I LastRead 0 FirstWrite -1}
		weights_load_8181 {Type I LastRead 0 FirstWrite -1}
		weights_load_8182 {Type I LastRead 0 FirstWrite -1}
		weights_load_8183 {Type I LastRead 0 FirstWrite -1}
		weights_load_8184 {Type I LastRead 0 FirstWrite -1}
		weights_load_8185 {Type I LastRead 0 FirstWrite -1}
		weights_load_8186 {Type I LastRead 0 FirstWrite -1}
		weights_load_8187 {Type I LastRead 0 FirstWrite -1}
		weights_load_8188 {Type I LastRead 0 FirstWrite -1}
		weights_load_8189 {Type I LastRead 0 FirstWrite -1}
		weights_load_8190 {Type I LastRead 0 FirstWrite -1}
		weights_load_8191 {Type I LastRead 0 FirstWrite -1}
		weights_load_8192 {Type I LastRead 0 FirstWrite -1}
		weights_load_8193 {Type I LastRead 0 FirstWrite -1}
		weights_load_8194 {Type I LastRead 0 FirstWrite -1}
		weights_load_8195 {Type I LastRead 0 FirstWrite -1}
		weights_load_8196 {Type I LastRead 0 FirstWrite -1}
		weights_load_8197 {Type I LastRead 0 FirstWrite -1}
		weights_load_8198 {Type I LastRead 0 FirstWrite -1}
		weights_load_8199 {Type I LastRead 0 FirstWrite -1}
		weights_load_8200 {Type I LastRead 0 FirstWrite -1}
		weights_load_8201 {Type I LastRead 0 FirstWrite -1}
		weights_load_8202 {Type I LastRead 0 FirstWrite -1}
		weights_load_8203 {Type I LastRead 0 FirstWrite -1}
		weights_load_8204 {Type I LastRead 0 FirstWrite -1}
		weights_load_8205 {Type I LastRead 0 FirstWrite -1}
		weights_load_8206 {Type I LastRead 0 FirstWrite -1}
		weights_load_8207 {Type I LastRead 0 FirstWrite -1}
		weights_load_8208 {Type I LastRead 0 FirstWrite -1}
		weights_load_8209 {Type I LastRead 0 FirstWrite -1}
		weights_load_8210 {Type I LastRead 0 FirstWrite -1}
		weights_load_8211 {Type I LastRead 0 FirstWrite -1}
		weights_load_8212 {Type I LastRead 0 FirstWrite -1}
		weights_load_8213 {Type I LastRead 0 FirstWrite -1}
		weights_load_8214 {Type I LastRead 0 FirstWrite -1}
		weights_load_8215 {Type I LastRead 0 FirstWrite -1}
		weights_load_8216 {Type I LastRead 0 FirstWrite -1}
		weights_load_8217 {Type I LastRead 0 FirstWrite -1}
		weights_load_8218 {Type I LastRead 0 FirstWrite -1}
		weights_load_8219 {Type I LastRead 0 FirstWrite -1}
		weights_load_8220 {Type I LastRead 0 FirstWrite -1}
		weights_load_8221 {Type I LastRead 0 FirstWrite -1}
		weights_load_8222 {Type I LastRead 0 FirstWrite -1}
		weights_load_8223 {Type I LastRead 0 FirstWrite -1}
		weights_load_8224 {Type I LastRead 0 FirstWrite -1}
		weights_load_8225 {Type I LastRead 0 FirstWrite -1}
		weights_load_8226 {Type I LastRead 0 FirstWrite -1}
		weights_load_8227 {Type I LastRead 0 FirstWrite -1}
		weights_load_8228 {Type I LastRead 0 FirstWrite -1}
		weights_load_8229 {Type I LastRead 0 FirstWrite -1}
		weights_load_8230 {Type I LastRead 0 FirstWrite -1}
		weights_load_8231 {Type I LastRead 0 FirstWrite -1}
		weights_load_8232 {Type I LastRead 0 FirstWrite -1}
		weights_load_8233 {Type I LastRead 0 FirstWrite -1}
		weights_load_8234 {Type I LastRead 0 FirstWrite -1}
		weights_load_8235 {Type I LastRead 0 FirstWrite -1}
		weights_load_8236 {Type I LastRead 0 FirstWrite -1}
		weights_load_8237 {Type I LastRead 0 FirstWrite -1}
		weights_load_8238 {Type I LastRead 0 FirstWrite -1}
		weights_load_8239 {Type I LastRead 0 FirstWrite -1}
		weights_load_8240 {Type I LastRead 0 FirstWrite -1}
		weights_load_8241 {Type I LastRead 0 FirstWrite -1}
		weights_load_8242 {Type I LastRead 0 FirstWrite -1}
		weights_load_8243 {Type I LastRead 0 FirstWrite -1}
		weights_load_8244 {Type I LastRead 0 FirstWrite -1}
		weights_load_8245 {Type I LastRead 0 FirstWrite -1}
		weights_load_8246 {Type I LastRead 0 FirstWrite -1}
		weights_load_8247 {Type I LastRead 0 FirstWrite -1}
		weights_load_8248 {Type I LastRead 0 FirstWrite -1}
		weights_load_8249 {Type I LastRead 0 FirstWrite -1}
		weights_load_8250 {Type I LastRead 0 FirstWrite -1}
		weights_load_8251 {Type I LastRead 0 FirstWrite -1}
		weights_load_8252 {Type I LastRead 0 FirstWrite -1}
		weights_load_8253 {Type I LastRead 0 FirstWrite -1}
		weights_load_8254 {Type I LastRead 0 FirstWrite -1}
		weights_load_8255 {Type I LastRead 0 FirstWrite -1}
		weights_load_8256 {Type I LastRead 0 FirstWrite -1}
		weights_load_8257 {Type I LastRead 0 FirstWrite -1}
		weights_load_8258 {Type I LastRead 0 FirstWrite -1}
		weights_load_8259 {Type I LastRead 0 FirstWrite -1}
		weights_load_8260 {Type I LastRead 0 FirstWrite -1}
		weights_load_8261 {Type I LastRead 0 FirstWrite -1}
		weights_load_8262 {Type I LastRead 0 FirstWrite -1}
		weights_load_8263 {Type I LastRead 0 FirstWrite -1}
		weights_load_8264 {Type I LastRead 0 FirstWrite -1}
		weights_load_8265 {Type I LastRead 0 FirstWrite -1}
		weights_load_8266 {Type I LastRead 0 FirstWrite -1}
		weights_load_8267 {Type I LastRead 0 FirstWrite -1}
		weights_load_8268 {Type I LastRead 0 FirstWrite -1}
		weights_load_8269 {Type I LastRead 0 FirstWrite -1}
		weights_load_8270 {Type I LastRead 0 FirstWrite -1}
		weights_load_8271 {Type I LastRead 0 FirstWrite -1}
		weights_load_8272 {Type I LastRead 0 FirstWrite -1}
		weights_load_8273 {Type I LastRead 0 FirstWrite -1}
		weights_load_8274 {Type I LastRead 0 FirstWrite -1}
		weights_load_8275 {Type I LastRead 0 FirstWrite -1}
		weights_load_8276 {Type I LastRead 0 FirstWrite -1}
		weights_load_8277 {Type I LastRead 0 FirstWrite -1}
		weights_load_8278 {Type I LastRead 0 FirstWrite -1}
		weights_load_8279 {Type I LastRead 0 FirstWrite -1}
		weights_load_8280 {Type I LastRead 0 FirstWrite -1}
		weights_load_8281 {Type I LastRead 0 FirstWrite -1}
		weights_load_8282 {Type I LastRead 0 FirstWrite -1}
		weights_load_8283 {Type I LastRead 0 FirstWrite -1}
		weights_load_8284 {Type I LastRead 0 FirstWrite -1}
		weights_load_8285 {Type I LastRead 0 FirstWrite -1}
		weights_load_8286 {Type I LastRead 0 FirstWrite -1}
		weights_load_8287 {Type I LastRead 0 FirstWrite -1}
		weights_load_8288 {Type I LastRead 0 FirstWrite -1}
		weights_load_8289 {Type I LastRead 0 FirstWrite -1}
		weights_load_8290 {Type I LastRead 0 FirstWrite -1}
		weights_load_8291 {Type I LastRead 0 FirstWrite -1}
		weights_load_8292 {Type I LastRead 0 FirstWrite -1}
		weights_load_8293 {Type I LastRead 0 FirstWrite -1}
		weights_load_8294 {Type I LastRead 0 FirstWrite -1}
		weights_load_8295 {Type I LastRead 0 FirstWrite -1}
		weights_load_8296 {Type I LastRead 0 FirstWrite -1}
		weights_load_8297 {Type I LastRead 0 FirstWrite -1}
		weights_load_8298 {Type I LastRead 0 FirstWrite -1}
		weights_load_8299 {Type I LastRead 0 FirstWrite -1}
		weights_load_8300 {Type I LastRead 0 FirstWrite -1}
		weights_load_8301 {Type I LastRead 0 FirstWrite -1}
		weights_load_8302 {Type I LastRead 0 FirstWrite -1}
		weights_load_8303 {Type I LastRead 0 FirstWrite -1}
		weights_load_8304 {Type I LastRead 0 FirstWrite -1}
		weights_load_8305 {Type I LastRead 0 FirstWrite -1}
		weights_load_8306 {Type I LastRead 0 FirstWrite -1}
		weights_load_8307 {Type I LastRead 0 FirstWrite -1}
		weights_load_8308 {Type I LastRead 0 FirstWrite -1}
		weights_load_8309 {Type I LastRead 0 FirstWrite -1}
		weights_load_8310 {Type I LastRead 0 FirstWrite -1}
		weights_load_8311 {Type I LastRead 0 FirstWrite -1}
		weights_load_8312 {Type I LastRead 0 FirstWrite -1}
		weights_load_8313 {Type I LastRead 0 FirstWrite -1}
		weights_load_8314 {Type I LastRead 0 FirstWrite -1}
		weights_load_8315 {Type I LastRead 0 FirstWrite -1}
		weights_load_8316 {Type I LastRead 0 FirstWrite -1}
		weights_load_8317 {Type I LastRead 0 FirstWrite -1}
		weights_load_8318 {Type I LastRead 0 FirstWrite -1}
		weights_load_8319 {Type I LastRead 0 FirstWrite -1}
		weights_load_8320 {Type I LastRead 0 FirstWrite -1}
		weights_load_8321 {Type I LastRead 0 FirstWrite -1}
		weights_load_8322 {Type I LastRead 0 FirstWrite -1}
		weights_load_8323 {Type I LastRead 0 FirstWrite -1}
		weights_load_8324 {Type I LastRead 0 FirstWrite -1}
		weights_load_8325 {Type I LastRead 0 FirstWrite -1}
		weights_load_8326 {Type I LastRead 0 FirstWrite -1}
		weights_load_8327 {Type I LastRead 0 FirstWrite -1}
		weights_load_8328 {Type I LastRead 0 FirstWrite -1}
		weights_load_8329 {Type I LastRead 0 FirstWrite -1}
		weights_load_8330 {Type I LastRead 0 FirstWrite -1}
		weights_load_8331 {Type I LastRead 0 FirstWrite -1}
		weights_load_8332 {Type I LastRead 0 FirstWrite -1}
		weights_load_8333 {Type I LastRead 0 FirstWrite -1}
		weights_load_8334 {Type I LastRead 0 FirstWrite -1}
		weights_load_8335 {Type I LastRead 0 FirstWrite -1}
		weights_load_8336 {Type I LastRead 0 FirstWrite -1}
		weights_load_8337 {Type I LastRead 0 FirstWrite -1}
		weights_load_8338 {Type I LastRead 0 FirstWrite -1}
		weights_load_8339 {Type I LastRead 0 FirstWrite -1}
		weights_load_8340 {Type I LastRead 0 FirstWrite -1}
		weights_load_8341 {Type I LastRead 0 FirstWrite -1}
		weights_load_8342 {Type I LastRead 0 FirstWrite -1}
		weights_load_8343 {Type I LastRead 0 FirstWrite -1}
		weights_load_8344 {Type I LastRead 0 FirstWrite -1}
		weights_load_8345 {Type I LastRead 0 FirstWrite -1}
		weights_load_8346 {Type I LastRead 0 FirstWrite -1}
		weights_load_8347 {Type I LastRead 0 FirstWrite -1}
		weights_load_8348 {Type I LastRead 0 FirstWrite -1}
		weights_load_8349 {Type I LastRead 0 FirstWrite -1}
		weights_load_8350 {Type I LastRead 0 FirstWrite -1}
		weights_load_8351 {Type I LastRead 0 FirstWrite -1}
		weights_load_8352 {Type I LastRead 0 FirstWrite -1}
		weights_load_8353 {Type I LastRead 0 FirstWrite -1}
		weights_load_8354 {Type I LastRead 0 FirstWrite -1}
		weights_load_8355 {Type I LastRead 0 FirstWrite -1}
		weights_load_8356 {Type I LastRead 0 FirstWrite -1}
		weights_load_8357 {Type I LastRead 0 FirstWrite -1}
		weights_load_8358 {Type I LastRead 0 FirstWrite -1}
		weights_load_8359 {Type I LastRead 0 FirstWrite -1}
		weights_load_8360 {Type I LastRead 0 FirstWrite -1}
		weights_load_8361 {Type I LastRead 0 FirstWrite -1}
		weights_load_8362 {Type I LastRead 0 FirstWrite -1}
		weights_load_8363 {Type I LastRead 0 FirstWrite -1}
		weights_load_8364 {Type I LastRead 0 FirstWrite -1}
		weights_load_8365 {Type I LastRead 0 FirstWrite -1}
		weights_load_8366 {Type I LastRead 0 FirstWrite -1}
		weights_load_8367 {Type I LastRead 0 FirstWrite -1}
		weights_load_8368 {Type I LastRead 0 FirstWrite -1}
		weights_load_8369 {Type I LastRead 0 FirstWrite -1}
		weights_load_8370 {Type I LastRead 0 FirstWrite -1}
		weights_load_8371 {Type I LastRead 0 FirstWrite -1}
		weights_load_8372 {Type I LastRead 0 FirstWrite -1}
		weights_load_8373 {Type I LastRead 0 FirstWrite -1}
		weights_load_8374 {Type I LastRead 0 FirstWrite -1}
		weights_load_8375 {Type I LastRead 0 FirstWrite -1}
		weights_load_8376 {Type I LastRead 0 FirstWrite -1}
		weights_load_8377 {Type I LastRead 0 FirstWrite -1}
		weights_load_8378 {Type I LastRead 0 FirstWrite -1}
		weights_load_8379 {Type I LastRead 0 FirstWrite -1}
		weights_load_8380 {Type I LastRead 0 FirstWrite -1}
		weights_load_8381 {Type I LastRead 0 FirstWrite -1}
		weights_load_8382 {Type I LastRead 0 FirstWrite -1}
		weights_load_8383 {Type I LastRead 0 FirstWrite -1}
		weights_load_8384 {Type I LastRead 0 FirstWrite -1}
		weights_load_8385 {Type I LastRead 0 FirstWrite -1}
		weights_load_8386 {Type I LastRead 0 FirstWrite -1}
		weights_load_8387 {Type I LastRead 0 FirstWrite -1}
		weights_load_8388 {Type I LastRead 0 FirstWrite -1}
		weights_load_8389 {Type I LastRead 0 FirstWrite -1}
		weights_load_8390 {Type I LastRead 0 FirstWrite -1}
		weights_load_8391 {Type I LastRead 0 FirstWrite -1}
		weights_load_8392 {Type I LastRead 0 FirstWrite -1}
		weights_load_8393 {Type I LastRead 0 FirstWrite -1}
		weights_load_8394 {Type I LastRead 0 FirstWrite -1}
		weights_load_8395 {Type I LastRead 0 FirstWrite -1}
		weights_load_8396 {Type I LastRead 0 FirstWrite -1}
		weights_load_8397 {Type I LastRead 0 FirstWrite -1}
		weights_load_8398 {Type I LastRead 0 FirstWrite -1}
		weights_load_8399 {Type I LastRead 0 FirstWrite -1}
		weights_load_8400 {Type I LastRead 0 FirstWrite -1}
		weights_load_8401 {Type I LastRead 0 FirstWrite -1}
		weights_load_8402 {Type I LastRead 0 FirstWrite -1}
		weights_load_8403 {Type I LastRead 0 FirstWrite -1}
		weights_load_8404 {Type I LastRead 0 FirstWrite -1}
		weights_load_8405 {Type I LastRead 0 FirstWrite -1}
		weights_load_8406 {Type I LastRead 0 FirstWrite -1}
		weights_load_8407 {Type I LastRead 0 FirstWrite -1}
		weights_load_8408 {Type I LastRead 0 FirstWrite -1}
		weights_load_8409 {Type I LastRead 0 FirstWrite -1}
		weights_load_8410 {Type I LastRead 0 FirstWrite -1}
		weights_load_8411 {Type I LastRead 0 FirstWrite -1}
		weights_load_8412 {Type I LastRead 0 FirstWrite -1}
		weights_load_8413 {Type I LastRead 0 FirstWrite -1}
		weights_load_8414 {Type I LastRead 0 FirstWrite -1}
		weights_load_8415 {Type I LastRead 0 FirstWrite -1}
		weights_load_8416 {Type I LastRead 0 FirstWrite -1}
		weights_load_8417 {Type I LastRead 0 FirstWrite -1}
		weights_load_8418 {Type I LastRead 0 FirstWrite -1}
		weights_load_8419 {Type I LastRead 0 FirstWrite -1}
		weights_load_8420 {Type I LastRead 0 FirstWrite -1}
		weights_load_8421 {Type I LastRead 0 FirstWrite -1}
		weights_load_8422 {Type I LastRead 0 FirstWrite -1}
		weights_load_8423 {Type I LastRead 0 FirstWrite -1}
		weights_load_8424 {Type I LastRead 0 FirstWrite -1}
		weights_load_8425 {Type I LastRead 0 FirstWrite -1}
		weights_load_8426 {Type I LastRead 0 FirstWrite -1}
		weights_load_8427 {Type I LastRead 0 FirstWrite -1}
		weights_load_8428 {Type I LastRead 0 FirstWrite -1}
		weights_load_8429 {Type I LastRead 0 FirstWrite -1}
		weights_load_8430 {Type I LastRead 0 FirstWrite -1}
		weights_load_8431 {Type I LastRead 0 FirstWrite -1}
		weights_load_8432 {Type I LastRead 0 FirstWrite -1}
		weights_load_8433 {Type I LastRead 0 FirstWrite -1}
		weights_load_8434 {Type I LastRead 0 FirstWrite -1}
		weights_load_8435 {Type I LastRead 0 FirstWrite -1}
		weights_load_8436 {Type I LastRead 0 FirstWrite -1}
		weights_load_8437 {Type I LastRead 0 FirstWrite -1}
		weights_load_8438 {Type I LastRead 0 FirstWrite -1}
		weights_load_8439 {Type I LastRead 0 FirstWrite -1}
		weights_load_8440 {Type I LastRead 0 FirstWrite -1}
		weights_load_8441 {Type I LastRead 0 FirstWrite -1}
		weights_load_8442 {Type I LastRead 0 FirstWrite -1}
		weights_load_8443 {Type I LastRead 0 FirstWrite -1}
		weights_load_8444 {Type I LastRead 0 FirstWrite -1}
		weights_load_8445 {Type I LastRead 0 FirstWrite -1}
		weights_load_8446 {Type I LastRead 0 FirstWrite -1}
		weights_load_8447 {Type I LastRead 0 FirstWrite -1}
		weights_load_8448 {Type I LastRead 0 FirstWrite -1}
		weights_load_8449 {Type I LastRead 0 FirstWrite -1}
		weights_load_8450 {Type I LastRead 0 FirstWrite -1}
		weights_load_8451 {Type I LastRead 0 FirstWrite -1}
		weights_load_8452 {Type I LastRead 0 FirstWrite -1}
		weights_load_8453 {Type I LastRead 0 FirstWrite -1}
		weights_load_8454 {Type I LastRead 0 FirstWrite -1}
		weights_load_8455 {Type I LastRead 0 FirstWrite -1}
		weights_load_8456 {Type I LastRead 0 FirstWrite -1}
		weights_load_8457 {Type I LastRead 0 FirstWrite -1}
		weights_load_8458 {Type I LastRead 0 FirstWrite -1}
		weights_load_8459 {Type I LastRead 0 FirstWrite -1}
		weights_load_8460 {Type I LastRead 0 FirstWrite -1}
		weights_load_8461 {Type I LastRead 0 FirstWrite -1}
		weights_load_8462 {Type I LastRead 0 FirstWrite -1}
		weights_load_8463 {Type I LastRead 0 FirstWrite -1}
		weights_load_8464 {Type I LastRead 0 FirstWrite -1}
		weights_load_8465 {Type I LastRead 0 FirstWrite -1}
		weights_load_8466 {Type I LastRead 0 FirstWrite -1}
		weights_load_8467 {Type I LastRead 0 FirstWrite -1}
		weights_load_8468 {Type I LastRead 0 FirstWrite -1}
		weights_load_8469 {Type I LastRead 0 FirstWrite -1}
		weights_load_8470 {Type I LastRead 0 FirstWrite -1}
		weights_load_8471 {Type I LastRead 0 FirstWrite -1}
		weights_load_8472 {Type I LastRead 0 FirstWrite -1}
		weights_load_8473 {Type I LastRead 0 FirstWrite -1}
		weights_load_8474 {Type I LastRead 0 FirstWrite -1}
		weights_load_8475 {Type I LastRead 0 FirstWrite -1}
		weights_load_8476 {Type I LastRead 0 FirstWrite -1}
		weights_load_8477 {Type I LastRead 0 FirstWrite -1}
		weights_load_8478 {Type I LastRead 0 FirstWrite -1}
		weights_load_8479 {Type I LastRead 0 FirstWrite -1}
		weights_load_8480 {Type I LastRead 0 FirstWrite -1}
		weights_load_8481 {Type I LastRead 0 FirstWrite -1}
		weights_load_8482 {Type I LastRead 0 FirstWrite -1}
		weights_load_8483 {Type I LastRead 0 FirstWrite -1}
		weights_load_8484 {Type I LastRead 0 FirstWrite -1}
		weights_load_8485 {Type I LastRead 0 FirstWrite -1}
		weights_load_8486 {Type I LastRead 0 FirstWrite -1}
		weights_load_8487 {Type I LastRead 0 FirstWrite -1}
		weights_load_8488 {Type I LastRead 0 FirstWrite -1}
		weights_load_8489 {Type I LastRead 0 FirstWrite -1}
		weights_load_8490 {Type I LastRead 0 FirstWrite -1}
		weights_load_8491 {Type I LastRead 0 FirstWrite -1}
		weights_load_8492 {Type I LastRead 0 FirstWrite -1}
		weights_load_8493 {Type I LastRead 0 FirstWrite -1}
		weights_load_8494 {Type I LastRead 0 FirstWrite -1}
		weights_load_8495 {Type I LastRead 0 FirstWrite -1}
		weights_load_8496 {Type I LastRead 0 FirstWrite -1}
		weights_load_8497 {Type I LastRead 0 FirstWrite -1}
		weights_load_8498 {Type I LastRead 0 FirstWrite -1}
		weights_load_8499 {Type I LastRead 0 FirstWrite -1}
		weights_load_8500 {Type I LastRead 0 FirstWrite -1}
		weights_load_8501 {Type I LastRead 0 FirstWrite -1}
		weights_load_8502 {Type I LastRead 0 FirstWrite -1}
		weights_load_8503 {Type I LastRead 0 FirstWrite -1}
		weights_load_8504 {Type I LastRead 0 FirstWrite -1}
		weights_load_8505 {Type I LastRead 0 FirstWrite -1}
		weights_load_8506 {Type I LastRead 0 FirstWrite -1}
		weights_load_8507 {Type I LastRead 0 FirstWrite -1}
		weights_load_8508 {Type I LastRead 0 FirstWrite -1}
		weights_load_8509 {Type I LastRead 0 FirstWrite -1}
		weights_load_8510 {Type I LastRead 0 FirstWrite -1}
		weights_load_8511 {Type I LastRead 0 FirstWrite -1}
		weights_load_8512 {Type I LastRead 0 FirstWrite -1}
		weights_load_8513 {Type I LastRead 0 FirstWrite -1}
		weights_load_8514 {Type I LastRead 0 FirstWrite -1}
		weights_load_8515 {Type I LastRead 0 FirstWrite -1}
		weights_load_8516 {Type I LastRead 0 FirstWrite -1}
		weights_load_8517 {Type I LastRead 0 FirstWrite -1}
		weights_load_8518 {Type I LastRead 0 FirstWrite -1}
		weights_load_8519 {Type I LastRead 0 FirstWrite -1}
		weights_load_8520 {Type I LastRead 0 FirstWrite -1}
		weights_load_8521 {Type I LastRead 0 FirstWrite -1}
		weights_load_8522 {Type I LastRead 0 FirstWrite -1}
		weights_load_8523 {Type I LastRead 0 FirstWrite -1}
		weights_load_8524 {Type I LastRead 0 FirstWrite -1}
		weights_load_8525 {Type I LastRead 0 FirstWrite -1}
		weights_load_8526 {Type I LastRead 0 FirstWrite -1}
		weights_load_8527 {Type I LastRead 0 FirstWrite -1}
		weights_load_8528 {Type I LastRead 0 FirstWrite -1}
		weights_load_8529 {Type I LastRead 0 FirstWrite -1}
		weights_load_8530 {Type I LastRead 0 FirstWrite -1}
		weights_load_8531 {Type I LastRead 0 FirstWrite -1}
		weights_load_8532 {Type I LastRead 0 FirstWrite -1}
		weights_load_8533 {Type I LastRead 0 FirstWrite -1}
		weights_load_8534 {Type I LastRead 0 FirstWrite -1}
		weights_load_8535 {Type I LastRead 0 FirstWrite -1}
		weights_load_8536 {Type I LastRead 0 FirstWrite -1}
		weights_load_8537 {Type I LastRead 0 FirstWrite -1}
		weights_load_8538 {Type I LastRead 0 FirstWrite -1}
		weights_load_8539 {Type I LastRead 0 FirstWrite -1}
		weights_load_8540 {Type I LastRead 0 FirstWrite -1}
		weights_load_8541 {Type I LastRead 0 FirstWrite -1}
		weights_load_8542 {Type I LastRead 0 FirstWrite -1}
		weights_load_8543 {Type I LastRead 0 FirstWrite -1}
		weights_load_8544 {Type I LastRead 0 FirstWrite -1}
		weights_load_8545 {Type I LastRead 0 FirstWrite -1}
		weights_load_8546 {Type I LastRead 0 FirstWrite -1}
		weights_load_8547 {Type I LastRead 0 FirstWrite -1}
		weights_load_8548 {Type I LastRead 0 FirstWrite -1}
		weights_load_8549 {Type I LastRead 0 FirstWrite -1}
		weights_load_8550 {Type I LastRead 0 FirstWrite -1}
		weights_load_8551 {Type I LastRead 0 FirstWrite -1}
		weights_load_8552 {Type I LastRead 0 FirstWrite -1}
		weights_load_8553 {Type I LastRead 0 FirstWrite -1}
		weights_load_8554 {Type I LastRead 0 FirstWrite -1}
		weights_load_8555 {Type I LastRead 0 FirstWrite -1}
		weights_load_8556 {Type I LastRead 0 FirstWrite -1}
		weights_load_8557 {Type I LastRead 0 FirstWrite -1}
		weights_load_8558 {Type I LastRead 0 FirstWrite -1}
		weights_load_8559 {Type I LastRead 0 FirstWrite -1}
		weights_load_8560 {Type I LastRead 0 FirstWrite -1}
		weights_load_8561 {Type I LastRead 0 FirstWrite -1}
		weights_load_8562 {Type I LastRead 0 FirstWrite -1}
		weights_load_8563 {Type I LastRead 0 FirstWrite -1}
		weights_load_8564 {Type I LastRead 0 FirstWrite -1}
		weights_load_8565 {Type I LastRead 0 FirstWrite -1}
		weights_load_8566 {Type I LastRead 0 FirstWrite -1}
		weights_load_8567 {Type I LastRead 0 FirstWrite -1}
		weights_load_8568 {Type I LastRead 0 FirstWrite -1}
		weights_load_8569 {Type I LastRead 0 FirstWrite -1}
		weights_load_8570 {Type I LastRead 0 FirstWrite -1}
		weights_load_8571 {Type I LastRead 0 FirstWrite -1}
		weights_load_8572 {Type I LastRead 0 FirstWrite -1}
		weights_load_8573 {Type I LastRead 0 FirstWrite -1}
		weights_load_8574 {Type I LastRead 0 FirstWrite -1}
		weights_load_8575 {Type I LastRead 0 FirstWrite -1}
		weights_load_8576 {Type I LastRead 0 FirstWrite -1}
		weights_load_8577 {Type I LastRead 0 FirstWrite -1}
		weights_load_8578 {Type I LastRead 0 FirstWrite -1}
		weights_load_8579 {Type I LastRead 0 FirstWrite -1}
		weights_load_8580 {Type I LastRead 0 FirstWrite -1}
		weights_load_8581 {Type I LastRead 0 FirstWrite -1}
		weights_load_8582 {Type I LastRead 0 FirstWrite -1}
		weights_load_8583 {Type I LastRead 0 FirstWrite -1}
		weights_load_8584 {Type I LastRead 0 FirstWrite -1}
		weights_load_8585 {Type I LastRead 0 FirstWrite -1}
		weights_load_8586 {Type I LastRead 0 FirstWrite -1}
		weights_load_8587 {Type I LastRead 0 FirstWrite -1}
		weights_load_8588 {Type I LastRead 0 FirstWrite -1}
		weights_load_8589 {Type I LastRead 0 FirstWrite -1}
		weights_load_8590 {Type I LastRead 0 FirstWrite -1}
		weights_load_8591 {Type I LastRead 0 FirstWrite -1}
		weights_load_8592 {Type I LastRead 0 FirstWrite -1}
		weights_load_8593 {Type I LastRead 0 FirstWrite -1}
		weights_load_8594 {Type I LastRead 0 FirstWrite -1}
		weights_load_8595 {Type I LastRead 0 FirstWrite -1}
		weights_load_8596 {Type I LastRead 0 FirstWrite -1}
		weights_load_8597 {Type I LastRead 0 FirstWrite -1}
		weights_load_8598 {Type I LastRead 0 FirstWrite -1}
		weights_load_8599 {Type I LastRead 0 FirstWrite -1}
		weights_load_8600 {Type I LastRead 0 FirstWrite -1}
		weights_load_8601 {Type I LastRead 0 FirstWrite -1}
		weights_load_8602 {Type I LastRead 0 FirstWrite -1}
		weights_load_8603 {Type I LastRead 0 FirstWrite -1}
		weights_load_8604 {Type I LastRead 0 FirstWrite -1}
		weights_load_8605 {Type I LastRead 0 FirstWrite -1}
		weights_load_8606 {Type I LastRead 0 FirstWrite -1}
		weights_load_8607 {Type I LastRead 0 FirstWrite -1}
		weights_load_8608 {Type I LastRead 0 FirstWrite -1}
		weights_load_8609 {Type I LastRead 0 FirstWrite -1}
		weights_load_8610 {Type I LastRead 0 FirstWrite -1}
		weights_load_8611 {Type I LastRead 0 FirstWrite -1}
		weights_load_8612 {Type I LastRead 0 FirstWrite -1}
		weights_load_8613 {Type I LastRead 0 FirstWrite -1}
		weights_load_8614 {Type I LastRead 0 FirstWrite -1}
		weights_load_8615 {Type I LastRead 0 FirstWrite -1}
		weights_load_8616 {Type I LastRead 0 FirstWrite -1}
		weights_load_8617 {Type I LastRead 0 FirstWrite -1}
		weights_load_8618 {Type I LastRead 0 FirstWrite -1}
		weights_load_8619 {Type I LastRead 0 FirstWrite -1}
		weights_load_8620 {Type I LastRead 0 FirstWrite -1}
		weights_load_8621 {Type I LastRead 0 FirstWrite -1}
		weights_load_8622 {Type I LastRead 0 FirstWrite -1}
		weights_load_8623 {Type I LastRead 0 FirstWrite -1}
		weights_load_8624 {Type I LastRead 0 FirstWrite -1}
		weights_load_8625 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_24 { ap_fifo {  { conv2d_64_padded_window_stream_24_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_24_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_24_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_24_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_24_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_24 { ap_fifo {  { in_channel_map_stream_24_din fifo_port_we 1 32 }  { in_channel_map_stream_24_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_24_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_24_full_n fifo_status 0 1 }  { in_channel_map_stream_24_write fifo_data 1 1 } } }
}
