set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_17
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.17}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_17 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_17 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_17", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_17", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_17_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_17_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_17_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_17_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_17_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_17_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_17_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_17_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_17_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_17_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_17_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_17", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_17_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_17", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_17_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_17", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_17_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_17", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_17_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_17", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_17_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_17", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_17_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_17", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_17_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_17", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_17_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_17", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_17_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_17", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_17",
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
			{"Name" : "conv2d_64_padded_window_stream_17", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_17_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_17", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_17_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_17", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_17_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_17_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_17", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12651", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12652", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12653", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12654", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12655", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12656", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12657", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12658", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_17", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_12659", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12660", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12661", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12662", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12663", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12664", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12665", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12666", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12667", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12668", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12669", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12670", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12671", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12672", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12673", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12674", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12675", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12676", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12677", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12678", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12679", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12680", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12681", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12682", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12683", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12684", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12685", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12686", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12687", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12688", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12689", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12690", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12691", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12692", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12693", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12694", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12695", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12696", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12697", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12698", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12699", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12700", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12701", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12702", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12703", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12704", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12705", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12706", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12707", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12708", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12709", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12710", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12711", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12712", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12713", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12714", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12715", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12716", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12717", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12718", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12719", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12720", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12721", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12722", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12723", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12724", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12725", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12726", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12727", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12728", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12729", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12730", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12731", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12732", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12733", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12734", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12735", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12736", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12737", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12738", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12739", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12740", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12741", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12742", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12743", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12744", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12745", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12746", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12747", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12748", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12749", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12750", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12751", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12752", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12753", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12754", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12755", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12756", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12757", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12758", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12759", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12760", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12761", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12762", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12763", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12764", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12765", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12766", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12767", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12768", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12769", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12770", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12771", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12772", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12773", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12774", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12775", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12776", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12777", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12778", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12779", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12780", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12781", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12782", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12783", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12784", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12785", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12786", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12787", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12788", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12789", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12790", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12791", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12792", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12793", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12794", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12795", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12796", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12797", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12798", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12799", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12800", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12801", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12802", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12803", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12804", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12805", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12806", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12807", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12808", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12809", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12810", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12811", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12812", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12813", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12814", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12815", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12816", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12817", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12818", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12819", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12820", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12821", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12822", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12823", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12824", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12825", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12826", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12827", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12828", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12829", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12830", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12831", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12832", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12833", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12834", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12835", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12836", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12837", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12838", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12839", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12840", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12841", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12842", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12843", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12844", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12845", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12846", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12847", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12848", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12849", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12850", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12851", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12852", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12853", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12854", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12855", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12856", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12857", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12858", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12859", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12860", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12861", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12862", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12863", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12864", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12865", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12866", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12867", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12868", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12869", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12870", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12871", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12872", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12873", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12874", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12875", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12876", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12877", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12878", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12879", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12880", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12881", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12882", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12883", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12884", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12885", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12886", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12887", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12888", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12889", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12890", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12891", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12892", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12893", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12894", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12895", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12896", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12897", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12898", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12899", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12900", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12901", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12902", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12903", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12904", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12905", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12906", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12907", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12908", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12909", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12910", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12911", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12912", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12913", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12914", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12915", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12916", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12917", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12918", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12919", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12920", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12921", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12922", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12923", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12924", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12925", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12926", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12927", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12928", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12929", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12930", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12931", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12932", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12933", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12934", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12935", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12936", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12937", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12938", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12939", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12940", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12941", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12942", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12943", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12944", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12945", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12946", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12947", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12948", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12949", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12950", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12951", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12952", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12953", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12954", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12955", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12956", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12957", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12958", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12959", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12960", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12961", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12962", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12963", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12964", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12965", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12966", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12967", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12968", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12969", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12970", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12971", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12972", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12973", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12974", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12975", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12976", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12977", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12978", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12979", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12980", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12981", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12982", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12983", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12984", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12985", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12986", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12987", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12988", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12989", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12990", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12991", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12992", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12993", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12994", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12995", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12996", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12997", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12998", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12999", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13000", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13001", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13002", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13003", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13004", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13005", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13006", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13007", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13008", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13009", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13010", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13011", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13012", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13013", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13014", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13015", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13016", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13017", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13018", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13019", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13020", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13021", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13022", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13023", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13024", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13025", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13026", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13027", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13028", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13029", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13030", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13031", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13032", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13033", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13034", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13035", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13036", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13037", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13038", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13039", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13040", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13041", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13042", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13043", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13044", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13045", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13046", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13047", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13048", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13049", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13050", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13051", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13052", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13053", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13054", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13055", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13056", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13057", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13058", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13059", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13060", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13061", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13062", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13063", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13064", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13065", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13066", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13067", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13068", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13069", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13070", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13071", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13072", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13073", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13074", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13075", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13076", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13077", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13078", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13079", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13080", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13081", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13082", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13083", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13084", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13085", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13086", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13087", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13088", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13089", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13090", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13091", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13092", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13093", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13094", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13095", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13096", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13097", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13098", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13099", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13100", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13101", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13102", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13103", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13104", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13105", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13106", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13107", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13108", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13109", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13110", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13111", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13112", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13113", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13114", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13115", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13116", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13117", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13118", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13119", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13120", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13121", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13122", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13123", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13124", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13125", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13126", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13127", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13128", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13129", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13130", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13131", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13132", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13133", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13134", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13135", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13136", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13137", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13138", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13139", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13140", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13141", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13142", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13143", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13144", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13145", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13146", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13147", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13148", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13149", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13150", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13151", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13152", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13153", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13154", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13155", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13156", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13157", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13158", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13159", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13160", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13161", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13162", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13163", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13164", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13165", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13166", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13167", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13168", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13169", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13170", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13171", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13172", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13173", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13174", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13175", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13176", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13177", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13178", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13179", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13180", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13181", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13182", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13183", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13184", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13185", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13186", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13187", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13188", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13189", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13190", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13191", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13192", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13193", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13194", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13195", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13196", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13197", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13198", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13199", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13200", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13201", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13202", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13203", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13204", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13205", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13206", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13207", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13208", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13209", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13210", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13211", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13212", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13213", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13214", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13215", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13216", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13217", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13218", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13219", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13220", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13221", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13222", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13223", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13224", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13225", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_17_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U10722", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_17_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U10723", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_17_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U10724", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_17_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U10725", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_17_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U10726", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_17_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U10727", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_17_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U10728", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_17_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U10729", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_17_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U10730", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_17_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U10731", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_17_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U10732", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_17_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U10733", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_17_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U10734", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_17_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U10735", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_17_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U10736", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_17_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U10737", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_17_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U10738", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_17_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_17 {
		conv2d_64_padded_window_stream_17 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_17 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_17_Pipeline_inputs {
		conv2d_64_padded_window_stream_17 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_12651 {Type I LastRead 0 FirstWrite -1}
		weights_load_12652 {Type I LastRead 0 FirstWrite -1}
		weights_load_12653 {Type I LastRead 0 FirstWrite -1}
		weights_load_12654 {Type I LastRead 0 FirstWrite -1}
		weights_load_12655 {Type I LastRead 0 FirstWrite -1}
		weights_load_12656 {Type I LastRead 0 FirstWrite -1}
		weights_load_12657 {Type I LastRead 0 FirstWrite -1}
		weights_load_12658 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_17 {Type O LastRead -1 FirstWrite 16}
		weights_load_12659 {Type I LastRead 0 FirstWrite -1}
		weights_load_12660 {Type I LastRead 0 FirstWrite -1}
		weights_load_12661 {Type I LastRead 0 FirstWrite -1}
		weights_load_12662 {Type I LastRead 0 FirstWrite -1}
		weights_load_12663 {Type I LastRead 0 FirstWrite -1}
		weights_load_12664 {Type I LastRead 0 FirstWrite -1}
		weights_load_12665 {Type I LastRead 0 FirstWrite -1}
		weights_load_12666 {Type I LastRead 0 FirstWrite -1}
		weights_load_12667 {Type I LastRead 0 FirstWrite -1}
		weights_load_12668 {Type I LastRead 0 FirstWrite -1}
		weights_load_12669 {Type I LastRead 0 FirstWrite -1}
		weights_load_12670 {Type I LastRead 0 FirstWrite -1}
		weights_load_12671 {Type I LastRead 0 FirstWrite -1}
		weights_load_12672 {Type I LastRead 0 FirstWrite -1}
		weights_load_12673 {Type I LastRead 0 FirstWrite -1}
		weights_load_12674 {Type I LastRead 0 FirstWrite -1}
		weights_load_12675 {Type I LastRead 0 FirstWrite -1}
		weights_load_12676 {Type I LastRead 0 FirstWrite -1}
		weights_load_12677 {Type I LastRead 0 FirstWrite -1}
		weights_load_12678 {Type I LastRead 0 FirstWrite -1}
		weights_load_12679 {Type I LastRead 0 FirstWrite -1}
		weights_load_12680 {Type I LastRead 0 FirstWrite -1}
		weights_load_12681 {Type I LastRead 0 FirstWrite -1}
		weights_load_12682 {Type I LastRead 0 FirstWrite -1}
		weights_load_12683 {Type I LastRead 0 FirstWrite -1}
		weights_load_12684 {Type I LastRead 0 FirstWrite -1}
		weights_load_12685 {Type I LastRead 0 FirstWrite -1}
		weights_load_12686 {Type I LastRead 0 FirstWrite -1}
		weights_load_12687 {Type I LastRead 0 FirstWrite -1}
		weights_load_12688 {Type I LastRead 0 FirstWrite -1}
		weights_load_12689 {Type I LastRead 0 FirstWrite -1}
		weights_load_12690 {Type I LastRead 0 FirstWrite -1}
		weights_load_12691 {Type I LastRead 0 FirstWrite -1}
		weights_load_12692 {Type I LastRead 0 FirstWrite -1}
		weights_load_12693 {Type I LastRead 0 FirstWrite -1}
		weights_load_12694 {Type I LastRead 0 FirstWrite -1}
		weights_load_12695 {Type I LastRead 0 FirstWrite -1}
		weights_load_12696 {Type I LastRead 0 FirstWrite -1}
		weights_load_12697 {Type I LastRead 0 FirstWrite -1}
		weights_load_12698 {Type I LastRead 0 FirstWrite -1}
		weights_load_12699 {Type I LastRead 0 FirstWrite -1}
		weights_load_12700 {Type I LastRead 0 FirstWrite -1}
		weights_load_12701 {Type I LastRead 0 FirstWrite -1}
		weights_load_12702 {Type I LastRead 0 FirstWrite -1}
		weights_load_12703 {Type I LastRead 0 FirstWrite -1}
		weights_load_12704 {Type I LastRead 0 FirstWrite -1}
		weights_load_12705 {Type I LastRead 0 FirstWrite -1}
		weights_load_12706 {Type I LastRead 0 FirstWrite -1}
		weights_load_12707 {Type I LastRead 0 FirstWrite -1}
		weights_load_12708 {Type I LastRead 0 FirstWrite -1}
		weights_load_12709 {Type I LastRead 0 FirstWrite -1}
		weights_load_12710 {Type I LastRead 0 FirstWrite -1}
		weights_load_12711 {Type I LastRead 0 FirstWrite -1}
		weights_load_12712 {Type I LastRead 0 FirstWrite -1}
		weights_load_12713 {Type I LastRead 0 FirstWrite -1}
		weights_load_12714 {Type I LastRead 0 FirstWrite -1}
		weights_load_12715 {Type I LastRead 0 FirstWrite -1}
		weights_load_12716 {Type I LastRead 0 FirstWrite -1}
		weights_load_12717 {Type I LastRead 0 FirstWrite -1}
		weights_load_12718 {Type I LastRead 0 FirstWrite -1}
		weights_load_12719 {Type I LastRead 0 FirstWrite -1}
		weights_load_12720 {Type I LastRead 0 FirstWrite -1}
		weights_load_12721 {Type I LastRead 0 FirstWrite -1}
		weights_load_12722 {Type I LastRead 0 FirstWrite -1}
		weights_load_12723 {Type I LastRead 0 FirstWrite -1}
		weights_load_12724 {Type I LastRead 0 FirstWrite -1}
		weights_load_12725 {Type I LastRead 0 FirstWrite -1}
		weights_load_12726 {Type I LastRead 0 FirstWrite -1}
		weights_load_12727 {Type I LastRead 0 FirstWrite -1}
		weights_load_12728 {Type I LastRead 0 FirstWrite -1}
		weights_load_12729 {Type I LastRead 0 FirstWrite -1}
		weights_load_12730 {Type I LastRead 0 FirstWrite -1}
		weights_load_12731 {Type I LastRead 0 FirstWrite -1}
		weights_load_12732 {Type I LastRead 0 FirstWrite -1}
		weights_load_12733 {Type I LastRead 0 FirstWrite -1}
		weights_load_12734 {Type I LastRead 0 FirstWrite -1}
		weights_load_12735 {Type I LastRead 0 FirstWrite -1}
		weights_load_12736 {Type I LastRead 0 FirstWrite -1}
		weights_load_12737 {Type I LastRead 0 FirstWrite -1}
		weights_load_12738 {Type I LastRead 0 FirstWrite -1}
		weights_load_12739 {Type I LastRead 0 FirstWrite -1}
		weights_load_12740 {Type I LastRead 0 FirstWrite -1}
		weights_load_12741 {Type I LastRead 0 FirstWrite -1}
		weights_load_12742 {Type I LastRead 0 FirstWrite -1}
		weights_load_12743 {Type I LastRead 0 FirstWrite -1}
		weights_load_12744 {Type I LastRead 0 FirstWrite -1}
		weights_load_12745 {Type I LastRead 0 FirstWrite -1}
		weights_load_12746 {Type I LastRead 0 FirstWrite -1}
		weights_load_12747 {Type I LastRead 0 FirstWrite -1}
		weights_load_12748 {Type I LastRead 0 FirstWrite -1}
		weights_load_12749 {Type I LastRead 0 FirstWrite -1}
		weights_load_12750 {Type I LastRead 0 FirstWrite -1}
		weights_load_12751 {Type I LastRead 0 FirstWrite -1}
		weights_load_12752 {Type I LastRead 0 FirstWrite -1}
		weights_load_12753 {Type I LastRead 0 FirstWrite -1}
		weights_load_12754 {Type I LastRead 0 FirstWrite -1}
		weights_load_12755 {Type I LastRead 0 FirstWrite -1}
		weights_load_12756 {Type I LastRead 0 FirstWrite -1}
		weights_load_12757 {Type I LastRead 0 FirstWrite -1}
		weights_load_12758 {Type I LastRead 0 FirstWrite -1}
		weights_load_12759 {Type I LastRead 0 FirstWrite -1}
		weights_load_12760 {Type I LastRead 0 FirstWrite -1}
		weights_load_12761 {Type I LastRead 0 FirstWrite -1}
		weights_load_12762 {Type I LastRead 0 FirstWrite -1}
		weights_load_12763 {Type I LastRead 0 FirstWrite -1}
		weights_load_12764 {Type I LastRead 0 FirstWrite -1}
		weights_load_12765 {Type I LastRead 0 FirstWrite -1}
		weights_load_12766 {Type I LastRead 0 FirstWrite -1}
		weights_load_12767 {Type I LastRead 0 FirstWrite -1}
		weights_load_12768 {Type I LastRead 0 FirstWrite -1}
		weights_load_12769 {Type I LastRead 0 FirstWrite -1}
		weights_load_12770 {Type I LastRead 0 FirstWrite -1}
		weights_load_12771 {Type I LastRead 0 FirstWrite -1}
		weights_load_12772 {Type I LastRead 0 FirstWrite -1}
		weights_load_12773 {Type I LastRead 0 FirstWrite -1}
		weights_load_12774 {Type I LastRead 0 FirstWrite -1}
		weights_load_12775 {Type I LastRead 0 FirstWrite -1}
		weights_load_12776 {Type I LastRead 0 FirstWrite -1}
		weights_load_12777 {Type I LastRead 0 FirstWrite -1}
		weights_load_12778 {Type I LastRead 0 FirstWrite -1}
		weights_load_12779 {Type I LastRead 0 FirstWrite -1}
		weights_load_12780 {Type I LastRead 0 FirstWrite -1}
		weights_load_12781 {Type I LastRead 0 FirstWrite -1}
		weights_load_12782 {Type I LastRead 0 FirstWrite -1}
		weights_load_12783 {Type I LastRead 0 FirstWrite -1}
		weights_load_12784 {Type I LastRead 0 FirstWrite -1}
		weights_load_12785 {Type I LastRead 0 FirstWrite -1}
		weights_load_12786 {Type I LastRead 0 FirstWrite -1}
		weights_load_12787 {Type I LastRead 0 FirstWrite -1}
		weights_load_12788 {Type I LastRead 0 FirstWrite -1}
		weights_load_12789 {Type I LastRead 0 FirstWrite -1}
		weights_load_12790 {Type I LastRead 0 FirstWrite -1}
		weights_load_12791 {Type I LastRead 0 FirstWrite -1}
		weights_load_12792 {Type I LastRead 0 FirstWrite -1}
		weights_load_12793 {Type I LastRead 0 FirstWrite -1}
		weights_load_12794 {Type I LastRead 0 FirstWrite -1}
		weights_load_12795 {Type I LastRead 0 FirstWrite -1}
		weights_load_12796 {Type I LastRead 0 FirstWrite -1}
		weights_load_12797 {Type I LastRead 0 FirstWrite -1}
		weights_load_12798 {Type I LastRead 0 FirstWrite -1}
		weights_load_12799 {Type I LastRead 0 FirstWrite -1}
		weights_load_12800 {Type I LastRead 0 FirstWrite -1}
		weights_load_12801 {Type I LastRead 0 FirstWrite -1}
		weights_load_12802 {Type I LastRead 0 FirstWrite -1}
		weights_load_12803 {Type I LastRead 0 FirstWrite -1}
		weights_load_12804 {Type I LastRead 0 FirstWrite -1}
		weights_load_12805 {Type I LastRead 0 FirstWrite -1}
		weights_load_12806 {Type I LastRead 0 FirstWrite -1}
		weights_load_12807 {Type I LastRead 0 FirstWrite -1}
		weights_load_12808 {Type I LastRead 0 FirstWrite -1}
		weights_load_12809 {Type I LastRead 0 FirstWrite -1}
		weights_load_12810 {Type I LastRead 0 FirstWrite -1}
		weights_load_12811 {Type I LastRead 0 FirstWrite -1}
		weights_load_12812 {Type I LastRead 0 FirstWrite -1}
		weights_load_12813 {Type I LastRead 0 FirstWrite -1}
		weights_load_12814 {Type I LastRead 0 FirstWrite -1}
		weights_load_12815 {Type I LastRead 0 FirstWrite -1}
		weights_load_12816 {Type I LastRead 0 FirstWrite -1}
		weights_load_12817 {Type I LastRead 0 FirstWrite -1}
		weights_load_12818 {Type I LastRead 0 FirstWrite -1}
		weights_load_12819 {Type I LastRead 0 FirstWrite -1}
		weights_load_12820 {Type I LastRead 0 FirstWrite -1}
		weights_load_12821 {Type I LastRead 0 FirstWrite -1}
		weights_load_12822 {Type I LastRead 0 FirstWrite -1}
		weights_load_12823 {Type I LastRead 0 FirstWrite -1}
		weights_load_12824 {Type I LastRead 0 FirstWrite -1}
		weights_load_12825 {Type I LastRead 0 FirstWrite -1}
		weights_load_12826 {Type I LastRead 0 FirstWrite -1}
		weights_load_12827 {Type I LastRead 0 FirstWrite -1}
		weights_load_12828 {Type I LastRead 0 FirstWrite -1}
		weights_load_12829 {Type I LastRead 0 FirstWrite -1}
		weights_load_12830 {Type I LastRead 0 FirstWrite -1}
		weights_load_12831 {Type I LastRead 0 FirstWrite -1}
		weights_load_12832 {Type I LastRead 0 FirstWrite -1}
		weights_load_12833 {Type I LastRead 0 FirstWrite -1}
		weights_load_12834 {Type I LastRead 0 FirstWrite -1}
		weights_load_12835 {Type I LastRead 0 FirstWrite -1}
		weights_load_12836 {Type I LastRead 0 FirstWrite -1}
		weights_load_12837 {Type I LastRead 0 FirstWrite -1}
		weights_load_12838 {Type I LastRead 0 FirstWrite -1}
		weights_load_12839 {Type I LastRead 0 FirstWrite -1}
		weights_load_12840 {Type I LastRead 0 FirstWrite -1}
		weights_load_12841 {Type I LastRead 0 FirstWrite -1}
		weights_load_12842 {Type I LastRead 0 FirstWrite -1}
		weights_load_12843 {Type I LastRead 0 FirstWrite -1}
		weights_load_12844 {Type I LastRead 0 FirstWrite -1}
		weights_load_12845 {Type I LastRead 0 FirstWrite -1}
		weights_load_12846 {Type I LastRead 0 FirstWrite -1}
		weights_load_12847 {Type I LastRead 0 FirstWrite -1}
		weights_load_12848 {Type I LastRead 0 FirstWrite -1}
		weights_load_12849 {Type I LastRead 0 FirstWrite -1}
		weights_load_12850 {Type I LastRead 0 FirstWrite -1}
		weights_load_12851 {Type I LastRead 0 FirstWrite -1}
		weights_load_12852 {Type I LastRead 0 FirstWrite -1}
		weights_load_12853 {Type I LastRead 0 FirstWrite -1}
		weights_load_12854 {Type I LastRead 0 FirstWrite -1}
		weights_load_12855 {Type I LastRead 0 FirstWrite -1}
		weights_load_12856 {Type I LastRead 0 FirstWrite -1}
		weights_load_12857 {Type I LastRead 0 FirstWrite -1}
		weights_load_12858 {Type I LastRead 0 FirstWrite -1}
		weights_load_12859 {Type I LastRead 0 FirstWrite -1}
		weights_load_12860 {Type I LastRead 0 FirstWrite -1}
		weights_load_12861 {Type I LastRead 0 FirstWrite -1}
		weights_load_12862 {Type I LastRead 0 FirstWrite -1}
		weights_load_12863 {Type I LastRead 0 FirstWrite -1}
		weights_load_12864 {Type I LastRead 0 FirstWrite -1}
		weights_load_12865 {Type I LastRead 0 FirstWrite -1}
		weights_load_12866 {Type I LastRead 0 FirstWrite -1}
		weights_load_12867 {Type I LastRead 0 FirstWrite -1}
		weights_load_12868 {Type I LastRead 0 FirstWrite -1}
		weights_load_12869 {Type I LastRead 0 FirstWrite -1}
		weights_load_12870 {Type I LastRead 0 FirstWrite -1}
		weights_load_12871 {Type I LastRead 0 FirstWrite -1}
		weights_load_12872 {Type I LastRead 0 FirstWrite -1}
		weights_load_12873 {Type I LastRead 0 FirstWrite -1}
		weights_load_12874 {Type I LastRead 0 FirstWrite -1}
		weights_load_12875 {Type I LastRead 0 FirstWrite -1}
		weights_load_12876 {Type I LastRead 0 FirstWrite -1}
		weights_load_12877 {Type I LastRead 0 FirstWrite -1}
		weights_load_12878 {Type I LastRead 0 FirstWrite -1}
		weights_load_12879 {Type I LastRead 0 FirstWrite -1}
		weights_load_12880 {Type I LastRead 0 FirstWrite -1}
		weights_load_12881 {Type I LastRead 0 FirstWrite -1}
		weights_load_12882 {Type I LastRead 0 FirstWrite -1}
		weights_load_12883 {Type I LastRead 0 FirstWrite -1}
		weights_load_12884 {Type I LastRead 0 FirstWrite -1}
		weights_load_12885 {Type I LastRead 0 FirstWrite -1}
		weights_load_12886 {Type I LastRead 0 FirstWrite -1}
		weights_load_12887 {Type I LastRead 0 FirstWrite -1}
		weights_load_12888 {Type I LastRead 0 FirstWrite -1}
		weights_load_12889 {Type I LastRead 0 FirstWrite -1}
		weights_load_12890 {Type I LastRead 0 FirstWrite -1}
		weights_load_12891 {Type I LastRead 0 FirstWrite -1}
		weights_load_12892 {Type I LastRead 0 FirstWrite -1}
		weights_load_12893 {Type I LastRead 0 FirstWrite -1}
		weights_load_12894 {Type I LastRead 0 FirstWrite -1}
		weights_load_12895 {Type I LastRead 0 FirstWrite -1}
		weights_load_12896 {Type I LastRead 0 FirstWrite -1}
		weights_load_12897 {Type I LastRead 0 FirstWrite -1}
		weights_load_12898 {Type I LastRead 0 FirstWrite -1}
		weights_load_12899 {Type I LastRead 0 FirstWrite -1}
		weights_load_12900 {Type I LastRead 0 FirstWrite -1}
		weights_load_12901 {Type I LastRead 0 FirstWrite -1}
		weights_load_12902 {Type I LastRead 0 FirstWrite -1}
		weights_load_12903 {Type I LastRead 0 FirstWrite -1}
		weights_load_12904 {Type I LastRead 0 FirstWrite -1}
		weights_load_12905 {Type I LastRead 0 FirstWrite -1}
		weights_load_12906 {Type I LastRead 0 FirstWrite -1}
		weights_load_12907 {Type I LastRead 0 FirstWrite -1}
		weights_load_12908 {Type I LastRead 0 FirstWrite -1}
		weights_load_12909 {Type I LastRead 0 FirstWrite -1}
		weights_load_12910 {Type I LastRead 0 FirstWrite -1}
		weights_load_12911 {Type I LastRead 0 FirstWrite -1}
		weights_load_12912 {Type I LastRead 0 FirstWrite -1}
		weights_load_12913 {Type I LastRead 0 FirstWrite -1}
		weights_load_12914 {Type I LastRead 0 FirstWrite -1}
		weights_load_12915 {Type I LastRead 0 FirstWrite -1}
		weights_load_12916 {Type I LastRead 0 FirstWrite -1}
		weights_load_12917 {Type I LastRead 0 FirstWrite -1}
		weights_load_12918 {Type I LastRead 0 FirstWrite -1}
		weights_load_12919 {Type I LastRead 0 FirstWrite -1}
		weights_load_12920 {Type I LastRead 0 FirstWrite -1}
		weights_load_12921 {Type I LastRead 0 FirstWrite -1}
		weights_load_12922 {Type I LastRead 0 FirstWrite -1}
		weights_load_12923 {Type I LastRead 0 FirstWrite -1}
		weights_load_12924 {Type I LastRead 0 FirstWrite -1}
		weights_load_12925 {Type I LastRead 0 FirstWrite -1}
		weights_load_12926 {Type I LastRead 0 FirstWrite -1}
		weights_load_12927 {Type I LastRead 0 FirstWrite -1}
		weights_load_12928 {Type I LastRead 0 FirstWrite -1}
		weights_load_12929 {Type I LastRead 0 FirstWrite -1}
		weights_load_12930 {Type I LastRead 0 FirstWrite -1}
		weights_load_12931 {Type I LastRead 0 FirstWrite -1}
		weights_load_12932 {Type I LastRead 0 FirstWrite -1}
		weights_load_12933 {Type I LastRead 0 FirstWrite -1}
		weights_load_12934 {Type I LastRead 0 FirstWrite -1}
		weights_load_12935 {Type I LastRead 0 FirstWrite -1}
		weights_load_12936 {Type I LastRead 0 FirstWrite -1}
		weights_load_12937 {Type I LastRead 0 FirstWrite -1}
		weights_load_12938 {Type I LastRead 0 FirstWrite -1}
		weights_load_12939 {Type I LastRead 0 FirstWrite -1}
		weights_load_12940 {Type I LastRead 0 FirstWrite -1}
		weights_load_12941 {Type I LastRead 0 FirstWrite -1}
		weights_load_12942 {Type I LastRead 0 FirstWrite -1}
		weights_load_12943 {Type I LastRead 0 FirstWrite -1}
		weights_load_12944 {Type I LastRead 0 FirstWrite -1}
		weights_load_12945 {Type I LastRead 0 FirstWrite -1}
		weights_load_12946 {Type I LastRead 0 FirstWrite -1}
		weights_load_12947 {Type I LastRead 0 FirstWrite -1}
		weights_load_12948 {Type I LastRead 0 FirstWrite -1}
		weights_load_12949 {Type I LastRead 0 FirstWrite -1}
		weights_load_12950 {Type I LastRead 0 FirstWrite -1}
		weights_load_12951 {Type I LastRead 0 FirstWrite -1}
		weights_load_12952 {Type I LastRead 0 FirstWrite -1}
		weights_load_12953 {Type I LastRead 0 FirstWrite -1}
		weights_load_12954 {Type I LastRead 0 FirstWrite -1}
		weights_load_12955 {Type I LastRead 0 FirstWrite -1}
		weights_load_12956 {Type I LastRead 0 FirstWrite -1}
		weights_load_12957 {Type I LastRead 0 FirstWrite -1}
		weights_load_12958 {Type I LastRead 0 FirstWrite -1}
		weights_load_12959 {Type I LastRead 0 FirstWrite -1}
		weights_load_12960 {Type I LastRead 0 FirstWrite -1}
		weights_load_12961 {Type I LastRead 0 FirstWrite -1}
		weights_load_12962 {Type I LastRead 0 FirstWrite -1}
		weights_load_12963 {Type I LastRead 0 FirstWrite -1}
		weights_load_12964 {Type I LastRead 0 FirstWrite -1}
		weights_load_12965 {Type I LastRead 0 FirstWrite -1}
		weights_load_12966 {Type I LastRead 0 FirstWrite -1}
		weights_load_12967 {Type I LastRead 0 FirstWrite -1}
		weights_load_12968 {Type I LastRead 0 FirstWrite -1}
		weights_load_12969 {Type I LastRead 0 FirstWrite -1}
		weights_load_12970 {Type I LastRead 0 FirstWrite -1}
		weights_load_12971 {Type I LastRead 0 FirstWrite -1}
		weights_load_12972 {Type I LastRead 0 FirstWrite -1}
		weights_load_12973 {Type I LastRead 0 FirstWrite -1}
		weights_load_12974 {Type I LastRead 0 FirstWrite -1}
		weights_load_12975 {Type I LastRead 0 FirstWrite -1}
		weights_load_12976 {Type I LastRead 0 FirstWrite -1}
		weights_load_12977 {Type I LastRead 0 FirstWrite -1}
		weights_load_12978 {Type I LastRead 0 FirstWrite -1}
		weights_load_12979 {Type I LastRead 0 FirstWrite -1}
		weights_load_12980 {Type I LastRead 0 FirstWrite -1}
		weights_load_12981 {Type I LastRead 0 FirstWrite -1}
		weights_load_12982 {Type I LastRead 0 FirstWrite -1}
		weights_load_12983 {Type I LastRead 0 FirstWrite -1}
		weights_load_12984 {Type I LastRead 0 FirstWrite -1}
		weights_load_12985 {Type I LastRead 0 FirstWrite -1}
		weights_load_12986 {Type I LastRead 0 FirstWrite -1}
		weights_load_12987 {Type I LastRead 0 FirstWrite -1}
		weights_load_12988 {Type I LastRead 0 FirstWrite -1}
		weights_load_12989 {Type I LastRead 0 FirstWrite -1}
		weights_load_12990 {Type I LastRead 0 FirstWrite -1}
		weights_load_12991 {Type I LastRead 0 FirstWrite -1}
		weights_load_12992 {Type I LastRead 0 FirstWrite -1}
		weights_load_12993 {Type I LastRead 0 FirstWrite -1}
		weights_load_12994 {Type I LastRead 0 FirstWrite -1}
		weights_load_12995 {Type I LastRead 0 FirstWrite -1}
		weights_load_12996 {Type I LastRead 0 FirstWrite -1}
		weights_load_12997 {Type I LastRead 0 FirstWrite -1}
		weights_load_12998 {Type I LastRead 0 FirstWrite -1}
		weights_load_12999 {Type I LastRead 0 FirstWrite -1}
		weights_load_13000 {Type I LastRead 0 FirstWrite -1}
		weights_load_13001 {Type I LastRead 0 FirstWrite -1}
		weights_load_13002 {Type I LastRead 0 FirstWrite -1}
		weights_load_13003 {Type I LastRead 0 FirstWrite -1}
		weights_load_13004 {Type I LastRead 0 FirstWrite -1}
		weights_load_13005 {Type I LastRead 0 FirstWrite -1}
		weights_load_13006 {Type I LastRead 0 FirstWrite -1}
		weights_load_13007 {Type I LastRead 0 FirstWrite -1}
		weights_load_13008 {Type I LastRead 0 FirstWrite -1}
		weights_load_13009 {Type I LastRead 0 FirstWrite -1}
		weights_load_13010 {Type I LastRead 0 FirstWrite -1}
		weights_load_13011 {Type I LastRead 0 FirstWrite -1}
		weights_load_13012 {Type I LastRead 0 FirstWrite -1}
		weights_load_13013 {Type I LastRead 0 FirstWrite -1}
		weights_load_13014 {Type I LastRead 0 FirstWrite -1}
		weights_load_13015 {Type I LastRead 0 FirstWrite -1}
		weights_load_13016 {Type I LastRead 0 FirstWrite -1}
		weights_load_13017 {Type I LastRead 0 FirstWrite -1}
		weights_load_13018 {Type I LastRead 0 FirstWrite -1}
		weights_load_13019 {Type I LastRead 0 FirstWrite -1}
		weights_load_13020 {Type I LastRead 0 FirstWrite -1}
		weights_load_13021 {Type I LastRead 0 FirstWrite -1}
		weights_load_13022 {Type I LastRead 0 FirstWrite -1}
		weights_load_13023 {Type I LastRead 0 FirstWrite -1}
		weights_load_13024 {Type I LastRead 0 FirstWrite -1}
		weights_load_13025 {Type I LastRead 0 FirstWrite -1}
		weights_load_13026 {Type I LastRead 0 FirstWrite -1}
		weights_load_13027 {Type I LastRead 0 FirstWrite -1}
		weights_load_13028 {Type I LastRead 0 FirstWrite -1}
		weights_load_13029 {Type I LastRead 0 FirstWrite -1}
		weights_load_13030 {Type I LastRead 0 FirstWrite -1}
		weights_load_13031 {Type I LastRead 0 FirstWrite -1}
		weights_load_13032 {Type I LastRead 0 FirstWrite -1}
		weights_load_13033 {Type I LastRead 0 FirstWrite -1}
		weights_load_13034 {Type I LastRead 0 FirstWrite -1}
		weights_load_13035 {Type I LastRead 0 FirstWrite -1}
		weights_load_13036 {Type I LastRead 0 FirstWrite -1}
		weights_load_13037 {Type I LastRead 0 FirstWrite -1}
		weights_load_13038 {Type I LastRead 0 FirstWrite -1}
		weights_load_13039 {Type I LastRead 0 FirstWrite -1}
		weights_load_13040 {Type I LastRead 0 FirstWrite -1}
		weights_load_13041 {Type I LastRead 0 FirstWrite -1}
		weights_load_13042 {Type I LastRead 0 FirstWrite -1}
		weights_load_13043 {Type I LastRead 0 FirstWrite -1}
		weights_load_13044 {Type I LastRead 0 FirstWrite -1}
		weights_load_13045 {Type I LastRead 0 FirstWrite -1}
		weights_load_13046 {Type I LastRead 0 FirstWrite -1}
		weights_load_13047 {Type I LastRead 0 FirstWrite -1}
		weights_load_13048 {Type I LastRead 0 FirstWrite -1}
		weights_load_13049 {Type I LastRead 0 FirstWrite -1}
		weights_load_13050 {Type I LastRead 0 FirstWrite -1}
		weights_load_13051 {Type I LastRead 0 FirstWrite -1}
		weights_load_13052 {Type I LastRead 0 FirstWrite -1}
		weights_load_13053 {Type I LastRead 0 FirstWrite -1}
		weights_load_13054 {Type I LastRead 0 FirstWrite -1}
		weights_load_13055 {Type I LastRead 0 FirstWrite -1}
		weights_load_13056 {Type I LastRead 0 FirstWrite -1}
		weights_load_13057 {Type I LastRead 0 FirstWrite -1}
		weights_load_13058 {Type I LastRead 0 FirstWrite -1}
		weights_load_13059 {Type I LastRead 0 FirstWrite -1}
		weights_load_13060 {Type I LastRead 0 FirstWrite -1}
		weights_load_13061 {Type I LastRead 0 FirstWrite -1}
		weights_load_13062 {Type I LastRead 0 FirstWrite -1}
		weights_load_13063 {Type I LastRead 0 FirstWrite -1}
		weights_load_13064 {Type I LastRead 0 FirstWrite -1}
		weights_load_13065 {Type I LastRead 0 FirstWrite -1}
		weights_load_13066 {Type I LastRead 0 FirstWrite -1}
		weights_load_13067 {Type I LastRead 0 FirstWrite -1}
		weights_load_13068 {Type I LastRead 0 FirstWrite -1}
		weights_load_13069 {Type I LastRead 0 FirstWrite -1}
		weights_load_13070 {Type I LastRead 0 FirstWrite -1}
		weights_load_13071 {Type I LastRead 0 FirstWrite -1}
		weights_load_13072 {Type I LastRead 0 FirstWrite -1}
		weights_load_13073 {Type I LastRead 0 FirstWrite -1}
		weights_load_13074 {Type I LastRead 0 FirstWrite -1}
		weights_load_13075 {Type I LastRead 0 FirstWrite -1}
		weights_load_13076 {Type I LastRead 0 FirstWrite -1}
		weights_load_13077 {Type I LastRead 0 FirstWrite -1}
		weights_load_13078 {Type I LastRead 0 FirstWrite -1}
		weights_load_13079 {Type I LastRead 0 FirstWrite -1}
		weights_load_13080 {Type I LastRead 0 FirstWrite -1}
		weights_load_13081 {Type I LastRead 0 FirstWrite -1}
		weights_load_13082 {Type I LastRead 0 FirstWrite -1}
		weights_load_13083 {Type I LastRead 0 FirstWrite -1}
		weights_load_13084 {Type I LastRead 0 FirstWrite -1}
		weights_load_13085 {Type I LastRead 0 FirstWrite -1}
		weights_load_13086 {Type I LastRead 0 FirstWrite -1}
		weights_load_13087 {Type I LastRead 0 FirstWrite -1}
		weights_load_13088 {Type I LastRead 0 FirstWrite -1}
		weights_load_13089 {Type I LastRead 0 FirstWrite -1}
		weights_load_13090 {Type I LastRead 0 FirstWrite -1}
		weights_load_13091 {Type I LastRead 0 FirstWrite -1}
		weights_load_13092 {Type I LastRead 0 FirstWrite -1}
		weights_load_13093 {Type I LastRead 0 FirstWrite -1}
		weights_load_13094 {Type I LastRead 0 FirstWrite -1}
		weights_load_13095 {Type I LastRead 0 FirstWrite -1}
		weights_load_13096 {Type I LastRead 0 FirstWrite -1}
		weights_load_13097 {Type I LastRead 0 FirstWrite -1}
		weights_load_13098 {Type I LastRead 0 FirstWrite -1}
		weights_load_13099 {Type I LastRead 0 FirstWrite -1}
		weights_load_13100 {Type I LastRead 0 FirstWrite -1}
		weights_load_13101 {Type I LastRead 0 FirstWrite -1}
		weights_load_13102 {Type I LastRead 0 FirstWrite -1}
		weights_load_13103 {Type I LastRead 0 FirstWrite -1}
		weights_load_13104 {Type I LastRead 0 FirstWrite -1}
		weights_load_13105 {Type I LastRead 0 FirstWrite -1}
		weights_load_13106 {Type I LastRead 0 FirstWrite -1}
		weights_load_13107 {Type I LastRead 0 FirstWrite -1}
		weights_load_13108 {Type I LastRead 0 FirstWrite -1}
		weights_load_13109 {Type I LastRead 0 FirstWrite -1}
		weights_load_13110 {Type I LastRead 0 FirstWrite -1}
		weights_load_13111 {Type I LastRead 0 FirstWrite -1}
		weights_load_13112 {Type I LastRead 0 FirstWrite -1}
		weights_load_13113 {Type I LastRead 0 FirstWrite -1}
		weights_load_13114 {Type I LastRead 0 FirstWrite -1}
		weights_load_13115 {Type I LastRead 0 FirstWrite -1}
		weights_load_13116 {Type I LastRead 0 FirstWrite -1}
		weights_load_13117 {Type I LastRead 0 FirstWrite -1}
		weights_load_13118 {Type I LastRead 0 FirstWrite -1}
		weights_load_13119 {Type I LastRead 0 FirstWrite -1}
		weights_load_13120 {Type I LastRead 0 FirstWrite -1}
		weights_load_13121 {Type I LastRead 0 FirstWrite -1}
		weights_load_13122 {Type I LastRead 0 FirstWrite -1}
		weights_load_13123 {Type I LastRead 0 FirstWrite -1}
		weights_load_13124 {Type I LastRead 0 FirstWrite -1}
		weights_load_13125 {Type I LastRead 0 FirstWrite -1}
		weights_load_13126 {Type I LastRead 0 FirstWrite -1}
		weights_load_13127 {Type I LastRead 0 FirstWrite -1}
		weights_load_13128 {Type I LastRead 0 FirstWrite -1}
		weights_load_13129 {Type I LastRead 0 FirstWrite -1}
		weights_load_13130 {Type I LastRead 0 FirstWrite -1}
		weights_load_13131 {Type I LastRead 0 FirstWrite -1}
		weights_load_13132 {Type I LastRead 0 FirstWrite -1}
		weights_load_13133 {Type I LastRead 0 FirstWrite -1}
		weights_load_13134 {Type I LastRead 0 FirstWrite -1}
		weights_load_13135 {Type I LastRead 0 FirstWrite -1}
		weights_load_13136 {Type I LastRead 0 FirstWrite -1}
		weights_load_13137 {Type I LastRead 0 FirstWrite -1}
		weights_load_13138 {Type I LastRead 0 FirstWrite -1}
		weights_load_13139 {Type I LastRead 0 FirstWrite -1}
		weights_load_13140 {Type I LastRead 0 FirstWrite -1}
		weights_load_13141 {Type I LastRead 0 FirstWrite -1}
		weights_load_13142 {Type I LastRead 0 FirstWrite -1}
		weights_load_13143 {Type I LastRead 0 FirstWrite -1}
		weights_load_13144 {Type I LastRead 0 FirstWrite -1}
		weights_load_13145 {Type I LastRead 0 FirstWrite -1}
		weights_load_13146 {Type I LastRead 0 FirstWrite -1}
		weights_load_13147 {Type I LastRead 0 FirstWrite -1}
		weights_load_13148 {Type I LastRead 0 FirstWrite -1}
		weights_load_13149 {Type I LastRead 0 FirstWrite -1}
		weights_load_13150 {Type I LastRead 0 FirstWrite -1}
		weights_load_13151 {Type I LastRead 0 FirstWrite -1}
		weights_load_13152 {Type I LastRead 0 FirstWrite -1}
		weights_load_13153 {Type I LastRead 0 FirstWrite -1}
		weights_load_13154 {Type I LastRead 0 FirstWrite -1}
		weights_load_13155 {Type I LastRead 0 FirstWrite -1}
		weights_load_13156 {Type I LastRead 0 FirstWrite -1}
		weights_load_13157 {Type I LastRead 0 FirstWrite -1}
		weights_load_13158 {Type I LastRead 0 FirstWrite -1}
		weights_load_13159 {Type I LastRead 0 FirstWrite -1}
		weights_load_13160 {Type I LastRead 0 FirstWrite -1}
		weights_load_13161 {Type I LastRead 0 FirstWrite -1}
		weights_load_13162 {Type I LastRead 0 FirstWrite -1}
		weights_load_13163 {Type I LastRead 0 FirstWrite -1}
		weights_load_13164 {Type I LastRead 0 FirstWrite -1}
		weights_load_13165 {Type I LastRead 0 FirstWrite -1}
		weights_load_13166 {Type I LastRead 0 FirstWrite -1}
		weights_load_13167 {Type I LastRead 0 FirstWrite -1}
		weights_load_13168 {Type I LastRead 0 FirstWrite -1}
		weights_load_13169 {Type I LastRead 0 FirstWrite -1}
		weights_load_13170 {Type I LastRead 0 FirstWrite -1}
		weights_load_13171 {Type I LastRead 0 FirstWrite -1}
		weights_load_13172 {Type I LastRead 0 FirstWrite -1}
		weights_load_13173 {Type I LastRead 0 FirstWrite -1}
		weights_load_13174 {Type I LastRead 0 FirstWrite -1}
		weights_load_13175 {Type I LastRead 0 FirstWrite -1}
		weights_load_13176 {Type I LastRead 0 FirstWrite -1}
		weights_load_13177 {Type I LastRead 0 FirstWrite -1}
		weights_load_13178 {Type I LastRead 0 FirstWrite -1}
		weights_load_13179 {Type I LastRead 0 FirstWrite -1}
		weights_load_13180 {Type I LastRead 0 FirstWrite -1}
		weights_load_13181 {Type I LastRead 0 FirstWrite -1}
		weights_load_13182 {Type I LastRead 0 FirstWrite -1}
		weights_load_13183 {Type I LastRead 0 FirstWrite -1}
		weights_load_13184 {Type I LastRead 0 FirstWrite -1}
		weights_load_13185 {Type I LastRead 0 FirstWrite -1}
		weights_load_13186 {Type I LastRead 0 FirstWrite -1}
		weights_load_13187 {Type I LastRead 0 FirstWrite -1}
		weights_load_13188 {Type I LastRead 0 FirstWrite -1}
		weights_load_13189 {Type I LastRead 0 FirstWrite -1}
		weights_load_13190 {Type I LastRead 0 FirstWrite -1}
		weights_load_13191 {Type I LastRead 0 FirstWrite -1}
		weights_load_13192 {Type I LastRead 0 FirstWrite -1}
		weights_load_13193 {Type I LastRead 0 FirstWrite -1}
		weights_load_13194 {Type I LastRead 0 FirstWrite -1}
		weights_load_13195 {Type I LastRead 0 FirstWrite -1}
		weights_load_13196 {Type I LastRead 0 FirstWrite -1}
		weights_load_13197 {Type I LastRead 0 FirstWrite -1}
		weights_load_13198 {Type I LastRead 0 FirstWrite -1}
		weights_load_13199 {Type I LastRead 0 FirstWrite -1}
		weights_load_13200 {Type I LastRead 0 FirstWrite -1}
		weights_load_13201 {Type I LastRead 0 FirstWrite -1}
		weights_load_13202 {Type I LastRead 0 FirstWrite -1}
		weights_load_13203 {Type I LastRead 0 FirstWrite -1}
		weights_load_13204 {Type I LastRead 0 FirstWrite -1}
		weights_load_13205 {Type I LastRead 0 FirstWrite -1}
		weights_load_13206 {Type I LastRead 0 FirstWrite -1}
		weights_load_13207 {Type I LastRead 0 FirstWrite -1}
		weights_load_13208 {Type I LastRead 0 FirstWrite -1}
		weights_load_13209 {Type I LastRead 0 FirstWrite -1}
		weights_load_13210 {Type I LastRead 0 FirstWrite -1}
		weights_load_13211 {Type I LastRead 0 FirstWrite -1}
		weights_load_13212 {Type I LastRead 0 FirstWrite -1}
		weights_load_13213 {Type I LastRead 0 FirstWrite -1}
		weights_load_13214 {Type I LastRead 0 FirstWrite -1}
		weights_load_13215 {Type I LastRead 0 FirstWrite -1}
		weights_load_13216 {Type I LastRead 0 FirstWrite -1}
		weights_load_13217 {Type I LastRead 0 FirstWrite -1}
		weights_load_13218 {Type I LastRead 0 FirstWrite -1}
		weights_load_13219 {Type I LastRead 0 FirstWrite -1}
		weights_load_13220 {Type I LastRead 0 FirstWrite -1}
		weights_load_13221 {Type I LastRead 0 FirstWrite -1}
		weights_load_13222 {Type I LastRead 0 FirstWrite -1}
		weights_load_13223 {Type I LastRead 0 FirstWrite -1}
		weights_load_13224 {Type I LastRead 0 FirstWrite -1}
		weights_load_13225 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_17 { ap_fifo {  { conv2d_64_padded_window_stream_17_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_17_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_17_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_17_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_17_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_17 { ap_fifo {  { in_channel_map_stream_17_din fifo_port_we 1 32 }  { in_channel_map_stream_17_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_17_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_17_full_n fifo_status 0 1 }  { in_channel_map_stream_17_write fifo_data 1 1 } } }
}
