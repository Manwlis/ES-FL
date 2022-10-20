set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_21
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.21}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_21 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_21 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_21", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_21", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_21_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_21_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_21_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_21_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_21_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_21_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_21_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_21_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_21_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_21_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_21_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_21", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_21_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_21", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_21_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_21", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_21_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_21", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_21_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_21", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_21_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_21", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_21_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_21", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_21_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_21", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_21_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_21", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_21_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_21", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_21",
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
			{"Name" : "conv2d_64_padded_window_stream_21", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_21_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_21", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_21", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_21_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_21", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_21_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_21_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_21", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9776", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9777", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9778", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9779", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9780", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9781", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9782", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9783", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_21", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_9784", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9785", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9786", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9787", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9788", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9789", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9790", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9791", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9792", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9793", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9794", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9795", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9796", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9797", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9798", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9799", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9800", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9801", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9802", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9803", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9804", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9805", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9806", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9807", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9808", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9809", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9810", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9811", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9812", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9813", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9814", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9815", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9816", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9817", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9818", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9819", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9820", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9821", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9822", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9823", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9824", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9825", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9826", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9827", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9828", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9829", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9830", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9831", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9832", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9833", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9834", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9835", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9836", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9837", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9838", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9839", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9840", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9841", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9842", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9843", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9844", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9845", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9846", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9847", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9848", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9849", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9850", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9851", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9852", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9853", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9854", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9855", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9856", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9857", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9858", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9859", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9860", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9861", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9862", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9863", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9864", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9865", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9866", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9867", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9868", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9869", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9870", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9871", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9872", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9873", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9874", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9875", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9876", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9877", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9878", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9879", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9880", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9881", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9882", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9883", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9884", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9885", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9886", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9887", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9888", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9889", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9890", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9891", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9892", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9893", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9894", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9895", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9896", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9897", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9898", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9899", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9900", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9901", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9902", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9903", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9904", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9905", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9906", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9907", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9908", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9909", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9910", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9911", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9912", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9913", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9914", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9915", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9916", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9917", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9918", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9919", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9920", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9921", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9922", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9923", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9924", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9925", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9926", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9927", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9928", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9929", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9930", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9931", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9932", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9933", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9934", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9935", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9936", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9937", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9938", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9939", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9940", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9941", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9942", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9943", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9944", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9945", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9946", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9947", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9948", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9949", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9950", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9951", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9952", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9953", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9954", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9955", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9956", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9957", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9958", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9959", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9960", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9961", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9962", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9963", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9964", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9965", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9966", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9967", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9968", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9969", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9970", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9971", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9972", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9973", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9974", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9975", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9976", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9977", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9978", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9979", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9980", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9981", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9982", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9983", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9984", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9985", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9986", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9987", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9988", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9989", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9990", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9991", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9992", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9993", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9994", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9995", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9996", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9997", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9998", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_9999", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10000", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10001", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10002", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10003", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10004", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10005", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10006", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10007", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10008", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10009", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10010", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10011", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10012", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10013", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10014", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10015", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10016", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10017", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10018", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10019", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10020", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10021", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10022", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10023", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10024", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10025", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10026", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10027", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10028", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10029", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10030", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10031", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10032", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10033", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10034", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10035", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10036", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10037", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10038", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10039", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10040", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10041", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10042", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10043", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10044", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10045", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10046", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10047", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10048", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10049", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10050", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10051", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10052", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10053", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10054", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10055", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10056", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10057", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10058", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10059", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10060", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10061", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10062", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10063", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10064", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10065", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10066", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10067", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10068", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10069", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10070", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10071", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10072", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10073", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10074", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10075", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10076", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10077", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10078", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10079", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10080", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10081", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10082", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10083", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10084", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10085", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10086", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10087", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10088", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10089", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10090", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10091", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10092", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10093", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10094", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10095", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10096", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10097", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10098", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10099", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10100", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10101", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10102", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10103", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10104", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10105", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10106", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10107", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10108", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10109", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10110", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10111", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10112", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10113", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10114", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10115", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10116", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10117", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10118", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10119", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10120", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10121", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10122", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10123", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10124", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10125", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10126", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10127", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10128", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10129", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10130", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10131", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10132", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10133", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10134", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10135", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10136", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10137", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10138", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10139", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10140", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10141", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10142", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10143", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10144", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10145", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10146", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10147", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10148", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10149", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10150", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10151", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10152", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10153", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10154", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10155", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10156", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10157", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10158", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10159", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10160", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10161", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10162", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10163", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10164", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10165", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10166", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10167", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10168", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10169", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10170", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10171", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10172", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10173", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10174", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10175", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10176", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10177", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10178", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10179", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10180", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10181", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10182", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10183", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10184", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10185", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10186", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10187", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10188", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10189", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10190", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10191", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10192", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10193", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10194", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10195", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10196", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10197", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10198", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10199", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10200", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10201", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10202", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10203", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10204", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10205", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10206", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10207", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10208", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10209", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10210", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10211", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10212", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10213", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10214", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10215", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10216", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10217", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10218", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10219", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10220", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10221", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10222", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10223", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10224", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10225", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10226", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10227", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10228", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10229", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10230", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10231", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10232", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10233", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10234", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10235", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10236", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10237", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10238", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10239", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10240", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10241", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10242", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10243", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10244", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10245", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10246", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10247", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10248", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10249", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10250", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10251", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10252", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10253", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10254", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10255", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10256", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10257", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10258", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10259", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10260", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10261", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10262", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10263", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10264", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10265", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10266", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10267", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10268", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10269", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10270", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10271", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10272", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10273", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10274", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10275", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10276", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10277", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10278", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10279", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10280", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10281", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10282", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10283", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10284", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10285", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10286", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10287", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10288", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10289", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10290", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10291", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10292", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10293", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10294", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10295", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10296", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10297", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10298", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10299", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10300", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10301", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10302", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10303", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10304", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10305", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10306", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10307", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10308", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10309", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10310", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10311", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10312", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10313", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10314", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10315", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10316", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10317", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10318", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10319", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10320", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10321", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10322", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10323", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10324", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10325", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10326", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10327", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10328", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10329", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10330", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10331", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10332", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10333", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10334", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10335", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10336", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10337", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10338", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10339", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10340", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10341", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10342", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10343", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10344", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10345", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10346", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10347", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10348", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10349", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10350", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_21_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U13114", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_21_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U13115", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_21_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U13116", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_21_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U13117", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_21_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U13118", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_21_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U13119", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_21_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U13120", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_21_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U13121", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_21_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U13122", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_21_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U13123", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_21_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U13124", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_21_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U13125", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_21_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U13126", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_21_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U13127", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_21_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U13128", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_21_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U13129", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_21_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U13130", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_21_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_21 {
		conv2d_64_padded_window_stream_21 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_21 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_21_Pipeline_inputs {
		conv2d_64_padded_window_stream_21 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_9776 {Type I LastRead 0 FirstWrite -1}
		weights_load_9777 {Type I LastRead 0 FirstWrite -1}
		weights_load_9778 {Type I LastRead 0 FirstWrite -1}
		weights_load_9779 {Type I LastRead 0 FirstWrite -1}
		weights_load_9780 {Type I LastRead 0 FirstWrite -1}
		weights_load_9781 {Type I LastRead 0 FirstWrite -1}
		weights_load_9782 {Type I LastRead 0 FirstWrite -1}
		weights_load_9783 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_21 {Type O LastRead -1 FirstWrite 16}
		weights_load_9784 {Type I LastRead 0 FirstWrite -1}
		weights_load_9785 {Type I LastRead 0 FirstWrite -1}
		weights_load_9786 {Type I LastRead 0 FirstWrite -1}
		weights_load_9787 {Type I LastRead 0 FirstWrite -1}
		weights_load_9788 {Type I LastRead 0 FirstWrite -1}
		weights_load_9789 {Type I LastRead 0 FirstWrite -1}
		weights_load_9790 {Type I LastRead 0 FirstWrite -1}
		weights_load_9791 {Type I LastRead 0 FirstWrite -1}
		weights_load_9792 {Type I LastRead 0 FirstWrite -1}
		weights_load_9793 {Type I LastRead 0 FirstWrite -1}
		weights_load_9794 {Type I LastRead 0 FirstWrite -1}
		weights_load_9795 {Type I LastRead 0 FirstWrite -1}
		weights_load_9796 {Type I LastRead 0 FirstWrite -1}
		weights_load_9797 {Type I LastRead 0 FirstWrite -1}
		weights_load_9798 {Type I LastRead 0 FirstWrite -1}
		weights_load_9799 {Type I LastRead 0 FirstWrite -1}
		weights_load_9800 {Type I LastRead 0 FirstWrite -1}
		weights_load_9801 {Type I LastRead 0 FirstWrite -1}
		weights_load_9802 {Type I LastRead 0 FirstWrite -1}
		weights_load_9803 {Type I LastRead 0 FirstWrite -1}
		weights_load_9804 {Type I LastRead 0 FirstWrite -1}
		weights_load_9805 {Type I LastRead 0 FirstWrite -1}
		weights_load_9806 {Type I LastRead 0 FirstWrite -1}
		weights_load_9807 {Type I LastRead 0 FirstWrite -1}
		weights_load_9808 {Type I LastRead 0 FirstWrite -1}
		weights_load_9809 {Type I LastRead 0 FirstWrite -1}
		weights_load_9810 {Type I LastRead 0 FirstWrite -1}
		weights_load_9811 {Type I LastRead 0 FirstWrite -1}
		weights_load_9812 {Type I LastRead 0 FirstWrite -1}
		weights_load_9813 {Type I LastRead 0 FirstWrite -1}
		weights_load_9814 {Type I LastRead 0 FirstWrite -1}
		weights_load_9815 {Type I LastRead 0 FirstWrite -1}
		weights_load_9816 {Type I LastRead 0 FirstWrite -1}
		weights_load_9817 {Type I LastRead 0 FirstWrite -1}
		weights_load_9818 {Type I LastRead 0 FirstWrite -1}
		weights_load_9819 {Type I LastRead 0 FirstWrite -1}
		weights_load_9820 {Type I LastRead 0 FirstWrite -1}
		weights_load_9821 {Type I LastRead 0 FirstWrite -1}
		weights_load_9822 {Type I LastRead 0 FirstWrite -1}
		weights_load_9823 {Type I LastRead 0 FirstWrite -1}
		weights_load_9824 {Type I LastRead 0 FirstWrite -1}
		weights_load_9825 {Type I LastRead 0 FirstWrite -1}
		weights_load_9826 {Type I LastRead 0 FirstWrite -1}
		weights_load_9827 {Type I LastRead 0 FirstWrite -1}
		weights_load_9828 {Type I LastRead 0 FirstWrite -1}
		weights_load_9829 {Type I LastRead 0 FirstWrite -1}
		weights_load_9830 {Type I LastRead 0 FirstWrite -1}
		weights_load_9831 {Type I LastRead 0 FirstWrite -1}
		weights_load_9832 {Type I LastRead 0 FirstWrite -1}
		weights_load_9833 {Type I LastRead 0 FirstWrite -1}
		weights_load_9834 {Type I LastRead 0 FirstWrite -1}
		weights_load_9835 {Type I LastRead 0 FirstWrite -1}
		weights_load_9836 {Type I LastRead 0 FirstWrite -1}
		weights_load_9837 {Type I LastRead 0 FirstWrite -1}
		weights_load_9838 {Type I LastRead 0 FirstWrite -1}
		weights_load_9839 {Type I LastRead 0 FirstWrite -1}
		weights_load_9840 {Type I LastRead 0 FirstWrite -1}
		weights_load_9841 {Type I LastRead 0 FirstWrite -1}
		weights_load_9842 {Type I LastRead 0 FirstWrite -1}
		weights_load_9843 {Type I LastRead 0 FirstWrite -1}
		weights_load_9844 {Type I LastRead 0 FirstWrite -1}
		weights_load_9845 {Type I LastRead 0 FirstWrite -1}
		weights_load_9846 {Type I LastRead 0 FirstWrite -1}
		weights_load_9847 {Type I LastRead 0 FirstWrite -1}
		weights_load_9848 {Type I LastRead 0 FirstWrite -1}
		weights_load_9849 {Type I LastRead 0 FirstWrite -1}
		weights_load_9850 {Type I LastRead 0 FirstWrite -1}
		weights_load_9851 {Type I LastRead 0 FirstWrite -1}
		weights_load_9852 {Type I LastRead 0 FirstWrite -1}
		weights_load_9853 {Type I LastRead 0 FirstWrite -1}
		weights_load_9854 {Type I LastRead 0 FirstWrite -1}
		weights_load_9855 {Type I LastRead 0 FirstWrite -1}
		weights_load_9856 {Type I LastRead 0 FirstWrite -1}
		weights_load_9857 {Type I LastRead 0 FirstWrite -1}
		weights_load_9858 {Type I LastRead 0 FirstWrite -1}
		weights_load_9859 {Type I LastRead 0 FirstWrite -1}
		weights_load_9860 {Type I LastRead 0 FirstWrite -1}
		weights_load_9861 {Type I LastRead 0 FirstWrite -1}
		weights_load_9862 {Type I LastRead 0 FirstWrite -1}
		weights_load_9863 {Type I LastRead 0 FirstWrite -1}
		weights_load_9864 {Type I LastRead 0 FirstWrite -1}
		weights_load_9865 {Type I LastRead 0 FirstWrite -1}
		weights_load_9866 {Type I LastRead 0 FirstWrite -1}
		weights_load_9867 {Type I LastRead 0 FirstWrite -1}
		weights_load_9868 {Type I LastRead 0 FirstWrite -1}
		weights_load_9869 {Type I LastRead 0 FirstWrite -1}
		weights_load_9870 {Type I LastRead 0 FirstWrite -1}
		weights_load_9871 {Type I LastRead 0 FirstWrite -1}
		weights_load_9872 {Type I LastRead 0 FirstWrite -1}
		weights_load_9873 {Type I LastRead 0 FirstWrite -1}
		weights_load_9874 {Type I LastRead 0 FirstWrite -1}
		weights_load_9875 {Type I LastRead 0 FirstWrite -1}
		weights_load_9876 {Type I LastRead 0 FirstWrite -1}
		weights_load_9877 {Type I LastRead 0 FirstWrite -1}
		weights_load_9878 {Type I LastRead 0 FirstWrite -1}
		weights_load_9879 {Type I LastRead 0 FirstWrite -1}
		weights_load_9880 {Type I LastRead 0 FirstWrite -1}
		weights_load_9881 {Type I LastRead 0 FirstWrite -1}
		weights_load_9882 {Type I LastRead 0 FirstWrite -1}
		weights_load_9883 {Type I LastRead 0 FirstWrite -1}
		weights_load_9884 {Type I LastRead 0 FirstWrite -1}
		weights_load_9885 {Type I LastRead 0 FirstWrite -1}
		weights_load_9886 {Type I LastRead 0 FirstWrite -1}
		weights_load_9887 {Type I LastRead 0 FirstWrite -1}
		weights_load_9888 {Type I LastRead 0 FirstWrite -1}
		weights_load_9889 {Type I LastRead 0 FirstWrite -1}
		weights_load_9890 {Type I LastRead 0 FirstWrite -1}
		weights_load_9891 {Type I LastRead 0 FirstWrite -1}
		weights_load_9892 {Type I LastRead 0 FirstWrite -1}
		weights_load_9893 {Type I LastRead 0 FirstWrite -1}
		weights_load_9894 {Type I LastRead 0 FirstWrite -1}
		weights_load_9895 {Type I LastRead 0 FirstWrite -1}
		weights_load_9896 {Type I LastRead 0 FirstWrite -1}
		weights_load_9897 {Type I LastRead 0 FirstWrite -1}
		weights_load_9898 {Type I LastRead 0 FirstWrite -1}
		weights_load_9899 {Type I LastRead 0 FirstWrite -1}
		weights_load_9900 {Type I LastRead 0 FirstWrite -1}
		weights_load_9901 {Type I LastRead 0 FirstWrite -1}
		weights_load_9902 {Type I LastRead 0 FirstWrite -1}
		weights_load_9903 {Type I LastRead 0 FirstWrite -1}
		weights_load_9904 {Type I LastRead 0 FirstWrite -1}
		weights_load_9905 {Type I LastRead 0 FirstWrite -1}
		weights_load_9906 {Type I LastRead 0 FirstWrite -1}
		weights_load_9907 {Type I LastRead 0 FirstWrite -1}
		weights_load_9908 {Type I LastRead 0 FirstWrite -1}
		weights_load_9909 {Type I LastRead 0 FirstWrite -1}
		weights_load_9910 {Type I LastRead 0 FirstWrite -1}
		weights_load_9911 {Type I LastRead 0 FirstWrite -1}
		weights_load_9912 {Type I LastRead 0 FirstWrite -1}
		weights_load_9913 {Type I LastRead 0 FirstWrite -1}
		weights_load_9914 {Type I LastRead 0 FirstWrite -1}
		weights_load_9915 {Type I LastRead 0 FirstWrite -1}
		weights_load_9916 {Type I LastRead 0 FirstWrite -1}
		weights_load_9917 {Type I LastRead 0 FirstWrite -1}
		weights_load_9918 {Type I LastRead 0 FirstWrite -1}
		weights_load_9919 {Type I LastRead 0 FirstWrite -1}
		weights_load_9920 {Type I LastRead 0 FirstWrite -1}
		weights_load_9921 {Type I LastRead 0 FirstWrite -1}
		weights_load_9922 {Type I LastRead 0 FirstWrite -1}
		weights_load_9923 {Type I LastRead 0 FirstWrite -1}
		weights_load_9924 {Type I LastRead 0 FirstWrite -1}
		weights_load_9925 {Type I LastRead 0 FirstWrite -1}
		weights_load_9926 {Type I LastRead 0 FirstWrite -1}
		weights_load_9927 {Type I LastRead 0 FirstWrite -1}
		weights_load_9928 {Type I LastRead 0 FirstWrite -1}
		weights_load_9929 {Type I LastRead 0 FirstWrite -1}
		weights_load_9930 {Type I LastRead 0 FirstWrite -1}
		weights_load_9931 {Type I LastRead 0 FirstWrite -1}
		weights_load_9932 {Type I LastRead 0 FirstWrite -1}
		weights_load_9933 {Type I LastRead 0 FirstWrite -1}
		weights_load_9934 {Type I LastRead 0 FirstWrite -1}
		weights_load_9935 {Type I LastRead 0 FirstWrite -1}
		weights_load_9936 {Type I LastRead 0 FirstWrite -1}
		weights_load_9937 {Type I LastRead 0 FirstWrite -1}
		weights_load_9938 {Type I LastRead 0 FirstWrite -1}
		weights_load_9939 {Type I LastRead 0 FirstWrite -1}
		weights_load_9940 {Type I LastRead 0 FirstWrite -1}
		weights_load_9941 {Type I LastRead 0 FirstWrite -1}
		weights_load_9942 {Type I LastRead 0 FirstWrite -1}
		weights_load_9943 {Type I LastRead 0 FirstWrite -1}
		weights_load_9944 {Type I LastRead 0 FirstWrite -1}
		weights_load_9945 {Type I LastRead 0 FirstWrite -1}
		weights_load_9946 {Type I LastRead 0 FirstWrite -1}
		weights_load_9947 {Type I LastRead 0 FirstWrite -1}
		weights_load_9948 {Type I LastRead 0 FirstWrite -1}
		weights_load_9949 {Type I LastRead 0 FirstWrite -1}
		weights_load_9950 {Type I LastRead 0 FirstWrite -1}
		weights_load_9951 {Type I LastRead 0 FirstWrite -1}
		weights_load_9952 {Type I LastRead 0 FirstWrite -1}
		weights_load_9953 {Type I LastRead 0 FirstWrite -1}
		weights_load_9954 {Type I LastRead 0 FirstWrite -1}
		weights_load_9955 {Type I LastRead 0 FirstWrite -1}
		weights_load_9956 {Type I LastRead 0 FirstWrite -1}
		weights_load_9957 {Type I LastRead 0 FirstWrite -1}
		weights_load_9958 {Type I LastRead 0 FirstWrite -1}
		weights_load_9959 {Type I LastRead 0 FirstWrite -1}
		weights_load_9960 {Type I LastRead 0 FirstWrite -1}
		weights_load_9961 {Type I LastRead 0 FirstWrite -1}
		weights_load_9962 {Type I LastRead 0 FirstWrite -1}
		weights_load_9963 {Type I LastRead 0 FirstWrite -1}
		weights_load_9964 {Type I LastRead 0 FirstWrite -1}
		weights_load_9965 {Type I LastRead 0 FirstWrite -1}
		weights_load_9966 {Type I LastRead 0 FirstWrite -1}
		weights_load_9967 {Type I LastRead 0 FirstWrite -1}
		weights_load_9968 {Type I LastRead 0 FirstWrite -1}
		weights_load_9969 {Type I LastRead 0 FirstWrite -1}
		weights_load_9970 {Type I LastRead 0 FirstWrite -1}
		weights_load_9971 {Type I LastRead 0 FirstWrite -1}
		weights_load_9972 {Type I LastRead 0 FirstWrite -1}
		weights_load_9973 {Type I LastRead 0 FirstWrite -1}
		weights_load_9974 {Type I LastRead 0 FirstWrite -1}
		weights_load_9975 {Type I LastRead 0 FirstWrite -1}
		weights_load_9976 {Type I LastRead 0 FirstWrite -1}
		weights_load_9977 {Type I LastRead 0 FirstWrite -1}
		weights_load_9978 {Type I LastRead 0 FirstWrite -1}
		weights_load_9979 {Type I LastRead 0 FirstWrite -1}
		weights_load_9980 {Type I LastRead 0 FirstWrite -1}
		weights_load_9981 {Type I LastRead 0 FirstWrite -1}
		weights_load_9982 {Type I LastRead 0 FirstWrite -1}
		weights_load_9983 {Type I LastRead 0 FirstWrite -1}
		weights_load_9984 {Type I LastRead 0 FirstWrite -1}
		weights_load_9985 {Type I LastRead 0 FirstWrite -1}
		weights_load_9986 {Type I LastRead 0 FirstWrite -1}
		weights_load_9987 {Type I LastRead 0 FirstWrite -1}
		weights_load_9988 {Type I LastRead 0 FirstWrite -1}
		weights_load_9989 {Type I LastRead 0 FirstWrite -1}
		weights_load_9990 {Type I LastRead 0 FirstWrite -1}
		weights_load_9991 {Type I LastRead 0 FirstWrite -1}
		weights_load_9992 {Type I LastRead 0 FirstWrite -1}
		weights_load_9993 {Type I LastRead 0 FirstWrite -1}
		weights_load_9994 {Type I LastRead 0 FirstWrite -1}
		weights_load_9995 {Type I LastRead 0 FirstWrite -1}
		weights_load_9996 {Type I LastRead 0 FirstWrite -1}
		weights_load_9997 {Type I LastRead 0 FirstWrite -1}
		weights_load_9998 {Type I LastRead 0 FirstWrite -1}
		weights_load_9999 {Type I LastRead 0 FirstWrite -1}
		weights_load_10000 {Type I LastRead 0 FirstWrite -1}
		weights_load_10001 {Type I LastRead 0 FirstWrite -1}
		weights_load_10002 {Type I LastRead 0 FirstWrite -1}
		weights_load_10003 {Type I LastRead 0 FirstWrite -1}
		weights_load_10004 {Type I LastRead 0 FirstWrite -1}
		weights_load_10005 {Type I LastRead 0 FirstWrite -1}
		weights_load_10006 {Type I LastRead 0 FirstWrite -1}
		weights_load_10007 {Type I LastRead 0 FirstWrite -1}
		weights_load_10008 {Type I LastRead 0 FirstWrite -1}
		weights_load_10009 {Type I LastRead 0 FirstWrite -1}
		weights_load_10010 {Type I LastRead 0 FirstWrite -1}
		weights_load_10011 {Type I LastRead 0 FirstWrite -1}
		weights_load_10012 {Type I LastRead 0 FirstWrite -1}
		weights_load_10013 {Type I LastRead 0 FirstWrite -1}
		weights_load_10014 {Type I LastRead 0 FirstWrite -1}
		weights_load_10015 {Type I LastRead 0 FirstWrite -1}
		weights_load_10016 {Type I LastRead 0 FirstWrite -1}
		weights_load_10017 {Type I LastRead 0 FirstWrite -1}
		weights_load_10018 {Type I LastRead 0 FirstWrite -1}
		weights_load_10019 {Type I LastRead 0 FirstWrite -1}
		weights_load_10020 {Type I LastRead 0 FirstWrite -1}
		weights_load_10021 {Type I LastRead 0 FirstWrite -1}
		weights_load_10022 {Type I LastRead 0 FirstWrite -1}
		weights_load_10023 {Type I LastRead 0 FirstWrite -1}
		weights_load_10024 {Type I LastRead 0 FirstWrite -1}
		weights_load_10025 {Type I LastRead 0 FirstWrite -1}
		weights_load_10026 {Type I LastRead 0 FirstWrite -1}
		weights_load_10027 {Type I LastRead 0 FirstWrite -1}
		weights_load_10028 {Type I LastRead 0 FirstWrite -1}
		weights_load_10029 {Type I LastRead 0 FirstWrite -1}
		weights_load_10030 {Type I LastRead 0 FirstWrite -1}
		weights_load_10031 {Type I LastRead 0 FirstWrite -1}
		weights_load_10032 {Type I LastRead 0 FirstWrite -1}
		weights_load_10033 {Type I LastRead 0 FirstWrite -1}
		weights_load_10034 {Type I LastRead 0 FirstWrite -1}
		weights_load_10035 {Type I LastRead 0 FirstWrite -1}
		weights_load_10036 {Type I LastRead 0 FirstWrite -1}
		weights_load_10037 {Type I LastRead 0 FirstWrite -1}
		weights_load_10038 {Type I LastRead 0 FirstWrite -1}
		weights_load_10039 {Type I LastRead 0 FirstWrite -1}
		weights_load_10040 {Type I LastRead 0 FirstWrite -1}
		weights_load_10041 {Type I LastRead 0 FirstWrite -1}
		weights_load_10042 {Type I LastRead 0 FirstWrite -1}
		weights_load_10043 {Type I LastRead 0 FirstWrite -1}
		weights_load_10044 {Type I LastRead 0 FirstWrite -1}
		weights_load_10045 {Type I LastRead 0 FirstWrite -1}
		weights_load_10046 {Type I LastRead 0 FirstWrite -1}
		weights_load_10047 {Type I LastRead 0 FirstWrite -1}
		weights_load_10048 {Type I LastRead 0 FirstWrite -1}
		weights_load_10049 {Type I LastRead 0 FirstWrite -1}
		weights_load_10050 {Type I LastRead 0 FirstWrite -1}
		weights_load_10051 {Type I LastRead 0 FirstWrite -1}
		weights_load_10052 {Type I LastRead 0 FirstWrite -1}
		weights_load_10053 {Type I LastRead 0 FirstWrite -1}
		weights_load_10054 {Type I LastRead 0 FirstWrite -1}
		weights_load_10055 {Type I LastRead 0 FirstWrite -1}
		weights_load_10056 {Type I LastRead 0 FirstWrite -1}
		weights_load_10057 {Type I LastRead 0 FirstWrite -1}
		weights_load_10058 {Type I LastRead 0 FirstWrite -1}
		weights_load_10059 {Type I LastRead 0 FirstWrite -1}
		weights_load_10060 {Type I LastRead 0 FirstWrite -1}
		weights_load_10061 {Type I LastRead 0 FirstWrite -1}
		weights_load_10062 {Type I LastRead 0 FirstWrite -1}
		weights_load_10063 {Type I LastRead 0 FirstWrite -1}
		weights_load_10064 {Type I LastRead 0 FirstWrite -1}
		weights_load_10065 {Type I LastRead 0 FirstWrite -1}
		weights_load_10066 {Type I LastRead 0 FirstWrite -1}
		weights_load_10067 {Type I LastRead 0 FirstWrite -1}
		weights_load_10068 {Type I LastRead 0 FirstWrite -1}
		weights_load_10069 {Type I LastRead 0 FirstWrite -1}
		weights_load_10070 {Type I LastRead 0 FirstWrite -1}
		weights_load_10071 {Type I LastRead 0 FirstWrite -1}
		weights_load_10072 {Type I LastRead 0 FirstWrite -1}
		weights_load_10073 {Type I LastRead 0 FirstWrite -1}
		weights_load_10074 {Type I LastRead 0 FirstWrite -1}
		weights_load_10075 {Type I LastRead 0 FirstWrite -1}
		weights_load_10076 {Type I LastRead 0 FirstWrite -1}
		weights_load_10077 {Type I LastRead 0 FirstWrite -1}
		weights_load_10078 {Type I LastRead 0 FirstWrite -1}
		weights_load_10079 {Type I LastRead 0 FirstWrite -1}
		weights_load_10080 {Type I LastRead 0 FirstWrite -1}
		weights_load_10081 {Type I LastRead 0 FirstWrite -1}
		weights_load_10082 {Type I LastRead 0 FirstWrite -1}
		weights_load_10083 {Type I LastRead 0 FirstWrite -1}
		weights_load_10084 {Type I LastRead 0 FirstWrite -1}
		weights_load_10085 {Type I LastRead 0 FirstWrite -1}
		weights_load_10086 {Type I LastRead 0 FirstWrite -1}
		weights_load_10087 {Type I LastRead 0 FirstWrite -1}
		weights_load_10088 {Type I LastRead 0 FirstWrite -1}
		weights_load_10089 {Type I LastRead 0 FirstWrite -1}
		weights_load_10090 {Type I LastRead 0 FirstWrite -1}
		weights_load_10091 {Type I LastRead 0 FirstWrite -1}
		weights_load_10092 {Type I LastRead 0 FirstWrite -1}
		weights_load_10093 {Type I LastRead 0 FirstWrite -1}
		weights_load_10094 {Type I LastRead 0 FirstWrite -1}
		weights_load_10095 {Type I LastRead 0 FirstWrite -1}
		weights_load_10096 {Type I LastRead 0 FirstWrite -1}
		weights_load_10097 {Type I LastRead 0 FirstWrite -1}
		weights_load_10098 {Type I LastRead 0 FirstWrite -1}
		weights_load_10099 {Type I LastRead 0 FirstWrite -1}
		weights_load_10100 {Type I LastRead 0 FirstWrite -1}
		weights_load_10101 {Type I LastRead 0 FirstWrite -1}
		weights_load_10102 {Type I LastRead 0 FirstWrite -1}
		weights_load_10103 {Type I LastRead 0 FirstWrite -1}
		weights_load_10104 {Type I LastRead 0 FirstWrite -1}
		weights_load_10105 {Type I LastRead 0 FirstWrite -1}
		weights_load_10106 {Type I LastRead 0 FirstWrite -1}
		weights_load_10107 {Type I LastRead 0 FirstWrite -1}
		weights_load_10108 {Type I LastRead 0 FirstWrite -1}
		weights_load_10109 {Type I LastRead 0 FirstWrite -1}
		weights_load_10110 {Type I LastRead 0 FirstWrite -1}
		weights_load_10111 {Type I LastRead 0 FirstWrite -1}
		weights_load_10112 {Type I LastRead 0 FirstWrite -1}
		weights_load_10113 {Type I LastRead 0 FirstWrite -1}
		weights_load_10114 {Type I LastRead 0 FirstWrite -1}
		weights_load_10115 {Type I LastRead 0 FirstWrite -1}
		weights_load_10116 {Type I LastRead 0 FirstWrite -1}
		weights_load_10117 {Type I LastRead 0 FirstWrite -1}
		weights_load_10118 {Type I LastRead 0 FirstWrite -1}
		weights_load_10119 {Type I LastRead 0 FirstWrite -1}
		weights_load_10120 {Type I LastRead 0 FirstWrite -1}
		weights_load_10121 {Type I LastRead 0 FirstWrite -1}
		weights_load_10122 {Type I LastRead 0 FirstWrite -1}
		weights_load_10123 {Type I LastRead 0 FirstWrite -1}
		weights_load_10124 {Type I LastRead 0 FirstWrite -1}
		weights_load_10125 {Type I LastRead 0 FirstWrite -1}
		weights_load_10126 {Type I LastRead 0 FirstWrite -1}
		weights_load_10127 {Type I LastRead 0 FirstWrite -1}
		weights_load_10128 {Type I LastRead 0 FirstWrite -1}
		weights_load_10129 {Type I LastRead 0 FirstWrite -1}
		weights_load_10130 {Type I LastRead 0 FirstWrite -1}
		weights_load_10131 {Type I LastRead 0 FirstWrite -1}
		weights_load_10132 {Type I LastRead 0 FirstWrite -1}
		weights_load_10133 {Type I LastRead 0 FirstWrite -1}
		weights_load_10134 {Type I LastRead 0 FirstWrite -1}
		weights_load_10135 {Type I LastRead 0 FirstWrite -1}
		weights_load_10136 {Type I LastRead 0 FirstWrite -1}
		weights_load_10137 {Type I LastRead 0 FirstWrite -1}
		weights_load_10138 {Type I LastRead 0 FirstWrite -1}
		weights_load_10139 {Type I LastRead 0 FirstWrite -1}
		weights_load_10140 {Type I LastRead 0 FirstWrite -1}
		weights_load_10141 {Type I LastRead 0 FirstWrite -1}
		weights_load_10142 {Type I LastRead 0 FirstWrite -1}
		weights_load_10143 {Type I LastRead 0 FirstWrite -1}
		weights_load_10144 {Type I LastRead 0 FirstWrite -1}
		weights_load_10145 {Type I LastRead 0 FirstWrite -1}
		weights_load_10146 {Type I LastRead 0 FirstWrite -1}
		weights_load_10147 {Type I LastRead 0 FirstWrite -1}
		weights_load_10148 {Type I LastRead 0 FirstWrite -1}
		weights_load_10149 {Type I LastRead 0 FirstWrite -1}
		weights_load_10150 {Type I LastRead 0 FirstWrite -1}
		weights_load_10151 {Type I LastRead 0 FirstWrite -1}
		weights_load_10152 {Type I LastRead 0 FirstWrite -1}
		weights_load_10153 {Type I LastRead 0 FirstWrite -1}
		weights_load_10154 {Type I LastRead 0 FirstWrite -1}
		weights_load_10155 {Type I LastRead 0 FirstWrite -1}
		weights_load_10156 {Type I LastRead 0 FirstWrite -1}
		weights_load_10157 {Type I LastRead 0 FirstWrite -1}
		weights_load_10158 {Type I LastRead 0 FirstWrite -1}
		weights_load_10159 {Type I LastRead 0 FirstWrite -1}
		weights_load_10160 {Type I LastRead 0 FirstWrite -1}
		weights_load_10161 {Type I LastRead 0 FirstWrite -1}
		weights_load_10162 {Type I LastRead 0 FirstWrite -1}
		weights_load_10163 {Type I LastRead 0 FirstWrite -1}
		weights_load_10164 {Type I LastRead 0 FirstWrite -1}
		weights_load_10165 {Type I LastRead 0 FirstWrite -1}
		weights_load_10166 {Type I LastRead 0 FirstWrite -1}
		weights_load_10167 {Type I LastRead 0 FirstWrite -1}
		weights_load_10168 {Type I LastRead 0 FirstWrite -1}
		weights_load_10169 {Type I LastRead 0 FirstWrite -1}
		weights_load_10170 {Type I LastRead 0 FirstWrite -1}
		weights_load_10171 {Type I LastRead 0 FirstWrite -1}
		weights_load_10172 {Type I LastRead 0 FirstWrite -1}
		weights_load_10173 {Type I LastRead 0 FirstWrite -1}
		weights_load_10174 {Type I LastRead 0 FirstWrite -1}
		weights_load_10175 {Type I LastRead 0 FirstWrite -1}
		weights_load_10176 {Type I LastRead 0 FirstWrite -1}
		weights_load_10177 {Type I LastRead 0 FirstWrite -1}
		weights_load_10178 {Type I LastRead 0 FirstWrite -1}
		weights_load_10179 {Type I LastRead 0 FirstWrite -1}
		weights_load_10180 {Type I LastRead 0 FirstWrite -1}
		weights_load_10181 {Type I LastRead 0 FirstWrite -1}
		weights_load_10182 {Type I LastRead 0 FirstWrite -1}
		weights_load_10183 {Type I LastRead 0 FirstWrite -1}
		weights_load_10184 {Type I LastRead 0 FirstWrite -1}
		weights_load_10185 {Type I LastRead 0 FirstWrite -1}
		weights_load_10186 {Type I LastRead 0 FirstWrite -1}
		weights_load_10187 {Type I LastRead 0 FirstWrite -1}
		weights_load_10188 {Type I LastRead 0 FirstWrite -1}
		weights_load_10189 {Type I LastRead 0 FirstWrite -1}
		weights_load_10190 {Type I LastRead 0 FirstWrite -1}
		weights_load_10191 {Type I LastRead 0 FirstWrite -1}
		weights_load_10192 {Type I LastRead 0 FirstWrite -1}
		weights_load_10193 {Type I LastRead 0 FirstWrite -1}
		weights_load_10194 {Type I LastRead 0 FirstWrite -1}
		weights_load_10195 {Type I LastRead 0 FirstWrite -1}
		weights_load_10196 {Type I LastRead 0 FirstWrite -1}
		weights_load_10197 {Type I LastRead 0 FirstWrite -1}
		weights_load_10198 {Type I LastRead 0 FirstWrite -1}
		weights_load_10199 {Type I LastRead 0 FirstWrite -1}
		weights_load_10200 {Type I LastRead 0 FirstWrite -1}
		weights_load_10201 {Type I LastRead 0 FirstWrite -1}
		weights_load_10202 {Type I LastRead 0 FirstWrite -1}
		weights_load_10203 {Type I LastRead 0 FirstWrite -1}
		weights_load_10204 {Type I LastRead 0 FirstWrite -1}
		weights_load_10205 {Type I LastRead 0 FirstWrite -1}
		weights_load_10206 {Type I LastRead 0 FirstWrite -1}
		weights_load_10207 {Type I LastRead 0 FirstWrite -1}
		weights_load_10208 {Type I LastRead 0 FirstWrite -1}
		weights_load_10209 {Type I LastRead 0 FirstWrite -1}
		weights_load_10210 {Type I LastRead 0 FirstWrite -1}
		weights_load_10211 {Type I LastRead 0 FirstWrite -1}
		weights_load_10212 {Type I LastRead 0 FirstWrite -1}
		weights_load_10213 {Type I LastRead 0 FirstWrite -1}
		weights_load_10214 {Type I LastRead 0 FirstWrite -1}
		weights_load_10215 {Type I LastRead 0 FirstWrite -1}
		weights_load_10216 {Type I LastRead 0 FirstWrite -1}
		weights_load_10217 {Type I LastRead 0 FirstWrite -1}
		weights_load_10218 {Type I LastRead 0 FirstWrite -1}
		weights_load_10219 {Type I LastRead 0 FirstWrite -1}
		weights_load_10220 {Type I LastRead 0 FirstWrite -1}
		weights_load_10221 {Type I LastRead 0 FirstWrite -1}
		weights_load_10222 {Type I LastRead 0 FirstWrite -1}
		weights_load_10223 {Type I LastRead 0 FirstWrite -1}
		weights_load_10224 {Type I LastRead 0 FirstWrite -1}
		weights_load_10225 {Type I LastRead 0 FirstWrite -1}
		weights_load_10226 {Type I LastRead 0 FirstWrite -1}
		weights_load_10227 {Type I LastRead 0 FirstWrite -1}
		weights_load_10228 {Type I LastRead 0 FirstWrite -1}
		weights_load_10229 {Type I LastRead 0 FirstWrite -1}
		weights_load_10230 {Type I LastRead 0 FirstWrite -1}
		weights_load_10231 {Type I LastRead 0 FirstWrite -1}
		weights_load_10232 {Type I LastRead 0 FirstWrite -1}
		weights_load_10233 {Type I LastRead 0 FirstWrite -1}
		weights_load_10234 {Type I LastRead 0 FirstWrite -1}
		weights_load_10235 {Type I LastRead 0 FirstWrite -1}
		weights_load_10236 {Type I LastRead 0 FirstWrite -1}
		weights_load_10237 {Type I LastRead 0 FirstWrite -1}
		weights_load_10238 {Type I LastRead 0 FirstWrite -1}
		weights_load_10239 {Type I LastRead 0 FirstWrite -1}
		weights_load_10240 {Type I LastRead 0 FirstWrite -1}
		weights_load_10241 {Type I LastRead 0 FirstWrite -1}
		weights_load_10242 {Type I LastRead 0 FirstWrite -1}
		weights_load_10243 {Type I LastRead 0 FirstWrite -1}
		weights_load_10244 {Type I LastRead 0 FirstWrite -1}
		weights_load_10245 {Type I LastRead 0 FirstWrite -1}
		weights_load_10246 {Type I LastRead 0 FirstWrite -1}
		weights_load_10247 {Type I LastRead 0 FirstWrite -1}
		weights_load_10248 {Type I LastRead 0 FirstWrite -1}
		weights_load_10249 {Type I LastRead 0 FirstWrite -1}
		weights_load_10250 {Type I LastRead 0 FirstWrite -1}
		weights_load_10251 {Type I LastRead 0 FirstWrite -1}
		weights_load_10252 {Type I LastRead 0 FirstWrite -1}
		weights_load_10253 {Type I LastRead 0 FirstWrite -1}
		weights_load_10254 {Type I LastRead 0 FirstWrite -1}
		weights_load_10255 {Type I LastRead 0 FirstWrite -1}
		weights_load_10256 {Type I LastRead 0 FirstWrite -1}
		weights_load_10257 {Type I LastRead 0 FirstWrite -1}
		weights_load_10258 {Type I LastRead 0 FirstWrite -1}
		weights_load_10259 {Type I LastRead 0 FirstWrite -1}
		weights_load_10260 {Type I LastRead 0 FirstWrite -1}
		weights_load_10261 {Type I LastRead 0 FirstWrite -1}
		weights_load_10262 {Type I LastRead 0 FirstWrite -1}
		weights_load_10263 {Type I LastRead 0 FirstWrite -1}
		weights_load_10264 {Type I LastRead 0 FirstWrite -1}
		weights_load_10265 {Type I LastRead 0 FirstWrite -1}
		weights_load_10266 {Type I LastRead 0 FirstWrite -1}
		weights_load_10267 {Type I LastRead 0 FirstWrite -1}
		weights_load_10268 {Type I LastRead 0 FirstWrite -1}
		weights_load_10269 {Type I LastRead 0 FirstWrite -1}
		weights_load_10270 {Type I LastRead 0 FirstWrite -1}
		weights_load_10271 {Type I LastRead 0 FirstWrite -1}
		weights_load_10272 {Type I LastRead 0 FirstWrite -1}
		weights_load_10273 {Type I LastRead 0 FirstWrite -1}
		weights_load_10274 {Type I LastRead 0 FirstWrite -1}
		weights_load_10275 {Type I LastRead 0 FirstWrite -1}
		weights_load_10276 {Type I LastRead 0 FirstWrite -1}
		weights_load_10277 {Type I LastRead 0 FirstWrite -1}
		weights_load_10278 {Type I LastRead 0 FirstWrite -1}
		weights_load_10279 {Type I LastRead 0 FirstWrite -1}
		weights_load_10280 {Type I LastRead 0 FirstWrite -1}
		weights_load_10281 {Type I LastRead 0 FirstWrite -1}
		weights_load_10282 {Type I LastRead 0 FirstWrite -1}
		weights_load_10283 {Type I LastRead 0 FirstWrite -1}
		weights_load_10284 {Type I LastRead 0 FirstWrite -1}
		weights_load_10285 {Type I LastRead 0 FirstWrite -1}
		weights_load_10286 {Type I LastRead 0 FirstWrite -1}
		weights_load_10287 {Type I LastRead 0 FirstWrite -1}
		weights_load_10288 {Type I LastRead 0 FirstWrite -1}
		weights_load_10289 {Type I LastRead 0 FirstWrite -1}
		weights_load_10290 {Type I LastRead 0 FirstWrite -1}
		weights_load_10291 {Type I LastRead 0 FirstWrite -1}
		weights_load_10292 {Type I LastRead 0 FirstWrite -1}
		weights_load_10293 {Type I LastRead 0 FirstWrite -1}
		weights_load_10294 {Type I LastRead 0 FirstWrite -1}
		weights_load_10295 {Type I LastRead 0 FirstWrite -1}
		weights_load_10296 {Type I LastRead 0 FirstWrite -1}
		weights_load_10297 {Type I LastRead 0 FirstWrite -1}
		weights_load_10298 {Type I LastRead 0 FirstWrite -1}
		weights_load_10299 {Type I LastRead 0 FirstWrite -1}
		weights_load_10300 {Type I LastRead 0 FirstWrite -1}
		weights_load_10301 {Type I LastRead 0 FirstWrite -1}
		weights_load_10302 {Type I LastRead 0 FirstWrite -1}
		weights_load_10303 {Type I LastRead 0 FirstWrite -1}
		weights_load_10304 {Type I LastRead 0 FirstWrite -1}
		weights_load_10305 {Type I LastRead 0 FirstWrite -1}
		weights_load_10306 {Type I LastRead 0 FirstWrite -1}
		weights_load_10307 {Type I LastRead 0 FirstWrite -1}
		weights_load_10308 {Type I LastRead 0 FirstWrite -1}
		weights_load_10309 {Type I LastRead 0 FirstWrite -1}
		weights_load_10310 {Type I LastRead 0 FirstWrite -1}
		weights_load_10311 {Type I LastRead 0 FirstWrite -1}
		weights_load_10312 {Type I LastRead 0 FirstWrite -1}
		weights_load_10313 {Type I LastRead 0 FirstWrite -1}
		weights_load_10314 {Type I LastRead 0 FirstWrite -1}
		weights_load_10315 {Type I LastRead 0 FirstWrite -1}
		weights_load_10316 {Type I LastRead 0 FirstWrite -1}
		weights_load_10317 {Type I LastRead 0 FirstWrite -1}
		weights_load_10318 {Type I LastRead 0 FirstWrite -1}
		weights_load_10319 {Type I LastRead 0 FirstWrite -1}
		weights_load_10320 {Type I LastRead 0 FirstWrite -1}
		weights_load_10321 {Type I LastRead 0 FirstWrite -1}
		weights_load_10322 {Type I LastRead 0 FirstWrite -1}
		weights_load_10323 {Type I LastRead 0 FirstWrite -1}
		weights_load_10324 {Type I LastRead 0 FirstWrite -1}
		weights_load_10325 {Type I LastRead 0 FirstWrite -1}
		weights_load_10326 {Type I LastRead 0 FirstWrite -1}
		weights_load_10327 {Type I LastRead 0 FirstWrite -1}
		weights_load_10328 {Type I LastRead 0 FirstWrite -1}
		weights_load_10329 {Type I LastRead 0 FirstWrite -1}
		weights_load_10330 {Type I LastRead 0 FirstWrite -1}
		weights_load_10331 {Type I LastRead 0 FirstWrite -1}
		weights_load_10332 {Type I LastRead 0 FirstWrite -1}
		weights_load_10333 {Type I LastRead 0 FirstWrite -1}
		weights_load_10334 {Type I LastRead 0 FirstWrite -1}
		weights_load_10335 {Type I LastRead 0 FirstWrite -1}
		weights_load_10336 {Type I LastRead 0 FirstWrite -1}
		weights_load_10337 {Type I LastRead 0 FirstWrite -1}
		weights_load_10338 {Type I LastRead 0 FirstWrite -1}
		weights_load_10339 {Type I LastRead 0 FirstWrite -1}
		weights_load_10340 {Type I LastRead 0 FirstWrite -1}
		weights_load_10341 {Type I LastRead 0 FirstWrite -1}
		weights_load_10342 {Type I LastRead 0 FirstWrite -1}
		weights_load_10343 {Type I LastRead 0 FirstWrite -1}
		weights_load_10344 {Type I LastRead 0 FirstWrite -1}
		weights_load_10345 {Type I LastRead 0 FirstWrite -1}
		weights_load_10346 {Type I LastRead 0 FirstWrite -1}
		weights_load_10347 {Type I LastRead 0 FirstWrite -1}
		weights_load_10348 {Type I LastRead 0 FirstWrite -1}
		weights_load_10349 {Type I LastRead 0 FirstWrite -1}
		weights_load_10350 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_21 { ap_fifo {  { conv2d_64_padded_window_stream_21_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_21_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_21_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_21_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_21_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_21 { ap_fifo {  { in_channel_map_stream_21_din fifo_port_we 1 32 }  { in_channel_map_stream_21_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_21_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_21_full_n fifo_status 0 1 }  { in_channel_map_stream_21_write fifo_data 1 1 } } }
}
