set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_8
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.8}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_8 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_8 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_8", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_8", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_8_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_8_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_8_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_8_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_8_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_8_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_8_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_8_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_8_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_8_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_8_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_8", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_8_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_8", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_8_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_8", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_8_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_8", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_8_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_8", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_8_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_8", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_8_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_8", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_8_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_8", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_8_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_8", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_8_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_8", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_8",
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
			{"Name" : "conv2d_64_padded_window_stream_8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_8_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_8", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_8_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_8", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_8_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_8_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_8", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_576", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_577", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_578", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_579", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_580", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_581", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_582", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_583", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_8", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_584", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_585", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_586", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_587", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_588", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_589", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_590", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_591", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_592", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_593", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_594", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_595", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_596", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_597", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_598", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_599", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_600", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_601", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_602", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_603", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_604", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_605", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_606", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_607", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_608", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_609", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_610", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_611", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_612", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_613", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_614", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_615", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_616", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_617", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_618", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_619", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_620", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_621", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_622", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_623", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_624", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_625", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_626", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_627", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_628", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_629", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_630", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_631", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_632", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_633", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_634", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_635", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_636", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_637", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_638", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_639", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_640", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_641", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_642", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_643", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_644", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_645", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_646", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_647", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_648", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_649", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_650", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_651", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_652", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_653", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_654", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_655", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_656", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_657", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_658", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_659", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_660", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_661", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_662", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_663", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_664", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_665", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_666", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_667", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_668", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_669", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_670", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_671", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_672", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_673", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_674", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_675", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_676", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_677", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_678", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_679", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_680", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_681", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_682", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_683", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_684", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_685", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_686", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_687", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_688", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_689", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_690", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_691", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_692", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_693", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_694", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_695", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_696", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_697", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_698", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_699", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_700", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_701", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_702", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_703", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_704", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_705", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_706", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_707", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_708", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_709", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_710", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_711", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_712", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_713", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_714", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_715", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_716", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_717", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_718", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_719", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_720", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_721", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_722", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_723", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_724", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_725", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_726", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_727", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_728", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_729", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_730", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_731", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_732", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_733", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_734", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_735", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_736", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_737", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_738", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_739", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_740", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_741", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_742", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_743", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_744", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_745", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_746", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_747", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_748", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_749", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_750", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_751", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_752", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_753", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_754", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_755", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_756", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_757", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_758", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_759", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_760", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_761", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_762", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_763", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_764", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_765", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_766", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_767", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_768", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_769", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_770", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_771", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_772", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_773", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_774", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_775", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_776", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_777", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_778", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_779", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_780", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_781", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_782", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_783", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_784", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_785", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_786", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_787", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_788", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_789", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_790", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_791", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_792", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_793", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_794", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_795", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_796", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_797", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_798", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_799", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_800", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_801", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_802", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_803", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_804", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_805", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_806", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_807", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_808", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_809", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_810", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_811", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_812", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_813", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_814", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_815", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_816", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_817", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_818", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_819", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_820", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_821", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_822", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_823", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_824", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_825", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_826", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_827", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_828", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_829", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_830", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_831", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_832", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_833", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_834", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_835", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_836", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_837", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_838", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_839", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_840", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_841", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_842", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_843", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_844", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_845", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_846", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_847", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_848", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_849", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_850", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_851", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_852", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_853", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_854", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_855", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_856", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_857", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_858", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_859", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_860", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_861", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_862", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_863", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_864", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_865", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_866", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_867", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_868", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_869", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_870", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_871", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_872", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_873", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_874", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_875", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_876", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_877", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_878", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_879", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_880", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_881", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_882", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_883", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_884", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_885", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_886", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_887", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_888", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_889", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_890", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_891", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_892", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_893", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_894", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_895", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_896", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_897", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_898", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_899", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_900", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_901", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_902", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_903", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_904", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_905", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_906", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_907", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_908", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_909", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_910", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_911", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_912", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_913", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_914", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_915", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_916", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_917", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_918", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_919", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_920", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_921", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_922", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_923", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_924", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_925", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_926", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_927", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_928", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_929", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_930", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_931", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_932", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_933", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_934", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_935", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_936", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_937", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_938", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_939", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_940", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_941", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_942", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_943", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_944", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_945", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_946", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_947", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_948", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_949", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_950", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_951", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_952", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_953", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_954", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_955", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_956", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_957", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_958", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_959", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_960", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_961", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_962", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_963", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_964", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_965", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_966", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_967", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_968", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_969", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_970", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_971", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_972", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_973", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_974", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_975", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_976", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_977", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_978", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_979", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_980", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_981", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_982", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_983", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_984", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_985", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_986", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_987", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_988", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_989", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_990", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_991", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_992", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_993", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_994", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_995", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_996", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_997", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_998", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_999", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1000", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1001", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1002", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1003", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1004", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1005", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1006", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1007", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1008", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1009", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1010", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1011", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1012", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1013", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1014", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1015", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1016", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1017", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1018", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1019", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1020", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1021", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1022", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1023", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1024", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1025", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1026", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1027", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1028", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1029", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1030", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1031", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1032", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1033", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1034", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1035", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1036", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1037", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1038", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1039", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1040", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1041", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1042", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1043", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1044", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1045", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1046", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1047", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1048", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1049", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1050", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1051", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1052", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1053", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1054", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1055", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1056", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1057", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1058", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1059", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1060", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1061", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1062", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1063", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1064", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1065", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1066", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1067", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1068", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1069", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1070", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1071", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1072", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1073", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1074", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1075", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1076", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1077", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1078", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1079", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1080", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1081", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1082", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1083", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1084", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1085", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1086", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1087", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1088", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1089", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1090", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1091", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1092", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1093", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1094", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1095", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1096", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1097", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1098", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1099", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1100", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1101", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1102", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1103", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1104", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1105", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1106", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1107", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1108", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1109", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1110", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1111", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1112", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1113", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1114", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1115", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1116", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1117", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1118", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1119", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1120", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1121", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1122", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1123", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1124", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1125", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1126", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1127", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1128", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1129", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1130", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1131", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1132", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1133", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1134", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1135", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1136", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1137", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1138", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1139", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1140", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1141", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1142", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1143", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1144", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1145", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1146", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1147", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1148", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1149", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1150", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_8_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U5340", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_8_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U5341", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_8_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U5342", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_8_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U5343", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_8_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U5344", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_8_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U5345", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_8_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U5346", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_8_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U5347", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_8_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U5348", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_8_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U5349", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_8_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U5350", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_8_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U5351", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_8_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U5352", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_8_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U5353", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_8_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U5354", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_8_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U5355", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_8_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U5356", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_8_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_8 {
		conv2d_64_padded_window_stream_8 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_8 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_8_Pipeline_inputs {
		conv2d_64_padded_window_stream_8 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_576 {Type I LastRead 0 FirstWrite -1}
		weights_load_577 {Type I LastRead 0 FirstWrite -1}
		weights_load_578 {Type I LastRead 0 FirstWrite -1}
		weights_load_579 {Type I LastRead 0 FirstWrite -1}
		weights_load_580 {Type I LastRead 0 FirstWrite -1}
		weights_load_581 {Type I LastRead 0 FirstWrite -1}
		weights_load_582 {Type I LastRead 0 FirstWrite -1}
		weights_load_583 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_8 {Type O LastRead -1 FirstWrite 16}
		weights_load_584 {Type I LastRead 0 FirstWrite -1}
		weights_load_585 {Type I LastRead 0 FirstWrite -1}
		weights_load_586 {Type I LastRead 0 FirstWrite -1}
		weights_load_587 {Type I LastRead 0 FirstWrite -1}
		weights_load_588 {Type I LastRead 0 FirstWrite -1}
		weights_load_589 {Type I LastRead 0 FirstWrite -1}
		weights_load_590 {Type I LastRead 0 FirstWrite -1}
		weights_load_591 {Type I LastRead 0 FirstWrite -1}
		weights_load_592 {Type I LastRead 0 FirstWrite -1}
		weights_load_593 {Type I LastRead 0 FirstWrite -1}
		weights_load_594 {Type I LastRead 0 FirstWrite -1}
		weights_load_595 {Type I LastRead 0 FirstWrite -1}
		weights_load_596 {Type I LastRead 0 FirstWrite -1}
		weights_load_597 {Type I LastRead 0 FirstWrite -1}
		weights_load_598 {Type I LastRead 0 FirstWrite -1}
		weights_load_599 {Type I LastRead 0 FirstWrite -1}
		weights_load_600 {Type I LastRead 0 FirstWrite -1}
		weights_load_601 {Type I LastRead 0 FirstWrite -1}
		weights_load_602 {Type I LastRead 0 FirstWrite -1}
		weights_load_603 {Type I LastRead 0 FirstWrite -1}
		weights_load_604 {Type I LastRead 0 FirstWrite -1}
		weights_load_605 {Type I LastRead 0 FirstWrite -1}
		weights_load_606 {Type I LastRead 0 FirstWrite -1}
		weights_load_607 {Type I LastRead 0 FirstWrite -1}
		weights_load_608 {Type I LastRead 0 FirstWrite -1}
		weights_load_609 {Type I LastRead 0 FirstWrite -1}
		weights_load_610 {Type I LastRead 0 FirstWrite -1}
		weights_load_611 {Type I LastRead 0 FirstWrite -1}
		weights_load_612 {Type I LastRead 0 FirstWrite -1}
		weights_load_613 {Type I LastRead 0 FirstWrite -1}
		weights_load_614 {Type I LastRead 0 FirstWrite -1}
		weights_load_615 {Type I LastRead 0 FirstWrite -1}
		weights_load_616 {Type I LastRead 0 FirstWrite -1}
		weights_load_617 {Type I LastRead 0 FirstWrite -1}
		weights_load_618 {Type I LastRead 0 FirstWrite -1}
		weights_load_619 {Type I LastRead 0 FirstWrite -1}
		weights_load_620 {Type I LastRead 0 FirstWrite -1}
		weights_load_621 {Type I LastRead 0 FirstWrite -1}
		weights_load_622 {Type I LastRead 0 FirstWrite -1}
		weights_load_623 {Type I LastRead 0 FirstWrite -1}
		weights_load_624 {Type I LastRead 0 FirstWrite -1}
		weights_load_625 {Type I LastRead 0 FirstWrite -1}
		weights_load_626 {Type I LastRead 0 FirstWrite -1}
		weights_load_627 {Type I LastRead 0 FirstWrite -1}
		weights_load_628 {Type I LastRead 0 FirstWrite -1}
		weights_load_629 {Type I LastRead 0 FirstWrite -1}
		weights_load_630 {Type I LastRead 0 FirstWrite -1}
		weights_load_631 {Type I LastRead 0 FirstWrite -1}
		weights_load_632 {Type I LastRead 0 FirstWrite -1}
		weights_load_633 {Type I LastRead 0 FirstWrite -1}
		weights_load_634 {Type I LastRead 0 FirstWrite -1}
		weights_load_635 {Type I LastRead 0 FirstWrite -1}
		weights_load_636 {Type I LastRead 0 FirstWrite -1}
		weights_load_637 {Type I LastRead 0 FirstWrite -1}
		weights_load_638 {Type I LastRead 0 FirstWrite -1}
		weights_load_639 {Type I LastRead 0 FirstWrite -1}
		weights_load_640 {Type I LastRead 0 FirstWrite -1}
		weights_load_641 {Type I LastRead 0 FirstWrite -1}
		weights_load_642 {Type I LastRead 0 FirstWrite -1}
		weights_load_643 {Type I LastRead 0 FirstWrite -1}
		weights_load_644 {Type I LastRead 0 FirstWrite -1}
		weights_load_645 {Type I LastRead 0 FirstWrite -1}
		weights_load_646 {Type I LastRead 0 FirstWrite -1}
		weights_load_647 {Type I LastRead 0 FirstWrite -1}
		weights_load_648 {Type I LastRead 0 FirstWrite -1}
		weights_load_649 {Type I LastRead 0 FirstWrite -1}
		weights_load_650 {Type I LastRead 0 FirstWrite -1}
		weights_load_651 {Type I LastRead 0 FirstWrite -1}
		weights_load_652 {Type I LastRead 0 FirstWrite -1}
		weights_load_653 {Type I LastRead 0 FirstWrite -1}
		weights_load_654 {Type I LastRead 0 FirstWrite -1}
		weights_load_655 {Type I LastRead 0 FirstWrite -1}
		weights_load_656 {Type I LastRead 0 FirstWrite -1}
		weights_load_657 {Type I LastRead 0 FirstWrite -1}
		weights_load_658 {Type I LastRead 0 FirstWrite -1}
		weights_load_659 {Type I LastRead 0 FirstWrite -1}
		weights_load_660 {Type I LastRead 0 FirstWrite -1}
		weights_load_661 {Type I LastRead 0 FirstWrite -1}
		weights_load_662 {Type I LastRead 0 FirstWrite -1}
		weights_load_663 {Type I LastRead 0 FirstWrite -1}
		weights_load_664 {Type I LastRead 0 FirstWrite -1}
		weights_load_665 {Type I LastRead 0 FirstWrite -1}
		weights_load_666 {Type I LastRead 0 FirstWrite -1}
		weights_load_667 {Type I LastRead 0 FirstWrite -1}
		weights_load_668 {Type I LastRead 0 FirstWrite -1}
		weights_load_669 {Type I LastRead 0 FirstWrite -1}
		weights_load_670 {Type I LastRead 0 FirstWrite -1}
		weights_load_671 {Type I LastRead 0 FirstWrite -1}
		weights_load_672 {Type I LastRead 0 FirstWrite -1}
		weights_load_673 {Type I LastRead 0 FirstWrite -1}
		weights_load_674 {Type I LastRead 0 FirstWrite -1}
		weights_load_675 {Type I LastRead 0 FirstWrite -1}
		weights_load_676 {Type I LastRead 0 FirstWrite -1}
		weights_load_677 {Type I LastRead 0 FirstWrite -1}
		weights_load_678 {Type I LastRead 0 FirstWrite -1}
		weights_load_679 {Type I LastRead 0 FirstWrite -1}
		weights_load_680 {Type I LastRead 0 FirstWrite -1}
		weights_load_681 {Type I LastRead 0 FirstWrite -1}
		weights_load_682 {Type I LastRead 0 FirstWrite -1}
		weights_load_683 {Type I LastRead 0 FirstWrite -1}
		weights_load_684 {Type I LastRead 0 FirstWrite -1}
		weights_load_685 {Type I LastRead 0 FirstWrite -1}
		weights_load_686 {Type I LastRead 0 FirstWrite -1}
		weights_load_687 {Type I LastRead 0 FirstWrite -1}
		weights_load_688 {Type I LastRead 0 FirstWrite -1}
		weights_load_689 {Type I LastRead 0 FirstWrite -1}
		weights_load_690 {Type I LastRead 0 FirstWrite -1}
		weights_load_691 {Type I LastRead 0 FirstWrite -1}
		weights_load_692 {Type I LastRead 0 FirstWrite -1}
		weights_load_693 {Type I LastRead 0 FirstWrite -1}
		weights_load_694 {Type I LastRead 0 FirstWrite -1}
		weights_load_695 {Type I LastRead 0 FirstWrite -1}
		weights_load_696 {Type I LastRead 0 FirstWrite -1}
		weights_load_697 {Type I LastRead 0 FirstWrite -1}
		weights_load_698 {Type I LastRead 0 FirstWrite -1}
		weights_load_699 {Type I LastRead 0 FirstWrite -1}
		weights_load_700 {Type I LastRead 0 FirstWrite -1}
		weights_load_701 {Type I LastRead 0 FirstWrite -1}
		weights_load_702 {Type I LastRead 0 FirstWrite -1}
		weights_load_703 {Type I LastRead 0 FirstWrite -1}
		weights_load_704 {Type I LastRead 0 FirstWrite -1}
		weights_load_705 {Type I LastRead 0 FirstWrite -1}
		weights_load_706 {Type I LastRead 0 FirstWrite -1}
		weights_load_707 {Type I LastRead 0 FirstWrite -1}
		weights_load_708 {Type I LastRead 0 FirstWrite -1}
		weights_load_709 {Type I LastRead 0 FirstWrite -1}
		weights_load_710 {Type I LastRead 0 FirstWrite -1}
		weights_load_711 {Type I LastRead 0 FirstWrite -1}
		weights_load_712 {Type I LastRead 0 FirstWrite -1}
		weights_load_713 {Type I LastRead 0 FirstWrite -1}
		weights_load_714 {Type I LastRead 0 FirstWrite -1}
		weights_load_715 {Type I LastRead 0 FirstWrite -1}
		weights_load_716 {Type I LastRead 0 FirstWrite -1}
		weights_load_717 {Type I LastRead 0 FirstWrite -1}
		weights_load_718 {Type I LastRead 0 FirstWrite -1}
		weights_load_719 {Type I LastRead 0 FirstWrite -1}
		weights_load_720 {Type I LastRead 0 FirstWrite -1}
		weights_load_721 {Type I LastRead 0 FirstWrite -1}
		weights_load_722 {Type I LastRead 0 FirstWrite -1}
		weights_load_723 {Type I LastRead 0 FirstWrite -1}
		weights_load_724 {Type I LastRead 0 FirstWrite -1}
		weights_load_725 {Type I LastRead 0 FirstWrite -1}
		weights_load_726 {Type I LastRead 0 FirstWrite -1}
		weights_load_727 {Type I LastRead 0 FirstWrite -1}
		weights_load_728 {Type I LastRead 0 FirstWrite -1}
		weights_load_729 {Type I LastRead 0 FirstWrite -1}
		weights_load_730 {Type I LastRead 0 FirstWrite -1}
		weights_load_731 {Type I LastRead 0 FirstWrite -1}
		weights_load_732 {Type I LastRead 0 FirstWrite -1}
		weights_load_733 {Type I LastRead 0 FirstWrite -1}
		weights_load_734 {Type I LastRead 0 FirstWrite -1}
		weights_load_735 {Type I LastRead 0 FirstWrite -1}
		weights_load_736 {Type I LastRead 0 FirstWrite -1}
		weights_load_737 {Type I LastRead 0 FirstWrite -1}
		weights_load_738 {Type I LastRead 0 FirstWrite -1}
		weights_load_739 {Type I LastRead 0 FirstWrite -1}
		weights_load_740 {Type I LastRead 0 FirstWrite -1}
		weights_load_741 {Type I LastRead 0 FirstWrite -1}
		weights_load_742 {Type I LastRead 0 FirstWrite -1}
		weights_load_743 {Type I LastRead 0 FirstWrite -1}
		weights_load_744 {Type I LastRead 0 FirstWrite -1}
		weights_load_745 {Type I LastRead 0 FirstWrite -1}
		weights_load_746 {Type I LastRead 0 FirstWrite -1}
		weights_load_747 {Type I LastRead 0 FirstWrite -1}
		weights_load_748 {Type I LastRead 0 FirstWrite -1}
		weights_load_749 {Type I LastRead 0 FirstWrite -1}
		weights_load_750 {Type I LastRead 0 FirstWrite -1}
		weights_load_751 {Type I LastRead 0 FirstWrite -1}
		weights_load_752 {Type I LastRead 0 FirstWrite -1}
		weights_load_753 {Type I LastRead 0 FirstWrite -1}
		weights_load_754 {Type I LastRead 0 FirstWrite -1}
		weights_load_755 {Type I LastRead 0 FirstWrite -1}
		weights_load_756 {Type I LastRead 0 FirstWrite -1}
		weights_load_757 {Type I LastRead 0 FirstWrite -1}
		weights_load_758 {Type I LastRead 0 FirstWrite -1}
		weights_load_759 {Type I LastRead 0 FirstWrite -1}
		weights_load_760 {Type I LastRead 0 FirstWrite -1}
		weights_load_761 {Type I LastRead 0 FirstWrite -1}
		weights_load_762 {Type I LastRead 0 FirstWrite -1}
		weights_load_763 {Type I LastRead 0 FirstWrite -1}
		weights_load_764 {Type I LastRead 0 FirstWrite -1}
		weights_load_765 {Type I LastRead 0 FirstWrite -1}
		weights_load_766 {Type I LastRead 0 FirstWrite -1}
		weights_load_767 {Type I LastRead 0 FirstWrite -1}
		weights_load_768 {Type I LastRead 0 FirstWrite -1}
		weights_load_769 {Type I LastRead 0 FirstWrite -1}
		weights_load_770 {Type I LastRead 0 FirstWrite -1}
		weights_load_771 {Type I LastRead 0 FirstWrite -1}
		weights_load_772 {Type I LastRead 0 FirstWrite -1}
		weights_load_773 {Type I LastRead 0 FirstWrite -1}
		weights_load_774 {Type I LastRead 0 FirstWrite -1}
		weights_load_775 {Type I LastRead 0 FirstWrite -1}
		weights_load_776 {Type I LastRead 0 FirstWrite -1}
		weights_load_777 {Type I LastRead 0 FirstWrite -1}
		weights_load_778 {Type I LastRead 0 FirstWrite -1}
		weights_load_779 {Type I LastRead 0 FirstWrite -1}
		weights_load_780 {Type I LastRead 0 FirstWrite -1}
		weights_load_781 {Type I LastRead 0 FirstWrite -1}
		weights_load_782 {Type I LastRead 0 FirstWrite -1}
		weights_load_783 {Type I LastRead 0 FirstWrite -1}
		weights_load_784 {Type I LastRead 0 FirstWrite -1}
		weights_load_785 {Type I LastRead 0 FirstWrite -1}
		weights_load_786 {Type I LastRead 0 FirstWrite -1}
		weights_load_787 {Type I LastRead 0 FirstWrite -1}
		weights_load_788 {Type I LastRead 0 FirstWrite -1}
		weights_load_789 {Type I LastRead 0 FirstWrite -1}
		weights_load_790 {Type I LastRead 0 FirstWrite -1}
		weights_load_791 {Type I LastRead 0 FirstWrite -1}
		weights_load_792 {Type I LastRead 0 FirstWrite -1}
		weights_load_793 {Type I LastRead 0 FirstWrite -1}
		weights_load_794 {Type I LastRead 0 FirstWrite -1}
		weights_load_795 {Type I LastRead 0 FirstWrite -1}
		weights_load_796 {Type I LastRead 0 FirstWrite -1}
		weights_load_797 {Type I LastRead 0 FirstWrite -1}
		weights_load_798 {Type I LastRead 0 FirstWrite -1}
		weights_load_799 {Type I LastRead 0 FirstWrite -1}
		weights_load_800 {Type I LastRead 0 FirstWrite -1}
		weights_load_801 {Type I LastRead 0 FirstWrite -1}
		weights_load_802 {Type I LastRead 0 FirstWrite -1}
		weights_load_803 {Type I LastRead 0 FirstWrite -1}
		weights_load_804 {Type I LastRead 0 FirstWrite -1}
		weights_load_805 {Type I LastRead 0 FirstWrite -1}
		weights_load_806 {Type I LastRead 0 FirstWrite -1}
		weights_load_807 {Type I LastRead 0 FirstWrite -1}
		weights_load_808 {Type I LastRead 0 FirstWrite -1}
		weights_load_809 {Type I LastRead 0 FirstWrite -1}
		weights_load_810 {Type I LastRead 0 FirstWrite -1}
		weights_load_811 {Type I LastRead 0 FirstWrite -1}
		weights_load_812 {Type I LastRead 0 FirstWrite -1}
		weights_load_813 {Type I LastRead 0 FirstWrite -1}
		weights_load_814 {Type I LastRead 0 FirstWrite -1}
		weights_load_815 {Type I LastRead 0 FirstWrite -1}
		weights_load_816 {Type I LastRead 0 FirstWrite -1}
		weights_load_817 {Type I LastRead 0 FirstWrite -1}
		weights_load_818 {Type I LastRead 0 FirstWrite -1}
		weights_load_819 {Type I LastRead 0 FirstWrite -1}
		weights_load_820 {Type I LastRead 0 FirstWrite -1}
		weights_load_821 {Type I LastRead 0 FirstWrite -1}
		weights_load_822 {Type I LastRead 0 FirstWrite -1}
		weights_load_823 {Type I LastRead 0 FirstWrite -1}
		weights_load_824 {Type I LastRead 0 FirstWrite -1}
		weights_load_825 {Type I LastRead 0 FirstWrite -1}
		weights_load_826 {Type I LastRead 0 FirstWrite -1}
		weights_load_827 {Type I LastRead 0 FirstWrite -1}
		weights_load_828 {Type I LastRead 0 FirstWrite -1}
		weights_load_829 {Type I LastRead 0 FirstWrite -1}
		weights_load_830 {Type I LastRead 0 FirstWrite -1}
		weights_load_831 {Type I LastRead 0 FirstWrite -1}
		weights_load_832 {Type I LastRead 0 FirstWrite -1}
		weights_load_833 {Type I LastRead 0 FirstWrite -1}
		weights_load_834 {Type I LastRead 0 FirstWrite -1}
		weights_load_835 {Type I LastRead 0 FirstWrite -1}
		weights_load_836 {Type I LastRead 0 FirstWrite -1}
		weights_load_837 {Type I LastRead 0 FirstWrite -1}
		weights_load_838 {Type I LastRead 0 FirstWrite -1}
		weights_load_839 {Type I LastRead 0 FirstWrite -1}
		weights_load_840 {Type I LastRead 0 FirstWrite -1}
		weights_load_841 {Type I LastRead 0 FirstWrite -1}
		weights_load_842 {Type I LastRead 0 FirstWrite -1}
		weights_load_843 {Type I LastRead 0 FirstWrite -1}
		weights_load_844 {Type I LastRead 0 FirstWrite -1}
		weights_load_845 {Type I LastRead 0 FirstWrite -1}
		weights_load_846 {Type I LastRead 0 FirstWrite -1}
		weights_load_847 {Type I LastRead 0 FirstWrite -1}
		weights_load_848 {Type I LastRead 0 FirstWrite -1}
		weights_load_849 {Type I LastRead 0 FirstWrite -1}
		weights_load_850 {Type I LastRead 0 FirstWrite -1}
		weights_load_851 {Type I LastRead 0 FirstWrite -1}
		weights_load_852 {Type I LastRead 0 FirstWrite -1}
		weights_load_853 {Type I LastRead 0 FirstWrite -1}
		weights_load_854 {Type I LastRead 0 FirstWrite -1}
		weights_load_855 {Type I LastRead 0 FirstWrite -1}
		weights_load_856 {Type I LastRead 0 FirstWrite -1}
		weights_load_857 {Type I LastRead 0 FirstWrite -1}
		weights_load_858 {Type I LastRead 0 FirstWrite -1}
		weights_load_859 {Type I LastRead 0 FirstWrite -1}
		weights_load_860 {Type I LastRead 0 FirstWrite -1}
		weights_load_861 {Type I LastRead 0 FirstWrite -1}
		weights_load_862 {Type I LastRead 0 FirstWrite -1}
		weights_load_863 {Type I LastRead 0 FirstWrite -1}
		weights_load_864 {Type I LastRead 0 FirstWrite -1}
		weights_load_865 {Type I LastRead 0 FirstWrite -1}
		weights_load_866 {Type I LastRead 0 FirstWrite -1}
		weights_load_867 {Type I LastRead 0 FirstWrite -1}
		weights_load_868 {Type I LastRead 0 FirstWrite -1}
		weights_load_869 {Type I LastRead 0 FirstWrite -1}
		weights_load_870 {Type I LastRead 0 FirstWrite -1}
		weights_load_871 {Type I LastRead 0 FirstWrite -1}
		weights_load_872 {Type I LastRead 0 FirstWrite -1}
		weights_load_873 {Type I LastRead 0 FirstWrite -1}
		weights_load_874 {Type I LastRead 0 FirstWrite -1}
		weights_load_875 {Type I LastRead 0 FirstWrite -1}
		weights_load_876 {Type I LastRead 0 FirstWrite -1}
		weights_load_877 {Type I LastRead 0 FirstWrite -1}
		weights_load_878 {Type I LastRead 0 FirstWrite -1}
		weights_load_879 {Type I LastRead 0 FirstWrite -1}
		weights_load_880 {Type I LastRead 0 FirstWrite -1}
		weights_load_881 {Type I LastRead 0 FirstWrite -1}
		weights_load_882 {Type I LastRead 0 FirstWrite -1}
		weights_load_883 {Type I LastRead 0 FirstWrite -1}
		weights_load_884 {Type I LastRead 0 FirstWrite -1}
		weights_load_885 {Type I LastRead 0 FirstWrite -1}
		weights_load_886 {Type I LastRead 0 FirstWrite -1}
		weights_load_887 {Type I LastRead 0 FirstWrite -1}
		weights_load_888 {Type I LastRead 0 FirstWrite -1}
		weights_load_889 {Type I LastRead 0 FirstWrite -1}
		weights_load_890 {Type I LastRead 0 FirstWrite -1}
		weights_load_891 {Type I LastRead 0 FirstWrite -1}
		weights_load_892 {Type I LastRead 0 FirstWrite -1}
		weights_load_893 {Type I LastRead 0 FirstWrite -1}
		weights_load_894 {Type I LastRead 0 FirstWrite -1}
		weights_load_895 {Type I LastRead 0 FirstWrite -1}
		weights_load_896 {Type I LastRead 0 FirstWrite -1}
		weights_load_897 {Type I LastRead 0 FirstWrite -1}
		weights_load_898 {Type I LastRead 0 FirstWrite -1}
		weights_load_899 {Type I LastRead 0 FirstWrite -1}
		weights_load_900 {Type I LastRead 0 FirstWrite -1}
		weights_load_901 {Type I LastRead 0 FirstWrite -1}
		weights_load_902 {Type I LastRead 0 FirstWrite -1}
		weights_load_903 {Type I LastRead 0 FirstWrite -1}
		weights_load_904 {Type I LastRead 0 FirstWrite -1}
		weights_load_905 {Type I LastRead 0 FirstWrite -1}
		weights_load_906 {Type I LastRead 0 FirstWrite -1}
		weights_load_907 {Type I LastRead 0 FirstWrite -1}
		weights_load_908 {Type I LastRead 0 FirstWrite -1}
		weights_load_909 {Type I LastRead 0 FirstWrite -1}
		weights_load_910 {Type I LastRead 0 FirstWrite -1}
		weights_load_911 {Type I LastRead 0 FirstWrite -1}
		weights_load_912 {Type I LastRead 0 FirstWrite -1}
		weights_load_913 {Type I LastRead 0 FirstWrite -1}
		weights_load_914 {Type I LastRead 0 FirstWrite -1}
		weights_load_915 {Type I LastRead 0 FirstWrite -1}
		weights_load_916 {Type I LastRead 0 FirstWrite -1}
		weights_load_917 {Type I LastRead 0 FirstWrite -1}
		weights_load_918 {Type I LastRead 0 FirstWrite -1}
		weights_load_919 {Type I LastRead 0 FirstWrite -1}
		weights_load_920 {Type I LastRead 0 FirstWrite -1}
		weights_load_921 {Type I LastRead 0 FirstWrite -1}
		weights_load_922 {Type I LastRead 0 FirstWrite -1}
		weights_load_923 {Type I LastRead 0 FirstWrite -1}
		weights_load_924 {Type I LastRead 0 FirstWrite -1}
		weights_load_925 {Type I LastRead 0 FirstWrite -1}
		weights_load_926 {Type I LastRead 0 FirstWrite -1}
		weights_load_927 {Type I LastRead 0 FirstWrite -1}
		weights_load_928 {Type I LastRead 0 FirstWrite -1}
		weights_load_929 {Type I LastRead 0 FirstWrite -1}
		weights_load_930 {Type I LastRead 0 FirstWrite -1}
		weights_load_931 {Type I LastRead 0 FirstWrite -1}
		weights_load_932 {Type I LastRead 0 FirstWrite -1}
		weights_load_933 {Type I LastRead 0 FirstWrite -1}
		weights_load_934 {Type I LastRead 0 FirstWrite -1}
		weights_load_935 {Type I LastRead 0 FirstWrite -1}
		weights_load_936 {Type I LastRead 0 FirstWrite -1}
		weights_load_937 {Type I LastRead 0 FirstWrite -1}
		weights_load_938 {Type I LastRead 0 FirstWrite -1}
		weights_load_939 {Type I LastRead 0 FirstWrite -1}
		weights_load_940 {Type I LastRead 0 FirstWrite -1}
		weights_load_941 {Type I LastRead 0 FirstWrite -1}
		weights_load_942 {Type I LastRead 0 FirstWrite -1}
		weights_load_943 {Type I LastRead 0 FirstWrite -1}
		weights_load_944 {Type I LastRead 0 FirstWrite -1}
		weights_load_945 {Type I LastRead 0 FirstWrite -1}
		weights_load_946 {Type I LastRead 0 FirstWrite -1}
		weights_load_947 {Type I LastRead 0 FirstWrite -1}
		weights_load_948 {Type I LastRead 0 FirstWrite -1}
		weights_load_949 {Type I LastRead 0 FirstWrite -1}
		weights_load_950 {Type I LastRead 0 FirstWrite -1}
		weights_load_951 {Type I LastRead 0 FirstWrite -1}
		weights_load_952 {Type I LastRead 0 FirstWrite -1}
		weights_load_953 {Type I LastRead 0 FirstWrite -1}
		weights_load_954 {Type I LastRead 0 FirstWrite -1}
		weights_load_955 {Type I LastRead 0 FirstWrite -1}
		weights_load_956 {Type I LastRead 0 FirstWrite -1}
		weights_load_957 {Type I LastRead 0 FirstWrite -1}
		weights_load_958 {Type I LastRead 0 FirstWrite -1}
		weights_load_959 {Type I LastRead 0 FirstWrite -1}
		weights_load_960 {Type I LastRead 0 FirstWrite -1}
		weights_load_961 {Type I LastRead 0 FirstWrite -1}
		weights_load_962 {Type I LastRead 0 FirstWrite -1}
		weights_load_963 {Type I LastRead 0 FirstWrite -1}
		weights_load_964 {Type I LastRead 0 FirstWrite -1}
		weights_load_965 {Type I LastRead 0 FirstWrite -1}
		weights_load_966 {Type I LastRead 0 FirstWrite -1}
		weights_load_967 {Type I LastRead 0 FirstWrite -1}
		weights_load_968 {Type I LastRead 0 FirstWrite -1}
		weights_load_969 {Type I LastRead 0 FirstWrite -1}
		weights_load_970 {Type I LastRead 0 FirstWrite -1}
		weights_load_971 {Type I LastRead 0 FirstWrite -1}
		weights_load_972 {Type I LastRead 0 FirstWrite -1}
		weights_load_973 {Type I LastRead 0 FirstWrite -1}
		weights_load_974 {Type I LastRead 0 FirstWrite -1}
		weights_load_975 {Type I LastRead 0 FirstWrite -1}
		weights_load_976 {Type I LastRead 0 FirstWrite -1}
		weights_load_977 {Type I LastRead 0 FirstWrite -1}
		weights_load_978 {Type I LastRead 0 FirstWrite -1}
		weights_load_979 {Type I LastRead 0 FirstWrite -1}
		weights_load_980 {Type I LastRead 0 FirstWrite -1}
		weights_load_981 {Type I LastRead 0 FirstWrite -1}
		weights_load_982 {Type I LastRead 0 FirstWrite -1}
		weights_load_983 {Type I LastRead 0 FirstWrite -1}
		weights_load_984 {Type I LastRead 0 FirstWrite -1}
		weights_load_985 {Type I LastRead 0 FirstWrite -1}
		weights_load_986 {Type I LastRead 0 FirstWrite -1}
		weights_load_987 {Type I LastRead 0 FirstWrite -1}
		weights_load_988 {Type I LastRead 0 FirstWrite -1}
		weights_load_989 {Type I LastRead 0 FirstWrite -1}
		weights_load_990 {Type I LastRead 0 FirstWrite -1}
		weights_load_991 {Type I LastRead 0 FirstWrite -1}
		weights_load_992 {Type I LastRead 0 FirstWrite -1}
		weights_load_993 {Type I LastRead 0 FirstWrite -1}
		weights_load_994 {Type I LastRead 0 FirstWrite -1}
		weights_load_995 {Type I LastRead 0 FirstWrite -1}
		weights_load_996 {Type I LastRead 0 FirstWrite -1}
		weights_load_997 {Type I LastRead 0 FirstWrite -1}
		weights_load_998 {Type I LastRead 0 FirstWrite -1}
		weights_load_999 {Type I LastRead 0 FirstWrite -1}
		weights_load_1000 {Type I LastRead 0 FirstWrite -1}
		weights_load_1001 {Type I LastRead 0 FirstWrite -1}
		weights_load_1002 {Type I LastRead 0 FirstWrite -1}
		weights_load_1003 {Type I LastRead 0 FirstWrite -1}
		weights_load_1004 {Type I LastRead 0 FirstWrite -1}
		weights_load_1005 {Type I LastRead 0 FirstWrite -1}
		weights_load_1006 {Type I LastRead 0 FirstWrite -1}
		weights_load_1007 {Type I LastRead 0 FirstWrite -1}
		weights_load_1008 {Type I LastRead 0 FirstWrite -1}
		weights_load_1009 {Type I LastRead 0 FirstWrite -1}
		weights_load_1010 {Type I LastRead 0 FirstWrite -1}
		weights_load_1011 {Type I LastRead 0 FirstWrite -1}
		weights_load_1012 {Type I LastRead 0 FirstWrite -1}
		weights_load_1013 {Type I LastRead 0 FirstWrite -1}
		weights_load_1014 {Type I LastRead 0 FirstWrite -1}
		weights_load_1015 {Type I LastRead 0 FirstWrite -1}
		weights_load_1016 {Type I LastRead 0 FirstWrite -1}
		weights_load_1017 {Type I LastRead 0 FirstWrite -1}
		weights_load_1018 {Type I LastRead 0 FirstWrite -1}
		weights_load_1019 {Type I LastRead 0 FirstWrite -1}
		weights_load_1020 {Type I LastRead 0 FirstWrite -1}
		weights_load_1021 {Type I LastRead 0 FirstWrite -1}
		weights_load_1022 {Type I LastRead 0 FirstWrite -1}
		weights_load_1023 {Type I LastRead 0 FirstWrite -1}
		weights_load_1024 {Type I LastRead 0 FirstWrite -1}
		weights_load_1025 {Type I LastRead 0 FirstWrite -1}
		weights_load_1026 {Type I LastRead 0 FirstWrite -1}
		weights_load_1027 {Type I LastRead 0 FirstWrite -1}
		weights_load_1028 {Type I LastRead 0 FirstWrite -1}
		weights_load_1029 {Type I LastRead 0 FirstWrite -1}
		weights_load_1030 {Type I LastRead 0 FirstWrite -1}
		weights_load_1031 {Type I LastRead 0 FirstWrite -1}
		weights_load_1032 {Type I LastRead 0 FirstWrite -1}
		weights_load_1033 {Type I LastRead 0 FirstWrite -1}
		weights_load_1034 {Type I LastRead 0 FirstWrite -1}
		weights_load_1035 {Type I LastRead 0 FirstWrite -1}
		weights_load_1036 {Type I LastRead 0 FirstWrite -1}
		weights_load_1037 {Type I LastRead 0 FirstWrite -1}
		weights_load_1038 {Type I LastRead 0 FirstWrite -1}
		weights_load_1039 {Type I LastRead 0 FirstWrite -1}
		weights_load_1040 {Type I LastRead 0 FirstWrite -1}
		weights_load_1041 {Type I LastRead 0 FirstWrite -1}
		weights_load_1042 {Type I LastRead 0 FirstWrite -1}
		weights_load_1043 {Type I LastRead 0 FirstWrite -1}
		weights_load_1044 {Type I LastRead 0 FirstWrite -1}
		weights_load_1045 {Type I LastRead 0 FirstWrite -1}
		weights_load_1046 {Type I LastRead 0 FirstWrite -1}
		weights_load_1047 {Type I LastRead 0 FirstWrite -1}
		weights_load_1048 {Type I LastRead 0 FirstWrite -1}
		weights_load_1049 {Type I LastRead 0 FirstWrite -1}
		weights_load_1050 {Type I LastRead 0 FirstWrite -1}
		weights_load_1051 {Type I LastRead 0 FirstWrite -1}
		weights_load_1052 {Type I LastRead 0 FirstWrite -1}
		weights_load_1053 {Type I LastRead 0 FirstWrite -1}
		weights_load_1054 {Type I LastRead 0 FirstWrite -1}
		weights_load_1055 {Type I LastRead 0 FirstWrite -1}
		weights_load_1056 {Type I LastRead 0 FirstWrite -1}
		weights_load_1057 {Type I LastRead 0 FirstWrite -1}
		weights_load_1058 {Type I LastRead 0 FirstWrite -1}
		weights_load_1059 {Type I LastRead 0 FirstWrite -1}
		weights_load_1060 {Type I LastRead 0 FirstWrite -1}
		weights_load_1061 {Type I LastRead 0 FirstWrite -1}
		weights_load_1062 {Type I LastRead 0 FirstWrite -1}
		weights_load_1063 {Type I LastRead 0 FirstWrite -1}
		weights_load_1064 {Type I LastRead 0 FirstWrite -1}
		weights_load_1065 {Type I LastRead 0 FirstWrite -1}
		weights_load_1066 {Type I LastRead 0 FirstWrite -1}
		weights_load_1067 {Type I LastRead 0 FirstWrite -1}
		weights_load_1068 {Type I LastRead 0 FirstWrite -1}
		weights_load_1069 {Type I LastRead 0 FirstWrite -1}
		weights_load_1070 {Type I LastRead 0 FirstWrite -1}
		weights_load_1071 {Type I LastRead 0 FirstWrite -1}
		weights_load_1072 {Type I LastRead 0 FirstWrite -1}
		weights_load_1073 {Type I LastRead 0 FirstWrite -1}
		weights_load_1074 {Type I LastRead 0 FirstWrite -1}
		weights_load_1075 {Type I LastRead 0 FirstWrite -1}
		weights_load_1076 {Type I LastRead 0 FirstWrite -1}
		weights_load_1077 {Type I LastRead 0 FirstWrite -1}
		weights_load_1078 {Type I LastRead 0 FirstWrite -1}
		weights_load_1079 {Type I LastRead 0 FirstWrite -1}
		weights_load_1080 {Type I LastRead 0 FirstWrite -1}
		weights_load_1081 {Type I LastRead 0 FirstWrite -1}
		weights_load_1082 {Type I LastRead 0 FirstWrite -1}
		weights_load_1083 {Type I LastRead 0 FirstWrite -1}
		weights_load_1084 {Type I LastRead 0 FirstWrite -1}
		weights_load_1085 {Type I LastRead 0 FirstWrite -1}
		weights_load_1086 {Type I LastRead 0 FirstWrite -1}
		weights_load_1087 {Type I LastRead 0 FirstWrite -1}
		weights_load_1088 {Type I LastRead 0 FirstWrite -1}
		weights_load_1089 {Type I LastRead 0 FirstWrite -1}
		weights_load_1090 {Type I LastRead 0 FirstWrite -1}
		weights_load_1091 {Type I LastRead 0 FirstWrite -1}
		weights_load_1092 {Type I LastRead 0 FirstWrite -1}
		weights_load_1093 {Type I LastRead 0 FirstWrite -1}
		weights_load_1094 {Type I LastRead 0 FirstWrite -1}
		weights_load_1095 {Type I LastRead 0 FirstWrite -1}
		weights_load_1096 {Type I LastRead 0 FirstWrite -1}
		weights_load_1097 {Type I LastRead 0 FirstWrite -1}
		weights_load_1098 {Type I LastRead 0 FirstWrite -1}
		weights_load_1099 {Type I LastRead 0 FirstWrite -1}
		weights_load_1100 {Type I LastRead 0 FirstWrite -1}
		weights_load_1101 {Type I LastRead 0 FirstWrite -1}
		weights_load_1102 {Type I LastRead 0 FirstWrite -1}
		weights_load_1103 {Type I LastRead 0 FirstWrite -1}
		weights_load_1104 {Type I LastRead 0 FirstWrite -1}
		weights_load_1105 {Type I LastRead 0 FirstWrite -1}
		weights_load_1106 {Type I LastRead 0 FirstWrite -1}
		weights_load_1107 {Type I LastRead 0 FirstWrite -1}
		weights_load_1108 {Type I LastRead 0 FirstWrite -1}
		weights_load_1109 {Type I LastRead 0 FirstWrite -1}
		weights_load_1110 {Type I LastRead 0 FirstWrite -1}
		weights_load_1111 {Type I LastRead 0 FirstWrite -1}
		weights_load_1112 {Type I LastRead 0 FirstWrite -1}
		weights_load_1113 {Type I LastRead 0 FirstWrite -1}
		weights_load_1114 {Type I LastRead 0 FirstWrite -1}
		weights_load_1115 {Type I LastRead 0 FirstWrite -1}
		weights_load_1116 {Type I LastRead 0 FirstWrite -1}
		weights_load_1117 {Type I LastRead 0 FirstWrite -1}
		weights_load_1118 {Type I LastRead 0 FirstWrite -1}
		weights_load_1119 {Type I LastRead 0 FirstWrite -1}
		weights_load_1120 {Type I LastRead 0 FirstWrite -1}
		weights_load_1121 {Type I LastRead 0 FirstWrite -1}
		weights_load_1122 {Type I LastRead 0 FirstWrite -1}
		weights_load_1123 {Type I LastRead 0 FirstWrite -1}
		weights_load_1124 {Type I LastRead 0 FirstWrite -1}
		weights_load_1125 {Type I LastRead 0 FirstWrite -1}
		weights_load_1126 {Type I LastRead 0 FirstWrite -1}
		weights_load_1127 {Type I LastRead 0 FirstWrite -1}
		weights_load_1128 {Type I LastRead 0 FirstWrite -1}
		weights_load_1129 {Type I LastRead 0 FirstWrite -1}
		weights_load_1130 {Type I LastRead 0 FirstWrite -1}
		weights_load_1131 {Type I LastRead 0 FirstWrite -1}
		weights_load_1132 {Type I LastRead 0 FirstWrite -1}
		weights_load_1133 {Type I LastRead 0 FirstWrite -1}
		weights_load_1134 {Type I LastRead 0 FirstWrite -1}
		weights_load_1135 {Type I LastRead 0 FirstWrite -1}
		weights_load_1136 {Type I LastRead 0 FirstWrite -1}
		weights_load_1137 {Type I LastRead 0 FirstWrite -1}
		weights_load_1138 {Type I LastRead 0 FirstWrite -1}
		weights_load_1139 {Type I LastRead 0 FirstWrite -1}
		weights_load_1140 {Type I LastRead 0 FirstWrite -1}
		weights_load_1141 {Type I LastRead 0 FirstWrite -1}
		weights_load_1142 {Type I LastRead 0 FirstWrite -1}
		weights_load_1143 {Type I LastRead 0 FirstWrite -1}
		weights_load_1144 {Type I LastRead 0 FirstWrite -1}
		weights_load_1145 {Type I LastRead 0 FirstWrite -1}
		weights_load_1146 {Type I LastRead 0 FirstWrite -1}
		weights_load_1147 {Type I LastRead 0 FirstWrite -1}
		weights_load_1148 {Type I LastRead 0 FirstWrite -1}
		weights_load_1149 {Type I LastRead 0 FirstWrite -1}
		weights_load_1150 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_8 { ap_fifo {  { conv2d_64_padded_window_stream_8_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_8_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_8_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_8_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_8_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_8 { ap_fifo {  { in_channel_map_stream_8_din fifo_port_we 1 32 }  { in_channel_map_stream_8_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_8_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_8_full_n fifo_status 0 1 }  { in_channel_map_stream_8_write fifo_data 1 1 } } }
}
