set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_30
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.30}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_30 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_30 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_30", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_30", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_30_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_30_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_30_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_30_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_30_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_30_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_30_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_30_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_30_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_30_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_30_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_30", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_30_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_30", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_30_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_30", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_30_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_30", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_30_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_30", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_30_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_30", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_30_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_30", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_30_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_30", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_30_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_30", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_30_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_30", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_30",
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
			{"Name" : "conv2d_64_padded_window_stream_30", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_30_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_30", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_30", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_30_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_30", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_30_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_30_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_30", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_30_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4026", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4027", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4028", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4029", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4030", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4031", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4032", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4033", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_30", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_30_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_4034", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4035", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4036", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4037", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4038", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4039", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4040", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4041", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4042", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4043", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4044", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4045", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4046", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4047", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4048", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4049", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4050", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4051", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4052", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4053", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4054", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4055", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4056", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4057", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4058", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4059", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4060", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4061", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4062", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4063", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4064", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4065", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4066", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4067", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4068", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4069", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4070", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4071", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4072", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4073", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4074", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4075", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4076", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4077", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4078", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4079", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4080", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4081", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4082", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4083", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4084", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4085", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4086", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4087", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4088", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4089", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4090", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4091", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4092", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4093", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4094", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4095", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4096", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4097", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4098", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4099", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4100", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4101", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4102", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4103", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4104", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4105", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4106", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4107", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4108", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4109", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4110", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4111", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4112", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4113", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4114", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4115", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4116", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4117", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4118", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4119", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4120", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4121", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4122", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4123", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4124", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4125", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4126", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4127", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4128", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4129", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4130", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4131", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4132", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4133", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4134", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4135", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4136", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4137", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4138", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4139", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4140", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4141", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4142", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4143", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4144", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4145", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4146", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4147", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4148", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4149", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4150", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4151", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4152", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4153", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4154", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4155", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4156", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4157", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4158", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4159", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4160", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4161", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4162", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4163", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4164", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4165", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4166", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4167", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4168", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4169", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4170", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4171", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4172", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4173", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4174", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4175", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4176", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4177", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4178", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4179", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4180", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4181", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4182", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4183", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4184", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4185", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4186", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4187", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4188", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4189", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4190", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4191", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4192", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4193", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4194", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4195", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4196", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4197", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4198", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4199", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4200", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4201", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4202", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4203", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4204", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4205", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4206", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4207", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4208", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4209", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4210", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4211", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4212", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4213", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4214", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4215", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4216", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4217", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4218", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4219", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4220", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4221", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4222", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4223", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4224", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4225", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4226", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4227", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4228", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4229", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4230", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4231", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4232", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4233", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4234", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4235", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4236", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4237", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4238", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4239", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4240", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4241", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4242", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4243", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4244", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4245", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4246", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4247", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4248", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4249", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4250", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4251", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4252", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4253", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4254", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4255", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4256", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4257", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4258", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4259", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4260", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4261", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4262", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4263", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4264", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4265", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4266", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4267", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4268", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4269", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4270", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4271", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4272", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4273", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4274", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4275", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4276", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4277", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4278", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4279", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4280", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4281", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4282", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4283", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4284", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4285", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4286", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4287", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4288", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4289", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4290", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4291", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4292", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4293", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4294", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4295", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4296", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4297", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4298", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4299", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4300", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4301", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4302", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4303", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4304", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4305", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4306", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4307", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4308", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4309", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4310", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4311", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4312", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4313", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4314", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4315", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4316", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4317", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4318", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4319", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4320", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4321", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4322", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4323", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4324", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4325", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4326", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4327", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4328", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4329", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4330", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4331", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4332", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4333", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4334", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4335", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4336", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4337", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4338", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4339", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4340", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4341", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4342", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4343", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4344", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4345", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4346", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4347", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4348", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4349", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4350", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4351", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4352", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4353", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4354", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4355", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4356", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4357", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4358", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4359", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4360", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4361", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4362", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4363", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4364", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4365", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4366", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4367", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4368", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4369", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4370", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4371", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4372", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4373", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4374", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4375", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4376", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4377", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4378", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4379", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4380", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4381", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4382", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4383", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4384", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4385", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4386", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4387", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4388", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4389", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4390", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4391", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4392", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4393", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4394", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4395", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4396", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4397", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4398", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4399", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4400", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4401", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4402", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4403", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4404", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4405", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4406", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4407", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4408", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4409", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4410", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4411", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4412", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4413", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4414", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4415", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4416", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4417", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4418", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4419", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4420", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4421", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4422", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4423", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4424", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4425", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4426", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4427", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4428", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4429", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4430", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4431", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4432", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4433", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4434", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4435", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4436", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4437", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4438", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4439", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4440", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4441", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4442", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4443", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4444", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4445", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4446", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4447", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4448", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4449", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4450", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4451", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4452", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4453", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4454", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4455", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4456", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4457", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4458", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4459", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4460", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4461", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4462", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4463", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4464", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4465", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4466", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4467", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4468", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4469", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4470", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4471", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4472", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4473", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4474", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4475", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4476", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4477", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4478", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4479", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4480", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4481", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4482", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4483", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4484", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4485", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4486", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4487", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4488", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4489", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4490", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4491", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4492", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4493", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4494", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4495", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4496", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4497", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4498", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4499", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4500", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4501", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4502", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4503", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4504", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4505", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4506", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4507", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4508", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4509", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4510", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4511", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4512", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4513", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4514", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4515", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4516", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4517", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4518", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4519", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4520", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4521", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4522", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4523", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4524", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4525", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4526", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4527", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4528", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4529", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4530", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4531", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4532", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4533", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4534", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4535", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4536", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4537", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4538", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4539", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4540", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4541", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4542", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4543", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4544", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4545", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4546", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4547", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4548", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4549", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4550", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4551", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4552", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4553", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4554", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4555", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4556", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4557", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4558", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4559", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4560", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4561", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4562", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4563", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4564", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4565", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4566", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4567", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4568", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4569", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4570", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4571", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4572", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4573", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4574", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4575", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4576", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4577", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4578", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4579", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4580", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4581", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4582", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4583", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4584", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4585", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4586", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4587", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4588", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4589", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4590", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4591", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4592", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4593", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4594", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4595", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4596", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4597", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4598", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4599", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4600", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_30_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U18496", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_30_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U18497", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_30_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U18498", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_30_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U18499", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_30_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U18500", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_30_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U18501", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_30_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U18502", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_30_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U18503", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_30_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U18504", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_30_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U18505", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_30_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U18506", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_30_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U18507", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_30_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U18508", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_30_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U18509", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_30_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U18510", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_30_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U18511", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_30_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U18512", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_30_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_30 {
		conv2d_64_padded_window_stream_30 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_30 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_30_Pipeline_inputs {
		conv2d_64_padded_window_stream_30 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_4026 {Type I LastRead 0 FirstWrite -1}
		weights_load_4027 {Type I LastRead 0 FirstWrite -1}
		weights_load_4028 {Type I LastRead 0 FirstWrite -1}
		weights_load_4029 {Type I LastRead 0 FirstWrite -1}
		weights_load_4030 {Type I LastRead 0 FirstWrite -1}
		weights_load_4031 {Type I LastRead 0 FirstWrite -1}
		weights_load_4032 {Type I LastRead 0 FirstWrite -1}
		weights_load_4033 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_30 {Type O LastRead -1 FirstWrite 16}
		weights_load_4034 {Type I LastRead 0 FirstWrite -1}
		weights_load_4035 {Type I LastRead 0 FirstWrite -1}
		weights_load_4036 {Type I LastRead 0 FirstWrite -1}
		weights_load_4037 {Type I LastRead 0 FirstWrite -1}
		weights_load_4038 {Type I LastRead 0 FirstWrite -1}
		weights_load_4039 {Type I LastRead 0 FirstWrite -1}
		weights_load_4040 {Type I LastRead 0 FirstWrite -1}
		weights_load_4041 {Type I LastRead 0 FirstWrite -1}
		weights_load_4042 {Type I LastRead 0 FirstWrite -1}
		weights_load_4043 {Type I LastRead 0 FirstWrite -1}
		weights_load_4044 {Type I LastRead 0 FirstWrite -1}
		weights_load_4045 {Type I LastRead 0 FirstWrite -1}
		weights_load_4046 {Type I LastRead 0 FirstWrite -1}
		weights_load_4047 {Type I LastRead 0 FirstWrite -1}
		weights_load_4048 {Type I LastRead 0 FirstWrite -1}
		weights_load_4049 {Type I LastRead 0 FirstWrite -1}
		weights_load_4050 {Type I LastRead 0 FirstWrite -1}
		weights_load_4051 {Type I LastRead 0 FirstWrite -1}
		weights_load_4052 {Type I LastRead 0 FirstWrite -1}
		weights_load_4053 {Type I LastRead 0 FirstWrite -1}
		weights_load_4054 {Type I LastRead 0 FirstWrite -1}
		weights_load_4055 {Type I LastRead 0 FirstWrite -1}
		weights_load_4056 {Type I LastRead 0 FirstWrite -1}
		weights_load_4057 {Type I LastRead 0 FirstWrite -1}
		weights_load_4058 {Type I LastRead 0 FirstWrite -1}
		weights_load_4059 {Type I LastRead 0 FirstWrite -1}
		weights_load_4060 {Type I LastRead 0 FirstWrite -1}
		weights_load_4061 {Type I LastRead 0 FirstWrite -1}
		weights_load_4062 {Type I LastRead 0 FirstWrite -1}
		weights_load_4063 {Type I LastRead 0 FirstWrite -1}
		weights_load_4064 {Type I LastRead 0 FirstWrite -1}
		weights_load_4065 {Type I LastRead 0 FirstWrite -1}
		weights_load_4066 {Type I LastRead 0 FirstWrite -1}
		weights_load_4067 {Type I LastRead 0 FirstWrite -1}
		weights_load_4068 {Type I LastRead 0 FirstWrite -1}
		weights_load_4069 {Type I LastRead 0 FirstWrite -1}
		weights_load_4070 {Type I LastRead 0 FirstWrite -1}
		weights_load_4071 {Type I LastRead 0 FirstWrite -1}
		weights_load_4072 {Type I LastRead 0 FirstWrite -1}
		weights_load_4073 {Type I LastRead 0 FirstWrite -1}
		weights_load_4074 {Type I LastRead 0 FirstWrite -1}
		weights_load_4075 {Type I LastRead 0 FirstWrite -1}
		weights_load_4076 {Type I LastRead 0 FirstWrite -1}
		weights_load_4077 {Type I LastRead 0 FirstWrite -1}
		weights_load_4078 {Type I LastRead 0 FirstWrite -1}
		weights_load_4079 {Type I LastRead 0 FirstWrite -1}
		weights_load_4080 {Type I LastRead 0 FirstWrite -1}
		weights_load_4081 {Type I LastRead 0 FirstWrite -1}
		weights_load_4082 {Type I LastRead 0 FirstWrite -1}
		weights_load_4083 {Type I LastRead 0 FirstWrite -1}
		weights_load_4084 {Type I LastRead 0 FirstWrite -1}
		weights_load_4085 {Type I LastRead 0 FirstWrite -1}
		weights_load_4086 {Type I LastRead 0 FirstWrite -1}
		weights_load_4087 {Type I LastRead 0 FirstWrite -1}
		weights_load_4088 {Type I LastRead 0 FirstWrite -1}
		weights_load_4089 {Type I LastRead 0 FirstWrite -1}
		weights_load_4090 {Type I LastRead 0 FirstWrite -1}
		weights_load_4091 {Type I LastRead 0 FirstWrite -1}
		weights_load_4092 {Type I LastRead 0 FirstWrite -1}
		weights_load_4093 {Type I LastRead 0 FirstWrite -1}
		weights_load_4094 {Type I LastRead 0 FirstWrite -1}
		weights_load_4095 {Type I LastRead 0 FirstWrite -1}
		weights_load_4096 {Type I LastRead 0 FirstWrite -1}
		weights_load_4097 {Type I LastRead 0 FirstWrite -1}
		weights_load_4098 {Type I LastRead 0 FirstWrite -1}
		weights_load_4099 {Type I LastRead 0 FirstWrite -1}
		weights_load_4100 {Type I LastRead 0 FirstWrite -1}
		weights_load_4101 {Type I LastRead 0 FirstWrite -1}
		weights_load_4102 {Type I LastRead 0 FirstWrite -1}
		weights_load_4103 {Type I LastRead 0 FirstWrite -1}
		weights_load_4104 {Type I LastRead 0 FirstWrite -1}
		weights_load_4105 {Type I LastRead 0 FirstWrite -1}
		weights_load_4106 {Type I LastRead 0 FirstWrite -1}
		weights_load_4107 {Type I LastRead 0 FirstWrite -1}
		weights_load_4108 {Type I LastRead 0 FirstWrite -1}
		weights_load_4109 {Type I LastRead 0 FirstWrite -1}
		weights_load_4110 {Type I LastRead 0 FirstWrite -1}
		weights_load_4111 {Type I LastRead 0 FirstWrite -1}
		weights_load_4112 {Type I LastRead 0 FirstWrite -1}
		weights_load_4113 {Type I LastRead 0 FirstWrite -1}
		weights_load_4114 {Type I LastRead 0 FirstWrite -1}
		weights_load_4115 {Type I LastRead 0 FirstWrite -1}
		weights_load_4116 {Type I LastRead 0 FirstWrite -1}
		weights_load_4117 {Type I LastRead 0 FirstWrite -1}
		weights_load_4118 {Type I LastRead 0 FirstWrite -1}
		weights_load_4119 {Type I LastRead 0 FirstWrite -1}
		weights_load_4120 {Type I LastRead 0 FirstWrite -1}
		weights_load_4121 {Type I LastRead 0 FirstWrite -1}
		weights_load_4122 {Type I LastRead 0 FirstWrite -1}
		weights_load_4123 {Type I LastRead 0 FirstWrite -1}
		weights_load_4124 {Type I LastRead 0 FirstWrite -1}
		weights_load_4125 {Type I LastRead 0 FirstWrite -1}
		weights_load_4126 {Type I LastRead 0 FirstWrite -1}
		weights_load_4127 {Type I LastRead 0 FirstWrite -1}
		weights_load_4128 {Type I LastRead 0 FirstWrite -1}
		weights_load_4129 {Type I LastRead 0 FirstWrite -1}
		weights_load_4130 {Type I LastRead 0 FirstWrite -1}
		weights_load_4131 {Type I LastRead 0 FirstWrite -1}
		weights_load_4132 {Type I LastRead 0 FirstWrite -1}
		weights_load_4133 {Type I LastRead 0 FirstWrite -1}
		weights_load_4134 {Type I LastRead 0 FirstWrite -1}
		weights_load_4135 {Type I LastRead 0 FirstWrite -1}
		weights_load_4136 {Type I LastRead 0 FirstWrite -1}
		weights_load_4137 {Type I LastRead 0 FirstWrite -1}
		weights_load_4138 {Type I LastRead 0 FirstWrite -1}
		weights_load_4139 {Type I LastRead 0 FirstWrite -1}
		weights_load_4140 {Type I LastRead 0 FirstWrite -1}
		weights_load_4141 {Type I LastRead 0 FirstWrite -1}
		weights_load_4142 {Type I LastRead 0 FirstWrite -1}
		weights_load_4143 {Type I LastRead 0 FirstWrite -1}
		weights_load_4144 {Type I LastRead 0 FirstWrite -1}
		weights_load_4145 {Type I LastRead 0 FirstWrite -1}
		weights_load_4146 {Type I LastRead 0 FirstWrite -1}
		weights_load_4147 {Type I LastRead 0 FirstWrite -1}
		weights_load_4148 {Type I LastRead 0 FirstWrite -1}
		weights_load_4149 {Type I LastRead 0 FirstWrite -1}
		weights_load_4150 {Type I LastRead 0 FirstWrite -1}
		weights_load_4151 {Type I LastRead 0 FirstWrite -1}
		weights_load_4152 {Type I LastRead 0 FirstWrite -1}
		weights_load_4153 {Type I LastRead 0 FirstWrite -1}
		weights_load_4154 {Type I LastRead 0 FirstWrite -1}
		weights_load_4155 {Type I LastRead 0 FirstWrite -1}
		weights_load_4156 {Type I LastRead 0 FirstWrite -1}
		weights_load_4157 {Type I LastRead 0 FirstWrite -1}
		weights_load_4158 {Type I LastRead 0 FirstWrite -1}
		weights_load_4159 {Type I LastRead 0 FirstWrite -1}
		weights_load_4160 {Type I LastRead 0 FirstWrite -1}
		weights_load_4161 {Type I LastRead 0 FirstWrite -1}
		weights_load_4162 {Type I LastRead 0 FirstWrite -1}
		weights_load_4163 {Type I LastRead 0 FirstWrite -1}
		weights_load_4164 {Type I LastRead 0 FirstWrite -1}
		weights_load_4165 {Type I LastRead 0 FirstWrite -1}
		weights_load_4166 {Type I LastRead 0 FirstWrite -1}
		weights_load_4167 {Type I LastRead 0 FirstWrite -1}
		weights_load_4168 {Type I LastRead 0 FirstWrite -1}
		weights_load_4169 {Type I LastRead 0 FirstWrite -1}
		weights_load_4170 {Type I LastRead 0 FirstWrite -1}
		weights_load_4171 {Type I LastRead 0 FirstWrite -1}
		weights_load_4172 {Type I LastRead 0 FirstWrite -1}
		weights_load_4173 {Type I LastRead 0 FirstWrite -1}
		weights_load_4174 {Type I LastRead 0 FirstWrite -1}
		weights_load_4175 {Type I LastRead 0 FirstWrite -1}
		weights_load_4176 {Type I LastRead 0 FirstWrite -1}
		weights_load_4177 {Type I LastRead 0 FirstWrite -1}
		weights_load_4178 {Type I LastRead 0 FirstWrite -1}
		weights_load_4179 {Type I LastRead 0 FirstWrite -1}
		weights_load_4180 {Type I LastRead 0 FirstWrite -1}
		weights_load_4181 {Type I LastRead 0 FirstWrite -1}
		weights_load_4182 {Type I LastRead 0 FirstWrite -1}
		weights_load_4183 {Type I LastRead 0 FirstWrite -1}
		weights_load_4184 {Type I LastRead 0 FirstWrite -1}
		weights_load_4185 {Type I LastRead 0 FirstWrite -1}
		weights_load_4186 {Type I LastRead 0 FirstWrite -1}
		weights_load_4187 {Type I LastRead 0 FirstWrite -1}
		weights_load_4188 {Type I LastRead 0 FirstWrite -1}
		weights_load_4189 {Type I LastRead 0 FirstWrite -1}
		weights_load_4190 {Type I LastRead 0 FirstWrite -1}
		weights_load_4191 {Type I LastRead 0 FirstWrite -1}
		weights_load_4192 {Type I LastRead 0 FirstWrite -1}
		weights_load_4193 {Type I LastRead 0 FirstWrite -1}
		weights_load_4194 {Type I LastRead 0 FirstWrite -1}
		weights_load_4195 {Type I LastRead 0 FirstWrite -1}
		weights_load_4196 {Type I LastRead 0 FirstWrite -1}
		weights_load_4197 {Type I LastRead 0 FirstWrite -1}
		weights_load_4198 {Type I LastRead 0 FirstWrite -1}
		weights_load_4199 {Type I LastRead 0 FirstWrite -1}
		weights_load_4200 {Type I LastRead 0 FirstWrite -1}
		weights_load_4201 {Type I LastRead 0 FirstWrite -1}
		weights_load_4202 {Type I LastRead 0 FirstWrite -1}
		weights_load_4203 {Type I LastRead 0 FirstWrite -1}
		weights_load_4204 {Type I LastRead 0 FirstWrite -1}
		weights_load_4205 {Type I LastRead 0 FirstWrite -1}
		weights_load_4206 {Type I LastRead 0 FirstWrite -1}
		weights_load_4207 {Type I LastRead 0 FirstWrite -1}
		weights_load_4208 {Type I LastRead 0 FirstWrite -1}
		weights_load_4209 {Type I LastRead 0 FirstWrite -1}
		weights_load_4210 {Type I LastRead 0 FirstWrite -1}
		weights_load_4211 {Type I LastRead 0 FirstWrite -1}
		weights_load_4212 {Type I LastRead 0 FirstWrite -1}
		weights_load_4213 {Type I LastRead 0 FirstWrite -1}
		weights_load_4214 {Type I LastRead 0 FirstWrite -1}
		weights_load_4215 {Type I LastRead 0 FirstWrite -1}
		weights_load_4216 {Type I LastRead 0 FirstWrite -1}
		weights_load_4217 {Type I LastRead 0 FirstWrite -1}
		weights_load_4218 {Type I LastRead 0 FirstWrite -1}
		weights_load_4219 {Type I LastRead 0 FirstWrite -1}
		weights_load_4220 {Type I LastRead 0 FirstWrite -1}
		weights_load_4221 {Type I LastRead 0 FirstWrite -1}
		weights_load_4222 {Type I LastRead 0 FirstWrite -1}
		weights_load_4223 {Type I LastRead 0 FirstWrite -1}
		weights_load_4224 {Type I LastRead 0 FirstWrite -1}
		weights_load_4225 {Type I LastRead 0 FirstWrite -1}
		weights_load_4226 {Type I LastRead 0 FirstWrite -1}
		weights_load_4227 {Type I LastRead 0 FirstWrite -1}
		weights_load_4228 {Type I LastRead 0 FirstWrite -1}
		weights_load_4229 {Type I LastRead 0 FirstWrite -1}
		weights_load_4230 {Type I LastRead 0 FirstWrite -1}
		weights_load_4231 {Type I LastRead 0 FirstWrite -1}
		weights_load_4232 {Type I LastRead 0 FirstWrite -1}
		weights_load_4233 {Type I LastRead 0 FirstWrite -1}
		weights_load_4234 {Type I LastRead 0 FirstWrite -1}
		weights_load_4235 {Type I LastRead 0 FirstWrite -1}
		weights_load_4236 {Type I LastRead 0 FirstWrite -1}
		weights_load_4237 {Type I LastRead 0 FirstWrite -1}
		weights_load_4238 {Type I LastRead 0 FirstWrite -1}
		weights_load_4239 {Type I LastRead 0 FirstWrite -1}
		weights_load_4240 {Type I LastRead 0 FirstWrite -1}
		weights_load_4241 {Type I LastRead 0 FirstWrite -1}
		weights_load_4242 {Type I LastRead 0 FirstWrite -1}
		weights_load_4243 {Type I LastRead 0 FirstWrite -1}
		weights_load_4244 {Type I LastRead 0 FirstWrite -1}
		weights_load_4245 {Type I LastRead 0 FirstWrite -1}
		weights_load_4246 {Type I LastRead 0 FirstWrite -1}
		weights_load_4247 {Type I LastRead 0 FirstWrite -1}
		weights_load_4248 {Type I LastRead 0 FirstWrite -1}
		weights_load_4249 {Type I LastRead 0 FirstWrite -1}
		weights_load_4250 {Type I LastRead 0 FirstWrite -1}
		weights_load_4251 {Type I LastRead 0 FirstWrite -1}
		weights_load_4252 {Type I LastRead 0 FirstWrite -1}
		weights_load_4253 {Type I LastRead 0 FirstWrite -1}
		weights_load_4254 {Type I LastRead 0 FirstWrite -1}
		weights_load_4255 {Type I LastRead 0 FirstWrite -1}
		weights_load_4256 {Type I LastRead 0 FirstWrite -1}
		weights_load_4257 {Type I LastRead 0 FirstWrite -1}
		weights_load_4258 {Type I LastRead 0 FirstWrite -1}
		weights_load_4259 {Type I LastRead 0 FirstWrite -1}
		weights_load_4260 {Type I LastRead 0 FirstWrite -1}
		weights_load_4261 {Type I LastRead 0 FirstWrite -1}
		weights_load_4262 {Type I LastRead 0 FirstWrite -1}
		weights_load_4263 {Type I LastRead 0 FirstWrite -1}
		weights_load_4264 {Type I LastRead 0 FirstWrite -1}
		weights_load_4265 {Type I LastRead 0 FirstWrite -1}
		weights_load_4266 {Type I LastRead 0 FirstWrite -1}
		weights_load_4267 {Type I LastRead 0 FirstWrite -1}
		weights_load_4268 {Type I LastRead 0 FirstWrite -1}
		weights_load_4269 {Type I LastRead 0 FirstWrite -1}
		weights_load_4270 {Type I LastRead 0 FirstWrite -1}
		weights_load_4271 {Type I LastRead 0 FirstWrite -1}
		weights_load_4272 {Type I LastRead 0 FirstWrite -1}
		weights_load_4273 {Type I LastRead 0 FirstWrite -1}
		weights_load_4274 {Type I LastRead 0 FirstWrite -1}
		weights_load_4275 {Type I LastRead 0 FirstWrite -1}
		weights_load_4276 {Type I LastRead 0 FirstWrite -1}
		weights_load_4277 {Type I LastRead 0 FirstWrite -1}
		weights_load_4278 {Type I LastRead 0 FirstWrite -1}
		weights_load_4279 {Type I LastRead 0 FirstWrite -1}
		weights_load_4280 {Type I LastRead 0 FirstWrite -1}
		weights_load_4281 {Type I LastRead 0 FirstWrite -1}
		weights_load_4282 {Type I LastRead 0 FirstWrite -1}
		weights_load_4283 {Type I LastRead 0 FirstWrite -1}
		weights_load_4284 {Type I LastRead 0 FirstWrite -1}
		weights_load_4285 {Type I LastRead 0 FirstWrite -1}
		weights_load_4286 {Type I LastRead 0 FirstWrite -1}
		weights_load_4287 {Type I LastRead 0 FirstWrite -1}
		weights_load_4288 {Type I LastRead 0 FirstWrite -1}
		weights_load_4289 {Type I LastRead 0 FirstWrite -1}
		weights_load_4290 {Type I LastRead 0 FirstWrite -1}
		weights_load_4291 {Type I LastRead 0 FirstWrite -1}
		weights_load_4292 {Type I LastRead 0 FirstWrite -1}
		weights_load_4293 {Type I LastRead 0 FirstWrite -1}
		weights_load_4294 {Type I LastRead 0 FirstWrite -1}
		weights_load_4295 {Type I LastRead 0 FirstWrite -1}
		weights_load_4296 {Type I LastRead 0 FirstWrite -1}
		weights_load_4297 {Type I LastRead 0 FirstWrite -1}
		weights_load_4298 {Type I LastRead 0 FirstWrite -1}
		weights_load_4299 {Type I LastRead 0 FirstWrite -1}
		weights_load_4300 {Type I LastRead 0 FirstWrite -1}
		weights_load_4301 {Type I LastRead 0 FirstWrite -1}
		weights_load_4302 {Type I LastRead 0 FirstWrite -1}
		weights_load_4303 {Type I LastRead 0 FirstWrite -1}
		weights_load_4304 {Type I LastRead 0 FirstWrite -1}
		weights_load_4305 {Type I LastRead 0 FirstWrite -1}
		weights_load_4306 {Type I LastRead 0 FirstWrite -1}
		weights_load_4307 {Type I LastRead 0 FirstWrite -1}
		weights_load_4308 {Type I LastRead 0 FirstWrite -1}
		weights_load_4309 {Type I LastRead 0 FirstWrite -1}
		weights_load_4310 {Type I LastRead 0 FirstWrite -1}
		weights_load_4311 {Type I LastRead 0 FirstWrite -1}
		weights_load_4312 {Type I LastRead 0 FirstWrite -1}
		weights_load_4313 {Type I LastRead 0 FirstWrite -1}
		weights_load_4314 {Type I LastRead 0 FirstWrite -1}
		weights_load_4315 {Type I LastRead 0 FirstWrite -1}
		weights_load_4316 {Type I LastRead 0 FirstWrite -1}
		weights_load_4317 {Type I LastRead 0 FirstWrite -1}
		weights_load_4318 {Type I LastRead 0 FirstWrite -1}
		weights_load_4319 {Type I LastRead 0 FirstWrite -1}
		weights_load_4320 {Type I LastRead 0 FirstWrite -1}
		weights_load_4321 {Type I LastRead 0 FirstWrite -1}
		weights_load_4322 {Type I LastRead 0 FirstWrite -1}
		weights_load_4323 {Type I LastRead 0 FirstWrite -1}
		weights_load_4324 {Type I LastRead 0 FirstWrite -1}
		weights_load_4325 {Type I LastRead 0 FirstWrite -1}
		weights_load_4326 {Type I LastRead 0 FirstWrite -1}
		weights_load_4327 {Type I LastRead 0 FirstWrite -1}
		weights_load_4328 {Type I LastRead 0 FirstWrite -1}
		weights_load_4329 {Type I LastRead 0 FirstWrite -1}
		weights_load_4330 {Type I LastRead 0 FirstWrite -1}
		weights_load_4331 {Type I LastRead 0 FirstWrite -1}
		weights_load_4332 {Type I LastRead 0 FirstWrite -1}
		weights_load_4333 {Type I LastRead 0 FirstWrite -1}
		weights_load_4334 {Type I LastRead 0 FirstWrite -1}
		weights_load_4335 {Type I LastRead 0 FirstWrite -1}
		weights_load_4336 {Type I LastRead 0 FirstWrite -1}
		weights_load_4337 {Type I LastRead 0 FirstWrite -1}
		weights_load_4338 {Type I LastRead 0 FirstWrite -1}
		weights_load_4339 {Type I LastRead 0 FirstWrite -1}
		weights_load_4340 {Type I LastRead 0 FirstWrite -1}
		weights_load_4341 {Type I LastRead 0 FirstWrite -1}
		weights_load_4342 {Type I LastRead 0 FirstWrite -1}
		weights_load_4343 {Type I LastRead 0 FirstWrite -1}
		weights_load_4344 {Type I LastRead 0 FirstWrite -1}
		weights_load_4345 {Type I LastRead 0 FirstWrite -1}
		weights_load_4346 {Type I LastRead 0 FirstWrite -1}
		weights_load_4347 {Type I LastRead 0 FirstWrite -1}
		weights_load_4348 {Type I LastRead 0 FirstWrite -1}
		weights_load_4349 {Type I LastRead 0 FirstWrite -1}
		weights_load_4350 {Type I LastRead 0 FirstWrite -1}
		weights_load_4351 {Type I LastRead 0 FirstWrite -1}
		weights_load_4352 {Type I LastRead 0 FirstWrite -1}
		weights_load_4353 {Type I LastRead 0 FirstWrite -1}
		weights_load_4354 {Type I LastRead 0 FirstWrite -1}
		weights_load_4355 {Type I LastRead 0 FirstWrite -1}
		weights_load_4356 {Type I LastRead 0 FirstWrite -1}
		weights_load_4357 {Type I LastRead 0 FirstWrite -1}
		weights_load_4358 {Type I LastRead 0 FirstWrite -1}
		weights_load_4359 {Type I LastRead 0 FirstWrite -1}
		weights_load_4360 {Type I LastRead 0 FirstWrite -1}
		weights_load_4361 {Type I LastRead 0 FirstWrite -1}
		weights_load_4362 {Type I LastRead 0 FirstWrite -1}
		weights_load_4363 {Type I LastRead 0 FirstWrite -1}
		weights_load_4364 {Type I LastRead 0 FirstWrite -1}
		weights_load_4365 {Type I LastRead 0 FirstWrite -1}
		weights_load_4366 {Type I LastRead 0 FirstWrite -1}
		weights_load_4367 {Type I LastRead 0 FirstWrite -1}
		weights_load_4368 {Type I LastRead 0 FirstWrite -1}
		weights_load_4369 {Type I LastRead 0 FirstWrite -1}
		weights_load_4370 {Type I LastRead 0 FirstWrite -1}
		weights_load_4371 {Type I LastRead 0 FirstWrite -1}
		weights_load_4372 {Type I LastRead 0 FirstWrite -1}
		weights_load_4373 {Type I LastRead 0 FirstWrite -1}
		weights_load_4374 {Type I LastRead 0 FirstWrite -1}
		weights_load_4375 {Type I LastRead 0 FirstWrite -1}
		weights_load_4376 {Type I LastRead 0 FirstWrite -1}
		weights_load_4377 {Type I LastRead 0 FirstWrite -1}
		weights_load_4378 {Type I LastRead 0 FirstWrite -1}
		weights_load_4379 {Type I LastRead 0 FirstWrite -1}
		weights_load_4380 {Type I LastRead 0 FirstWrite -1}
		weights_load_4381 {Type I LastRead 0 FirstWrite -1}
		weights_load_4382 {Type I LastRead 0 FirstWrite -1}
		weights_load_4383 {Type I LastRead 0 FirstWrite -1}
		weights_load_4384 {Type I LastRead 0 FirstWrite -1}
		weights_load_4385 {Type I LastRead 0 FirstWrite -1}
		weights_load_4386 {Type I LastRead 0 FirstWrite -1}
		weights_load_4387 {Type I LastRead 0 FirstWrite -1}
		weights_load_4388 {Type I LastRead 0 FirstWrite -1}
		weights_load_4389 {Type I LastRead 0 FirstWrite -1}
		weights_load_4390 {Type I LastRead 0 FirstWrite -1}
		weights_load_4391 {Type I LastRead 0 FirstWrite -1}
		weights_load_4392 {Type I LastRead 0 FirstWrite -1}
		weights_load_4393 {Type I LastRead 0 FirstWrite -1}
		weights_load_4394 {Type I LastRead 0 FirstWrite -1}
		weights_load_4395 {Type I LastRead 0 FirstWrite -1}
		weights_load_4396 {Type I LastRead 0 FirstWrite -1}
		weights_load_4397 {Type I LastRead 0 FirstWrite -1}
		weights_load_4398 {Type I LastRead 0 FirstWrite -1}
		weights_load_4399 {Type I LastRead 0 FirstWrite -1}
		weights_load_4400 {Type I LastRead 0 FirstWrite -1}
		weights_load_4401 {Type I LastRead 0 FirstWrite -1}
		weights_load_4402 {Type I LastRead 0 FirstWrite -1}
		weights_load_4403 {Type I LastRead 0 FirstWrite -1}
		weights_load_4404 {Type I LastRead 0 FirstWrite -1}
		weights_load_4405 {Type I LastRead 0 FirstWrite -1}
		weights_load_4406 {Type I LastRead 0 FirstWrite -1}
		weights_load_4407 {Type I LastRead 0 FirstWrite -1}
		weights_load_4408 {Type I LastRead 0 FirstWrite -1}
		weights_load_4409 {Type I LastRead 0 FirstWrite -1}
		weights_load_4410 {Type I LastRead 0 FirstWrite -1}
		weights_load_4411 {Type I LastRead 0 FirstWrite -1}
		weights_load_4412 {Type I LastRead 0 FirstWrite -1}
		weights_load_4413 {Type I LastRead 0 FirstWrite -1}
		weights_load_4414 {Type I LastRead 0 FirstWrite -1}
		weights_load_4415 {Type I LastRead 0 FirstWrite -1}
		weights_load_4416 {Type I LastRead 0 FirstWrite -1}
		weights_load_4417 {Type I LastRead 0 FirstWrite -1}
		weights_load_4418 {Type I LastRead 0 FirstWrite -1}
		weights_load_4419 {Type I LastRead 0 FirstWrite -1}
		weights_load_4420 {Type I LastRead 0 FirstWrite -1}
		weights_load_4421 {Type I LastRead 0 FirstWrite -1}
		weights_load_4422 {Type I LastRead 0 FirstWrite -1}
		weights_load_4423 {Type I LastRead 0 FirstWrite -1}
		weights_load_4424 {Type I LastRead 0 FirstWrite -1}
		weights_load_4425 {Type I LastRead 0 FirstWrite -1}
		weights_load_4426 {Type I LastRead 0 FirstWrite -1}
		weights_load_4427 {Type I LastRead 0 FirstWrite -1}
		weights_load_4428 {Type I LastRead 0 FirstWrite -1}
		weights_load_4429 {Type I LastRead 0 FirstWrite -1}
		weights_load_4430 {Type I LastRead 0 FirstWrite -1}
		weights_load_4431 {Type I LastRead 0 FirstWrite -1}
		weights_load_4432 {Type I LastRead 0 FirstWrite -1}
		weights_load_4433 {Type I LastRead 0 FirstWrite -1}
		weights_load_4434 {Type I LastRead 0 FirstWrite -1}
		weights_load_4435 {Type I LastRead 0 FirstWrite -1}
		weights_load_4436 {Type I LastRead 0 FirstWrite -1}
		weights_load_4437 {Type I LastRead 0 FirstWrite -1}
		weights_load_4438 {Type I LastRead 0 FirstWrite -1}
		weights_load_4439 {Type I LastRead 0 FirstWrite -1}
		weights_load_4440 {Type I LastRead 0 FirstWrite -1}
		weights_load_4441 {Type I LastRead 0 FirstWrite -1}
		weights_load_4442 {Type I LastRead 0 FirstWrite -1}
		weights_load_4443 {Type I LastRead 0 FirstWrite -1}
		weights_load_4444 {Type I LastRead 0 FirstWrite -1}
		weights_load_4445 {Type I LastRead 0 FirstWrite -1}
		weights_load_4446 {Type I LastRead 0 FirstWrite -1}
		weights_load_4447 {Type I LastRead 0 FirstWrite -1}
		weights_load_4448 {Type I LastRead 0 FirstWrite -1}
		weights_load_4449 {Type I LastRead 0 FirstWrite -1}
		weights_load_4450 {Type I LastRead 0 FirstWrite -1}
		weights_load_4451 {Type I LastRead 0 FirstWrite -1}
		weights_load_4452 {Type I LastRead 0 FirstWrite -1}
		weights_load_4453 {Type I LastRead 0 FirstWrite -1}
		weights_load_4454 {Type I LastRead 0 FirstWrite -1}
		weights_load_4455 {Type I LastRead 0 FirstWrite -1}
		weights_load_4456 {Type I LastRead 0 FirstWrite -1}
		weights_load_4457 {Type I LastRead 0 FirstWrite -1}
		weights_load_4458 {Type I LastRead 0 FirstWrite -1}
		weights_load_4459 {Type I LastRead 0 FirstWrite -1}
		weights_load_4460 {Type I LastRead 0 FirstWrite -1}
		weights_load_4461 {Type I LastRead 0 FirstWrite -1}
		weights_load_4462 {Type I LastRead 0 FirstWrite -1}
		weights_load_4463 {Type I LastRead 0 FirstWrite -1}
		weights_load_4464 {Type I LastRead 0 FirstWrite -1}
		weights_load_4465 {Type I LastRead 0 FirstWrite -1}
		weights_load_4466 {Type I LastRead 0 FirstWrite -1}
		weights_load_4467 {Type I LastRead 0 FirstWrite -1}
		weights_load_4468 {Type I LastRead 0 FirstWrite -1}
		weights_load_4469 {Type I LastRead 0 FirstWrite -1}
		weights_load_4470 {Type I LastRead 0 FirstWrite -1}
		weights_load_4471 {Type I LastRead 0 FirstWrite -1}
		weights_load_4472 {Type I LastRead 0 FirstWrite -1}
		weights_load_4473 {Type I LastRead 0 FirstWrite -1}
		weights_load_4474 {Type I LastRead 0 FirstWrite -1}
		weights_load_4475 {Type I LastRead 0 FirstWrite -1}
		weights_load_4476 {Type I LastRead 0 FirstWrite -1}
		weights_load_4477 {Type I LastRead 0 FirstWrite -1}
		weights_load_4478 {Type I LastRead 0 FirstWrite -1}
		weights_load_4479 {Type I LastRead 0 FirstWrite -1}
		weights_load_4480 {Type I LastRead 0 FirstWrite -1}
		weights_load_4481 {Type I LastRead 0 FirstWrite -1}
		weights_load_4482 {Type I LastRead 0 FirstWrite -1}
		weights_load_4483 {Type I LastRead 0 FirstWrite -1}
		weights_load_4484 {Type I LastRead 0 FirstWrite -1}
		weights_load_4485 {Type I LastRead 0 FirstWrite -1}
		weights_load_4486 {Type I LastRead 0 FirstWrite -1}
		weights_load_4487 {Type I LastRead 0 FirstWrite -1}
		weights_load_4488 {Type I LastRead 0 FirstWrite -1}
		weights_load_4489 {Type I LastRead 0 FirstWrite -1}
		weights_load_4490 {Type I LastRead 0 FirstWrite -1}
		weights_load_4491 {Type I LastRead 0 FirstWrite -1}
		weights_load_4492 {Type I LastRead 0 FirstWrite -1}
		weights_load_4493 {Type I LastRead 0 FirstWrite -1}
		weights_load_4494 {Type I LastRead 0 FirstWrite -1}
		weights_load_4495 {Type I LastRead 0 FirstWrite -1}
		weights_load_4496 {Type I LastRead 0 FirstWrite -1}
		weights_load_4497 {Type I LastRead 0 FirstWrite -1}
		weights_load_4498 {Type I LastRead 0 FirstWrite -1}
		weights_load_4499 {Type I LastRead 0 FirstWrite -1}
		weights_load_4500 {Type I LastRead 0 FirstWrite -1}
		weights_load_4501 {Type I LastRead 0 FirstWrite -1}
		weights_load_4502 {Type I LastRead 0 FirstWrite -1}
		weights_load_4503 {Type I LastRead 0 FirstWrite -1}
		weights_load_4504 {Type I LastRead 0 FirstWrite -1}
		weights_load_4505 {Type I LastRead 0 FirstWrite -1}
		weights_load_4506 {Type I LastRead 0 FirstWrite -1}
		weights_load_4507 {Type I LastRead 0 FirstWrite -1}
		weights_load_4508 {Type I LastRead 0 FirstWrite -1}
		weights_load_4509 {Type I LastRead 0 FirstWrite -1}
		weights_load_4510 {Type I LastRead 0 FirstWrite -1}
		weights_load_4511 {Type I LastRead 0 FirstWrite -1}
		weights_load_4512 {Type I LastRead 0 FirstWrite -1}
		weights_load_4513 {Type I LastRead 0 FirstWrite -1}
		weights_load_4514 {Type I LastRead 0 FirstWrite -1}
		weights_load_4515 {Type I LastRead 0 FirstWrite -1}
		weights_load_4516 {Type I LastRead 0 FirstWrite -1}
		weights_load_4517 {Type I LastRead 0 FirstWrite -1}
		weights_load_4518 {Type I LastRead 0 FirstWrite -1}
		weights_load_4519 {Type I LastRead 0 FirstWrite -1}
		weights_load_4520 {Type I LastRead 0 FirstWrite -1}
		weights_load_4521 {Type I LastRead 0 FirstWrite -1}
		weights_load_4522 {Type I LastRead 0 FirstWrite -1}
		weights_load_4523 {Type I LastRead 0 FirstWrite -1}
		weights_load_4524 {Type I LastRead 0 FirstWrite -1}
		weights_load_4525 {Type I LastRead 0 FirstWrite -1}
		weights_load_4526 {Type I LastRead 0 FirstWrite -1}
		weights_load_4527 {Type I LastRead 0 FirstWrite -1}
		weights_load_4528 {Type I LastRead 0 FirstWrite -1}
		weights_load_4529 {Type I LastRead 0 FirstWrite -1}
		weights_load_4530 {Type I LastRead 0 FirstWrite -1}
		weights_load_4531 {Type I LastRead 0 FirstWrite -1}
		weights_load_4532 {Type I LastRead 0 FirstWrite -1}
		weights_load_4533 {Type I LastRead 0 FirstWrite -1}
		weights_load_4534 {Type I LastRead 0 FirstWrite -1}
		weights_load_4535 {Type I LastRead 0 FirstWrite -1}
		weights_load_4536 {Type I LastRead 0 FirstWrite -1}
		weights_load_4537 {Type I LastRead 0 FirstWrite -1}
		weights_load_4538 {Type I LastRead 0 FirstWrite -1}
		weights_load_4539 {Type I LastRead 0 FirstWrite -1}
		weights_load_4540 {Type I LastRead 0 FirstWrite -1}
		weights_load_4541 {Type I LastRead 0 FirstWrite -1}
		weights_load_4542 {Type I LastRead 0 FirstWrite -1}
		weights_load_4543 {Type I LastRead 0 FirstWrite -1}
		weights_load_4544 {Type I LastRead 0 FirstWrite -1}
		weights_load_4545 {Type I LastRead 0 FirstWrite -1}
		weights_load_4546 {Type I LastRead 0 FirstWrite -1}
		weights_load_4547 {Type I LastRead 0 FirstWrite -1}
		weights_load_4548 {Type I LastRead 0 FirstWrite -1}
		weights_load_4549 {Type I LastRead 0 FirstWrite -1}
		weights_load_4550 {Type I LastRead 0 FirstWrite -1}
		weights_load_4551 {Type I LastRead 0 FirstWrite -1}
		weights_load_4552 {Type I LastRead 0 FirstWrite -1}
		weights_load_4553 {Type I LastRead 0 FirstWrite -1}
		weights_load_4554 {Type I LastRead 0 FirstWrite -1}
		weights_load_4555 {Type I LastRead 0 FirstWrite -1}
		weights_load_4556 {Type I LastRead 0 FirstWrite -1}
		weights_load_4557 {Type I LastRead 0 FirstWrite -1}
		weights_load_4558 {Type I LastRead 0 FirstWrite -1}
		weights_load_4559 {Type I LastRead 0 FirstWrite -1}
		weights_load_4560 {Type I LastRead 0 FirstWrite -1}
		weights_load_4561 {Type I LastRead 0 FirstWrite -1}
		weights_load_4562 {Type I LastRead 0 FirstWrite -1}
		weights_load_4563 {Type I LastRead 0 FirstWrite -1}
		weights_load_4564 {Type I LastRead 0 FirstWrite -1}
		weights_load_4565 {Type I LastRead 0 FirstWrite -1}
		weights_load_4566 {Type I LastRead 0 FirstWrite -1}
		weights_load_4567 {Type I LastRead 0 FirstWrite -1}
		weights_load_4568 {Type I LastRead 0 FirstWrite -1}
		weights_load_4569 {Type I LastRead 0 FirstWrite -1}
		weights_load_4570 {Type I LastRead 0 FirstWrite -1}
		weights_load_4571 {Type I LastRead 0 FirstWrite -1}
		weights_load_4572 {Type I LastRead 0 FirstWrite -1}
		weights_load_4573 {Type I LastRead 0 FirstWrite -1}
		weights_load_4574 {Type I LastRead 0 FirstWrite -1}
		weights_load_4575 {Type I LastRead 0 FirstWrite -1}
		weights_load_4576 {Type I LastRead 0 FirstWrite -1}
		weights_load_4577 {Type I LastRead 0 FirstWrite -1}
		weights_load_4578 {Type I LastRead 0 FirstWrite -1}
		weights_load_4579 {Type I LastRead 0 FirstWrite -1}
		weights_load_4580 {Type I LastRead 0 FirstWrite -1}
		weights_load_4581 {Type I LastRead 0 FirstWrite -1}
		weights_load_4582 {Type I LastRead 0 FirstWrite -1}
		weights_load_4583 {Type I LastRead 0 FirstWrite -1}
		weights_load_4584 {Type I LastRead 0 FirstWrite -1}
		weights_load_4585 {Type I LastRead 0 FirstWrite -1}
		weights_load_4586 {Type I LastRead 0 FirstWrite -1}
		weights_load_4587 {Type I LastRead 0 FirstWrite -1}
		weights_load_4588 {Type I LastRead 0 FirstWrite -1}
		weights_load_4589 {Type I LastRead 0 FirstWrite -1}
		weights_load_4590 {Type I LastRead 0 FirstWrite -1}
		weights_load_4591 {Type I LastRead 0 FirstWrite -1}
		weights_load_4592 {Type I LastRead 0 FirstWrite -1}
		weights_load_4593 {Type I LastRead 0 FirstWrite -1}
		weights_load_4594 {Type I LastRead 0 FirstWrite -1}
		weights_load_4595 {Type I LastRead 0 FirstWrite -1}
		weights_load_4596 {Type I LastRead 0 FirstWrite -1}
		weights_load_4597 {Type I LastRead 0 FirstWrite -1}
		weights_load_4598 {Type I LastRead 0 FirstWrite -1}
		weights_load_4599 {Type I LastRead 0 FirstWrite -1}
		weights_load_4600 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_30 { ap_fifo {  { conv2d_64_padded_window_stream_30_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_30_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_30_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_30_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_30_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_30 { ap_fifo {  { in_channel_map_stream_30_din fifo_port_we 1 32 }  { in_channel_map_stream_30_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_30_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_30_full_n fifo_status 0 1 }  { in_channel_map_stream_30_write fifo_data 1 1 } } }
}
