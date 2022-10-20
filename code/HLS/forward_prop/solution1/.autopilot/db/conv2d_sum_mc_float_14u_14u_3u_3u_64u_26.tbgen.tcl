set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_26
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.26}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_26 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_26 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_26", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_26", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_26_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_26_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_26_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_26_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_26_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_26_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_26_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_26_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_26_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_26_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_26_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_26", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_26_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_26", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_26_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_26", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_26_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_26", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_26_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_26", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_26_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_26", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_26_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_26", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_26_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_26", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_26_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_26", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_26_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_26", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_26",
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
			{"Name" : "conv2d_64_padded_window_stream_26", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_26_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_26", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_26", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_26_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_26", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_26_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_26_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_26", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_26_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6901", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6902", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6903", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6904", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6905", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6906", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6907", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6908", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_26", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_26_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_6909", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6910", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6911", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6912", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6913", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6914", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6915", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6916", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6917", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6918", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6919", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6920", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6921", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6922", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6923", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6924", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6925", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6926", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6927", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6928", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6929", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6930", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6931", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6932", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6933", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6934", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6935", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6936", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6937", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6938", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6939", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6940", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6941", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6942", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6943", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6944", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6945", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6946", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6947", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6948", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6949", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6950", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6951", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6952", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6953", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6954", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6955", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6956", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6957", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6958", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6959", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6960", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6961", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6962", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6963", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6964", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6965", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6966", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6967", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6968", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6969", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6970", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6971", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6972", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6973", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6974", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6975", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6976", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6977", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6978", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6979", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6980", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6981", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6982", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6983", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6984", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6985", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6986", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6987", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6988", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6989", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6990", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6991", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6992", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6993", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6994", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6995", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6996", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6997", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6998", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6999", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7000", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7001", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7002", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7003", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7004", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7005", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7006", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7007", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7008", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7009", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7010", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7011", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7012", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7013", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7014", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7015", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7016", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7017", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7018", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7019", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7020", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7021", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7022", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7023", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7024", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7025", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7026", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7027", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7028", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7029", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7030", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7031", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7032", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7033", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7034", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7035", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7036", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7037", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7038", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7039", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7040", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7041", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7042", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7043", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7044", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7045", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7046", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7047", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7048", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7049", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7050", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7051", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7052", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7053", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7054", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7055", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7056", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7057", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7058", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7059", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7060", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7061", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7062", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7063", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7064", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7065", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7066", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7067", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7068", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7069", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7070", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7071", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7072", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7073", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7074", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7075", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7076", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7077", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7078", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7079", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7080", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7081", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7082", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7083", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7084", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7085", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7086", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7087", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7088", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7089", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7090", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7091", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7092", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7093", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7094", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7095", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7096", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7097", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7098", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7099", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7100", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7101", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7102", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7103", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7104", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7105", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7106", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7107", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7108", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7109", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7110", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7111", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7112", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7113", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7114", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7115", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7116", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7117", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7118", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7119", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7120", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7121", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7122", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7123", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7124", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7125", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7126", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7127", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7128", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7129", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7130", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7131", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7132", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7133", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7134", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7135", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7136", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7137", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7138", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7139", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7140", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7141", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7142", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7143", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7144", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7145", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7146", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7147", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7148", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7149", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7150", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7151", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7152", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7153", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7154", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7155", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7156", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7157", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7158", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7159", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7160", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7161", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7162", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7163", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7164", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7165", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7166", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7167", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7168", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7169", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7170", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7171", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7172", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7173", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7174", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7175", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7176", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7177", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7178", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7179", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7180", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7181", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7182", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7183", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7184", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7185", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7186", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7187", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7188", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7189", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7190", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7191", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7192", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7193", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7194", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7195", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7196", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7197", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7198", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7199", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7200", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7201", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7202", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7203", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7204", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7205", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7206", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7207", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7208", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7209", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7210", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7211", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7212", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7213", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7214", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7215", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7216", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7217", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7218", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7219", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7220", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7221", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7222", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7223", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7224", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7225", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7226", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7227", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7228", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7229", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7230", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7231", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7232", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7233", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7234", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7235", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7236", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7237", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7238", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7239", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7240", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7241", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7242", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7243", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7244", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7245", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7246", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7247", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7248", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7249", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7250", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7251", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7252", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7253", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7254", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7255", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7256", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7257", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7258", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7259", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7260", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7261", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7262", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7263", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7264", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7265", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7266", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7267", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7268", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7269", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7270", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7271", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7272", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7273", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7274", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7275", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7276", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7277", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7278", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7279", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7280", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7281", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7282", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7283", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7284", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7285", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7286", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7287", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7288", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7289", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7290", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7291", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7292", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7293", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7294", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7295", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7296", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7297", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7298", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7299", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7300", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7301", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7302", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7303", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7304", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7305", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7306", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7307", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7308", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7309", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7310", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7311", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7312", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7313", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7314", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7315", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7316", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7317", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7318", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7319", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7320", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7321", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7322", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7323", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7324", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7325", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7326", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7327", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7328", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7329", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7330", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7331", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7332", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7333", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7334", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7335", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7336", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7337", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7338", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7339", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7340", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7341", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7342", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7343", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7344", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7345", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7346", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7347", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7348", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7349", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7350", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7351", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7352", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7353", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7354", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7355", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7356", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7357", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7358", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7359", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7360", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7361", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7362", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7363", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7364", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7365", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7366", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7367", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7368", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7369", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7370", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7371", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7372", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7373", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7374", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7375", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7376", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7377", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7378", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7379", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7380", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7381", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7382", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7383", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7384", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7385", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7386", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7387", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7388", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7389", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7390", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7391", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7392", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7393", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7394", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7395", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7396", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7397", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7398", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7399", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7400", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7401", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7402", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7403", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7404", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7405", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7406", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7407", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7408", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7409", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7410", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7411", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7412", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7413", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7414", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7415", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7416", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7417", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7418", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7419", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7420", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7421", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7422", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7423", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7424", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7425", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7426", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7427", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7428", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7429", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7430", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7431", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7432", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7433", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7434", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7435", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7436", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7437", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7438", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7439", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7440", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7441", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7442", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7443", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7444", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7445", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7446", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7447", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7448", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7449", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7450", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7451", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7452", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7453", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7454", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7455", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7456", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7457", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7458", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7459", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7460", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7461", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7462", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7463", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7464", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7465", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7466", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7467", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7468", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7469", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7470", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7471", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7472", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7473", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7474", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7475", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_26_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U16104", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_26_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U16105", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_26_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U16106", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_26_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U16107", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_26_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U16108", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_26_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U16109", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_26_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U16110", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_26_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U16111", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_26_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U16112", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_26_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U16113", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_26_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U16114", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_26_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U16115", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_26_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U16116", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_26_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U16117", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_26_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U16118", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_26_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U16119", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_26_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U16120", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_26_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_26 {
		conv2d_64_padded_window_stream_26 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_26 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_26_Pipeline_inputs {
		conv2d_64_padded_window_stream_26 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_6901 {Type I LastRead 0 FirstWrite -1}
		weights_load_6902 {Type I LastRead 0 FirstWrite -1}
		weights_load_6903 {Type I LastRead 0 FirstWrite -1}
		weights_load_6904 {Type I LastRead 0 FirstWrite -1}
		weights_load_6905 {Type I LastRead 0 FirstWrite -1}
		weights_load_6906 {Type I LastRead 0 FirstWrite -1}
		weights_load_6907 {Type I LastRead 0 FirstWrite -1}
		weights_load_6908 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_26 {Type O LastRead -1 FirstWrite 16}
		weights_load_6909 {Type I LastRead 0 FirstWrite -1}
		weights_load_6910 {Type I LastRead 0 FirstWrite -1}
		weights_load_6911 {Type I LastRead 0 FirstWrite -1}
		weights_load_6912 {Type I LastRead 0 FirstWrite -1}
		weights_load_6913 {Type I LastRead 0 FirstWrite -1}
		weights_load_6914 {Type I LastRead 0 FirstWrite -1}
		weights_load_6915 {Type I LastRead 0 FirstWrite -1}
		weights_load_6916 {Type I LastRead 0 FirstWrite -1}
		weights_load_6917 {Type I LastRead 0 FirstWrite -1}
		weights_load_6918 {Type I LastRead 0 FirstWrite -1}
		weights_load_6919 {Type I LastRead 0 FirstWrite -1}
		weights_load_6920 {Type I LastRead 0 FirstWrite -1}
		weights_load_6921 {Type I LastRead 0 FirstWrite -1}
		weights_load_6922 {Type I LastRead 0 FirstWrite -1}
		weights_load_6923 {Type I LastRead 0 FirstWrite -1}
		weights_load_6924 {Type I LastRead 0 FirstWrite -1}
		weights_load_6925 {Type I LastRead 0 FirstWrite -1}
		weights_load_6926 {Type I LastRead 0 FirstWrite -1}
		weights_load_6927 {Type I LastRead 0 FirstWrite -1}
		weights_load_6928 {Type I LastRead 0 FirstWrite -1}
		weights_load_6929 {Type I LastRead 0 FirstWrite -1}
		weights_load_6930 {Type I LastRead 0 FirstWrite -1}
		weights_load_6931 {Type I LastRead 0 FirstWrite -1}
		weights_load_6932 {Type I LastRead 0 FirstWrite -1}
		weights_load_6933 {Type I LastRead 0 FirstWrite -1}
		weights_load_6934 {Type I LastRead 0 FirstWrite -1}
		weights_load_6935 {Type I LastRead 0 FirstWrite -1}
		weights_load_6936 {Type I LastRead 0 FirstWrite -1}
		weights_load_6937 {Type I LastRead 0 FirstWrite -1}
		weights_load_6938 {Type I LastRead 0 FirstWrite -1}
		weights_load_6939 {Type I LastRead 0 FirstWrite -1}
		weights_load_6940 {Type I LastRead 0 FirstWrite -1}
		weights_load_6941 {Type I LastRead 0 FirstWrite -1}
		weights_load_6942 {Type I LastRead 0 FirstWrite -1}
		weights_load_6943 {Type I LastRead 0 FirstWrite -1}
		weights_load_6944 {Type I LastRead 0 FirstWrite -1}
		weights_load_6945 {Type I LastRead 0 FirstWrite -1}
		weights_load_6946 {Type I LastRead 0 FirstWrite -1}
		weights_load_6947 {Type I LastRead 0 FirstWrite -1}
		weights_load_6948 {Type I LastRead 0 FirstWrite -1}
		weights_load_6949 {Type I LastRead 0 FirstWrite -1}
		weights_load_6950 {Type I LastRead 0 FirstWrite -1}
		weights_load_6951 {Type I LastRead 0 FirstWrite -1}
		weights_load_6952 {Type I LastRead 0 FirstWrite -1}
		weights_load_6953 {Type I LastRead 0 FirstWrite -1}
		weights_load_6954 {Type I LastRead 0 FirstWrite -1}
		weights_load_6955 {Type I LastRead 0 FirstWrite -1}
		weights_load_6956 {Type I LastRead 0 FirstWrite -1}
		weights_load_6957 {Type I LastRead 0 FirstWrite -1}
		weights_load_6958 {Type I LastRead 0 FirstWrite -1}
		weights_load_6959 {Type I LastRead 0 FirstWrite -1}
		weights_load_6960 {Type I LastRead 0 FirstWrite -1}
		weights_load_6961 {Type I LastRead 0 FirstWrite -1}
		weights_load_6962 {Type I LastRead 0 FirstWrite -1}
		weights_load_6963 {Type I LastRead 0 FirstWrite -1}
		weights_load_6964 {Type I LastRead 0 FirstWrite -1}
		weights_load_6965 {Type I LastRead 0 FirstWrite -1}
		weights_load_6966 {Type I LastRead 0 FirstWrite -1}
		weights_load_6967 {Type I LastRead 0 FirstWrite -1}
		weights_load_6968 {Type I LastRead 0 FirstWrite -1}
		weights_load_6969 {Type I LastRead 0 FirstWrite -1}
		weights_load_6970 {Type I LastRead 0 FirstWrite -1}
		weights_load_6971 {Type I LastRead 0 FirstWrite -1}
		weights_load_6972 {Type I LastRead 0 FirstWrite -1}
		weights_load_6973 {Type I LastRead 0 FirstWrite -1}
		weights_load_6974 {Type I LastRead 0 FirstWrite -1}
		weights_load_6975 {Type I LastRead 0 FirstWrite -1}
		weights_load_6976 {Type I LastRead 0 FirstWrite -1}
		weights_load_6977 {Type I LastRead 0 FirstWrite -1}
		weights_load_6978 {Type I LastRead 0 FirstWrite -1}
		weights_load_6979 {Type I LastRead 0 FirstWrite -1}
		weights_load_6980 {Type I LastRead 0 FirstWrite -1}
		weights_load_6981 {Type I LastRead 0 FirstWrite -1}
		weights_load_6982 {Type I LastRead 0 FirstWrite -1}
		weights_load_6983 {Type I LastRead 0 FirstWrite -1}
		weights_load_6984 {Type I LastRead 0 FirstWrite -1}
		weights_load_6985 {Type I LastRead 0 FirstWrite -1}
		weights_load_6986 {Type I LastRead 0 FirstWrite -1}
		weights_load_6987 {Type I LastRead 0 FirstWrite -1}
		weights_load_6988 {Type I LastRead 0 FirstWrite -1}
		weights_load_6989 {Type I LastRead 0 FirstWrite -1}
		weights_load_6990 {Type I LastRead 0 FirstWrite -1}
		weights_load_6991 {Type I LastRead 0 FirstWrite -1}
		weights_load_6992 {Type I LastRead 0 FirstWrite -1}
		weights_load_6993 {Type I LastRead 0 FirstWrite -1}
		weights_load_6994 {Type I LastRead 0 FirstWrite -1}
		weights_load_6995 {Type I LastRead 0 FirstWrite -1}
		weights_load_6996 {Type I LastRead 0 FirstWrite -1}
		weights_load_6997 {Type I LastRead 0 FirstWrite -1}
		weights_load_6998 {Type I LastRead 0 FirstWrite -1}
		weights_load_6999 {Type I LastRead 0 FirstWrite -1}
		weights_load_7000 {Type I LastRead 0 FirstWrite -1}
		weights_load_7001 {Type I LastRead 0 FirstWrite -1}
		weights_load_7002 {Type I LastRead 0 FirstWrite -1}
		weights_load_7003 {Type I LastRead 0 FirstWrite -1}
		weights_load_7004 {Type I LastRead 0 FirstWrite -1}
		weights_load_7005 {Type I LastRead 0 FirstWrite -1}
		weights_load_7006 {Type I LastRead 0 FirstWrite -1}
		weights_load_7007 {Type I LastRead 0 FirstWrite -1}
		weights_load_7008 {Type I LastRead 0 FirstWrite -1}
		weights_load_7009 {Type I LastRead 0 FirstWrite -1}
		weights_load_7010 {Type I LastRead 0 FirstWrite -1}
		weights_load_7011 {Type I LastRead 0 FirstWrite -1}
		weights_load_7012 {Type I LastRead 0 FirstWrite -1}
		weights_load_7013 {Type I LastRead 0 FirstWrite -1}
		weights_load_7014 {Type I LastRead 0 FirstWrite -1}
		weights_load_7015 {Type I LastRead 0 FirstWrite -1}
		weights_load_7016 {Type I LastRead 0 FirstWrite -1}
		weights_load_7017 {Type I LastRead 0 FirstWrite -1}
		weights_load_7018 {Type I LastRead 0 FirstWrite -1}
		weights_load_7019 {Type I LastRead 0 FirstWrite -1}
		weights_load_7020 {Type I LastRead 0 FirstWrite -1}
		weights_load_7021 {Type I LastRead 0 FirstWrite -1}
		weights_load_7022 {Type I LastRead 0 FirstWrite -1}
		weights_load_7023 {Type I LastRead 0 FirstWrite -1}
		weights_load_7024 {Type I LastRead 0 FirstWrite -1}
		weights_load_7025 {Type I LastRead 0 FirstWrite -1}
		weights_load_7026 {Type I LastRead 0 FirstWrite -1}
		weights_load_7027 {Type I LastRead 0 FirstWrite -1}
		weights_load_7028 {Type I LastRead 0 FirstWrite -1}
		weights_load_7029 {Type I LastRead 0 FirstWrite -1}
		weights_load_7030 {Type I LastRead 0 FirstWrite -1}
		weights_load_7031 {Type I LastRead 0 FirstWrite -1}
		weights_load_7032 {Type I LastRead 0 FirstWrite -1}
		weights_load_7033 {Type I LastRead 0 FirstWrite -1}
		weights_load_7034 {Type I LastRead 0 FirstWrite -1}
		weights_load_7035 {Type I LastRead 0 FirstWrite -1}
		weights_load_7036 {Type I LastRead 0 FirstWrite -1}
		weights_load_7037 {Type I LastRead 0 FirstWrite -1}
		weights_load_7038 {Type I LastRead 0 FirstWrite -1}
		weights_load_7039 {Type I LastRead 0 FirstWrite -1}
		weights_load_7040 {Type I LastRead 0 FirstWrite -1}
		weights_load_7041 {Type I LastRead 0 FirstWrite -1}
		weights_load_7042 {Type I LastRead 0 FirstWrite -1}
		weights_load_7043 {Type I LastRead 0 FirstWrite -1}
		weights_load_7044 {Type I LastRead 0 FirstWrite -1}
		weights_load_7045 {Type I LastRead 0 FirstWrite -1}
		weights_load_7046 {Type I LastRead 0 FirstWrite -1}
		weights_load_7047 {Type I LastRead 0 FirstWrite -1}
		weights_load_7048 {Type I LastRead 0 FirstWrite -1}
		weights_load_7049 {Type I LastRead 0 FirstWrite -1}
		weights_load_7050 {Type I LastRead 0 FirstWrite -1}
		weights_load_7051 {Type I LastRead 0 FirstWrite -1}
		weights_load_7052 {Type I LastRead 0 FirstWrite -1}
		weights_load_7053 {Type I LastRead 0 FirstWrite -1}
		weights_load_7054 {Type I LastRead 0 FirstWrite -1}
		weights_load_7055 {Type I LastRead 0 FirstWrite -1}
		weights_load_7056 {Type I LastRead 0 FirstWrite -1}
		weights_load_7057 {Type I LastRead 0 FirstWrite -1}
		weights_load_7058 {Type I LastRead 0 FirstWrite -1}
		weights_load_7059 {Type I LastRead 0 FirstWrite -1}
		weights_load_7060 {Type I LastRead 0 FirstWrite -1}
		weights_load_7061 {Type I LastRead 0 FirstWrite -1}
		weights_load_7062 {Type I LastRead 0 FirstWrite -1}
		weights_load_7063 {Type I LastRead 0 FirstWrite -1}
		weights_load_7064 {Type I LastRead 0 FirstWrite -1}
		weights_load_7065 {Type I LastRead 0 FirstWrite -1}
		weights_load_7066 {Type I LastRead 0 FirstWrite -1}
		weights_load_7067 {Type I LastRead 0 FirstWrite -1}
		weights_load_7068 {Type I LastRead 0 FirstWrite -1}
		weights_load_7069 {Type I LastRead 0 FirstWrite -1}
		weights_load_7070 {Type I LastRead 0 FirstWrite -1}
		weights_load_7071 {Type I LastRead 0 FirstWrite -1}
		weights_load_7072 {Type I LastRead 0 FirstWrite -1}
		weights_load_7073 {Type I LastRead 0 FirstWrite -1}
		weights_load_7074 {Type I LastRead 0 FirstWrite -1}
		weights_load_7075 {Type I LastRead 0 FirstWrite -1}
		weights_load_7076 {Type I LastRead 0 FirstWrite -1}
		weights_load_7077 {Type I LastRead 0 FirstWrite -1}
		weights_load_7078 {Type I LastRead 0 FirstWrite -1}
		weights_load_7079 {Type I LastRead 0 FirstWrite -1}
		weights_load_7080 {Type I LastRead 0 FirstWrite -1}
		weights_load_7081 {Type I LastRead 0 FirstWrite -1}
		weights_load_7082 {Type I LastRead 0 FirstWrite -1}
		weights_load_7083 {Type I LastRead 0 FirstWrite -1}
		weights_load_7084 {Type I LastRead 0 FirstWrite -1}
		weights_load_7085 {Type I LastRead 0 FirstWrite -1}
		weights_load_7086 {Type I LastRead 0 FirstWrite -1}
		weights_load_7087 {Type I LastRead 0 FirstWrite -1}
		weights_load_7088 {Type I LastRead 0 FirstWrite -1}
		weights_load_7089 {Type I LastRead 0 FirstWrite -1}
		weights_load_7090 {Type I LastRead 0 FirstWrite -1}
		weights_load_7091 {Type I LastRead 0 FirstWrite -1}
		weights_load_7092 {Type I LastRead 0 FirstWrite -1}
		weights_load_7093 {Type I LastRead 0 FirstWrite -1}
		weights_load_7094 {Type I LastRead 0 FirstWrite -1}
		weights_load_7095 {Type I LastRead 0 FirstWrite -1}
		weights_load_7096 {Type I LastRead 0 FirstWrite -1}
		weights_load_7097 {Type I LastRead 0 FirstWrite -1}
		weights_load_7098 {Type I LastRead 0 FirstWrite -1}
		weights_load_7099 {Type I LastRead 0 FirstWrite -1}
		weights_load_7100 {Type I LastRead 0 FirstWrite -1}
		weights_load_7101 {Type I LastRead 0 FirstWrite -1}
		weights_load_7102 {Type I LastRead 0 FirstWrite -1}
		weights_load_7103 {Type I LastRead 0 FirstWrite -1}
		weights_load_7104 {Type I LastRead 0 FirstWrite -1}
		weights_load_7105 {Type I LastRead 0 FirstWrite -1}
		weights_load_7106 {Type I LastRead 0 FirstWrite -1}
		weights_load_7107 {Type I LastRead 0 FirstWrite -1}
		weights_load_7108 {Type I LastRead 0 FirstWrite -1}
		weights_load_7109 {Type I LastRead 0 FirstWrite -1}
		weights_load_7110 {Type I LastRead 0 FirstWrite -1}
		weights_load_7111 {Type I LastRead 0 FirstWrite -1}
		weights_load_7112 {Type I LastRead 0 FirstWrite -1}
		weights_load_7113 {Type I LastRead 0 FirstWrite -1}
		weights_load_7114 {Type I LastRead 0 FirstWrite -1}
		weights_load_7115 {Type I LastRead 0 FirstWrite -1}
		weights_load_7116 {Type I LastRead 0 FirstWrite -1}
		weights_load_7117 {Type I LastRead 0 FirstWrite -1}
		weights_load_7118 {Type I LastRead 0 FirstWrite -1}
		weights_load_7119 {Type I LastRead 0 FirstWrite -1}
		weights_load_7120 {Type I LastRead 0 FirstWrite -1}
		weights_load_7121 {Type I LastRead 0 FirstWrite -1}
		weights_load_7122 {Type I LastRead 0 FirstWrite -1}
		weights_load_7123 {Type I LastRead 0 FirstWrite -1}
		weights_load_7124 {Type I LastRead 0 FirstWrite -1}
		weights_load_7125 {Type I LastRead 0 FirstWrite -1}
		weights_load_7126 {Type I LastRead 0 FirstWrite -1}
		weights_load_7127 {Type I LastRead 0 FirstWrite -1}
		weights_load_7128 {Type I LastRead 0 FirstWrite -1}
		weights_load_7129 {Type I LastRead 0 FirstWrite -1}
		weights_load_7130 {Type I LastRead 0 FirstWrite -1}
		weights_load_7131 {Type I LastRead 0 FirstWrite -1}
		weights_load_7132 {Type I LastRead 0 FirstWrite -1}
		weights_load_7133 {Type I LastRead 0 FirstWrite -1}
		weights_load_7134 {Type I LastRead 0 FirstWrite -1}
		weights_load_7135 {Type I LastRead 0 FirstWrite -1}
		weights_load_7136 {Type I LastRead 0 FirstWrite -1}
		weights_load_7137 {Type I LastRead 0 FirstWrite -1}
		weights_load_7138 {Type I LastRead 0 FirstWrite -1}
		weights_load_7139 {Type I LastRead 0 FirstWrite -1}
		weights_load_7140 {Type I LastRead 0 FirstWrite -1}
		weights_load_7141 {Type I LastRead 0 FirstWrite -1}
		weights_load_7142 {Type I LastRead 0 FirstWrite -1}
		weights_load_7143 {Type I LastRead 0 FirstWrite -1}
		weights_load_7144 {Type I LastRead 0 FirstWrite -1}
		weights_load_7145 {Type I LastRead 0 FirstWrite -1}
		weights_load_7146 {Type I LastRead 0 FirstWrite -1}
		weights_load_7147 {Type I LastRead 0 FirstWrite -1}
		weights_load_7148 {Type I LastRead 0 FirstWrite -1}
		weights_load_7149 {Type I LastRead 0 FirstWrite -1}
		weights_load_7150 {Type I LastRead 0 FirstWrite -1}
		weights_load_7151 {Type I LastRead 0 FirstWrite -1}
		weights_load_7152 {Type I LastRead 0 FirstWrite -1}
		weights_load_7153 {Type I LastRead 0 FirstWrite -1}
		weights_load_7154 {Type I LastRead 0 FirstWrite -1}
		weights_load_7155 {Type I LastRead 0 FirstWrite -1}
		weights_load_7156 {Type I LastRead 0 FirstWrite -1}
		weights_load_7157 {Type I LastRead 0 FirstWrite -1}
		weights_load_7158 {Type I LastRead 0 FirstWrite -1}
		weights_load_7159 {Type I LastRead 0 FirstWrite -1}
		weights_load_7160 {Type I LastRead 0 FirstWrite -1}
		weights_load_7161 {Type I LastRead 0 FirstWrite -1}
		weights_load_7162 {Type I LastRead 0 FirstWrite -1}
		weights_load_7163 {Type I LastRead 0 FirstWrite -1}
		weights_load_7164 {Type I LastRead 0 FirstWrite -1}
		weights_load_7165 {Type I LastRead 0 FirstWrite -1}
		weights_load_7166 {Type I LastRead 0 FirstWrite -1}
		weights_load_7167 {Type I LastRead 0 FirstWrite -1}
		weights_load_7168 {Type I LastRead 0 FirstWrite -1}
		weights_load_7169 {Type I LastRead 0 FirstWrite -1}
		weights_load_7170 {Type I LastRead 0 FirstWrite -1}
		weights_load_7171 {Type I LastRead 0 FirstWrite -1}
		weights_load_7172 {Type I LastRead 0 FirstWrite -1}
		weights_load_7173 {Type I LastRead 0 FirstWrite -1}
		weights_load_7174 {Type I LastRead 0 FirstWrite -1}
		weights_load_7175 {Type I LastRead 0 FirstWrite -1}
		weights_load_7176 {Type I LastRead 0 FirstWrite -1}
		weights_load_7177 {Type I LastRead 0 FirstWrite -1}
		weights_load_7178 {Type I LastRead 0 FirstWrite -1}
		weights_load_7179 {Type I LastRead 0 FirstWrite -1}
		weights_load_7180 {Type I LastRead 0 FirstWrite -1}
		weights_load_7181 {Type I LastRead 0 FirstWrite -1}
		weights_load_7182 {Type I LastRead 0 FirstWrite -1}
		weights_load_7183 {Type I LastRead 0 FirstWrite -1}
		weights_load_7184 {Type I LastRead 0 FirstWrite -1}
		weights_load_7185 {Type I LastRead 0 FirstWrite -1}
		weights_load_7186 {Type I LastRead 0 FirstWrite -1}
		weights_load_7187 {Type I LastRead 0 FirstWrite -1}
		weights_load_7188 {Type I LastRead 0 FirstWrite -1}
		weights_load_7189 {Type I LastRead 0 FirstWrite -1}
		weights_load_7190 {Type I LastRead 0 FirstWrite -1}
		weights_load_7191 {Type I LastRead 0 FirstWrite -1}
		weights_load_7192 {Type I LastRead 0 FirstWrite -1}
		weights_load_7193 {Type I LastRead 0 FirstWrite -1}
		weights_load_7194 {Type I LastRead 0 FirstWrite -1}
		weights_load_7195 {Type I LastRead 0 FirstWrite -1}
		weights_load_7196 {Type I LastRead 0 FirstWrite -1}
		weights_load_7197 {Type I LastRead 0 FirstWrite -1}
		weights_load_7198 {Type I LastRead 0 FirstWrite -1}
		weights_load_7199 {Type I LastRead 0 FirstWrite -1}
		weights_load_7200 {Type I LastRead 0 FirstWrite -1}
		weights_load_7201 {Type I LastRead 0 FirstWrite -1}
		weights_load_7202 {Type I LastRead 0 FirstWrite -1}
		weights_load_7203 {Type I LastRead 0 FirstWrite -1}
		weights_load_7204 {Type I LastRead 0 FirstWrite -1}
		weights_load_7205 {Type I LastRead 0 FirstWrite -1}
		weights_load_7206 {Type I LastRead 0 FirstWrite -1}
		weights_load_7207 {Type I LastRead 0 FirstWrite -1}
		weights_load_7208 {Type I LastRead 0 FirstWrite -1}
		weights_load_7209 {Type I LastRead 0 FirstWrite -1}
		weights_load_7210 {Type I LastRead 0 FirstWrite -1}
		weights_load_7211 {Type I LastRead 0 FirstWrite -1}
		weights_load_7212 {Type I LastRead 0 FirstWrite -1}
		weights_load_7213 {Type I LastRead 0 FirstWrite -1}
		weights_load_7214 {Type I LastRead 0 FirstWrite -1}
		weights_load_7215 {Type I LastRead 0 FirstWrite -1}
		weights_load_7216 {Type I LastRead 0 FirstWrite -1}
		weights_load_7217 {Type I LastRead 0 FirstWrite -1}
		weights_load_7218 {Type I LastRead 0 FirstWrite -1}
		weights_load_7219 {Type I LastRead 0 FirstWrite -1}
		weights_load_7220 {Type I LastRead 0 FirstWrite -1}
		weights_load_7221 {Type I LastRead 0 FirstWrite -1}
		weights_load_7222 {Type I LastRead 0 FirstWrite -1}
		weights_load_7223 {Type I LastRead 0 FirstWrite -1}
		weights_load_7224 {Type I LastRead 0 FirstWrite -1}
		weights_load_7225 {Type I LastRead 0 FirstWrite -1}
		weights_load_7226 {Type I LastRead 0 FirstWrite -1}
		weights_load_7227 {Type I LastRead 0 FirstWrite -1}
		weights_load_7228 {Type I LastRead 0 FirstWrite -1}
		weights_load_7229 {Type I LastRead 0 FirstWrite -1}
		weights_load_7230 {Type I LastRead 0 FirstWrite -1}
		weights_load_7231 {Type I LastRead 0 FirstWrite -1}
		weights_load_7232 {Type I LastRead 0 FirstWrite -1}
		weights_load_7233 {Type I LastRead 0 FirstWrite -1}
		weights_load_7234 {Type I LastRead 0 FirstWrite -1}
		weights_load_7235 {Type I LastRead 0 FirstWrite -1}
		weights_load_7236 {Type I LastRead 0 FirstWrite -1}
		weights_load_7237 {Type I LastRead 0 FirstWrite -1}
		weights_load_7238 {Type I LastRead 0 FirstWrite -1}
		weights_load_7239 {Type I LastRead 0 FirstWrite -1}
		weights_load_7240 {Type I LastRead 0 FirstWrite -1}
		weights_load_7241 {Type I LastRead 0 FirstWrite -1}
		weights_load_7242 {Type I LastRead 0 FirstWrite -1}
		weights_load_7243 {Type I LastRead 0 FirstWrite -1}
		weights_load_7244 {Type I LastRead 0 FirstWrite -1}
		weights_load_7245 {Type I LastRead 0 FirstWrite -1}
		weights_load_7246 {Type I LastRead 0 FirstWrite -1}
		weights_load_7247 {Type I LastRead 0 FirstWrite -1}
		weights_load_7248 {Type I LastRead 0 FirstWrite -1}
		weights_load_7249 {Type I LastRead 0 FirstWrite -1}
		weights_load_7250 {Type I LastRead 0 FirstWrite -1}
		weights_load_7251 {Type I LastRead 0 FirstWrite -1}
		weights_load_7252 {Type I LastRead 0 FirstWrite -1}
		weights_load_7253 {Type I LastRead 0 FirstWrite -1}
		weights_load_7254 {Type I LastRead 0 FirstWrite -1}
		weights_load_7255 {Type I LastRead 0 FirstWrite -1}
		weights_load_7256 {Type I LastRead 0 FirstWrite -1}
		weights_load_7257 {Type I LastRead 0 FirstWrite -1}
		weights_load_7258 {Type I LastRead 0 FirstWrite -1}
		weights_load_7259 {Type I LastRead 0 FirstWrite -1}
		weights_load_7260 {Type I LastRead 0 FirstWrite -1}
		weights_load_7261 {Type I LastRead 0 FirstWrite -1}
		weights_load_7262 {Type I LastRead 0 FirstWrite -1}
		weights_load_7263 {Type I LastRead 0 FirstWrite -1}
		weights_load_7264 {Type I LastRead 0 FirstWrite -1}
		weights_load_7265 {Type I LastRead 0 FirstWrite -1}
		weights_load_7266 {Type I LastRead 0 FirstWrite -1}
		weights_load_7267 {Type I LastRead 0 FirstWrite -1}
		weights_load_7268 {Type I LastRead 0 FirstWrite -1}
		weights_load_7269 {Type I LastRead 0 FirstWrite -1}
		weights_load_7270 {Type I LastRead 0 FirstWrite -1}
		weights_load_7271 {Type I LastRead 0 FirstWrite -1}
		weights_load_7272 {Type I LastRead 0 FirstWrite -1}
		weights_load_7273 {Type I LastRead 0 FirstWrite -1}
		weights_load_7274 {Type I LastRead 0 FirstWrite -1}
		weights_load_7275 {Type I LastRead 0 FirstWrite -1}
		weights_load_7276 {Type I LastRead 0 FirstWrite -1}
		weights_load_7277 {Type I LastRead 0 FirstWrite -1}
		weights_load_7278 {Type I LastRead 0 FirstWrite -1}
		weights_load_7279 {Type I LastRead 0 FirstWrite -1}
		weights_load_7280 {Type I LastRead 0 FirstWrite -1}
		weights_load_7281 {Type I LastRead 0 FirstWrite -1}
		weights_load_7282 {Type I LastRead 0 FirstWrite -1}
		weights_load_7283 {Type I LastRead 0 FirstWrite -1}
		weights_load_7284 {Type I LastRead 0 FirstWrite -1}
		weights_load_7285 {Type I LastRead 0 FirstWrite -1}
		weights_load_7286 {Type I LastRead 0 FirstWrite -1}
		weights_load_7287 {Type I LastRead 0 FirstWrite -1}
		weights_load_7288 {Type I LastRead 0 FirstWrite -1}
		weights_load_7289 {Type I LastRead 0 FirstWrite -1}
		weights_load_7290 {Type I LastRead 0 FirstWrite -1}
		weights_load_7291 {Type I LastRead 0 FirstWrite -1}
		weights_load_7292 {Type I LastRead 0 FirstWrite -1}
		weights_load_7293 {Type I LastRead 0 FirstWrite -1}
		weights_load_7294 {Type I LastRead 0 FirstWrite -1}
		weights_load_7295 {Type I LastRead 0 FirstWrite -1}
		weights_load_7296 {Type I LastRead 0 FirstWrite -1}
		weights_load_7297 {Type I LastRead 0 FirstWrite -1}
		weights_load_7298 {Type I LastRead 0 FirstWrite -1}
		weights_load_7299 {Type I LastRead 0 FirstWrite -1}
		weights_load_7300 {Type I LastRead 0 FirstWrite -1}
		weights_load_7301 {Type I LastRead 0 FirstWrite -1}
		weights_load_7302 {Type I LastRead 0 FirstWrite -1}
		weights_load_7303 {Type I LastRead 0 FirstWrite -1}
		weights_load_7304 {Type I LastRead 0 FirstWrite -1}
		weights_load_7305 {Type I LastRead 0 FirstWrite -1}
		weights_load_7306 {Type I LastRead 0 FirstWrite -1}
		weights_load_7307 {Type I LastRead 0 FirstWrite -1}
		weights_load_7308 {Type I LastRead 0 FirstWrite -1}
		weights_load_7309 {Type I LastRead 0 FirstWrite -1}
		weights_load_7310 {Type I LastRead 0 FirstWrite -1}
		weights_load_7311 {Type I LastRead 0 FirstWrite -1}
		weights_load_7312 {Type I LastRead 0 FirstWrite -1}
		weights_load_7313 {Type I LastRead 0 FirstWrite -1}
		weights_load_7314 {Type I LastRead 0 FirstWrite -1}
		weights_load_7315 {Type I LastRead 0 FirstWrite -1}
		weights_load_7316 {Type I LastRead 0 FirstWrite -1}
		weights_load_7317 {Type I LastRead 0 FirstWrite -1}
		weights_load_7318 {Type I LastRead 0 FirstWrite -1}
		weights_load_7319 {Type I LastRead 0 FirstWrite -1}
		weights_load_7320 {Type I LastRead 0 FirstWrite -1}
		weights_load_7321 {Type I LastRead 0 FirstWrite -1}
		weights_load_7322 {Type I LastRead 0 FirstWrite -1}
		weights_load_7323 {Type I LastRead 0 FirstWrite -1}
		weights_load_7324 {Type I LastRead 0 FirstWrite -1}
		weights_load_7325 {Type I LastRead 0 FirstWrite -1}
		weights_load_7326 {Type I LastRead 0 FirstWrite -1}
		weights_load_7327 {Type I LastRead 0 FirstWrite -1}
		weights_load_7328 {Type I LastRead 0 FirstWrite -1}
		weights_load_7329 {Type I LastRead 0 FirstWrite -1}
		weights_load_7330 {Type I LastRead 0 FirstWrite -1}
		weights_load_7331 {Type I LastRead 0 FirstWrite -1}
		weights_load_7332 {Type I LastRead 0 FirstWrite -1}
		weights_load_7333 {Type I LastRead 0 FirstWrite -1}
		weights_load_7334 {Type I LastRead 0 FirstWrite -1}
		weights_load_7335 {Type I LastRead 0 FirstWrite -1}
		weights_load_7336 {Type I LastRead 0 FirstWrite -1}
		weights_load_7337 {Type I LastRead 0 FirstWrite -1}
		weights_load_7338 {Type I LastRead 0 FirstWrite -1}
		weights_load_7339 {Type I LastRead 0 FirstWrite -1}
		weights_load_7340 {Type I LastRead 0 FirstWrite -1}
		weights_load_7341 {Type I LastRead 0 FirstWrite -1}
		weights_load_7342 {Type I LastRead 0 FirstWrite -1}
		weights_load_7343 {Type I LastRead 0 FirstWrite -1}
		weights_load_7344 {Type I LastRead 0 FirstWrite -1}
		weights_load_7345 {Type I LastRead 0 FirstWrite -1}
		weights_load_7346 {Type I LastRead 0 FirstWrite -1}
		weights_load_7347 {Type I LastRead 0 FirstWrite -1}
		weights_load_7348 {Type I LastRead 0 FirstWrite -1}
		weights_load_7349 {Type I LastRead 0 FirstWrite -1}
		weights_load_7350 {Type I LastRead 0 FirstWrite -1}
		weights_load_7351 {Type I LastRead 0 FirstWrite -1}
		weights_load_7352 {Type I LastRead 0 FirstWrite -1}
		weights_load_7353 {Type I LastRead 0 FirstWrite -1}
		weights_load_7354 {Type I LastRead 0 FirstWrite -1}
		weights_load_7355 {Type I LastRead 0 FirstWrite -1}
		weights_load_7356 {Type I LastRead 0 FirstWrite -1}
		weights_load_7357 {Type I LastRead 0 FirstWrite -1}
		weights_load_7358 {Type I LastRead 0 FirstWrite -1}
		weights_load_7359 {Type I LastRead 0 FirstWrite -1}
		weights_load_7360 {Type I LastRead 0 FirstWrite -1}
		weights_load_7361 {Type I LastRead 0 FirstWrite -1}
		weights_load_7362 {Type I LastRead 0 FirstWrite -1}
		weights_load_7363 {Type I LastRead 0 FirstWrite -1}
		weights_load_7364 {Type I LastRead 0 FirstWrite -1}
		weights_load_7365 {Type I LastRead 0 FirstWrite -1}
		weights_load_7366 {Type I LastRead 0 FirstWrite -1}
		weights_load_7367 {Type I LastRead 0 FirstWrite -1}
		weights_load_7368 {Type I LastRead 0 FirstWrite -1}
		weights_load_7369 {Type I LastRead 0 FirstWrite -1}
		weights_load_7370 {Type I LastRead 0 FirstWrite -1}
		weights_load_7371 {Type I LastRead 0 FirstWrite -1}
		weights_load_7372 {Type I LastRead 0 FirstWrite -1}
		weights_load_7373 {Type I LastRead 0 FirstWrite -1}
		weights_load_7374 {Type I LastRead 0 FirstWrite -1}
		weights_load_7375 {Type I LastRead 0 FirstWrite -1}
		weights_load_7376 {Type I LastRead 0 FirstWrite -1}
		weights_load_7377 {Type I LastRead 0 FirstWrite -1}
		weights_load_7378 {Type I LastRead 0 FirstWrite -1}
		weights_load_7379 {Type I LastRead 0 FirstWrite -1}
		weights_load_7380 {Type I LastRead 0 FirstWrite -1}
		weights_load_7381 {Type I LastRead 0 FirstWrite -1}
		weights_load_7382 {Type I LastRead 0 FirstWrite -1}
		weights_load_7383 {Type I LastRead 0 FirstWrite -1}
		weights_load_7384 {Type I LastRead 0 FirstWrite -1}
		weights_load_7385 {Type I LastRead 0 FirstWrite -1}
		weights_load_7386 {Type I LastRead 0 FirstWrite -1}
		weights_load_7387 {Type I LastRead 0 FirstWrite -1}
		weights_load_7388 {Type I LastRead 0 FirstWrite -1}
		weights_load_7389 {Type I LastRead 0 FirstWrite -1}
		weights_load_7390 {Type I LastRead 0 FirstWrite -1}
		weights_load_7391 {Type I LastRead 0 FirstWrite -1}
		weights_load_7392 {Type I LastRead 0 FirstWrite -1}
		weights_load_7393 {Type I LastRead 0 FirstWrite -1}
		weights_load_7394 {Type I LastRead 0 FirstWrite -1}
		weights_load_7395 {Type I LastRead 0 FirstWrite -1}
		weights_load_7396 {Type I LastRead 0 FirstWrite -1}
		weights_load_7397 {Type I LastRead 0 FirstWrite -1}
		weights_load_7398 {Type I LastRead 0 FirstWrite -1}
		weights_load_7399 {Type I LastRead 0 FirstWrite -1}
		weights_load_7400 {Type I LastRead 0 FirstWrite -1}
		weights_load_7401 {Type I LastRead 0 FirstWrite -1}
		weights_load_7402 {Type I LastRead 0 FirstWrite -1}
		weights_load_7403 {Type I LastRead 0 FirstWrite -1}
		weights_load_7404 {Type I LastRead 0 FirstWrite -1}
		weights_load_7405 {Type I LastRead 0 FirstWrite -1}
		weights_load_7406 {Type I LastRead 0 FirstWrite -1}
		weights_load_7407 {Type I LastRead 0 FirstWrite -1}
		weights_load_7408 {Type I LastRead 0 FirstWrite -1}
		weights_load_7409 {Type I LastRead 0 FirstWrite -1}
		weights_load_7410 {Type I LastRead 0 FirstWrite -1}
		weights_load_7411 {Type I LastRead 0 FirstWrite -1}
		weights_load_7412 {Type I LastRead 0 FirstWrite -1}
		weights_load_7413 {Type I LastRead 0 FirstWrite -1}
		weights_load_7414 {Type I LastRead 0 FirstWrite -1}
		weights_load_7415 {Type I LastRead 0 FirstWrite -1}
		weights_load_7416 {Type I LastRead 0 FirstWrite -1}
		weights_load_7417 {Type I LastRead 0 FirstWrite -1}
		weights_load_7418 {Type I LastRead 0 FirstWrite -1}
		weights_load_7419 {Type I LastRead 0 FirstWrite -1}
		weights_load_7420 {Type I LastRead 0 FirstWrite -1}
		weights_load_7421 {Type I LastRead 0 FirstWrite -1}
		weights_load_7422 {Type I LastRead 0 FirstWrite -1}
		weights_load_7423 {Type I LastRead 0 FirstWrite -1}
		weights_load_7424 {Type I LastRead 0 FirstWrite -1}
		weights_load_7425 {Type I LastRead 0 FirstWrite -1}
		weights_load_7426 {Type I LastRead 0 FirstWrite -1}
		weights_load_7427 {Type I LastRead 0 FirstWrite -1}
		weights_load_7428 {Type I LastRead 0 FirstWrite -1}
		weights_load_7429 {Type I LastRead 0 FirstWrite -1}
		weights_load_7430 {Type I LastRead 0 FirstWrite -1}
		weights_load_7431 {Type I LastRead 0 FirstWrite -1}
		weights_load_7432 {Type I LastRead 0 FirstWrite -1}
		weights_load_7433 {Type I LastRead 0 FirstWrite -1}
		weights_load_7434 {Type I LastRead 0 FirstWrite -1}
		weights_load_7435 {Type I LastRead 0 FirstWrite -1}
		weights_load_7436 {Type I LastRead 0 FirstWrite -1}
		weights_load_7437 {Type I LastRead 0 FirstWrite -1}
		weights_load_7438 {Type I LastRead 0 FirstWrite -1}
		weights_load_7439 {Type I LastRead 0 FirstWrite -1}
		weights_load_7440 {Type I LastRead 0 FirstWrite -1}
		weights_load_7441 {Type I LastRead 0 FirstWrite -1}
		weights_load_7442 {Type I LastRead 0 FirstWrite -1}
		weights_load_7443 {Type I LastRead 0 FirstWrite -1}
		weights_load_7444 {Type I LastRead 0 FirstWrite -1}
		weights_load_7445 {Type I LastRead 0 FirstWrite -1}
		weights_load_7446 {Type I LastRead 0 FirstWrite -1}
		weights_load_7447 {Type I LastRead 0 FirstWrite -1}
		weights_load_7448 {Type I LastRead 0 FirstWrite -1}
		weights_load_7449 {Type I LastRead 0 FirstWrite -1}
		weights_load_7450 {Type I LastRead 0 FirstWrite -1}
		weights_load_7451 {Type I LastRead 0 FirstWrite -1}
		weights_load_7452 {Type I LastRead 0 FirstWrite -1}
		weights_load_7453 {Type I LastRead 0 FirstWrite -1}
		weights_load_7454 {Type I LastRead 0 FirstWrite -1}
		weights_load_7455 {Type I LastRead 0 FirstWrite -1}
		weights_load_7456 {Type I LastRead 0 FirstWrite -1}
		weights_load_7457 {Type I LastRead 0 FirstWrite -1}
		weights_load_7458 {Type I LastRead 0 FirstWrite -1}
		weights_load_7459 {Type I LastRead 0 FirstWrite -1}
		weights_load_7460 {Type I LastRead 0 FirstWrite -1}
		weights_load_7461 {Type I LastRead 0 FirstWrite -1}
		weights_load_7462 {Type I LastRead 0 FirstWrite -1}
		weights_load_7463 {Type I LastRead 0 FirstWrite -1}
		weights_load_7464 {Type I LastRead 0 FirstWrite -1}
		weights_load_7465 {Type I LastRead 0 FirstWrite -1}
		weights_load_7466 {Type I LastRead 0 FirstWrite -1}
		weights_load_7467 {Type I LastRead 0 FirstWrite -1}
		weights_load_7468 {Type I LastRead 0 FirstWrite -1}
		weights_load_7469 {Type I LastRead 0 FirstWrite -1}
		weights_load_7470 {Type I LastRead 0 FirstWrite -1}
		weights_load_7471 {Type I LastRead 0 FirstWrite -1}
		weights_load_7472 {Type I LastRead 0 FirstWrite -1}
		weights_load_7473 {Type I LastRead 0 FirstWrite -1}
		weights_load_7474 {Type I LastRead 0 FirstWrite -1}
		weights_load_7475 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_26 { ap_fifo {  { conv2d_64_padded_window_stream_26_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_26_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_26_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_26_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_26_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_26 { ap_fifo {  { in_channel_map_stream_26_din fifo_port_we 1 32 }  { in_channel_map_stream_26_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_26_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_26_full_n fifo_status 0 1 }  { in_channel_map_stream_26_write fifo_data 1 1 } } }
}
