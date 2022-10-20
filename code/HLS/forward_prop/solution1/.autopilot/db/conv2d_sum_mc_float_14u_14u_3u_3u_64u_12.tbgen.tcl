set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_12
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.12}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_12 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_12 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_12", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_12", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_12_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_12_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_12_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_12_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_12_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_12_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_12_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_12_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_12_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_12_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_12_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_12", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_12_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_12", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_12_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_12", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_12_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_12", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_12_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_12", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_12_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_12", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_12_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_12", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_12_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_12", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_12_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_12", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_12_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_12", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_12",
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
			{"Name" : "conv2d_64_padded_window_stream_12", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_12_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_12", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_12_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_12", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_12_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_12_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_12", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15526", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15527", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15528", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15529", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15530", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15531", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15532", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15533", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_12", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_15534", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15535", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15536", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15537", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15538", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15539", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15540", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15541", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15542", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15543", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15544", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15545", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15546", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15547", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15548", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15549", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15550", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15551", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15552", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15553", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15554", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15555", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15556", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15557", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15558", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15559", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15560", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15561", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15562", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15563", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15564", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15565", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15566", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15567", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15568", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15569", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15570", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15571", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15572", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15573", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15574", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15575", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15576", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15577", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15578", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15579", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15580", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15581", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15582", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15583", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15584", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15585", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15586", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15587", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15588", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15589", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15590", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15591", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15592", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15593", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15594", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15595", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15596", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15597", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15598", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15599", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15600", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15601", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15602", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15603", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15604", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15605", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15606", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15607", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15608", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15609", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15610", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15611", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15612", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15613", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15614", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15615", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15616", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15617", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15618", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15619", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15620", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15621", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15622", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15623", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15624", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15625", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15626", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15627", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15628", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15629", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15630", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15631", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15632", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15633", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15634", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15635", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15636", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15637", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15638", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15639", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15640", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15641", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15642", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15643", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15644", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15645", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15646", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15647", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15648", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15649", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15650", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15651", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15652", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15653", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15654", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15655", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15656", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15657", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15658", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15659", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15660", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15661", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15662", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15663", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15664", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15665", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15666", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15667", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15668", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15669", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15670", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15671", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15672", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15673", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15674", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15675", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15676", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15677", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15678", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15679", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15680", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15681", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15682", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15683", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15684", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15685", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15686", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15687", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15688", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15689", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15690", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15691", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15692", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15693", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15694", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15695", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15696", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15697", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15698", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15699", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15700", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15701", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15702", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15703", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15704", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15705", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15706", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15707", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15708", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15709", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15710", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15711", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15712", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15713", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15714", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15715", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15716", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15717", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15718", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15719", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15720", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15721", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15722", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15723", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15724", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15725", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15726", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15727", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15728", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15729", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15730", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15731", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15732", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15733", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15734", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15735", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15736", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15737", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15738", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15739", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15740", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15741", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15742", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15743", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15744", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15745", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15746", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15747", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15748", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15749", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15750", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15751", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15752", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15753", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15754", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15755", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15756", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15757", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15758", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15759", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15760", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15761", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15762", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15763", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15764", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15765", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15766", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15767", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15768", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15769", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15770", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15771", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15772", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15773", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15774", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15775", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15776", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15777", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15778", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15779", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15780", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15781", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15782", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15783", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15784", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15785", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15786", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15787", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15788", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15789", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15790", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15791", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15792", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15793", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15794", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15795", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15796", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15797", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15798", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15799", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15800", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15801", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15802", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15803", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15804", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15805", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15806", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15807", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15808", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15809", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15810", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15811", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15812", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15813", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15814", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15815", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15816", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15817", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15818", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15819", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15820", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15821", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15822", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15823", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15824", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15825", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15826", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15827", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15828", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15829", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15830", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15831", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15832", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15833", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15834", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15835", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15836", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15837", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15838", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15839", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15840", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15841", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15842", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15843", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15844", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15845", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15846", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15847", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15848", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15849", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15850", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15851", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15852", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15853", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15854", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15855", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15856", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15857", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15858", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15859", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15860", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15861", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15862", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15863", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15864", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15865", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15866", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15867", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15868", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15869", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15870", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15871", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15872", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15873", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15874", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15875", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15876", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15877", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15878", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15879", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15880", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15881", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15882", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15883", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15884", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15885", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15886", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15887", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15888", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15889", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15890", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15891", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15892", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15893", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15894", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15895", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15896", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15897", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15898", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15899", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15900", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15901", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15902", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15903", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15904", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15905", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15906", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15907", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15908", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15909", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15910", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15911", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15912", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15913", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15914", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15915", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15916", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15917", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15918", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15919", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15920", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15921", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15922", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15923", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15924", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15925", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15926", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15927", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15928", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15929", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15930", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15931", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15932", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15933", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15934", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15935", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15936", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15937", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15938", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15939", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15940", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15941", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15942", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15943", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15944", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15945", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15946", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15947", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15948", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15949", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15950", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15951", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15952", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15953", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15954", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15955", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15956", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15957", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15958", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15959", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15960", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15961", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15962", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15963", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15964", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15965", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15966", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15967", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15968", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15969", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15970", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15971", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15972", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15973", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15974", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15975", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15976", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15977", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15978", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15979", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15980", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15981", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15982", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15983", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15984", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15985", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15986", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15987", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15988", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15989", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15990", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15991", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15992", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15993", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15994", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15995", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15996", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15997", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15998", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15999", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16000", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16001", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16002", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16003", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16004", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16005", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16006", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16007", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16008", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16009", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16010", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16011", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16012", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16013", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16014", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16015", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16016", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16017", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16018", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16019", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16020", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16021", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16022", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16023", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16024", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16025", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16026", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16027", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16028", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16029", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16030", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16031", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16032", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16033", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16034", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16035", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16036", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16037", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16038", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16039", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16040", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16041", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16042", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16043", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16044", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16045", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16046", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16047", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16048", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16049", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16050", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16051", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16052", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16053", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16054", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16055", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16056", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16057", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16058", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16059", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16060", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16061", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16062", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16063", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16064", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16065", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16066", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16067", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16068", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16069", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16070", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16071", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16072", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16073", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16074", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16075", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16076", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16077", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16078", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16079", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16080", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16081", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16082", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16083", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16084", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16085", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16086", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16087", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16088", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16089", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16090", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16091", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16092", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16093", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16094", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16095", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16096", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16097", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16098", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16099", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16100", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_12_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U7732", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_12_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U7733", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_12_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U7734", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_12_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U7735", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_12_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U7736", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_12_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U7737", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_12_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U7738", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_12_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U7739", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_12_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U7740", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_12_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U7741", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_12_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U7742", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_12_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U7743", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_12_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U7744", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_12_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U7745", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_12_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U7746", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_12_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U7747", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_12_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U7748", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_12_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_12 {
		conv2d_64_padded_window_stream_12 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_12 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_12_Pipeline_inputs {
		conv2d_64_padded_window_stream_12 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_15526 {Type I LastRead 0 FirstWrite -1}
		weights_load_15527 {Type I LastRead 0 FirstWrite -1}
		weights_load_15528 {Type I LastRead 0 FirstWrite -1}
		weights_load_15529 {Type I LastRead 0 FirstWrite -1}
		weights_load_15530 {Type I LastRead 0 FirstWrite -1}
		weights_load_15531 {Type I LastRead 0 FirstWrite -1}
		weights_load_15532 {Type I LastRead 0 FirstWrite -1}
		weights_load_15533 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_12 {Type O LastRead -1 FirstWrite 16}
		weights_load_15534 {Type I LastRead 0 FirstWrite -1}
		weights_load_15535 {Type I LastRead 0 FirstWrite -1}
		weights_load_15536 {Type I LastRead 0 FirstWrite -1}
		weights_load_15537 {Type I LastRead 0 FirstWrite -1}
		weights_load_15538 {Type I LastRead 0 FirstWrite -1}
		weights_load_15539 {Type I LastRead 0 FirstWrite -1}
		weights_load_15540 {Type I LastRead 0 FirstWrite -1}
		weights_load_15541 {Type I LastRead 0 FirstWrite -1}
		weights_load_15542 {Type I LastRead 0 FirstWrite -1}
		weights_load_15543 {Type I LastRead 0 FirstWrite -1}
		weights_load_15544 {Type I LastRead 0 FirstWrite -1}
		weights_load_15545 {Type I LastRead 0 FirstWrite -1}
		weights_load_15546 {Type I LastRead 0 FirstWrite -1}
		weights_load_15547 {Type I LastRead 0 FirstWrite -1}
		weights_load_15548 {Type I LastRead 0 FirstWrite -1}
		weights_load_15549 {Type I LastRead 0 FirstWrite -1}
		weights_load_15550 {Type I LastRead 0 FirstWrite -1}
		weights_load_15551 {Type I LastRead 0 FirstWrite -1}
		weights_load_15552 {Type I LastRead 0 FirstWrite -1}
		weights_load_15553 {Type I LastRead 0 FirstWrite -1}
		weights_load_15554 {Type I LastRead 0 FirstWrite -1}
		weights_load_15555 {Type I LastRead 0 FirstWrite -1}
		weights_load_15556 {Type I LastRead 0 FirstWrite -1}
		weights_load_15557 {Type I LastRead 0 FirstWrite -1}
		weights_load_15558 {Type I LastRead 0 FirstWrite -1}
		weights_load_15559 {Type I LastRead 0 FirstWrite -1}
		weights_load_15560 {Type I LastRead 0 FirstWrite -1}
		weights_load_15561 {Type I LastRead 0 FirstWrite -1}
		weights_load_15562 {Type I LastRead 0 FirstWrite -1}
		weights_load_15563 {Type I LastRead 0 FirstWrite -1}
		weights_load_15564 {Type I LastRead 0 FirstWrite -1}
		weights_load_15565 {Type I LastRead 0 FirstWrite -1}
		weights_load_15566 {Type I LastRead 0 FirstWrite -1}
		weights_load_15567 {Type I LastRead 0 FirstWrite -1}
		weights_load_15568 {Type I LastRead 0 FirstWrite -1}
		weights_load_15569 {Type I LastRead 0 FirstWrite -1}
		weights_load_15570 {Type I LastRead 0 FirstWrite -1}
		weights_load_15571 {Type I LastRead 0 FirstWrite -1}
		weights_load_15572 {Type I LastRead 0 FirstWrite -1}
		weights_load_15573 {Type I LastRead 0 FirstWrite -1}
		weights_load_15574 {Type I LastRead 0 FirstWrite -1}
		weights_load_15575 {Type I LastRead 0 FirstWrite -1}
		weights_load_15576 {Type I LastRead 0 FirstWrite -1}
		weights_load_15577 {Type I LastRead 0 FirstWrite -1}
		weights_load_15578 {Type I LastRead 0 FirstWrite -1}
		weights_load_15579 {Type I LastRead 0 FirstWrite -1}
		weights_load_15580 {Type I LastRead 0 FirstWrite -1}
		weights_load_15581 {Type I LastRead 0 FirstWrite -1}
		weights_load_15582 {Type I LastRead 0 FirstWrite -1}
		weights_load_15583 {Type I LastRead 0 FirstWrite -1}
		weights_load_15584 {Type I LastRead 0 FirstWrite -1}
		weights_load_15585 {Type I LastRead 0 FirstWrite -1}
		weights_load_15586 {Type I LastRead 0 FirstWrite -1}
		weights_load_15587 {Type I LastRead 0 FirstWrite -1}
		weights_load_15588 {Type I LastRead 0 FirstWrite -1}
		weights_load_15589 {Type I LastRead 0 FirstWrite -1}
		weights_load_15590 {Type I LastRead 0 FirstWrite -1}
		weights_load_15591 {Type I LastRead 0 FirstWrite -1}
		weights_load_15592 {Type I LastRead 0 FirstWrite -1}
		weights_load_15593 {Type I LastRead 0 FirstWrite -1}
		weights_load_15594 {Type I LastRead 0 FirstWrite -1}
		weights_load_15595 {Type I LastRead 0 FirstWrite -1}
		weights_load_15596 {Type I LastRead 0 FirstWrite -1}
		weights_load_15597 {Type I LastRead 0 FirstWrite -1}
		weights_load_15598 {Type I LastRead 0 FirstWrite -1}
		weights_load_15599 {Type I LastRead 0 FirstWrite -1}
		weights_load_15600 {Type I LastRead 0 FirstWrite -1}
		weights_load_15601 {Type I LastRead 0 FirstWrite -1}
		weights_load_15602 {Type I LastRead 0 FirstWrite -1}
		weights_load_15603 {Type I LastRead 0 FirstWrite -1}
		weights_load_15604 {Type I LastRead 0 FirstWrite -1}
		weights_load_15605 {Type I LastRead 0 FirstWrite -1}
		weights_load_15606 {Type I LastRead 0 FirstWrite -1}
		weights_load_15607 {Type I LastRead 0 FirstWrite -1}
		weights_load_15608 {Type I LastRead 0 FirstWrite -1}
		weights_load_15609 {Type I LastRead 0 FirstWrite -1}
		weights_load_15610 {Type I LastRead 0 FirstWrite -1}
		weights_load_15611 {Type I LastRead 0 FirstWrite -1}
		weights_load_15612 {Type I LastRead 0 FirstWrite -1}
		weights_load_15613 {Type I LastRead 0 FirstWrite -1}
		weights_load_15614 {Type I LastRead 0 FirstWrite -1}
		weights_load_15615 {Type I LastRead 0 FirstWrite -1}
		weights_load_15616 {Type I LastRead 0 FirstWrite -1}
		weights_load_15617 {Type I LastRead 0 FirstWrite -1}
		weights_load_15618 {Type I LastRead 0 FirstWrite -1}
		weights_load_15619 {Type I LastRead 0 FirstWrite -1}
		weights_load_15620 {Type I LastRead 0 FirstWrite -1}
		weights_load_15621 {Type I LastRead 0 FirstWrite -1}
		weights_load_15622 {Type I LastRead 0 FirstWrite -1}
		weights_load_15623 {Type I LastRead 0 FirstWrite -1}
		weights_load_15624 {Type I LastRead 0 FirstWrite -1}
		weights_load_15625 {Type I LastRead 0 FirstWrite -1}
		weights_load_15626 {Type I LastRead 0 FirstWrite -1}
		weights_load_15627 {Type I LastRead 0 FirstWrite -1}
		weights_load_15628 {Type I LastRead 0 FirstWrite -1}
		weights_load_15629 {Type I LastRead 0 FirstWrite -1}
		weights_load_15630 {Type I LastRead 0 FirstWrite -1}
		weights_load_15631 {Type I LastRead 0 FirstWrite -1}
		weights_load_15632 {Type I LastRead 0 FirstWrite -1}
		weights_load_15633 {Type I LastRead 0 FirstWrite -1}
		weights_load_15634 {Type I LastRead 0 FirstWrite -1}
		weights_load_15635 {Type I LastRead 0 FirstWrite -1}
		weights_load_15636 {Type I LastRead 0 FirstWrite -1}
		weights_load_15637 {Type I LastRead 0 FirstWrite -1}
		weights_load_15638 {Type I LastRead 0 FirstWrite -1}
		weights_load_15639 {Type I LastRead 0 FirstWrite -1}
		weights_load_15640 {Type I LastRead 0 FirstWrite -1}
		weights_load_15641 {Type I LastRead 0 FirstWrite -1}
		weights_load_15642 {Type I LastRead 0 FirstWrite -1}
		weights_load_15643 {Type I LastRead 0 FirstWrite -1}
		weights_load_15644 {Type I LastRead 0 FirstWrite -1}
		weights_load_15645 {Type I LastRead 0 FirstWrite -1}
		weights_load_15646 {Type I LastRead 0 FirstWrite -1}
		weights_load_15647 {Type I LastRead 0 FirstWrite -1}
		weights_load_15648 {Type I LastRead 0 FirstWrite -1}
		weights_load_15649 {Type I LastRead 0 FirstWrite -1}
		weights_load_15650 {Type I LastRead 0 FirstWrite -1}
		weights_load_15651 {Type I LastRead 0 FirstWrite -1}
		weights_load_15652 {Type I LastRead 0 FirstWrite -1}
		weights_load_15653 {Type I LastRead 0 FirstWrite -1}
		weights_load_15654 {Type I LastRead 0 FirstWrite -1}
		weights_load_15655 {Type I LastRead 0 FirstWrite -1}
		weights_load_15656 {Type I LastRead 0 FirstWrite -1}
		weights_load_15657 {Type I LastRead 0 FirstWrite -1}
		weights_load_15658 {Type I LastRead 0 FirstWrite -1}
		weights_load_15659 {Type I LastRead 0 FirstWrite -1}
		weights_load_15660 {Type I LastRead 0 FirstWrite -1}
		weights_load_15661 {Type I LastRead 0 FirstWrite -1}
		weights_load_15662 {Type I LastRead 0 FirstWrite -1}
		weights_load_15663 {Type I LastRead 0 FirstWrite -1}
		weights_load_15664 {Type I LastRead 0 FirstWrite -1}
		weights_load_15665 {Type I LastRead 0 FirstWrite -1}
		weights_load_15666 {Type I LastRead 0 FirstWrite -1}
		weights_load_15667 {Type I LastRead 0 FirstWrite -1}
		weights_load_15668 {Type I LastRead 0 FirstWrite -1}
		weights_load_15669 {Type I LastRead 0 FirstWrite -1}
		weights_load_15670 {Type I LastRead 0 FirstWrite -1}
		weights_load_15671 {Type I LastRead 0 FirstWrite -1}
		weights_load_15672 {Type I LastRead 0 FirstWrite -1}
		weights_load_15673 {Type I LastRead 0 FirstWrite -1}
		weights_load_15674 {Type I LastRead 0 FirstWrite -1}
		weights_load_15675 {Type I LastRead 0 FirstWrite -1}
		weights_load_15676 {Type I LastRead 0 FirstWrite -1}
		weights_load_15677 {Type I LastRead 0 FirstWrite -1}
		weights_load_15678 {Type I LastRead 0 FirstWrite -1}
		weights_load_15679 {Type I LastRead 0 FirstWrite -1}
		weights_load_15680 {Type I LastRead 0 FirstWrite -1}
		weights_load_15681 {Type I LastRead 0 FirstWrite -1}
		weights_load_15682 {Type I LastRead 0 FirstWrite -1}
		weights_load_15683 {Type I LastRead 0 FirstWrite -1}
		weights_load_15684 {Type I LastRead 0 FirstWrite -1}
		weights_load_15685 {Type I LastRead 0 FirstWrite -1}
		weights_load_15686 {Type I LastRead 0 FirstWrite -1}
		weights_load_15687 {Type I LastRead 0 FirstWrite -1}
		weights_load_15688 {Type I LastRead 0 FirstWrite -1}
		weights_load_15689 {Type I LastRead 0 FirstWrite -1}
		weights_load_15690 {Type I LastRead 0 FirstWrite -1}
		weights_load_15691 {Type I LastRead 0 FirstWrite -1}
		weights_load_15692 {Type I LastRead 0 FirstWrite -1}
		weights_load_15693 {Type I LastRead 0 FirstWrite -1}
		weights_load_15694 {Type I LastRead 0 FirstWrite -1}
		weights_load_15695 {Type I LastRead 0 FirstWrite -1}
		weights_load_15696 {Type I LastRead 0 FirstWrite -1}
		weights_load_15697 {Type I LastRead 0 FirstWrite -1}
		weights_load_15698 {Type I LastRead 0 FirstWrite -1}
		weights_load_15699 {Type I LastRead 0 FirstWrite -1}
		weights_load_15700 {Type I LastRead 0 FirstWrite -1}
		weights_load_15701 {Type I LastRead 0 FirstWrite -1}
		weights_load_15702 {Type I LastRead 0 FirstWrite -1}
		weights_load_15703 {Type I LastRead 0 FirstWrite -1}
		weights_load_15704 {Type I LastRead 0 FirstWrite -1}
		weights_load_15705 {Type I LastRead 0 FirstWrite -1}
		weights_load_15706 {Type I LastRead 0 FirstWrite -1}
		weights_load_15707 {Type I LastRead 0 FirstWrite -1}
		weights_load_15708 {Type I LastRead 0 FirstWrite -1}
		weights_load_15709 {Type I LastRead 0 FirstWrite -1}
		weights_load_15710 {Type I LastRead 0 FirstWrite -1}
		weights_load_15711 {Type I LastRead 0 FirstWrite -1}
		weights_load_15712 {Type I LastRead 0 FirstWrite -1}
		weights_load_15713 {Type I LastRead 0 FirstWrite -1}
		weights_load_15714 {Type I LastRead 0 FirstWrite -1}
		weights_load_15715 {Type I LastRead 0 FirstWrite -1}
		weights_load_15716 {Type I LastRead 0 FirstWrite -1}
		weights_load_15717 {Type I LastRead 0 FirstWrite -1}
		weights_load_15718 {Type I LastRead 0 FirstWrite -1}
		weights_load_15719 {Type I LastRead 0 FirstWrite -1}
		weights_load_15720 {Type I LastRead 0 FirstWrite -1}
		weights_load_15721 {Type I LastRead 0 FirstWrite -1}
		weights_load_15722 {Type I LastRead 0 FirstWrite -1}
		weights_load_15723 {Type I LastRead 0 FirstWrite -1}
		weights_load_15724 {Type I LastRead 0 FirstWrite -1}
		weights_load_15725 {Type I LastRead 0 FirstWrite -1}
		weights_load_15726 {Type I LastRead 0 FirstWrite -1}
		weights_load_15727 {Type I LastRead 0 FirstWrite -1}
		weights_load_15728 {Type I LastRead 0 FirstWrite -1}
		weights_load_15729 {Type I LastRead 0 FirstWrite -1}
		weights_load_15730 {Type I LastRead 0 FirstWrite -1}
		weights_load_15731 {Type I LastRead 0 FirstWrite -1}
		weights_load_15732 {Type I LastRead 0 FirstWrite -1}
		weights_load_15733 {Type I LastRead 0 FirstWrite -1}
		weights_load_15734 {Type I LastRead 0 FirstWrite -1}
		weights_load_15735 {Type I LastRead 0 FirstWrite -1}
		weights_load_15736 {Type I LastRead 0 FirstWrite -1}
		weights_load_15737 {Type I LastRead 0 FirstWrite -1}
		weights_load_15738 {Type I LastRead 0 FirstWrite -1}
		weights_load_15739 {Type I LastRead 0 FirstWrite -1}
		weights_load_15740 {Type I LastRead 0 FirstWrite -1}
		weights_load_15741 {Type I LastRead 0 FirstWrite -1}
		weights_load_15742 {Type I LastRead 0 FirstWrite -1}
		weights_load_15743 {Type I LastRead 0 FirstWrite -1}
		weights_load_15744 {Type I LastRead 0 FirstWrite -1}
		weights_load_15745 {Type I LastRead 0 FirstWrite -1}
		weights_load_15746 {Type I LastRead 0 FirstWrite -1}
		weights_load_15747 {Type I LastRead 0 FirstWrite -1}
		weights_load_15748 {Type I LastRead 0 FirstWrite -1}
		weights_load_15749 {Type I LastRead 0 FirstWrite -1}
		weights_load_15750 {Type I LastRead 0 FirstWrite -1}
		weights_load_15751 {Type I LastRead 0 FirstWrite -1}
		weights_load_15752 {Type I LastRead 0 FirstWrite -1}
		weights_load_15753 {Type I LastRead 0 FirstWrite -1}
		weights_load_15754 {Type I LastRead 0 FirstWrite -1}
		weights_load_15755 {Type I LastRead 0 FirstWrite -1}
		weights_load_15756 {Type I LastRead 0 FirstWrite -1}
		weights_load_15757 {Type I LastRead 0 FirstWrite -1}
		weights_load_15758 {Type I LastRead 0 FirstWrite -1}
		weights_load_15759 {Type I LastRead 0 FirstWrite -1}
		weights_load_15760 {Type I LastRead 0 FirstWrite -1}
		weights_load_15761 {Type I LastRead 0 FirstWrite -1}
		weights_load_15762 {Type I LastRead 0 FirstWrite -1}
		weights_load_15763 {Type I LastRead 0 FirstWrite -1}
		weights_load_15764 {Type I LastRead 0 FirstWrite -1}
		weights_load_15765 {Type I LastRead 0 FirstWrite -1}
		weights_load_15766 {Type I LastRead 0 FirstWrite -1}
		weights_load_15767 {Type I LastRead 0 FirstWrite -1}
		weights_load_15768 {Type I LastRead 0 FirstWrite -1}
		weights_load_15769 {Type I LastRead 0 FirstWrite -1}
		weights_load_15770 {Type I LastRead 0 FirstWrite -1}
		weights_load_15771 {Type I LastRead 0 FirstWrite -1}
		weights_load_15772 {Type I LastRead 0 FirstWrite -1}
		weights_load_15773 {Type I LastRead 0 FirstWrite -1}
		weights_load_15774 {Type I LastRead 0 FirstWrite -1}
		weights_load_15775 {Type I LastRead 0 FirstWrite -1}
		weights_load_15776 {Type I LastRead 0 FirstWrite -1}
		weights_load_15777 {Type I LastRead 0 FirstWrite -1}
		weights_load_15778 {Type I LastRead 0 FirstWrite -1}
		weights_load_15779 {Type I LastRead 0 FirstWrite -1}
		weights_load_15780 {Type I LastRead 0 FirstWrite -1}
		weights_load_15781 {Type I LastRead 0 FirstWrite -1}
		weights_load_15782 {Type I LastRead 0 FirstWrite -1}
		weights_load_15783 {Type I LastRead 0 FirstWrite -1}
		weights_load_15784 {Type I LastRead 0 FirstWrite -1}
		weights_load_15785 {Type I LastRead 0 FirstWrite -1}
		weights_load_15786 {Type I LastRead 0 FirstWrite -1}
		weights_load_15787 {Type I LastRead 0 FirstWrite -1}
		weights_load_15788 {Type I LastRead 0 FirstWrite -1}
		weights_load_15789 {Type I LastRead 0 FirstWrite -1}
		weights_load_15790 {Type I LastRead 0 FirstWrite -1}
		weights_load_15791 {Type I LastRead 0 FirstWrite -1}
		weights_load_15792 {Type I LastRead 0 FirstWrite -1}
		weights_load_15793 {Type I LastRead 0 FirstWrite -1}
		weights_load_15794 {Type I LastRead 0 FirstWrite -1}
		weights_load_15795 {Type I LastRead 0 FirstWrite -1}
		weights_load_15796 {Type I LastRead 0 FirstWrite -1}
		weights_load_15797 {Type I LastRead 0 FirstWrite -1}
		weights_load_15798 {Type I LastRead 0 FirstWrite -1}
		weights_load_15799 {Type I LastRead 0 FirstWrite -1}
		weights_load_15800 {Type I LastRead 0 FirstWrite -1}
		weights_load_15801 {Type I LastRead 0 FirstWrite -1}
		weights_load_15802 {Type I LastRead 0 FirstWrite -1}
		weights_load_15803 {Type I LastRead 0 FirstWrite -1}
		weights_load_15804 {Type I LastRead 0 FirstWrite -1}
		weights_load_15805 {Type I LastRead 0 FirstWrite -1}
		weights_load_15806 {Type I LastRead 0 FirstWrite -1}
		weights_load_15807 {Type I LastRead 0 FirstWrite -1}
		weights_load_15808 {Type I LastRead 0 FirstWrite -1}
		weights_load_15809 {Type I LastRead 0 FirstWrite -1}
		weights_load_15810 {Type I LastRead 0 FirstWrite -1}
		weights_load_15811 {Type I LastRead 0 FirstWrite -1}
		weights_load_15812 {Type I LastRead 0 FirstWrite -1}
		weights_load_15813 {Type I LastRead 0 FirstWrite -1}
		weights_load_15814 {Type I LastRead 0 FirstWrite -1}
		weights_load_15815 {Type I LastRead 0 FirstWrite -1}
		weights_load_15816 {Type I LastRead 0 FirstWrite -1}
		weights_load_15817 {Type I LastRead 0 FirstWrite -1}
		weights_load_15818 {Type I LastRead 0 FirstWrite -1}
		weights_load_15819 {Type I LastRead 0 FirstWrite -1}
		weights_load_15820 {Type I LastRead 0 FirstWrite -1}
		weights_load_15821 {Type I LastRead 0 FirstWrite -1}
		weights_load_15822 {Type I LastRead 0 FirstWrite -1}
		weights_load_15823 {Type I LastRead 0 FirstWrite -1}
		weights_load_15824 {Type I LastRead 0 FirstWrite -1}
		weights_load_15825 {Type I LastRead 0 FirstWrite -1}
		weights_load_15826 {Type I LastRead 0 FirstWrite -1}
		weights_load_15827 {Type I LastRead 0 FirstWrite -1}
		weights_load_15828 {Type I LastRead 0 FirstWrite -1}
		weights_load_15829 {Type I LastRead 0 FirstWrite -1}
		weights_load_15830 {Type I LastRead 0 FirstWrite -1}
		weights_load_15831 {Type I LastRead 0 FirstWrite -1}
		weights_load_15832 {Type I LastRead 0 FirstWrite -1}
		weights_load_15833 {Type I LastRead 0 FirstWrite -1}
		weights_load_15834 {Type I LastRead 0 FirstWrite -1}
		weights_load_15835 {Type I LastRead 0 FirstWrite -1}
		weights_load_15836 {Type I LastRead 0 FirstWrite -1}
		weights_load_15837 {Type I LastRead 0 FirstWrite -1}
		weights_load_15838 {Type I LastRead 0 FirstWrite -1}
		weights_load_15839 {Type I LastRead 0 FirstWrite -1}
		weights_load_15840 {Type I LastRead 0 FirstWrite -1}
		weights_load_15841 {Type I LastRead 0 FirstWrite -1}
		weights_load_15842 {Type I LastRead 0 FirstWrite -1}
		weights_load_15843 {Type I LastRead 0 FirstWrite -1}
		weights_load_15844 {Type I LastRead 0 FirstWrite -1}
		weights_load_15845 {Type I LastRead 0 FirstWrite -1}
		weights_load_15846 {Type I LastRead 0 FirstWrite -1}
		weights_load_15847 {Type I LastRead 0 FirstWrite -1}
		weights_load_15848 {Type I LastRead 0 FirstWrite -1}
		weights_load_15849 {Type I LastRead 0 FirstWrite -1}
		weights_load_15850 {Type I LastRead 0 FirstWrite -1}
		weights_load_15851 {Type I LastRead 0 FirstWrite -1}
		weights_load_15852 {Type I LastRead 0 FirstWrite -1}
		weights_load_15853 {Type I LastRead 0 FirstWrite -1}
		weights_load_15854 {Type I LastRead 0 FirstWrite -1}
		weights_load_15855 {Type I LastRead 0 FirstWrite -1}
		weights_load_15856 {Type I LastRead 0 FirstWrite -1}
		weights_load_15857 {Type I LastRead 0 FirstWrite -1}
		weights_load_15858 {Type I LastRead 0 FirstWrite -1}
		weights_load_15859 {Type I LastRead 0 FirstWrite -1}
		weights_load_15860 {Type I LastRead 0 FirstWrite -1}
		weights_load_15861 {Type I LastRead 0 FirstWrite -1}
		weights_load_15862 {Type I LastRead 0 FirstWrite -1}
		weights_load_15863 {Type I LastRead 0 FirstWrite -1}
		weights_load_15864 {Type I LastRead 0 FirstWrite -1}
		weights_load_15865 {Type I LastRead 0 FirstWrite -1}
		weights_load_15866 {Type I LastRead 0 FirstWrite -1}
		weights_load_15867 {Type I LastRead 0 FirstWrite -1}
		weights_load_15868 {Type I LastRead 0 FirstWrite -1}
		weights_load_15869 {Type I LastRead 0 FirstWrite -1}
		weights_load_15870 {Type I LastRead 0 FirstWrite -1}
		weights_load_15871 {Type I LastRead 0 FirstWrite -1}
		weights_load_15872 {Type I LastRead 0 FirstWrite -1}
		weights_load_15873 {Type I LastRead 0 FirstWrite -1}
		weights_load_15874 {Type I LastRead 0 FirstWrite -1}
		weights_load_15875 {Type I LastRead 0 FirstWrite -1}
		weights_load_15876 {Type I LastRead 0 FirstWrite -1}
		weights_load_15877 {Type I LastRead 0 FirstWrite -1}
		weights_load_15878 {Type I LastRead 0 FirstWrite -1}
		weights_load_15879 {Type I LastRead 0 FirstWrite -1}
		weights_load_15880 {Type I LastRead 0 FirstWrite -1}
		weights_load_15881 {Type I LastRead 0 FirstWrite -1}
		weights_load_15882 {Type I LastRead 0 FirstWrite -1}
		weights_load_15883 {Type I LastRead 0 FirstWrite -1}
		weights_load_15884 {Type I LastRead 0 FirstWrite -1}
		weights_load_15885 {Type I LastRead 0 FirstWrite -1}
		weights_load_15886 {Type I LastRead 0 FirstWrite -1}
		weights_load_15887 {Type I LastRead 0 FirstWrite -1}
		weights_load_15888 {Type I LastRead 0 FirstWrite -1}
		weights_load_15889 {Type I LastRead 0 FirstWrite -1}
		weights_load_15890 {Type I LastRead 0 FirstWrite -1}
		weights_load_15891 {Type I LastRead 0 FirstWrite -1}
		weights_load_15892 {Type I LastRead 0 FirstWrite -1}
		weights_load_15893 {Type I LastRead 0 FirstWrite -1}
		weights_load_15894 {Type I LastRead 0 FirstWrite -1}
		weights_load_15895 {Type I LastRead 0 FirstWrite -1}
		weights_load_15896 {Type I LastRead 0 FirstWrite -1}
		weights_load_15897 {Type I LastRead 0 FirstWrite -1}
		weights_load_15898 {Type I LastRead 0 FirstWrite -1}
		weights_load_15899 {Type I LastRead 0 FirstWrite -1}
		weights_load_15900 {Type I LastRead 0 FirstWrite -1}
		weights_load_15901 {Type I LastRead 0 FirstWrite -1}
		weights_load_15902 {Type I LastRead 0 FirstWrite -1}
		weights_load_15903 {Type I LastRead 0 FirstWrite -1}
		weights_load_15904 {Type I LastRead 0 FirstWrite -1}
		weights_load_15905 {Type I LastRead 0 FirstWrite -1}
		weights_load_15906 {Type I LastRead 0 FirstWrite -1}
		weights_load_15907 {Type I LastRead 0 FirstWrite -1}
		weights_load_15908 {Type I LastRead 0 FirstWrite -1}
		weights_load_15909 {Type I LastRead 0 FirstWrite -1}
		weights_load_15910 {Type I LastRead 0 FirstWrite -1}
		weights_load_15911 {Type I LastRead 0 FirstWrite -1}
		weights_load_15912 {Type I LastRead 0 FirstWrite -1}
		weights_load_15913 {Type I LastRead 0 FirstWrite -1}
		weights_load_15914 {Type I LastRead 0 FirstWrite -1}
		weights_load_15915 {Type I LastRead 0 FirstWrite -1}
		weights_load_15916 {Type I LastRead 0 FirstWrite -1}
		weights_load_15917 {Type I LastRead 0 FirstWrite -1}
		weights_load_15918 {Type I LastRead 0 FirstWrite -1}
		weights_load_15919 {Type I LastRead 0 FirstWrite -1}
		weights_load_15920 {Type I LastRead 0 FirstWrite -1}
		weights_load_15921 {Type I LastRead 0 FirstWrite -1}
		weights_load_15922 {Type I LastRead 0 FirstWrite -1}
		weights_load_15923 {Type I LastRead 0 FirstWrite -1}
		weights_load_15924 {Type I LastRead 0 FirstWrite -1}
		weights_load_15925 {Type I LastRead 0 FirstWrite -1}
		weights_load_15926 {Type I LastRead 0 FirstWrite -1}
		weights_load_15927 {Type I LastRead 0 FirstWrite -1}
		weights_load_15928 {Type I LastRead 0 FirstWrite -1}
		weights_load_15929 {Type I LastRead 0 FirstWrite -1}
		weights_load_15930 {Type I LastRead 0 FirstWrite -1}
		weights_load_15931 {Type I LastRead 0 FirstWrite -1}
		weights_load_15932 {Type I LastRead 0 FirstWrite -1}
		weights_load_15933 {Type I LastRead 0 FirstWrite -1}
		weights_load_15934 {Type I LastRead 0 FirstWrite -1}
		weights_load_15935 {Type I LastRead 0 FirstWrite -1}
		weights_load_15936 {Type I LastRead 0 FirstWrite -1}
		weights_load_15937 {Type I LastRead 0 FirstWrite -1}
		weights_load_15938 {Type I LastRead 0 FirstWrite -1}
		weights_load_15939 {Type I LastRead 0 FirstWrite -1}
		weights_load_15940 {Type I LastRead 0 FirstWrite -1}
		weights_load_15941 {Type I LastRead 0 FirstWrite -1}
		weights_load_15942 {Type I LastRead 0 FirstWrite -1}
		weights_load_15943 {Type I LastRead 0 FirstWrite -1}
		weights_load_15944 {Type I LastRead 0 FirstWrite -1}
		weights_load_15945 {Type I LastRead 0 FirstWrite -1}
		weights_load_15946 {Type I LastRead 0 FirstWrite -1}
		weights_load_15947 {Type I LastRead 0 FirstWrite -1}
		weights_load_15948 {Type I LastRead 0 FirstWrite -1}
		weights_load_15949 {Type I LastRead 0 FirstWrite -1}
		weights_load_15950 {Type I LastRead 0 FirstWrite -1}
		weights_load_15951 {Type I LastRead 0 FirstWrite -1}
		weights_load_15952 {Type I LastRead 0 FirstWrite -1}
		weights_load_15953 {Type I LastRead 0 FirstWrite -1}
		weights_load_15954 {Type I LastRead 0 FirstWrite -1}
		weights_load_15955 {Type I LastRead 0 FirstWrite -1}
		weights_load_15956 {Type I LastRead 0 FirstWrite -1}
		weights_load_15957 {Type I LastRead 0 FirstWrite -1}
		weights_load_15958 {Type I LastRead 0 FirstWrite -1}
		weights_load_15959 {Type I LastRead 0 FirstWrite -1}
		weights_load_15960 {Type I LastRead 0 FirstWrite -1}
		weights_load_15961 {Type I LastRead 0 FirstWrite -1}
		weights_load_15962 {Type I LastRead 0 FirstWrite -1}
		weights_load_15963 {Type I LastRead 0 FirstWrite -1}
		weights_load_15964 {Type I LastRead 0 FirstWrite -1}
		weights_load_15965 {Type I LastRead 0 FirstWrite -1}
		weights_load_15966 {Type I LastRead 0 FirstWrite -1}
		weights_load_15967 {Type I LastRead 0 FirstWrite -1}
		weights_load_15968 {Type I LastRead 0 FirstWrite -1}
		weights_load_15969 {Type I LastRead 0 FirstWrite -1}
		weights_load_15970 {Type I LastRead 0 FirstWrite -1}
		weights_load_15971 {Type I LastRead 0 FirstWrite -1}
		weights_load_15972 {Type I LastRead 0 FirstWrite -1}
		weights_load_15973 {Type I LastRead 0 FirstWrite -1}
		weights_load_15974 {Type I LastRead 0 FirstWrite -1}
		weights_load_15975 {Type I LastRead 0 FirstWrite -1}
		weights_load_15976 {Type I LastRead 0 FirstWrite -1}
		weights_load_15977 {Type I LastRead 0 FirstWrite -1}
		weights_load_15978 {Type I LastRead 0 FirstWrite -1}
		weights_load_15979 {Type I LastRead 0 FirstWrite -1}
		weights_load_15980 {Type I LastRead 0 FirstWrite -1}
		weights_load_15981 {Type I LastRead 0 FirstWrite -1}
		weights_load_15982 {Type I LastRead 0 FirstWrite -1}
		weights_load_15983 {Type I LastRead 0 FirstWrite -1}
		weights_load_15984 {Type I LastRead 0 FirstWrite -1}
		weights_load_15985 {Type I LastRead 0 FirstWrite -1}
		weights_load_15986 {Type I LastRead 0 FirstWrite -1}
		weights_load_15987 {Type I LastRead 0 FirstWrite -1}
		weights_load_15988 {Type I LastRead 0 FirstWrite -1}
		weights_load_15989 {Type I LastRead 0 FirstWrite -1}
		weights_load_15990 {Type I LastRead 0 FirstWrite -1}
		weights_load_15991 {Type I LastRead 0 FirstWrite -1}
		weights_load_15992 {Type I LastRead 0 FirstWrite -1}
		weights_load_15993 {Type I LastRead 0 FirstWrite -1}
		weights_load_15994 {Type I LastRead 0 FirstWrite -1}
		weights_load_15995 {Type I LastRead 0 FirstWrite -1}
		weights_load_15996 {Type I LastRead 0 FirstWrite -1}
		weights_load_15997 {Type I LastRead 0 FirstWrite -1}
		weights_load_15998 {Type I LastRead 0 FirstWrite -1}
		weights_load_15999 {Type I LastRead 0 FirstWrite -1}
		weights_load_16000 {Type I LastRead 0 FirstWrite -1}
		weights_load_16001 {Type I LastRead 0 FirstWrite -1}
		weights_load_16002 {Type I LastRead 0 FirstWrite -1}
		weights_load_16003 {Type I LastRead 0 FirstWrite -1}
		weights_load_16004 {Type I LastRead 0 FirstWrite -1}
		weights_load_16005 {Type I LastRead 0 FirstWrite -1}
		weights_load_16006 {Type I LastRead 0 FirstWrite -1}
		weights_load_16007 {Type I LastRead 0 FirstWrite -1}
		weights_load_16008 {Type I LastRead 0 FirstWrite -1}
		weights_load_16009 {Type I LastRead 0 FirstWrite -1}
		weights_load_16010 {Type I LastRead 0 FirstWrite -1}
		weights_load_16011 {Type I LastRead 0 FirstWrite -1}
		weights_load_16012 {Type I LastRead 0 FirstWrite -1}
		weights_load_16013 {Type I LastRead 0 FirstWrite -1}
		weights_load_16014 {Type I LastRead 0 FirstWrite -1}
		weights_load_16015 {Type I LastRead 0 FirstWrite -1}
		weights_load_16016 {Type I LastRead 0 FirstWrite -1}
		weights_load_16017 {Type I LastRead 0 FirstWrite -1}
		weights_load_16018 {Type I LastRead 0 FirstWrite -1}
		weights_load_16019 {Type I LastRead 0 FirstWrite -1}
		weights_load_16020 {Type I LastRead 0 FirstWrite -1}
		weights_load_16021 {Type I LastRead 0 FirstWrite -1}
		weights_load_16022 {Type I LastRead 0 FirstWrite -1}
		weights_load_16023 {Type I LastRead 0 FirstWrite -1}
		weights_load_16024 {Type I LastRead 0 FirstWrite -1}
		weights_load_16025 {Type I LastRead 0 FirstWrite -1}
		weights_load_16026 {Type I LastRead 0 FirstWrite -1}
		weights_load_16027 {Type I LastRead 0 FirstWrite -1}
		weights_load_16028 {Type I LastRead 0 FirstWrite -1}
		weights_load_16029 {Type I LastRead 0 FirstWrite -1}
		weights_load_16030 {Type I LastRead 0 FirstWrite -1}
		weights_load_16031 {Type I LastRead 0 FirstWrite -1}
		weights_load_16032 {Type I LastRead 0 FirstWrite -1}
		weights_load_16033 {Type I LastRead 0 FirstWrite -1}
		weights_load_16034 {Type I LastRead 0 FirstWrite -1}
		weights_load_16035 {Type I LastRead 0 FirstWrite -1}
		weights_load_16036 {Type I LastRead 0 FirstWrite -1}
		weights_load_16037 {Type I LastRead 0 FirstWrite -1}
		weights_load_16038 {Type I LastRead 0 FirstWrite -1}
		weights_load_16039 {Type I LastRead 0 FirstWrite -1}
		weights_load_16040 {Type I LastRead 0 FirstWrite -1}
		weights_load_16041 {Type I LastRead 0 FirstWrite -1}
		weights_load_16042 {Type I LastRead 0 FirstWrite -1}
		weights_load_16043 {Type I LastRead 0 FirstWrite -1}
		weights_load_16044 {Type I LastRead 0 FirstWrite -1}
		weights_load_16045 {Type I LastRead 0 FirstWrite -1}
		weights_load_16046 {Type I LastRead 0 FirstWrite -1}
		weights_load_16047 {Type I LastRead 0 FirstWrite -1}
		weights_load_16048 {Type I LastRead 0 FirstWrite -1}
		weights_load_16049 {Type I LastRead 0 FirstWrite -1}
		weights_load_16050 {Type I LastRead 0 FirstWrite -1}
		weights_load_16051 {Type I LastRead 0 FirstWrite -1}
		weights_load_16052 {Type I LastRead 0 FirstWrite -1}
		weights_load_16053 {Type I LastRead 0 FirstWrite -1}
		weights_load_16054 {Type I LastRead 0 FirstWrite -1}
		weights_load_16055 {Type I LastRead 0 FirstWrite -1}
		weights_load_16056 {Type I LastRead 0 FirstWrite -1}
		weights_load_16057 {Type I LastRead 0 FirstWrite -1}
		weights_load_16058 {Type I LastRead 0 FirstWrite -1}
		weights_load_16059 {Type I LastRead 0 FirstWrite -1}
		weights_load_16060 {Type I LastRead 0 FirstWrite -1}
		weights_load_16061 {Type I LastRead 0 FirstWrite -1}
		weights_load_16062 {Type I LastRead 0 FirstWrite -1}
		weights_load_16063 {Type I LastRead 0 FirstWrite -1}
		weights_load_16064 {Type I LastRead 0 FirstWrite -1}
		weights_load_16065 {Type I LastRead 0 FirstWrite -1}
		weights_load_16066 {Type I LastRead 0 FirstWrite -1}
		weights_load_16067 {Type I LastRead 0 FirstWrite -1}
		weights_load_16068 {Type I LastRead 0 FirstWrite -1}
		weights_load_16069 {Type I LastRead 0 FirstWrite -1}
		weights_load_16070 {Type I LastRead 0 FirstWrite -1}
		weights_load_16071 {Type I LastRead 0 FirstWrite -1}
		weights_load_16072 {Type I LastRead 0 FirstWrite -1}
		weights_load_16073 {Type I LastRead 0 FirstWrite -1}
		weights_load_16074 {Type I LastRead 0 FirstWrite -1}
		weights_load_16075 {Type I LastRead 0 FirstWrite -1}
		weights_load_16076 {Type I LastRead 0 FirstWrite -1}
		weights_load_16077 {Type I LastRead 0 FirstWrite -1}
		weights_load_16078 {Type I LastRead 0 FirstWrite -1}
		weights_load_16079 {Type I LastRead 0 FirstWrite -1}
		weights_load_16080 {Type I LastRead 0 FirstWrite -1}
		weights_load_16081 {Type I LastRead 0 FirstWrite -1}
		weights_load_16082 {Type I LastRead 0 FirstWrite -1}
		weights_load_16083 {Type I LastRead 0 FirstWrite -1}
		weights_load_16084 {Type I LastRead 0 FirstWrite -1}
		weights_load_16085 {Type I LastRead 0 FirstWrite -1}
		weights_load_16086 {Type I LastRead 0 FirstWrite -1}
		weights_load_16087 {Type I LastRead 0 FirstWrite -1}
		weights_load_16088 {Type I LastRead 0 FirstWrite -1}
		weights_load_16089 {Type I LastRead 0 FirstWrite -1}
		weights_load_16090 {Type I LastRead 0 FirstWrite -1}
		weights_load_16091 {Type I LastRead 0 FirstWrite -1}
		weights_load_16092 {Type I LastRead 0 FirstWrite -1}
		weights_load_16093 {Type I LastRead 0 FirstWrite -1}
		weights_load_16094 {Type I LastRead 0 FirstWrite -1}
		weights_load_16095 {Type I LastRead 0 FirstWrite -1}
		weights_load_16096 {Type I LastRead 0 FirstWrite -1}
		weights_load_16097 {Type I LastRead 0 FirstWrite -1}
		weights_load_16098 {Type I LastRead 0 FirstWrite -1}
		weights_load_16099 {Type I LastRead 0 FirstWrite -1}
		weights_load_16100 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_12 { ap_fifo {  { conv2d_64_padded_window_stream_12_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_12_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_12_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_12_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_12_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_12 { ap_fifo {  { in_channel_map_stream_12_din fifo_port_we 1 32 }  { in_channel_map_stream_12_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_12_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_12_full_n fifo_status 0 1 }  { in_channel_map_stream_12_write fifo_data 1 1 } } }
}
