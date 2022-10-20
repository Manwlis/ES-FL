set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_9
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.9}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_9 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_9 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_9", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_9", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_9_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_9_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_9_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_9_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_9_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_9_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_9_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_9_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_9_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_9_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_9_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_9", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_9_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_9", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_9_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_9", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_9_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_9", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_9_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_9", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_9_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_9", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_9_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_9", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_9_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_9", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_9_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_9", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_9_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_9", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_9",
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
			{"Name" : "conv2d_64_padded_window_stream_9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_9_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_9", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_9_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_9", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_9_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_9_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_9", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_6", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_7", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_8", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_9", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_9", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_10", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_11", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_12", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_13", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_14", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_15", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_16", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_17", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_18", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_19", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_20", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_21", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_22", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_23", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_24", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_25", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_26", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_27", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_28", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_29", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_30", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_31", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_32", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_33", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_34", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_35", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_36", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_37", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_38", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_39", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_40", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_41", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_42", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_43", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_44", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_45", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_46", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_47", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_48", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_49", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_50", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_51", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_52", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_53", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_54", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_55", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_56", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_57", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_58", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_59", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_60", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_61", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_62", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_63", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_64", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_65", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_66", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_67", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_68", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_69", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_70", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_71", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_72", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_73", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_74", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_75", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_76", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_77", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_78", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_79", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_80", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_81", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_82", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_83", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_84", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_85", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_86", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_87", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_88", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_89", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_90", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_91", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_92", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_93", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_94", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_95", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_96", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_97", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_98", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_99", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_100", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_101", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_102", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_103", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_104", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_105", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_106", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_107", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_108", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_109", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_110", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_111", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_112", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_113", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_114", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_115", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_116", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_117", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_118", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_119", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_120", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_121", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_122", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_123", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_124", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_125", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_126", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_127", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_128", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_129", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_130", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_131", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_132", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_133", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_134", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_135", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_136", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_137", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_138", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_139", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_140", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_141", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_142", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_143", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_144", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_145", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_146", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_147", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_148", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_149", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_150", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_151", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_152", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_153", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_154", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_155", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_156", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_157", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_158", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_159", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_160", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_161", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_162", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_163", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_164", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_165", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_166", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_167", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_168", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_169", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_170", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_171", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_172", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_173", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_174", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_175", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_176", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_177", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_178", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_179", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_180", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_181", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_182", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_183", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_184", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_185", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_186", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_187", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_188", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_189", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_190", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_191", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_192", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_193", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_194", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_195", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_196", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_197", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_198", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_199", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_200", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_201", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_202", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_203", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_204", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_205", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_206", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_207", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_208", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_209", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_210", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_211", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_212", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_213", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_214", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_215", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_216", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_217", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_218", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_219", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_220", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_221", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_222", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_223", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_224", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_225", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_226", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_227", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_228", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_229", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_230", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_231", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_232", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_233", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_234", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_235", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_236", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_237", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_238", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_239", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_240", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_241", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_242", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_243", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_244", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_245", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_246", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_247", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_248", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_249", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_250", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_251", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_252", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_253", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_254", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_255", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_256", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_257", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_258", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_259", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_260", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_261", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_262", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_263", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_264", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_265", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_266", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_267", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_268", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_269", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_270", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_271", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_272", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_273", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_274", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_275", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_276", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_277", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_278", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_279", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_280", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_281", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_282", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_283", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_284", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_285", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_286", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_287", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_288", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_289", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_290", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_291", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_292", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_293", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_294", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_295", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_296", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_297", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_298", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_299", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_300", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_301", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_302", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_303", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_304", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_305", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_306", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_307", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_308", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_309", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_310", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_311", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_312", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_313", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_314", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_315", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_316", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_317", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_318", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_319", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_320", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_321", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_322", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_323", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_324", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_325", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_326", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_327", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_328", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_329", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_330", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_331", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_332", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_333", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_334", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_335", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_336", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_337", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_338", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_339", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_340", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_341", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_342", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_343", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_344", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_345", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_346", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_347", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_348", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_349", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_350", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_351", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_352", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_353", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_354", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_355", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_356", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_357", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_358", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_359", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_360", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_361", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_362", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_363", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_364", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_365", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_366", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_367", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_368", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_369", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_370", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_371", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_372", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_373", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_374", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_375", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_376", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_377", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_378", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_379", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_380", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_381", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_382", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_383", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_384", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_385", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_386", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_387", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_388", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_389", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_390", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_391", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_392", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_393", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_394", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_395", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_396", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_397", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_398", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_399", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_400", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_401", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_402", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_403", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_404", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_405", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_406", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_407", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_408", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_409", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_410", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_411", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_412", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_413", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_414", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_415", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_416", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_417", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_418", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_419", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_420", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_421", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_422", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_423", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_424", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_425", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_426", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_427", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_428", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_429", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_430", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_431", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_432", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_433", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_434", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_435", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_436", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_437", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_438", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_439", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_440", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_441", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_442", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_443", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_444", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_445", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_446", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_447", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_448", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_449", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_450", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_451", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_452", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_453", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_454", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_455", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_456", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_457", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_458", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_459", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_460", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_461", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_462", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_463", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_464", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_465", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_466", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_467", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_468", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_469", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_470", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_471", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_472", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_473", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_474", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_475", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_476", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_477", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_478", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_479", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_480", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_481", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_482", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_483", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_484", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_485", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_486", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_487", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_488", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_489", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_490", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_491", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_492", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_493", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_494", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_495", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_496", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_497", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_498", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_499", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_500", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_501", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_502", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_503", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_504", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_505", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_506", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_507", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_508", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_509", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_510", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_511", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_512", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_513", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_514", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_515", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_516", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_517", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_518", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_519", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_520", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_521", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_522", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_523", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_524", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_525", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_526", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_527", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_528", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_529", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_530", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_531", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_532", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_533", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_534", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_535", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_536", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_537", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_538", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_539", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_540", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_541", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_542", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_543", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_544", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_545", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_546", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_547", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_548", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_549", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_550", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_551", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_552", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_553", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_554", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_555", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_556", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_557", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_558", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_559", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_560", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_561", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_562", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_563", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_564", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_565", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_566", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_567", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_568", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_569", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_570", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_571", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_572", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_573", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_574", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_575", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_9_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U5938", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_9_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U5939", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_9_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U5940", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_9_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U5941", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_9_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U5942", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_9_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U5943", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_9_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U5944", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_9_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U5945", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_9_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U5946", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_9_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U5947", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_9_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U5948", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_9_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U5949", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_9_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U5950", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_9_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U5951", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_9_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U5952", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_9_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U5953", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_9_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U5954", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_9_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_9 {
		conv2d_64_padded_window_stream_9 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_9 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_9_Pipeline_inputs {
		conv2d_64_padded_window_stream_9 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_1 {Type I LastRead 0 FirstWrite -1}
		weights_load_2 {Type I LastRead 0 FirstWrite -1}
		weights_load_3 {Type I LastRead 0 FirstWrite -1}
		weights_load_4 {Type I LastRead 0 FirstWrite -1}
		weights_load_5 {Type I LastRead 0 FirstWrite -1}
		weights_load_6 {Type I LastRead 0 FirstWrite -1}
		weights_load_7 {Type I LastRead 0 FirstWrite -1}
		weights_load_8 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_9 {Type O LastRead -1 FirstWrite 16}
		weights_load_9 {Type I LastRead 0 FirstWrite -1}
		weights_load_10 {Type I LastRead 0 FirstWrite -1}
		weights_load_11 {Type I LastRead 0 FirstWrite -1}
		weights_load_12 {Type I LastRead 0 FirstWrite -1}
		weights_load_13 {Type I LastRead 0 FirstWrite -1}
		weights_load_14 {Type I LastRead 0 FirstWrite -1}
		weights_load_15 {Type I LastRead 0 FirstWrite -1}
		weights_load_16 {Type I LastRead 0 FirstWrite -1}
		weights_load_17 {Type I LastRead 0 FirstWrite -1}
		weights_load_18 {Type I LastRead 0 FirstWrite -1}
		weights_load_19 {Type I LastRead 0 FirstWrite -1}
		weights_load_20 {Type I LastRead 0 FirstWrite -1}
		weights_load_21 {Type I LastRead 0 FirstWrite -1}
		weights_load_22 {Type I LastRead 0 FirstWrite -1}
		weights_load_23 {Type I LastRead 0 FirstWrite -1}
		weights_load_24 {Type I LastRead 0 FirstWrite -1}
		weights_load_25 {Type I LastRead 0 FirstWrite -1}
		weights_load_26 {Type I LastRead 0 FirstWrite -1}
		weights_load_27 {Type I LastRead 0 FirstWrite -1}
		weights_load_28 {Type I LastRead 0 FirstWrite -1}
		weights_load_29 {Type I LastRead 0 FirstWrite -1}
		weights_load_30 {Type I LastRead 0 FirstWrite -1}
		weights_load_31 {Type I LastRead 0 FirstWrite -1}
		weights_load_32 {Type I LastRead 0 FirstWrite -1}
		weights_load_33 {Type I LastRead 0 FirstWrite -1}
		weights_load_34 {Type I LastRead 0 FirstWrite -1}
		weights_load_35 {Type I LastRead 0 FirstWrite -1}
		weights_load_36 {Type I LastRead 0 FirstWrite -1}
		weights_load_37 {Type I LastRead 0 FirstWrite -1}
		weights_load_38 {Type I LastRead 0 FirstWrite -1}
		weights_load_39 {Type I LastRead 0 FirstWrite -1}
		weights_load_40 {Type I LastRead 0 FirstWrite -1}
		weights_load_41 {Type I LastRead 0 FirstWrite -1}
		weights_load_42 {Type I LastRead 0 FirstWrite -1}
		weights_load_43 {Type I LastRead 0 FirstWrite -1}
		weights_load_44 {Type I LastRead 0 FirstWrite -1}
		weights_load_45 {Type I LastRead 0 FirstWrite -1}
		weights_load_46 {Type I LastRead 0 FirstWrite -1}
		weights_load_47 {Type I LastRead 0 FirstWrite -1}
		weights_load_48 {Type I LastRead 0 FirstWrite -1}
		weights_load_49 {Type I LastRead 0 FirstWrite -1}
		weights_load_50 {Type I LastRead 0 FirstWrite -1}
		weights_load_51 {Type I LastRead 0 FirstWrite -1}
		weights_load_52 {Type I LastRead 0 FirstWrite -1}
		weights_load_53 {Type I LastRead 0 FirstWrite -1}
		weights_load_54 {Type I LastRead 0 FirstWrite -1}
		weights_load_55 {Type I LastRead 0 FirstWrite -1}
		weights_load_56 {Type I LastRead 0 FirstWrite -1}
		weights_load_57 {Type I LastRead 0 FirstWrite -1}
		weights_load_58 {Type I LastRead 0 FirstWrite -1}
		weights_load_59 {Type I LastRead 0 FirstWrite -1}
		weights_load_60 {Type I LastRead 0 FirstWrite -1}
		weights_load_61 {Type I LastRead 0 FirstWrite -1}
		weights_load_62 {Type I LastRead 0 FirstWrite -1}
		weights_load_63 {Type I LastRead 0 FirstWrite -1}
		weights_load_64 {Type I LastRead 0 FirstWrite -1}
		weights_load_65 {Type I LastRead 0 FirstWrite -1}
		weights_load_66 {Type I LastRead 0 FirstWrite -1}
		weights_load_67 {Type I LastRead 0 FirstWrite -1}
		weights_load_68 {Type I LastRead 0 FirstWrite -1}
		weights_load_69 {Type I LastRead 0 FirstWrite -1}
		weights_load_70 {Type I LastRead 0 FirstWrite -1}
		weights_load_71 {Type I LastRead 0 FirstWrite -1}
		weights_load_72 {Type I LastRead 0 FirstWrite -1}
		weights_load_73 {Type I LastRead 0 FirstWrite -1}
		weights_load_74 {Type I LastRead 0 FirstWrite -1}
		weights_load_75 {Type I LastRead 0 FirstWrite -1}
		weights_load_76 {Type I LastRead 0 FirstWrite -1}
		weights_load_77 {Type I LastRead 0 FirstWrite -1}
		weights_load_78 {Type I LastRead 0 FirstWrite -1}
		weights_load_79 {Type I LastRead 0 FirstWrite -1}
		weights_load_80 {Type I LastRead 0 FirstWrite -1}
		weights_load_81 {Type I LastRead 0 FirstWrite -1}
		weights_load_82 {Type I LastRead 0 FirstWrite -1}
		weights_load_83 {Type I LastRead 0 FirstWrite -1}
		weights_load_84 {Type I LastRead 0 FirstWrite -1}
		weights_load_85 {Type I LastRead 0 FirstWrite -1}
		weights_load_86 {Type I LastRead 0 FirstWrite -1}
		weights_load_87 {Type I LastRead 0 FirstWrite -1}
		weights_load_88 {Type I LastRead 0 FirstWrite -1}
		weights_load_89 {Type I LastRead 0 FirstWrite -1}
		weights_load_90 {Type I LastRead 0 FirstWrite -1}
		weights_load_91 {Type I LastRead 0 FirstWrite -1}
		weights_load_92 {Type I LastRead 0 FirstWrite -1}
		weights_load_93 {Type I LastRead 0 FirstWrite -1}
		weights_load_94 {Type I LastRead 0 FirstWrite -1}
		weights_load_95 {Type I LastRead 0 FirstWrite -1}
		weights_load_96 {Type I LastRead 0 FirstWrite -1}
		weights_load_97 {Type I LastRead 0 FirstWrite -1}
		weights_load_98 {Type I LastRead 0 FirstWrite -1}
		weights_load_99 {Type I LastRead 0 FirstWrite -1}
		weights_load_100 {Type I LastRead 0 FirstWrite -1}
		weights_load_101 {Type I LastRead 0 FirstWrite -1}
		weights_load_102 {Type I LastRead 0 FirstWrite -1}
		weights_load_103 {Type I LastRead 0 FirstWrite -1}
		weights_load_104 {Type I LastRead 0 FirstWrite -1}
		weights_load_105 {Type I LastRead 0 FirstWrite -1}
		weights_load_106 {Type I LastRead 0 FirstWrite -1}
		weights_load_107 {Type I LastRead 0 FirstWrite -1}
		weights_load_108 {Type I LastRead 0 FirstWrite -1}
		weights_load_109 {Type I LastRead 0 FirstWrite -1}
		weights_load_110 {Type I LastRead 0 FirstWrite -1}
		weights_load_111 {Type I LastRead 0 FirstWrite -1}
		weights_load_112 {Type I LastRead 0 FirstWrite -1}
		weights_load_113 {Type I LastRead 0 FirstWrite -1}
		weights_load_114 {Type I LastRead 0 FirstWrite -1}
		weights_load_115 {Type I LastRead 0 FirstWrite -1}
		weights_load_116 {Type I LastRead 0 FirstWrite -1}
		weights_load_117 {Type I LastRead 0 FirstWrite -1}
		weights_load_118 {Type I LastRead 0 FirstWrite -1}
		weights_load_119 {Type I LastRead 0 FirstWrite -1}
		weights_load_120 {Type I LastRead 0 FirstWrite -1}
		weights_load_121 {Type I LastRead 0 FirstWrite -1}
		weights_load_122 {Type I LastRead 0 FirstWrite -1}
		weights_load_123 {Type I LastRead 0 FirstWrite -1}
		weights_load_124 {Type I LastRead 0 FirstWrite -1}
		weights_load_125 {Type I LastRead 0 FirstWrite -1}
		weights_load_126 {Type I LastRead 0 FirstWrite -1}
		weights_load_127 {Type I LastRead 0 FirstWrite -1}
		weights_load_128 {Type I LastRead 0 FirstWrite -1}
		weights_load_129 {Type I LastRead 0 FirstWrite -1}
		weights_load_130 {Type I LastRead 0 FirstWrite -1}
		weights_load_131 {Type I LastRead 0 FirstWrite -1}
		weights_load_132 {Type I LastRead 0 FirstWrite -1}
		weights_load_133 {Type I LastRead 0 FirstWrite -1}
		weights_load_134 {Type I LastRead 0 FirstWrite -1}
		weights_load_135 {Type I LastRead 0 FirstWrite -1}
		weights_load_136 {Type I LastRead 0 FirstWrite -1}
		weights_load_137 {Type I LastRead 0 FirstWrite -1}
		weights_load_138 {Type I LastRead 0 FirstWrite -1}
		weights_load_139 {Type I LastRead 0 FirstWrite -1}
		weights_load_140 {Type I LastRead 0 FirstWrite -1}
		weights_load_141 {Type I LastRead 0 FirstWrite -1}
		weights_load_142 {Type I LastRead 0 FirstWrite -1}
		weights_load_143 {Type I LastRead 0 FirstWrite -1}
		weights_load_144 {Type I LastRead 0 FirstWrite -1}
		weights_load_145 {Type I LastRead 0 FirstWrite -1}
		weights_load_146 {Type I LastRead 0 FirstWrite -1}
		weights_load_147 {Type I LastRead 0 FirstWrite -1}
		weights_load_148 {Type I LastRead 0 FirstWrite -1}
		weights_load_149 {Type I LastRead 0 FirstWrite -1}
		weights_load_150 {Type I LastRead 0 FirstWrite -1}
		weights_load_151 {Type I LastRead 0 FirstWrite -1}
		weights_load_152 {Type I LastRead 0 FirstWrite -1}
		weights_load_153 {Type I LastRead 0 FirstWrite -1}
		weights_load_154 {Type I LastRead 0 FirstWrite -1}
		weights_load_155 {Type I LastRead 0 FirstWrite -1}
		weights_load_156 {Type I LastRead 0 FirstWrite -1}
		weights_load_157 {Type I LastRead 0 FirstWrite -1}
		weights_load_158 {Type I LastRead 0 FirstWrite -1}
		weights_load_159 {Type I LastRead 0 FirstWrite -1}
		weights_load_160 {Type I LastRead 0 FirstWrite -1}
		weights_load_161 {Type I LastRead 0 FirstWrite -1}
		weights_load_162 {Type I LastRead 0 FirstWrite -1}
		weights_load_163 {Type I LastRead 0 FirstWrite -1}
		weights_load_164 {Type I LastRead 0 FirstWrite -1}
		weights_load_165 {Type I LastRead 0 FirstWrite -1}
		weights_load_166 {Type I LastRead 0 FirstWrite -1}
		weights_load_167 {Type I LastRead 0 FirstWrite -1}
		weights_load_168 {Type I LastRead 0 FirstWrite -1}
		weights_load_169 {Type I LastRead 0 FirstWrite -1}
		weights_load_170 {Type I LastRead 0 FirstWrite -1}
		weights_load_171 {Type I LastRead 0 FirstWrite -1}
		weights_load_172 {Type I LastRead 0 FirstWrite -1}
		weights_load_173 {Type I LastRead 0 FirstWrite -1}
		weights_load_174 {Type I LastRead 0 FirstWrite -1}
		weights_load_175 {Type I LastRead 0 FirstWrite -1}
		weights_load_176 {Type I LastRead 0 FirstWrite -1}
		weights_load_177 {Type I LastRead 0 FirstWrite -1}
		weights_load_178 {Type I LastRead 0 FirstWrite -1}
		weights_load_179 {Type I LastRead 0 FirstWrite -1}
		weights_load_180 {Type I LastRead 0 FirstWrite -1}
		weights_load_181 {Type I LastRead 0 FirstWrite -1}
		weights_load_182 {Type I LastRead 0 FirstWrite -1}
		weights_load_183 {Type I LastRead 0 FirstWrite -1}
		weights_load_184 {Type I LastRead 0 FirstWrite -1}
		weights_load_185 {Type I LastRead 0 FirstWrite -1}
		weights_load_186 {Type I LastRead 0 FirstWrite -1}
		weights_load_187 {Type I LastRead 0 FirstWrite -1}
		weights_load_188 {Type I LastRead 0 FirstWrite -1}
		weights_load_189 {Type I LastRead 0 FirstWrite -1}
		weights_load_190 {Type I LastRead 0 FirstWrite -1}
		weights_load_191 {Type I LastRead 0 FirstWrite -1}
		weights_load_192 {Type I LastRead 0 FirstWrite -1}
		weights_load_193 {Type I LastRead 0 FirstWrite -1}
		weights_load_194 {Type I LastRead 0 FirstWrite -1}
		weights_load_195 {Type I LastRead 0 FirstWrite -1}
		weights_load_196 {Type I LastRead 0 FirstWrite -1}
		weights_load_197 {Type I LastRead 0 FirstWrite -1}
		weights_load_198 {Type I LastRead 0 FirstWrite -1}
		weights_load_199 {Type I LastRead 0 FirstWrite -1}
		weights_load_200 {Type I LastRead 0 FirstWrite -1}
		weights_load_201 {Type I LastRead 0 FirstWrite -1}
		weights_load_202 {Type I LastRead 0 FirstWrite -1}
		weights_load_203 {Type I LastRead 0 FirstWrite -1}
		weights_load_204 {Type I LastRead 0 FirstWrite -1}
		weights_load_205 {Type I LastRead 0 FirstWrite -1}
		weights_load_206 {Type I LastRead 0 FirstWrite -1}
		weights_load_207 {Type I LastRead 0 FirstWrite -1}
		weights_load_208 {Type I LastRead 0 FirstWrite -1}
		weights_load_209 {Type I LastRead 0 FirstWrite -1}
		weights_load_210 {Type I LastRead 0 FirstWrite -1}
		weights_load_211 {Type I LastRead 0 FirstWrite -1}
		weights_load_212 {Type I LastRead 0 FirstWrite -1}
		weights_load_213 {Type I LastRead 0 FirstWrite -1}
		weights_load_214 {Type I LastRead 0 FirstWrite -1}
		weights_load_215 {Type I LastRead 0 FirstWrite -1}
		weights_load_216 {Type I LastRead 0 FirstWrite -1}
		weights_load_217 {Type I LastRead 0 FirstWrite -1}
		weights_load_218 {Type I LastRead 0 FirstWrite -1}
		weights_load_219 {Type I LastRead 0 FirstWrite -1}
		weights_load_220 {Type I LastRead 0 FirstWrite -1}
		weights_load_221 {Type I LastRead 0 FirstWrite -1}
		weights_load_222 {Type I LastRead 0 FirstWrite -1}
		weights_load_223 {Type I LastRead 0 FirstWrite -1}
		weights_load_224 {Type I LastRead 0 FirstWrite -1}
		weights_load_225 {Type I LastRead 0 FirstWrite -1}
		weights_load_226 {Type I LastRead 0 FirstWrite -1}
		weights_load_227 {Type I LastRead 0 FirstWrite -1}
		weights_load_228 {Type I LastRead 0 FirstWrite -1}
		weights_load_229 {Type I LastRead 0 FirstWrite -1}
		weights_load_230 {Type I LastRead 0 FirstWrite -1}
		weights_load_231 {Type I LastRead 0 FirstWrite -1}
		weights_load_232 {Type I LastRead 0 FirstWrite -1}
		weights_load_233 {Type I LastRead 0 FirstWrite -1}
		weights_load_234 {Type I LastRead 0 FirstWrite -1}
		weights_load_235 {Type I LastRead 0 FirstWrite -1}
		weights_load_236 {Type I LastRead 0 FirstWrite -1}
		weights_load_237 {Type I LastRead 0 FirstWrite -1}
		weights_load_238 {Type I LastRead 0 FirstWrite -1}
		weights_load_239 {Type I LastRead 0 FirstWrite -1}
		weights_load_240 {Type I LastRead 0 FirstWrite -1}
		weights_load_241 {Type I LastRead 0 FirstWrite -1}
		weights_load_242 {Type I LastRead 0 FirstWrite -1}
		weights_load_243 {Type I LastRead 0 FirstWrite -1}
		weights_load_244 {Type I LastRead 0 FirstWrite -1}
		weights_load_245 {Type I LastRead 0 FirstWrite -1}
		weights_load_246 {Type I LastRead 0 FirstWrite -1}
		weights_load_247 {Type I LastRead 0 FirstWrite -1}
		weights_load_248 {Type I LastRead 0 FirstWrite -1}
		weights_load_249 {Type I LastRead 0 FirstWrite -1}
		weights_load_250 {Type I LastRead 0 FirstWrite -1}
		weights_load_251 {Type I LastRead 0 FirstWrite -1}
		weights_load_252 {Type I LastRead 0 FirstWrite -1}
		weights_load_253 {Type I LastRead 0 FirstWrite -1}
		weights_load_254 {Type I LastRead 0 FirstWrite -1}
		weights_load_255 {Type I LastRead 0 FirstWrite -1}
		weights_load_256 {Type I LastRead 0 FirstWrite -1}
		weights_load_257 {Type I LastRead 0 FirstWrite -1}
		weights_load_258 {Type I LastRead 0 FirstWrite -1}
		weights_load_259 {Type I LastRead 0 FirstWrite -1}
		weights_load_260 {Type I LastRead 0 FirstWrite -1}
		weights_load_261 {Type I LastRead 0 FirstWrite -1}
		weights_load_262 {Type I LastRead 0 FirstWrite -1}
		weights_load_263 {Type I LastRead 0 FirstWrite -1}
		weights_load_264 {Type I LastRead 0 FirstWrite -1}
		weights_load_265 {Type I LastRead 0 FirstWrite -1}
		weights_load_266 {Type I LastRead 0 FirstWrite -1}
		weights_load_267 {Type I LastRead 0 FirstWrite -1}
		weights_load_268 {Type I LastRead 0 FirstWrite -1}
		weights_load_269 {Type I LastRead 0 FirstWrite -1}
		weights_load_270 {Type I LastRead 0 FirstWrite -1}
		weights_load_271 {Type I LastRead 0 FirstWrite -1}
		weights_load_272 {Type I LastRead 0 FirstWrite -1}
		weights_load_273 {Type I LastRead 0 FirstWrite -1}
		weights_load_274 {Type I LastRead 0 FirstWrite -1}
		weights_load_275 {Type I LastRead 0 FirstWrite -1}
		weights_load_276 {Type I LastRead 0 FirstWrite -1}
		weights_load_277 {Type I LastRead 0 FirstWrite -1}
		weights_load_278 {Type I LastRead 0 FirstWrite -1}
		weights_load_279 {Type I LastRead 0 FirstWrite -1}
		weights_load_280 {Type I LastRead 0 FirstWrite -1}
		weights_load_281 {Type I LastRead 0 FirstWrite -1}
		weights_load_282 {Type I LastRead 0 FirstWrite -1}
		weights_load_283 {Type I LastRead 0 FirstWrite -1}
		weights_load_284 {Type I LastRead 0 FirstWrite -1}
		weights_load_285 {Type I LastRead 0 FirstWrite -1}
		weights_load_286 {Type I LastRead 0 FirstWrite -1}
		weights_load_287 {Type I LastRead 0 FirstWrite -1}
		weights_load_288 {Type I LastRead 0 FirstWrite -1}
		weights_load_289 {Type I LastRead 0 FirstWrite -1}
		weights_load_290 {Type I LastRead 0 FirstWrite -1}
		weights_load_291 {Type I LastRead 0 FirstWrite -1}
		weights_load_292 {Type I LastRead 0 FirstWrite -1}
		weights_load_293 {Type I LastRead 0 FirstWrite -1}
		weights_load_294 {Type I LastRead 0 FirstWrite -1}
		weights_load_295 {Type I LastRead 0 FirstWrite -1}
		weights_load_296 {Type I LastRead 0 FirstWrite -1}
		weights_load_297 {Type I LastRead 0 FirstWrite -1}
		weights_load_298 {Type I LastRead 0 FirstWrite -1}
		weights_load_299 {Type I LastRead 0 FirstWrite -1}
		weights_load_300 {Type I LastRead 0 FirstWrite -1}
		weights_load_301 {Type I LastRead 0 FirstWrite -1}
		weights_load_302 {Type I LastRead 0 FirstWrite -1}
		weights_load_303 {Type I LastRead 0 FirstWrite -1}
		weights_load_304 {Type I LastRead 0 FirstWrite -1}
		weights_load_305 {Type I LastRead 0 FirstWrite -1}
		weights_load_306 {Type I LastRead 0 FirstWrite -1}
		weights_load_307 {Type I LastRead 0 FirstWrite -1}
		weights_load_308 {Type I LastRead 0 FirstWrite -1}
		weights_load_309 {Type I LastRead 0 FirstWrite -1}
		weights_load_310 {Type I LastRead 0 FirstWrite -1}
		weights_load_311 {Type I LastRead 0 FirstWrite -1}
		weights_load_312 {Type I LastRead 0 FirstWrite -1}
		weights_load_313 {Type I LastRead 0 FirstWrite -1}
		weights_load_314 {Type I LastRead 0 FirstWrite -1}
		weights_load_315 {Type I LastRead 0 FirstWrite -1}
		weights_load_316 {Type I LastRead 0 FirstWrite -1}
		weights_load_317 {Type I LastRead 0 FirstWrite -1}
		weights_load_318 {Type I LastRead 0 FirstWrite -1}
		weights_load_319 {Type I LastRead 0 FirstWrite -1}
		weights_load_320 {Type I LastRead 0 FirstWrite -1}
		weights_load_321 {Type I LastRead 0 FirstWrite -1}
		weights_load_322 {Type I LastRead 0 FirstWrite -1}
		weights_load_323 {Type I LastRead 0 FirstWrite -1}
		weights_load_324 {Type I LastRead 0 FirstWrite -1}
		weights_load_325 {Type I LastRead 0 FirstWrite -1}
		weights_load_326 {Type I LastRead 0 FirstWrite -1}
		weights_load_327 {Type I LastRead 0 FirstWrite -1}
		weights_load_328 {Type I LastRead 0 FirstWrite -1}
		weights_load_329 {Type I LastRead 0 FirstWrite -1}
		weights_load_330 {Type I LastRead 0 FirstWrite -1}
		weights_load_331 {Type I LastRead 0 FirstWrite -1}
		weights_load_332 {Type I LastRead 0 FirstWrite -1}
		weights_load_333 {Type I LastRead 0 FirstWrite -1}
		weights_load_334 {Type I LastRead 0 FirstWrite -1}
		weights_load_335 {Type I LastRead 0 FirstWrite -1}
		weights_load_336 {Type I LastRead 0 FirstWrite -1}
		weights_load_337 {Type I LastRead 0 FirstWrite -1}
		weights_load_338 {Type I LastRead 0 FirstWrite -1}
		weights_load_339 {Type I LastRead 0 FirstWrite -1}
		weights_load_340 {Type I LastRead 0 FirstWrite -1}
		weights_load_341 {Type I LastRead 0 FirstWrite -1}
		weights_load_342 {Type I LastRead 0 FirstWrite -1}
		weights_load_343 {Type I LastRead 0 FirstWrite -1}
		weights_load_344 {Type I LastRead 0 FirstWrite -1}
		weights_load_345 {Type I LastRead 0 FirstWrite -1}
		weights_load_346 {Type I LastRead 0 FirstWrite -1}
		weights_load_347 {Type I LastRead 0 FirstWrite -1}
		weights_load_348 {Type I LastRead 0 FirstWrite -1}
		weights_load_349 {Type I LastRead 0 FirstWrite -1}
		weights_load_350 {Type I LastRead 0 FirstWrite -1}
		weights_load_351 {Type I LastRead 0 FirstWrite -1}
		weights_load_352 {Type I LastRead 0 FirstWrite -1}
		weights_load_353 {Type I LastRead 0 FirstWrite -1}
		weights_load_354 {Type I LastRead 0 FirstWrite -1}
		weights_load_355 {Type I LastRead 0 FirstWrite -1}
		weights_load_356 {Type I LastRead 0 FirstWrite -1}
		weights_load_357 {Type I LastRead 0 FirstWrite -1}
		weights_load_358 {Type I LastRead 0 FirstWrite -1}
		weights_load_359 {Type I LastRead 0 FirstWrite -1}
		weights_load_360 {Type I LastRead 0 FirstWrite -1}
		weights_load_361 {Type I LastRead 0 FirstWrite -1}
		weights_load_362 {Type I LastRead 0 FirstWrite -1}
		weights_load_363 {Type I LastRead 0 FirstWrite -1}
		weights_load_364 {Type I LastRead 0 FirstWrite -1}
		weights_load_365 {Type I LastRead 0 FirstWrite -1}
		weights_load_366 {Type I LastRead 0 FirstWrite -1}
		weights_load_367 {Type I LastRead 0 FirstWrite -1}
		weights_load_368 {Type I LastRead 0 FirstWrite -1}
		weights_load_369 {Type I LastRead 0 FirstWrite -1}
		weights_load_370 {Type I LastRead 0 FirstWrite -1}
		weights_load_371 {Type I LastRead 0 FirstWrite -1}
		weights_load_372 {Type I LastRead 0 FirstWrite -1}
		weights_load_373 {Type I LastRead 0 FirstWrite -1}
		weights_load_374 {Type I LastRead 0 FirstWrite -1}
		weights_load_375 {Type I LastRead 0 FirstWrite -1}
		weights_load_376 {Type I LastRead 0 FirstWrite -1}
		weights_load_377 {Type I LastRead 0 FirstWrite -1}
		weights_load_378 {Type I LastRead 0 FirstWrite -1}
		weights_load_379 {Type I LastRead 0 FirstWrite -1}
		weights_load_380 {Type I LastRead 0 FirstWrite -1}
		weights_load_381 {Type I LastRead 0 FirstWrite -1}
		weights_load_382 {Type I LastRead 0 FirstWrite -1}
		weights_load_383 {Type I LastRead 0 FirstWrite -1}
		weights_load_384 {Type I LastRead 0 FirstWrite -1}
		weights_load_385 {Type I LastRead 0 FirstWrite -1}
		weights_load_386 {Type I LastRead 0 FirstWrite -1}
		weights_load_387 {Type I LastRead 0 FirstWrite -1}
		weights_load_388 {Type I LastRead 0 FirstWrite -1}
		weights_load_389 {Type I LastRead 0 FirstWrite -1}
		weights_load_390 {Type I LastRead 0 FirstWrite -1}
		weights_load_391 {Type I LastRead 0 FirstWrite -1}
		weights_load_392 {Type I LastRead 0 FirstWrite -1}
		weights_load_393 {Type I LastRead 0 FirstWrite -1}
		weights_load_394 {Type I LastRead 0 FirstWrite -1}
		weights_load_395 {Type I LastRead 0 FirstWrite -1}
		weights_load_396 {Type I LastRead 0 FirstWrite -1}
		weights_load_397 {Type I LastRead 0 FirstWrite -1}
		weights_load_398 {Type I LastRead 0 FirstWrite -1}
		weights_load_399 {Type I LastRead 0 FirstWrite -1}
		weights_load_400 {Type I LastRead 0 FirstWrite -1}
		weights_load_401 {Type I LastRead 0 FirstWrite -1}
		weights_load_402 {Type I LastRead 0 FirstWrite -1}
		weights_load_403 {Type I LastRead 0 FirstWrite -1}
		weights_load_404 {Type I LastRead 0 FirstWrite -1}
		weights_load_405 {Type I LastRead 0 FirstWrite -1}
		weights_load_406 {Type I LastRead 0 FirstWrite -1}
		weights_load_407 {Type I LastRead 0 FirstWrite -1}
		weights_load_408 {Type I LastRead 0 FirstWrite -1}
		weights_load_409 {Type I LastRead 0 FirstWrite -1}
		weights_load_410 {Type I LastRead 0 FirstWrite -1}
		weights_load_411 {Type I LastRead 0 FirstWrite -1}
		weights_load_412 {Type I LastRead 0 FirstWrite -1}
		weights_load_413 {Type I LastRead 0 FirstWrite -1}
		weights_load_414 {Type I LastRead 0 FirstWrite -1}
		weights_load_415 {Type I LastRead 0 FirstWrite -1}
		weights_load_416 {Type I LastRead 0 FirstWrite -1}
		weights_load_417 {Type I LastRead 0 FirstWrite -1}
		weights_load_418 {Type I LastRead 0 FirstWrite -1}
		weights_load_419 {Type I LastRead 0 FirstWrite -1}
		weights_load_420 {Type I LastRead 0 FirstWrite -1}
		weights_load_421 {Type I LastRead 0 FirstWrite -1}
		weights_load_422 {Type I LastRead 0 FirstWrite -1}
		weights_load_423 {Type I LastRead 0 FirstWrite -1}
		weights_load_424 {Type I LastRead 0 FirstWrite -1}
		weights_load_425 {Type I LastRead 0 FirstWrite -1}
		weights_load_426 {Type I LastRead 0 FirstWrite -1}
		weights_load_427 {Type I LastRead 0 FirstWrite -1}
		weights_load_428 {Type I LastRead 0 FirstWrite -1}
		weights_load_429 {Type I LastRead 0 FirstWrite -1}
		weights_load_430 {Type I LastRead 0 FirstWrite -1}
		weights_load_431 {Type I LastRead 0 FirstWrite -1}
		weights_load_432 {Type I LastRead 0 FirstWrite -1}
		weights_load_433 {Type I LastRead 0 FirstWrite -1}
		weights_load_434 {Type I LastRead 0 FirstWrite -1}
		weights_load_435 {Type I LastRead 0 FirstWrite -1}
		weights_load_436 {Type I LastRead 0 FirstWrite -1}
		weights_load_437 {Type I LastRead 0 FirstWrite -1}
		weights_load_438 {Type I LastRead 0 FirstWrite -1}
		weights_load_439 {Type I LastRead 0 FirstWrite -1}
		weights_load_440 {Type I LastRead 0 FirstWrite -1}
		weights_load_441 {Type I LastRead 0 FirstWrite -1}
		weights_load_442 {Type I LastRead 0 FirstWrite -1}
		weights_load_443 {Type I LastRead 0 FirstWrite -1}
		weights_load_444 {Type I LastRead 0 FirstWrite -1}
		weights_load_445 {Type I LastRead 0 FirstWrite -1}
		weights_load_446 {Type I LastRead 0 FirstWrite -1}
		weights_load_447 {Type I LastRead 0 FirstWrite -1}
		weights_load_448 {Type I LastRead 0 FirstWrite -1}
		weights_load_449 {Type I LastRead 0 FirstWrite -1}
		weights_load_450 {Type I LastRead 0 FirstWrite -1}
		weights_load_451 {Type I LastRead 0 FirstWrite -1}
		weights_load_452 {Type I LastRead 0 FirstWrite -1}
		weights_load_453 {Type I LastRead 0 FirstWrite -1}
		weights_load_454 {Type I LastRead 0 FirstWrite -1}
		weights_load_455 {Type I LastRead 0 FirstWrite -1}
		weights_load_456 {Type I LastRead 0 FirstWrite -1}
		weights_load_457 {Type I LastRead 0 FirstWrite -1}
		weights_load_458 {Type I LastRead 0 FirstWrite -1}
		weights_load_459 {Type I LastRead 0 FirstWrite -1}
		weights_load_460 {Type I LastRead 0 FirstWrite -1}
		weights_load_461 {Type I LastRead 0 FirstWrite -1}
		weights_load_462 {Type I LastRead 0 FirstWrite -1}
		weights_load_463 {Type I LastRead 0 FirstWrite -1}
		weights_load_464 {Type I LastRead 0 FirstWrite -1}
		weights_load_465 {Type I LastRead 0 FirstWrite -1}
		weights_load_466 {Type I LastRead 0 FirstWrite -1}
		weights_load_467 {Type I LastRead 0 FirstWrite -1}
		weights_load_468 {Type I LastRead 0 FirstWrite -1}
		weights_load_469 {Type I LastRead 0 FirstWrite -1}
		weights_load_470 {Type I LastRead 0 FirstWrite -1}
		weights_load_471 {Type I LastRead 0 FirstWrite -1}
		weights_load_472 {Type I LastRead 0 FirstWrite -1}
		weights_load_473 {Type I LastRead 0 FirstWrite -1}
		weights_load_474 {Type I LastRead 0 FirstWrite -1}
		weights_load_475 {Type I LastRead 0 FirstWrite -1}
		weights_load_476 {Type I LastRead 0 FirstWrite -1}
		weights_load_477 {Type I LastRead 0 FirstWrite -1}
		weights_load_478 {Type I LastRead 0 FirstWrite -1}
		weights_load_479 {Type I LastRead 0 FirstWrite -1}
		weights_load_480 {Type I LastRead 0 FirstWrite -1}
		weights_load_481 {Type I LastRead 0 FirstWrite -1}
		weights_load_482 {Type I LastRead 0 FirstWrite -1}
		weights_load_483 {Type I LastRead 0 FirstWrite -1}
		weights_load_484 {Type I LastRead 0 FirstWrite -1}
		weights_load_485 {Type I LastRead 0 FirstWrite -1}
		weights_load_486 {Type I LastRead 0 FirstWrite -1}
		weights_load_487 {Type I LastRead 0 FirstWrite -1}
		weights_load_488 {Type I LastRead 0 FirstWrite -1}
		weights_load_489 {Type I LastRead 0 FirstWrite -1}
		weights_load_490 {Type I LastRead 0 FirstWrite -1}
		weights_load_491 {Type I LastRead 0 FirstWrite -1}
		weights_load_492 {Type I LastRead 0 FirstWrite -1}
		weights_load_493 {Type I LastRead 0 FirstWrite -1}
		weights_load_494 {Type I LastRead 0 FirstWrite -1}
		weights_load_495 {Type I LastRead 0 FirstWrite -1}
		weights_load_496 {Type I LastRead 0 FirstWrite -1}
		weights_load_497 {Type I LastRead 0 FirstWrite -1}
		weights_load_498 {Type I LastRead 0 FirstWrite -1}
		weights_load_499 {Type I LastRead 0 FirstWrite -1}
		weights_load_500 {Type I LastRead 0 FirstWrite -1}
		weights_load_501 {Type I LastRead 0 FirstWrite -1}
		weights_load_502 {Type I LastRead 0 FirstWrite -1}
		weights_load_503 {Type I LastRead 0 FirstWrite -1}
		weights_load_504 {Type I LastRead 0 FirstWrite -1}
		weights_load_505 {Type I LastRead 0 FirstWrite -1}
		weights_load_506 {Type I LastRead 0 FirstWrite -1}
		weights_load_507 {Type I LastRead 0 FirstWrite -1}
		weights_load_508 {Type I LastRead 0 FirstWrite -1}
		weights_load_509 {Type I LastRead 0 FirstWrite -1}
		weights_load_510 {Type I LastRead 0 FirstWrite -1}
		weights_load_511 {Type I LastRead 0 FirstWrite -1}
		weights_load_512 {Type I LastRead 0 FirstWrite -1}
		weights_load_513 {Type I LastRead 0 FirstWrite -1}
		weights_load_514 {Type I LastRead 0 FirstWrite -1}
		weights_load_515 {Type I LastRead 0 FirstWrite -1}
		weights_load_516 {Type I LastRead 0 FirstWrite -1}
		weights_load_517 {Type I LastRead 0 FirstWrite -1}
		weights_load_518 {Type I LastRead 0 FirstWrite -1}
		weights_load_519 {Type I LastRead 0 FirstWrite -1}
		weights_load_520 {Type I LastRead 0 FirstWrite -1}
		weights_load_521 {Type I LastRead 0 FirstWrite -1}
		weights_load_522 {Type I LastRead 0 FirstWrite -1}
		weights_load_523 {Type I LastRead 0 FirstWrite -1}
		weights_load_524 {Type I LastRead 0 FirstWrite -1}
		weights_load_525 {Type I LastRead 0 FirstWrite -1}
		weights_load_526 {Type I LastRead 0 FirstWrite -1}
		weights_load_527 {Type I LastRead 0 FirstWrite -1}
		weights_load_528 {Type I LastRead 0 FirstWrite -1}
		weights_load_529 {Type I LastRead 0 FirstWrite -1}
		weights_load_530 {Type I LastRead 0 FirstWrite -1}
		weights_load_531 {Type I LastRead 0 FirstWrite -1}
		weights_load_532 {Type I LastRead 0 FirstWrite -1}
		weights_load_533 {Type I LastRead 0 FirstWrite -1}
		weights_load_534 {Type I LastRead 0 FirstWrite -1}
		weights_load_535 {Type I LastRead 0 FirstWrite -1}
		weights_load_536 {Type I LastRead 0 FirstWrite -1}
		weights_load_537 {Type I LastRead 0 FirstWrite -1}
		weights_load_538 {Type I LastRead 0 FirstWrite -1}
		weights_load_539 {Type I LastRead 0 FirstWrite -1}
		weights_load_540 {Type I LastRead 0 FirstWrite -1}
		weights_load_541 {Type I LastRead 0 FirstWrite -1}
		weights_load_542 {Type I LastRead 0 FirstWrite -1}
		weights_load_543 {Type I LastRead 0 FirstWrite -1}
		weights_load_544 {Type I LastRead 0 FirstWrite -1}
		weights_load_545 {Type I LastRead 0 FirstWrite -1}
		weights_load_546 {Type I LastRead 0 FirstWrite -1}
		weights_load_547 {Type I LastRead 0 FirstWrite -1}
		weights_load_548 {Type I LastRead 0 FirstWrite -1}
		weights_load_549 {Type I LastRead 0 FirstWrite -1}
		weights_load_550 {Type I LastRead 0 FirstWrite -1}
		weights_load_551 {Type I LastRead 0 FirstWrite -1}
		weights_load_552 {Type I LastRead 0 FirstWrite -1}
		weights_load_553 {Type I LastRead 0 FirstWrite -1}
		weights_load_554 {Type I LastRead 0 FirstWrite -1}
		weights_load_555 {Type I LastRead 0 FirstWrite -1}
		weights_load_556 {Type I LastRead 0 FirstWrite -1}
		weights_load_557 {Type I LastRead 0 FirstWrite -1}
		weights_load_558 {Type I LastRead 0 FirstWrite -1}
		weights_load_559 {Type I LastRead 0 FirstWrite -1}
		weights_load_560 {Type I LastRead 0 FirstWrite -1}
		weights_load_561 {Type I LastRead 0 FirstWrite -1}
		weights_load_562 {Type I LastRead 0 FirstWrite -1}
		weights_load_563 {Type I LastRead 0 FirstWrite -1}
		weights_load_564 {Type I LastRead 0 FirstWrite -1}
		weights_load_565 {Type I LastRead 0 FirstWrite -1}
		weights_load_566 {Type I LastRead 0 FirstWrite -1}
		weights_load_567 {Type I LastRead 0 FirstWrite -1}
		weights_load_568 {Type I LastRead 0 FirstWrite -1}
		weights_load_569 {Type I LastRead 0 FirstWrite -1}
		weights_load_570 {Type I LastRead 0 FirstWrite -1}
		weights_load_571 {Type I LastRead 0 FirstWrite -1}
		weights_load_572 {Type I LastRead 0 FirstWrite -1}
		weights_load_573 {Type I LastRead 0 FirstWrite -1}
		weights_load_574 {Type I LastRead 0 FirstWrite -1}
		weights_load_575 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_9 { ap_fifo {  { conv2d_64_padded_window_stream_9_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_9_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_9_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_9_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_9_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_9 { ap_fifo {  { in_channel_map_stream_9_din fifo_port_we 1 32 }  { in_channel_map_stream_9_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_9_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_9_full_n fifo_status 0 1 }  { in_channel_map_stream_9_write fifo_data 1 1 } } }
}
