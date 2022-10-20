set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_4
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.4}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_4 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_4 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_4", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_4", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_4_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_4_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_4_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_4_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_4_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_4_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_4_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_4_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_4_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_4_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_4", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_4", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_4", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_4", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_4", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_4", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_4", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_4", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_4", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_4", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_4",
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
			{"Name" : "conv2d_64_padded_window_stream_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_4_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_4", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_4_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_4", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_4_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_4_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2876", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2877", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2878", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2879", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2880", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2881", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2882", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2883", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_2884", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2885", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2886", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2887", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2888", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2889", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2890", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2891", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2892", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2893", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2894", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2895", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2896", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2897", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2898", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2899", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2900", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2901", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2902", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2903", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2904", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2905", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2906", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2907", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2908", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2909", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2910", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2911", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2912", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2913", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2914", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2915", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2916", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2917", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2918", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2919", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2920", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2921", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2922", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2923", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2924", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2925", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2926", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2927", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2928", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2929", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2930", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2931", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2932", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2933", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2934", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2935", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2936", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2937", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2938", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2939", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2940", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2941", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2942", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2943", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2944", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2945", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2946", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2947", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2948", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2949", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2950", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2951", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2952", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2953", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2954", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2955", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2956", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2957", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2958", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2959", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2960", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2961", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2962", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2963", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2964", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2965", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2966", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2967", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2968", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2969", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2970", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2971", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2972", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2973", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2974", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2975", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2976", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2977", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2978", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2979", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2980", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2981", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2982", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2983", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2984", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2985", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2986", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2987", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2988", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2989", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2990", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2991", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2992", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2993", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2994", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2995", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2996", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2997", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2998", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2999", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3000", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3001", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3002", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3003", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3004", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3005", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3006", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3007", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3008", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3009", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3010", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3011", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3012", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3013", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3014", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3015", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3016", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3017", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3018", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3019", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3020", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3021", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3022", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3023", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3024", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3025", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3026", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3027", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3028", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3029", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3030", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3031", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3032", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3033", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3034", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3035", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3036", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3037", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3038", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3039", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3040", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3041", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3042", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3043", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3044", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3045", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3046", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3047", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3048", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3049", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3050", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3051", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3052", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3053", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3054", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3055", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3056", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3057", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3058", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3059", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3060", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3061", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3062", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3063", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3064", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3065", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3066", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3067", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3068", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3069", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3070", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3071", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3072", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3073", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3074", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3075", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3076", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3077", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3078", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3079", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3080", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3081", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3082", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3083", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3084", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3085", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3086", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3087", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3088", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3089", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3090", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3091", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3092", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3093", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3094", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3095", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3096", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3097", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3098", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3099", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3100", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3101", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3102", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3103", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3104", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3105", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3106", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3107", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3108", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3109", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3110", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3111", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3112", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3113", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3114", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3115", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3116", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3117", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3118", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3119", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3120", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3121", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3122", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3123", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3124", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3125", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3126", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3127", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3128", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3129", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3130", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3131", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3132", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3133", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3134", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3135", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3136", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3137", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3138", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3139", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3140", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3141", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3142", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3143", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3144", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3145", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3146", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3147", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3148", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3149", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3150", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3151", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3152", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3153", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3154", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3155", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3156", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3157", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3158", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3159", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3160", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3161", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3162", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3163", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3164", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3165", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3166", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3167", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3168", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3169", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3170", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3171", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3172", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3173", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3174", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3175", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3176", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3177", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3178", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3179", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3180", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3181", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3182", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3183", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3184", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3185", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3186", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3187", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3188", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3189", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3190", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3191", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3192", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3193", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3194", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3195", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3196", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3197", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3198", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3199", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3200", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3201", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3202", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3203", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3204", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3205", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3206", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3207", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3208", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3209", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3210", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3211", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3212", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3213", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3214", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3215", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3216", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3217", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3218", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3219", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3220", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3221", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3222", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3223", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3224", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3225", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3226", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3227", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3228", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3229", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3230", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3231", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3232", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3233", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3234", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3235", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3236", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3237", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3238", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3239", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3240", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3241", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3242", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3243", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3244", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3245", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3246", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3247", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3248", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3249", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3250", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3251", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3252", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3253", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3254", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3255", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3256", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3257", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3258", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3259", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3260", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3261", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3262", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3263", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3264", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3265", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3266", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3267", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3268", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3269", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3270", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3271", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3272", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3273", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3274", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3275", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3276", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3277", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3278", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3279", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3280", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3281", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3282", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3283", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3284", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3285", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3286", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3287", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3288", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3289", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3290", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3291", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3292", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3293", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3294", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3295", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3296", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3297", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3298", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3299", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3300", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3301", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3302", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3303", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3304", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3305", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3306", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3307", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3308", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3309", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3310", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3311", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3312", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3313", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3314", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3315", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3316", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3317", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3318", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3319", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3320", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3321", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3322", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3323", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3324", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3325", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3326", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3327", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3328", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3329", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3330", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3331", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3332", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3333", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3334", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3335", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3336", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3337", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3338", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3339", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3340", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3341", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3342", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3343", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3344", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3345", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3346", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3347", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3348", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3349", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3350", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3351", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3352", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3353", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3354", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3355", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3356", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3357", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3358", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3359", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3360", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3361", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3362", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3363", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3364", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3365", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3366", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3367", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3368", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3369", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3370", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3371", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3372", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3373", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3374", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3375", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3376", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3377", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3378", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3379", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3380", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3381", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3382", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3383", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3384", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3385", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3386", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3387", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3388", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3389", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3390", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3391", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3392", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3393", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3394", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3395", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3396", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3397", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3398", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3399", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3400", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3401", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3402", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3403", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3404", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3405", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3406", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3407", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3408", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3409", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3410", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3411", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3412", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3413", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3414", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3415", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3416", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3417", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3418", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3419", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3420", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3421", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3422", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3423", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3424", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3425", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3426", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3427", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3428", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3429", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3430", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3431", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3432", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3433", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3434", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3435", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3436", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3437", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3438", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3439", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3440", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3441", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3442", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3443", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3444", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3445", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3446", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3447", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3448", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3449", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3450", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_4_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U2948", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_4_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U2949", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_4_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U2950", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_4_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U2951", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_4_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U2952", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_4_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U2953", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_4_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U2954", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_4_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U2955", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_4_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U2956", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_4_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U2957", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_4_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U2958", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_4_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U2959", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_4_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U2960", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_4_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U2961", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_4_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U2962", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_4_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U2963", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_4_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U2964", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_4_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_4 {
		conv2d_64_padded_window_stream_4 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_4 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_4_Pipeline_inputs {
		conv2d_64_padded_window_stream_4 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_2876 {Type I LastRead 0 FirstWrite -1}
		weights_load_2877 {Type I LastRead 0 FirstWrite -1}
		weights_load_2878 {Type I LastRead 0 FirstWrite -1}
		weights_load_2879 {Type I LastRead 0 FirstWrite -1}
		weights_load_2880 {Type I LastRead 0 FirstWrite -1}
		weights_load_2881 {Type I LastRead 0 FirstWrite -1}
		weights_load_2882 {Type I LastRead 0 FirstWrite -1}
		weights_load_2883 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_4 {Type O LastRead -1 FirstWrite 16}
		weights_load_2884 {Type I LastRead 0 FirstWrite -1}
		weights_load_2885 {Type I LastRead 0 FirstWrite -1}
		weights_load_2886 {Type I LastRead 0 FirstWrite -1}
		weights_load_2887 {Type I LastRead 0 FirstWrite -1}
		weights_load_2888 {Type I LastRead 0 FirstWrite -1}
		weights_load_2889 {Type I LastRead 0 FirstWrite -1}
		weights_load_2890 {Type I LastRead 0 FirstWrite -1}
		weights_load_2891 {Type I LastRead 0 FirstWrite -1}
		weights_load_2892 {Type I LastRead 0 FirstWrite -1}
		weights_load_2893 {Type I LastRead 0 FirstWrite -1}
		weights_load_2894 {Type I LastRead 0 FirstWrite -1}
		weights_load_2895 {Type I LastRead 0 FirstWrite -1}
		weights_load_2896 {Type I LastRead 0 FirstWrite -1}
		weights_load_2897 {Type I LastRead 0 FirstWrite -1}
		weights_load_2898 {Type I LastRead 0 FirstWrite -1}
		weights_load_2899 {Type I LastRead 0 FirstWrite -1}
		weights_load_2900 {Type I LastRead 0 FirstWrite -1}
		weights_load_2901 {Type I LastRead 0 FirstWrite -1}
		weights_load_2902 {Type I LastRead 0 FirstWrite -1}
		weights_load_2903 {Type I LastRead 0 FirstWrite -1}
		weights_load_2904 {Type I LastRead 0 FirstWrite -1}
		weights_load_2905 {Type I LastRead 0 FirstWrite -1}
		weights_load_2906 {Type I LastRead 0 FirstWrite -1}
		weights_load_2907 {Type I LastRead 0 FirstWrite -1}
		weights_load_2908 {Type I LastRead 0 FirstWrite -1}
		weights_load_2909 {Type I LastRead 0 FirstWrite -1}
		weights_load_2910 {Type I LastRead 0 FirstWrite -1}
		weights_load_2911 {Type I LastRead 0 FirstWrite -1}
		weights_load_2912 {Type I LastRead 0 FirstWrite -1}
		weights_load_2913 {Type I LastRead 0 FirstWrite -1}
		weights_load_2914 {Type I LastRead 0 FirstWrite -1}
		weights_load_2915 {Type I LastRead 0 FirstWrite -1}
		weights_load_2916 {Type I LastRead 0 FirstWrite -1}
		weights_load_2917 {Type I LastRead 0 FirstWrite -1}
		weights_load_2918 {Type I LastRead 0 FirstWrite -1}
		weights_load_2919 {Type I LastRead 0 FirstWrite -1}
		weights_load_2920 {Type I LastRead 0 FirstWrite -1}
		weights_load_2921 {Type I LastRead 0 FirstWrite -1}
		weights_load_2922 {Type I LastRead 0 FirstWrite -1}
		weights_load_2923 {Type I LastRead 0 FirstWrite -1}
		weights_load_2924 {Type I LastRead 0 FirstWrite -1}
		weights_load_2925 {Type I LastRead 0 FirstWrite -1}
		weights_load_2926 {Type I LastRead 0 FirstWrite -1}
		weights_load_2927 {Type I LastRead 0 FirstWrite -1}
		weights_load_2928 {Type I LastRead 0 FirstWrite -1}
		weights_load_2929 {Type I LastRead 0 FirstWrite -1}
		weights_load_2930 {Type I LastRead 0 FirstWrite -1}
		weights_load_2931 {Type I LastRead 0 FirstWrite -1}
		weights_load_2932 {Type I LastRead 0 FirstWrite -1}
		weights_load_2933 {Type I LastRead 0 FirstWrite -1}
		weights_load_2934 {Type I LastRead 0 FirstWrite -1}
		weights_load_2935 {Type I LastRead 0 FirstWrite -1}
		weights_load_2936 {Type I LastRead 0 FirstWrite -1}
		weights_load_2937 {Type I LastRead 0 FirstWrite -1}
		weights_load_2938 {Type I LastRead 0 FirstWrite -1}
		weights_load_2939 {Type I LastRead 0 FirstWrite -1}
		weights_load_2940 {Type I LastRead 0 FirstWrite -1}
		weights_load_2941 {Type I LastRead 0 FirstWrite -1}
		weights_load_2942 {Type I LastRead 0 FirstWrite -1}
		weights_load_2943 {Type I LastRead 0 FirstWrite -1}
		weights_load_2944 {Type I LastRead 0 FirstWrite -1}
		weights_load_2945 {Type I LastRead 0 FirstWrite -1}
		weights_load_2946 {Type I LastRead 0 FirstWrite -1}
		weights_load_2947 {Type I LastRead 0 FirstWrite -1}
		weights_load_2948 {Type I LastRead 0 FirstWrite -1}
		weights_load_2949 {Type I LastRead 0 FirstWrite -1}
		weights_load_2950 {Type I LastRead 0 FirstWrite -1}
		weights_load_2951 {Type I LastRead 0 FirstWrite -1}
		weights_load_2952 {Type I LastRead 0 FirstWrite -1}
		weights_load_2953 {Type I LastRead 0 FirstWrite -1}
		weights_load_2954 {Type I LastRead 0 FirstWrite -1}
		weights_load_2955 {Type I LastRead 0 FirstWrite -1}
		weights_load_2956 {Type I LastRead 0 FirstWrite -1}
		weights_load_2957 {Type I LastRead 0 FirstWrite -1}
		weights_load_2958 {Type I LastRead 0 FirstWrite -1}
		weights_load_2959 {Type I LastRead 0 FirstWrite -1}
		weights_load_2960 {Type I LastRead 0 FirstWrite -1}
		weights_load_2961 {Type I LastRead 0 FirstWrite -1}
		weights_load_2962 {Type I LastRead 0 FirstWrite -1}
		weights_load_2963 {Type I LastRead 0 FirstWrite -1}
		weights_load_2964 {Type I LastRead 0 FirstWrite -1}
		weights_load_2965 {Type I LastRead 0 FirstWrite -1}
		weights_load_2966 {Type I LastRead 0 FirstWrite -1}
		weights_load_2967 {Type I LastRead 0 FirstWrite -1}
		weights_load_2968 {Type I LastRead 0 FirstWrite -1}
		weights_load_2969 {Type I LastRead 0 FirstWrite -1}
		weights_load_2970 {Type I LastRead 0 FirstWrite -1}
		weights_load_2971 {Type I LastRead 0 FirstWrite -1}
		weights_load_2972 {Type I LastRead 0 FirstWrite -1}
		weights_load_2973 {Type I LastRead 0 FirstWrite -1}
		weights_load_2974 {Type I LastRead 0 FirstWrite -1}
		weights_load_2975 {Type I LastRead 0 FirstWrite -1}
		weights_load_2976 {Type I LastRead 0 FirstWrite -1}
		weights_load_2977 {Type I LastRead 0 FirstWrite -1}
		weights_load_2978 {Type I LastRead 0 FirstWrite -1}
		weights_load_2979 {Type I LastRead 0 FirstWrite -1}
		weights_load_2980 {Type I LastRead 0 FirstWrite -1}
		weights_load_2981 {Type I LastRead 0 FirstWrite -1}
		weights_load_2982 {Type I LastRead 0 FirstWrite -1}
		weights_load_2983 {Type I LastRead 0 FirstWrite -1}
		weights_load_2984 {Type I LastRead 0 FirstWrite -1}
		weights_load_2985 {Type I LastRead 0 FirstWrite -1}
		weights_load_2986 {Type I LastRead 0 FirstWrite -1}
		weights_load_2987 {Type I LastRead 0 FirstWrite -1}
		weights_load_2988 {Type I LastRead 0 FirstWrite -1}
		weights_load_2989 {Type I LastRead 0 FirstWrite -1}
		weights_load_2990 {Type I LastRead 0 FirstWrite -1}
		weights_load_2991 {Type I LastRead 0 FirstWrite -1}
		weights_load_2992 {Type I LastRead 0 FirstWrite -1}
		weights_load_2993 {Type I LastRead 0 FirstWrite -1}
		weights_load_2994 {Type I LastRead 0 FirstWrite -1}
		weights_load_2995 {Type I LastRead 0 FirstWrite -1}
		weights_load_2996 {Type I LastRead 0 FirstWrite -1}
		weights_load_2997 {Type I LastRead 0 FirstWrite -1}
		weights_load_2998 {Type I LastRead 0 FirstWrite -1}
		weights_load_2999 {Type I LastRead 0 FirstWrite -1}
		weights_load_3000 {Type I LastRead 0 FirstWrite -1}
		weights_load_3001 {Type I LastRead 0 FirstWrite -1}
		weights_load_3002 {Type I LastRead 0 FirstWrite -1}
		weights_load_3003 {Type I LastRead 0 FirstWrite -1}
		weights_load_3004 {Type I LastRead 0 FirstWrite -1}
		weights_load_3005 {Type I LastRead 0 FirstWrite -1}
		weights_load_3006 {Type I LastRead 0 FirstWrite -1}
		weights_load_3007 {Type I LastRead 0 FirstWrite -1}
		weights_load_3008 {Type I LastRead 0 FirstWrite -1}
		weights_load_3009 {Type I LastRead 0 FirstWrite -1}
		weights_load_3010 {Type I LastRead 0 FirstWrite -1}
		weights_load_3011 {Type I LastRead 0 FirstWrite -1}
		weights_load_3012 {Type I LastRead 0 FirstWrite -1}
		weights_load_3013 {Type I LastRead 0 FirstWrite -1}
		weights_load_3014 {Type I LastRead 0 FirstWrite -1}
		weights_load_3015 {Type I LastRead 0 FirstWrite -1}
		weights_load_3016 {Type I LastRead 0 FirstWrite -1}
		weights_load_3017 {Type I LastRead 0 FirstWrite -1}
		weights_load_3018 {Type I LastRead 0 FirstWrite -1}
		weights_load_3019 {Type I LastRead 0 FirstWrite -1}
		weights_load_3020 {Type I LastRead 0 FirstWrite -1}
		weights_load_3021 {Type I LastRead 0 FirstWrite -1}
		weights_load_3022 {Type I LastRead 0 FirstWrite -1}
		weights_load_3023 {Type I LastRead 0 FirstWrite -1}
		weights_load_3024 {Type I LastRead 0 FirstWrite -1}
		weights_load_3025 {Type I LastRead 0 FirstWrite -1}
		weights_load_3026 {Type I LastRead 0 FirstWrite -1}
		weights_load_3027 {Type I LastRead 0 FirstWrite -1}
		weights_load_3028 {Type I LastRead 0 FirstWrite -1}
		weights_load_3029 {Type I LastRead 0 FirstWrite -1}
		weights_load_3030 {Type I LastRead 0 FirstWrite -1}
		weights_load_3031 {Type I LastRead 0 FirstWrite -1}
		weights_load_3032 {Type I LastRead 0 FirstWrite -1}
		weights_load_3033 {Type I LastRead 0 FirstWrite -1}
		weights_load_3034 {Type I LastRead 0 FirstWrite -1}
		weights_load_3035 {Type I LastRead 0 FirstWrite -1}
		weights_load_3036 {Type I LastRead 0 FirstWrite -1}
		weights_load_3037 {Type I LastRead 0 FirstWrite -1}
		weights_load_3038 {Type I LastRead 0 FirstWrite -1}
		weights_load_3039 {Type I LastRead 0 FirstWrite -1}
		weights_load_3040 {Type I LastRead 0 FirstWrite -1}
		weights_load_3041 {Type I LastRead 0 FirstWrite -1}
		weights_load_3042 {Type I LastRead 0 FirstWrite -1}
		weights_load_3043 {Type I LastRead 0 FirstWrite -1}
		weights_load_3044 {Type I LastRead 0 FirstWrite -1}
		weights_load_3045 {Type I LastRead 0 FirstWrite -1}
		weights_load_3046 {Type I LastRead 0 FirstWrite -1}
		weights_load_3047 {Type I LastRead 0 FirstWrite -1}
		weights_load_3048 {Type I LastRead 0 FirstWrite -1}
		weights_load_3049 {Type I LastRead 0 FirstWrite -1}
		weights_load_3050 {Type I LastRead 0 FirstWrite -1}
		weights_load_3051 {Type I LastRead 0 FirstWrite -1}
		weights_load_3052 {Type I LastRead 0 FirstWrite -1}
		weights_load_3053 {Type I LastRead 0 FirstWrite -1}
		weights_load_3054 {Type I LastRead 0 FirstWrite -1}
		weights_load_3055 {Type I LastRead 0 FirstWrite -1}
		weights_load_3056 {Type I LastRead 0 FirstWrite -1}
		weights_load_3057 {Type I LastRead 0 FirstWrite -1}
		weights_load_3058 {Type I LastRead 0 FirstWrite -1}
		weights_load_3059 {Type I LastRead 0 FirstWrite -1}
		weights_load_3060 {Type I LastRead 0 FirstWrite -1}
		weights_load_3061 {Type I LastRead 0 FirstWrite -1}
		weights_load_3062 {Type I LastRead 0 FirstWrite -1}
		weights_load_3063 {Type I LastRead 0 FirstWrite -1}
		weights_load_3064 {Type I LastRead 0 FirstWrite -1}
		weights_load_3065 {Type I LastRead 0 FirstWrite -1}
		weights_load_3066 {Type I LastRead 0 FirstWrite -1}
		weights_load_3067 {Type I LastRead 0 FirstWrite -1}
		weights_load_3068 {Type I LastRead 0 FirstWrite -1}
		weights_load_3069 {Type I LastRead 0 FirstWrite -1}
		weights_load_3070 {Type I LastRead 0 FirstWrite -1}
		weights_load_3071 {Type I LastRead 0 FirstWrite -1}
		weights_load_3072 {Type I LastRead 0 FirstWrite -1}
		weights_load_3073 {Type I LastRead 0 FirstWrite -1}
		weights_load_3074 {Type I LastRead 0 FirstWrite -1}
		weights_load_3075 {Type I LastRead 0 FirstWrite -1}
		weights_load_3076 {Type I LastRead 0 FirstWrite -1}
		weights_load_3077 {Type I LastRead 0 FirstWrite -1}
		weights_load_3078 {Type I LastRead 0 FirstWrite -1}
		weights_load_3079 {Type I LastRead 0 FirstWrite -1}
		weights_load_3080 {Type I LastRead 0 FirstWrite -1}
		weights_load_3081 {Type I LastRead 0 FirstWrite -1}
		weights_load_3082 {Type I LastRead 0 FirstWrite -1}
		weights_load_3083 {Type I LastRead 0 FirstWrite -1}
		weights_load_3084 {Type I LastRead 0 FirstWrite -1}
		weights_load_3085 {Type I LastRead 0 FirstWrite -1}
		weights_load_3086 {Type I LastRead 0 FirstWrite -1}
		weights_load_3087 {Type I LastRead 0 FirstWrite -1}
		weights_load_3088 {Type I LastRead 0 FirstWrite -1}
		weights_load_3089 {Type I LastRead 0 FirstWrite -1}
		weights_load_3090 {Type I LastRead 0 FirstWrite -1}
		weights_load_3091 {Type I LastRead 0 FirstWrite -1}
		weights_load_3092 {Type I LastRead 0 FirstWrite -1}
		weights_load_3093 {Type I LastRead 0 FirstWrite -1}
		weights_load_3094 {Type I LastRead 0 FirstWrite -1}
		weights_load_3095 {Type I LastRead 0 FirstWrite -1}
		weights_load_3096 {Type I LastRead 0 FirstWrite -1}
		weights_load_3097 {Type I LastRead 0 FirstWrite -1}
		weights_load_3098 {Type I LastRead 0 FirstWrite -1}
		weights_load_3099 {Type I LastRead 0 FirstWrite -1}
		weights_load_3100 {Type I LastRead 0 FirstWrite -1}
		weights_load_3101 {Type I LastRead 0 FirstWrite -1}
		weights_load_3102 {Type I LastRead 0 FirstWrite -1}
		weights_load_3103 {Type I LastRead 0 FirstWrite -1}
		weights_load_3104 {Type I LastRead 0 FirstWrite -1}
		weights_load_3105 {Type I LastRead 0 FirstWrite -1}
		weights_load_3106 {Type I LastRead 0 FirstWrite -1}
		weights_load_3107 {Type I LastRead 0 FirstWrite -1}
		weights_load_3108 {Type I LastRead 0 FirstWrite -1}
		weights_load_3109 {Type I LastRead 0 FirstWrite -1}
		weights_load_3110 {Type I LastRead 0 FirstWrite -1}
		weights_load_3111 {Type I LastRead 0 FirstWrite -1}
		weights_load_3112 {Type I LastRead 0 FirstWrite -1}
		weights_load_3113 {Type I LastRead 0 FirstWrite -1}
		weights_load_3114 {Type I LastRead 0 FirstWrite -1}
		weights_load_3115 {Type I LastRead 0 FirstWrite -1}
		weights_load_3116 {Type I LastRead 0 FirstWrite -1}
		weights_load_3117 {Type I LastRead 0 FirstWrite -1}
		weights_load_3118 {Type I LastRead 0 FirstWrite -1}
		weights_load_3119 {Type I LastRead 0 FirstWrite -1}
		weights_load_3120 {Type I LastRead 0 FirstWrite -1}
		weights_load_3121 {Type I LastRead 0 FirstWrite -1}
		weights_load_3122 {Type I LastRead 0 FirstWrite -1}
		weights_load_3123 {Type I LastRead 0 FirstWrite -1}
		weights_load_3124 {Type I LastRead 0 FirstWrite -1}
		weights_load_3125 {Type I LastRead 0 FirstWrite -1}
		weights_load_3126 {Type I LastRead 0 FirstWrite -1}
		weights_load_3127 {Type I LastRead 0 FirstWrite -1}
		weights_load_3128 {Type I LastRead 0 FirstWrite -1}
		weights_load_3129 {Type I LastRead 0 FirstWrite -1}
		weights_load_3130 {Type I LastRead 0 FirstWrite -1}
		weights_load_3131 {Type I LastRead 0 FirstWrite -1}
		weights_load_3132 {Type I LastRead 0 FirstWrite -1}
		weights_load_3133 {Type I LastRead 0 FirstWrite -1}
		weights_load_3134 {Type I LastRead 0 FirstWrite -1}
		weights_load_3135 {Type I LastRead 0 FirstWrite -1}
		weights_load_3136 {Type I LastRead 0 FirstWrite -1}
		weights_load_3137 {Type I LastRead 0 FirstWrite -1}
		weights_load_3138 {Type I LastRead 0 FirstWrite -1}
		weights_load_3139 {Type I LastRead 0 FirstWrite -1}
		weights_load_3140 {Type I LastRead 0 FirstWrite -1}
		weights_load_3141 {Type I LastRead 0 FirstWrite -1}
		weights_load_3142 {Type I LastRead 0 FirstWrite -1}
		weights_load_3143 {Type I LastRead 0 FirstWrite -1}
		weights_load_3144 {Type I LastRead 0 FirstWrite -1}
		weights_load_3145 {Type I LastRead 0 FirstWrite -1}
		weights_load_3146 {Type I LastRead 0 FirstWrite -1}
		weights_load_3147 {Type I LastRead 0 FirstWrite -1}
		weights_load_3148 {Type I LastRead 0 FirstWrite -1}
		weights_load_3149 {Type I LastRead 0 FirstWrite -1}
		weights_load_3150 {Type I LastRead 0 FirstWrite -1}
		weights_load_3151 {Type I LastRead 0 FirstWrite -1}
		weights_load_3152 {Type I LastRead 0 FirstWrite -1}
		weights_load_3153 {Type I LastRead 0 FirstWrite -1}
		weights_load_3154 {Type I LastRead 0 FirstWrite -1}
		weights_load_3155 {Type I LastRead 0 FirstWrite -1}
		weights_load_3156 {Type I LastRead 0 FirstWrite -1}
		weights_load_3157 {Type I LastRead 0 FirstWrite -1}
		weights_load_3158 {Type I LastRead 0 FirstWrite -1}
		weights_load_3159 {Type I LastRead 0 FirstWrite -1}
		weights_load_3160 {Type I LastRead 0 FirstWrite -1}
		weights_load_3161 {Type I LastRead 0 FirstWrite -1}
		weights_load_3162 {Type I LastRead 0 FirstWrite -1}
		weights_load_3163 {Type I LastRead 0 FirstWrite -1}
		weights_load_3164 {Type I LastRead 0 FirstWrite -1}
		weights_load_3165 {Type I LastRead 0 FirstWrite -1}
		weights_load_3166 {Type I LastRead 0 FirstWrite -1}
		weights_load_3167 {Type I LastRead 0 FirstWrite -1}
		weights_load_3168 {Type I LastRead 0 FirstWrite -1}
		weights_load_3169 {Type I LastRead 0 FirstWrite -1}
		weights_load_3170 {Type I LastRead 0 FirstWrite -1}
		weights_load_3171 {Type I LastRead 0 FirstWrite -1}
		weights_load_3172 {Type I LastRead 0 FirstWrite -1}
		weights_load_3173 {Type I LastRead 0 FirstWrite -1}
		weights_load_3174 {Type I LastRead 0 FirstWrite -1}
		weights_load_3175 {Type I LastRead 0 FirstWrite -1}
		weights_load_3176 {Type I LastRead 0 FirstWrite -1}
		weights_load_3177 {Type I LastRead 0 FirstWrite -1}
		weights_load_3178 {Type I LastRead 0 FirstWrite -1}
		weights_load_3179 {Type I LastRead 0 FirstWrite -1}
		weights_load_3180 {Type I LastRead 0 FirstWrite -1}
		weights_load_3181 {Type I LastRead 0 FirstWrite -1}
		weights_load_3182 {Type I LastRead 0 FirstWrite -1}
		weights_load_3183 {Type I LastRead 0 FirstWrite -1}
		weights_load_3184 {Type I LastRead 0 FirstWrite -1}
		weights_load_3185 {Type I LastRead 0 FirstWrite -1}
		weights_load_3186 {Type I LastRead 0 FirstWrite -1}
		weights_load_3187 {Type I LastRead 0 FirstWrite -1}
		weights_load_3188 {Type I LastRead 0 FirstWrite -1}
		weights_load_3189 {Type I LastRead 0 FirstWrite -1}
		weights_load_3190 {Type I LastRead 0 FirstWrite -1}
		weights_load_3191 {Type I LastRead 0 FirstWrite -1}
		weights_load_3192 {Type I LastRead 0 FirstWrite -1}
		weights_load_3193 {Type I LastRead 0 FirstWrite -1}
		weights_load_3194 {Type I LastRead 0 FirstWrite -1}
		weights_load_3195 {Type I LastRead 0 FirstWrite -1}
		weights_load_3196 {Type I LastRead 0 FirstWrite -1}
		weights_load_3197 {Type I LastRead 0 FirstWrite -1}
		weights_load_3198 {Type I LastRead 0 FirstWrite -1}
		weights_load_3199 {Type I LastRead 0 FirstWrite -1}
		weights_load_3200 {Type I LastRead 0 FirstWrite -1}
		weights_load_3201 {Type I LastRead 0 FirstWrite -1}
		weights_load_3202 {Type I LastRead 0 FirstWrite -1}
		weights_load_3203 {Type I LastRead 0 FirstWrite -1}
		weights_load_3204 {Type I LastRead 0 FirstWrite -1}
		weights_load_3205 {Type I LastRead 0 FirstWrite -1}
		weights_load_3206 {Type I LastRead 0 FirstWrite -1}
		weights_load_3207 {Type I LastRead 0 FirstWrite -1}
		weights_load_3208 {Type I LastRead 0 FirstWrite -1}
		weights_load_3209 {Type I LastRead 0 FirstWrite -1}
		weights_load_3210 {Type I LastRead 0 FirstWrite -1}
		weights_load_3211 {Type I LastRead 0 FirstWrite -1}
		weights_load_3212 {Type I LastRead 0 FirstWrite -1}
		weights_load_3213 {Type I LastRead 0 FirstWrite -1}
		weights_load_3214 {Type I LastRead 0 FirstWrite -1}
		weights_load_3215 {Type I LastRead 0 FirstWrite -1}
		weights_load_3216 {Type I LastRead 0 FirstWrite -1}
		weights_load_3217 {Type I LastRead 0 FirstWrite -1}
		weights_load_3218 {Type I LastRead 0 FirstWrite -1}
		weights_load_3219 {Type I LastRead 0 FirstWrite -1}
		weights_load_3220 {Type I LastRead 0 FirstWrite -1}
		weights_load_3221 {Type I LastRead 0 FirstWrite -1}
		weights_load_3222 {Type I LastRead 0 FirstWrite -1}
		weights_load_3223 {Type I LastRead 0 FirstWrite -1}
		weights_load_3224 {Type I LastRead 0 FirstWrite -1}
		weights_load_3225 {Type I LastRead 0 FirstWrite -1}
		weights_load_3226 {Type I LastRead 0 FirstWrite -1}
		weights_load_3227 {Type I LastRead 0 FirstWrite -1}
		weights_load_3228 {Type I LastRead 0 FirstWrite -1}
		weights_load_3229 {Type I LastRead 0 FirstWrite -1}
		weights_load_3230 {Type I LastRead 0 FirstWrite -1}
		weights_load_3231 {Type I LastRead 0 FirstWrite -1}
		weights_load_3232 {Type I LastRead 0 FirstWrite -1}
		weights_load_3233 {Type I LastRead 0 FirstWrite -1}
		weights_load_3234 {Type I LastRead 0 FirstWrite -1}
		weights_load_3235 {Type I LastRead 0 FirstWrite -1}
		weights_load_3236 {Type I LastRead 0 FirstWrite -1}
		weights_load_3237 {Type I LastRead 0 FirstWrite -1}
		weights_load_3238 {Type I LastRead 0 FirstWrite -1}
		weights_load_3239 {Type I LastRead 0 FirstWrite -1}
		weights_load_3240 {Type I LastRead 0 FirstWrite -1}
		weights_load_3241 {Type I LastRead 0 FirstWrite -1}
		weights_load_3242 {Type I LastRead 0 FirstWrite -1}
		weights_load_3243 {Type I LastRead 0 FirstWrite -1}
		weights_load_3244 {Type I LastRead 0 FirstWrite -1}
		weights_load_3245 {Type I LastRead 0 FirstWrite -1}
		weights_load_3246 {Type I LastRead 0 FirstWrite -1}
		weights_load_3247 {Type I LastRead 0 FirstWrite -1}
		weights_load_3248 {Type I LastRead 0 FirstWrite -1}
		weights_load_3249 {Type I LastRead 0 FirstWrite -1}
		weights_load_3250 {Type I LastRead 0 FirstWrite -1}
		weights_load_3251 {Type I LastRead 0 FirstWrite -1}
		weights_load_3252 {Type I LastRead 0 FirstWrite -1}
		weights_load_3253 {Type I LastRead 0 FirstWrite -1}
		weights_load_3254 {Type I LastRead 0 FirstWrite -1}
		weights_load_3255 {Type I LastRead 0 FirstWrite -1}
		weights_load_3256 {Type I LastRead 0 FirstWrite -1}
		weights_load_3257 {Type I LastRead 0 FirstWrite -1}
		weights_load_3258 {Type I LastRead 0 FirstWrite -1}
		weights_load_3259 {Type I LastRead 0 FirstWrite -1}
		weights_load_3260 {Type I LastRead 0 FirstWrite -1}
		weights_load_3261 {Type I LastRead 0 FirstWrite -1}
		weights_load_3262 {Type I LastRead 0 FirstWrite -1}
		weights_load_3263 {Type I LastRead 0 FirstWrite -1}
		weights_load_3264 {Type I LastRead 0 FirstWrite -1}
		weights_load_3265 {Type I LastRead 0 FirstWrite -1}
		weights_load_3266 {Type I LastRead 0 FirstWrite -1}
		weights_load_3267 {Type I LastRead 0 FirstWrite -1}
		weights_load_3268 {Type I LastRead 0 FirstWrite -1}
		weights_load_3269 {Type I LastRead 0 FirstWrite -1}
		weights_load_3270 {Type I LastRead 0 FirstWrite -1}
		weights_load_3271 {Type I LastRead 0 FirstWrite -1}
		weights_load_3272 {Type I LastRead 0 FirstWrite -1}
		weights_load_3273 {Type I LastRead 0 FirstWrite -1}
		weights_load_3274 {Type I LastRead 0 FirstWrite -1}
		weights_load_3275 {Type I LastRead 0 FirstWrite -1}
		weights_load_3276 {Type I LastRead 0 FirstWrite -1}
		weights_load_3277 {Type I LastRead 0 FirstWrite -1}
		weights_load_3278 {Type I LastRead 0 FirstWrite -1}
		weights_load_3279 {Type I LastRead 0 FirstWrite -1}
		weights_load_3280 {Type I LastRead 0 FirstWrite -1}
		weights_load_3281 {Type I LastRead 0 FirstWrite -1}
		weights_load_3282 {Type I LastRead 0 FirstWrite -1}
		weights_load_3283 {Type I LastRead 0 FirstWrite -1}
		weights_load_3284 {Type I LastRead 0 FirstWrite -1}
		weights_load_3285 {Type I LastRead 0 FirstWrite -1}
		weights_load_3286 {Type I LastRead 0 FirstWrite -1}
		weights_load_3287 {Type I LastRead 0 FirstWrite -1}
		weights_load_3288 {Type I LastRead 0 FirstWrite -1}
		weights_load_3289 {Type I LastRead 0 FirstWrite -1}
		weights_load_3290 {Type I LastRead 0 FirstWrite -1}
		weights_load_3291 {Type I LastRead 0 FirstWrite -1}
		weights_load_3292 {Type I LastRead 0 FirstWrite -1}
		weights_load_3293 {Type I LastRead 0 FirstWrite -1}
		weights_load_3294 {Type I LastRead 0 FirstWrite -1}
		weights_load_3295 {Type I LastRead 0 FirstWrite -1}
		weights_load_3296 {Type I LastRead 0 FirstWrite -1}
		weights_load_3297 {Type I LastRead 0 FirstWrite -1}
		weights_load_3298 {Type I LastRead 0 FirstWrite -1}
		weights_load_3299 {Type I LastRead 0 FirstWrite -1}
		weights_load_3300 {Type I LastRead 0 FirstWrite -1}
		weights_load_3301 {Type I LastRead 0 FirstWrite -1}
		weights_load_3302 {Type I LastRead 0 FirstWrite -1}
		weights_load_3303 {Type I LastRead 0 FirstWrite -1}
		weights_load_3304 {Type I LastRead 0 FirstWrite -1}
		weights_load_3305 {Type I LastRead 0 FirstWrite -1}
		weights_load_3306 {Type I LastRead 0 FirstWrite -1}
		weights_load_3307 {Type I LastRead 0 FirstWrite -1}
		weights_load_3308 {Type I LastRead 0 FirstWrite -1}
		weights_load_3309 {Type I LastRead 0 FirstWrite -1}
		weights_load_3310 {Type I LastRead 0 FirstWrite -1}
		weights_load_3311 {Type I LastRead 0 FirstWrite -1}
		weights_load_3312 {Type I LastRead 0 FirstWrite -1}
		weights_load_3313 {Type I LastRead 0 FirstWrite -1}
		weights_load_3314 {Type I LastRead 0 FirstWrite -1}
		weights_load_3315 {Type I LastRead 0 FirstWrite -1}
		weights_load_3316 {Type I LastRead 0 FirstWrite -1}
		weights_load_3317 {Type I LastRead 0 FirstWrite -1}
		weights_load_3318 {Type I LastRead 0 FirstWrite -1}
		weights_load_3319 {Type I LastRead 0 FirstWrite -1}
		weights_load_3320 {Type I LastRead 0 FirstWrite -1}
		weights_load_3321 {Type I LastRead 0 FirstWrite -1}
		weights_load_3322 {Type I LastRead 0 FirstWrite -1}
		weights_load_3323 {Type I LastRead 0 FirstWrite -1}
		weights_load_3324 {Type I LastRead 0 FirstWrite -1}
		weights_load_3325 {Type I LastRead 0 FirstWrite -1}
		weights_load_3326 {Type I LastRead 0 FirstWrite -1}
		weights_load_3327 {Type I LastRead 0 FirstWrite -1}
		weights_load_3328 {Type I LastRead 0 FirstWrite -1}
		weights_load_3329 {Type I LastRead 0 FirstWrite -1}
		weights_load_3330 {Type I LastRead 0 FirstWrite -1}
		weights_load_3331 {Type I LastRead 0 FirstWrite -1}
		weights_load_3332 {Type I LastRead 0 FirstWrite -1}
		weights_load_3333 {Type I LastRead 0 FirstWrite -1}
		weights_load_3334 {Type I LastRead 0 FirstWrite -1}
		weights_load_3335 {Type I LastRead 0 FirstWrite -1}
		weights_load_3336 {Type I LastRead 0 FirstWrite -1}
		weights_load_3337 {Type I LastRead 0 FirstWrite -1}
		weights_load_3338 {Type I LastRead 0 FirstWrite -1}
		weights_load_3339 {Type I LastRead 0 FirstWrite -1}
		weights_load_3340 {Type I LastRead 0 FirstWrite -1}
		weights_load_3341 {Type I LastRead 0 FirstWrite -1}
		weights_load_3342 {Type I LastRead 0 FirstWrite -1}
		weights_load_3343 {Type I LastRead 0 FirstWrite -1}
		weights_load_3344 {Type I LastRead 0 FirstWrite -1}
		weights_load_3345 {Type I LastRead 0 FirstWrite -1}
		weights_load_3346 {Type I LastRead 0 FirstWrite -1}
		weights_load_3347 {Type I LastRead 0 FirstWrite -1}
		weights_load_3348 {Type I LastRead 0 FirstWrite -1}
		weights_load_3349 {Type I LastRead 0 FirstWrite -1}
		weights_load_3350 {Type I LastRead 0 FirstWrite -1}
		weights_load_3351 {Type I LastRead 0 FirstWrite -1}
		weights_load_3352 {Type I LastRead 0 FirstWrite -1}
		weights_load_3353 {Type I LastRead 0 FirstWrite -1}
		weights_load_3354 {Type I LastRead 0 FirstWrite -1}
		weights_load_3355 {Type I LastRead 0 FirstWrite -1}
		weights_load_3356 {Type I LastRead 0 FirstWrite -1}
		weights_load_3357 {Type I LastRead 0 FirstWrite -1}
		weights_load_3358 {Type I LastRead 0 FirstWrite -1}
		weights_load_3359 {Type I LastRead 0 FirstWrite -1}
		weights_load_3360 {Type I LastRead 0 FirstWrite -1}
		weights_load_3361 {Type I LastRead 0 FirstWrite -1}
		weights_load_3362 {Type I LastRead 0 FirstWrite -1}
		weights_load_3363 {Type I LastRead 0 FirstWrite -1}
		weights_load_3364 {Type I LastRead 0 FirstWrite -1}
		weights_load_3365 {Type I LastRead 0 FirstWrite -1}
		weights_load_3366 {Type I LastRead 0 FirstWrite -1}
		weights_load_3367 {Type I LastRead 0 FirstWrite -1}
		weights_load_3368 {Type I LastRead 0 FirstWrite -1}
		weights_load_3369 {Type I LastRead 0 FirstWrite -1}
		weights_load_3370 {Type I LastRead 0 FirstWrite -1}
		weights_load_3371 {Type I LastRead 0 FirstWrite -1}
		weights_load_3372 {Type I LastRead 0 FirstWrite -1}
		weights_load_3373 {Type I LastRead 0 FirstWrite -1}
		weights_load_3374 {Type I LastRead 0 FirstWrite -1}
		weights_load_3375 {Type I LastRead 0 FirstWrite -1}
		weights_load_3376 {Type I LastRead 0 FirstWrite -1}
		weights_load_3377 {Type I LastRead 0 FirstWrite -1}
		weights_load_3378 {Type I LastRead 0 FirstWrite -1}
		weights_load_3379 {Type I LastRead 0 FirstWrite -1}
		weights_load_3380 {Type I LastRead 0 FirstWrite -1}
		weights_load_3381 {Type I LastRead 0 FirstWrite -1}
		weights_load_3382 {Type I LastRead 0 FirstWrite -1}
		weights_load_3383 {Type I LastRead 0 FirstWrite -1}
		weights_load_3384 {Type I LastRead 0 FirstWrite -1}
		weights_load_3385 {Type I LastRead 0 FirstWrite -1}
		weights_load_3386 {Type I LastRead 0 FirstWrite -1}
		weights_load_3387 {Type I LastRead 0 FirstWrite -1}
		weights_load_3388 {Type I LastRead 0 FirstWrite -1}
		weights_load_3389 {Type I LastRead 0 FirstWrite -1}
		weights_load_3390 {Type I LastRead 0 FirstWrite -1}
		weights_load_3391 {Type I LastRead 0 FirstWrite -1}
		weights_load_3392 {Type I LastRead 0 FirstWrite -1}
		weights_load_3393 {Type I LastRead 0 FirstWrite -1}
		weights_load_3394 {Type I LastRead 0 FirstWrite -1}
		weights_load_3395 {Type I LastRead 0 FirstWrite -1}
		weights_load_3396 {Type I LastRead 0 FirstWrite -1}
		weights_load_3397 {Type I LastRead 0 FirstWrite -1}
		weights_load_3398 {Type I LastRead 0 FirstWrite -1}
		weights_load_3399 {Type I LastRead 0 FirstWrite -1}
		weights_load_3400 {Type I LastRead 0 FirstWrite -1}
		weights_load_3401 {Type I LastRead 0 FirstWrite -1}
		weights_load_3402 {Type I LastRead 0 FirstWrite -1}
		weights_load_3403 {Type I LastRead 0 FirstWrite -1}
		weights_load_3404 {Type I LastRead 0 FirstWrite -1}
		weights_load_3405 {Type I LastRead 0 FirstWrite -1}
		weights_load_3406 {Type I LastRead 0 FirstWrite -1}
		weights_load_3407 {Type I LastRead 0 FirstWrite -1}
		weights_load_3408 {Type I LastRead 0 FirstWrite -1}
		weights_load_3409 {Type I LastRead 0 FirstWrite -1}
		weights_load_3410 {Type I LastRead 0 FirstWrite -1}
		weights_load_3411 {Type I LastRead 0 FirstWrite -1}
		weights_load_3412 {Type I LastRead 0 FirstWrite -1}
		weights_load_3413 {Type I LastRead 0 FirstWrite -1}
		weights_load_3414 {Type I LastRead 0 FirstWrite -1}
		weights_load_3415 {Type I LastRead 0 FirstWrite -1}
		weights_load_3416 {Type I LastRead 0 FirstWrite -1}
		weights_load_3417 {Type I LastRead 0 FirstWrite -1}
		weights_load_3418 {Type I LastRead 0 FirstWrite -1}
		weights_load_3419 {Type I LastRead 0 FirstWrite -1}
		weights_load_3420 {Type I LastRead 0 FirstWrite -1}
		weights_load_3421 {Type I LastRead 0 FirstWrite -1}
		weights_load_3422 {Type I LastRead 0 FirstWrite -1}
		weights_load_3423 {Type I LastRead 0 FirstWrite -1}
		weights_load_3424 {Type I LastRead 0 FirstWrite -1}
		weights_load_3425 {Type I LastRead 0 FirstWrite -1}
		weights_load_3426 {Type I LastRead 0 FirstWrite -1}
		weights_load_3427 {Type I LastRead 0 FirstWrite -1}
		weights_load_3428 {Type I LastRead 0 FirstWrite -1}
		weights_load_3429 {Type I LastRead 0 FirstWrite -1}
		weights_load_3430 {Type I LastRead 0 FirstWrite -1}
		weights_load_3431 {Type I LastRead 0 FirstWrite -1}
		weights_load_3432 {Type I LastRead 0 FirstWrite -1}
		weights_load_3433 {Type I LastRead 0 FirstWrite -1}
		weights_load_3434 {Type I LastRead 0 FirstWrite -1}
		weights_load_3435 {Type I LastRead 0 FirstWrite -1}
		weights_load_3436 {Type I LastRead 0 FirstWrite -1}
		weights_load_3437 {Type I LastRead 0 FirstWrite -1}
		weights_load_3438 {Type I LastRead 0 FirstWrite -1}
		weights_load_3439 {Type I LastRead 0 FirstWrite -1}
		weights_load_3440 {Type I LastRead 0 FirstWrite -1}
		weights_load_3441 {Type I LastRead 0 FirstWrite -1}
		weights_load_3442 {Type I LastRead 0 FirstWrite -1}
		weights_load_3443 {Type I LastRead 0 FirstWrite -1}
		weights_load_3444 {Type I LastRead 0 FirstWrite -1}
		weights_load_3445 {Type I LastRead 0 FirstWrite -1}
		weights_load_3446 {Type I LastRead 0 FirstWrite -1}
		weights_load_3447 {Type I LastRead 0 FirstWrite -1}
		weights_load_3448 {Type I LastRead 0 FirstWrite -1}
		weights_load_3449 {Type I LastRead 0 FirstWrite -1}
		weights_load_3450 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_4 { ap_fifo {  { conv2d_64_padded_window_stream_4_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_4_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_4_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_4_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_4_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_4 { ap_fifo {  { in_channel_map_stream_4_din fifo_port_we 1 32 }  { in_channel_map_stream_4_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_4_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_4_full_n fifo_status 0 1 }  { in_channel_map_stream_4_write fifo_data 1 1 } } }
}
