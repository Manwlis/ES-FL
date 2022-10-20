set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_3
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.3}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_3 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_3 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_3", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_3_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_3_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_3_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_3_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_3_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_3_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_3_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_3_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_3_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_3_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_3", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_3", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_3", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_3", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_3", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_3", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_3", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_3", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_3", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_3", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_3",
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
			{"Name" : "conv2d_64_padded_window_stream_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_3_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_3", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_3_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_3", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_3_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_3_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4601", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4602", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4603", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4604", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4605", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4606", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4607", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4608", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_4609", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4610", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4611", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4612", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4613", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4614", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4615", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4616", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4617", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4618", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4619", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4620", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4621", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4622", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4623", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4624", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4625", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4626", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4627", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4628", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4629", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4630", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4631", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4632", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4633", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4634", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4635", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4636", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4637", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4638", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4639", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4640", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4641", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4642", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4643", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4644", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4645", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4646", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4647", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4648", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4649", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4650", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4651", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4652", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4653", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4654", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4655", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4656", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4657", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4658", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4659", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4660", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4661", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4662", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4663", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4664", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4665", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4666", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4667", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4668", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4669", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4670", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4671", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4672", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4673", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4674", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4675", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4676", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4677", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4678", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4679", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4680", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4681", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4682", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4683", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4684", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4685", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4686", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4687", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4688", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4689", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4690", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4691", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4692", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4693", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4694", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4695", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4696", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4697", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4698", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4699", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4700", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4701", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4702", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4703", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4704", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4705", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4706", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4707", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4708", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4709", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4710", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4711", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4712", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4713", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4714", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4715", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4716", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4717", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4718", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4719", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4720", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4721", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4722", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4723", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4724", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4725", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4726", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4727", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4728", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4729", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4730", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4731", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4732", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4733", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4734", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4735", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4736", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4737", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4738", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4739", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4740", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4741", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4742", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4743", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4744", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4745", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4746", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4747", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4748", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4749", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4750", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4751", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4752", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4753", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4754", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4755", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4756", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4757", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4758", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4759", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4760", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4761", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4762", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4763", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4764", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4765", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4766", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4767", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4768", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4769", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4770", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4771", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4772", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4773", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4774", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4775", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4776", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4777", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4778", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4779", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4780", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4781", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4782", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4783", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4784", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4785", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4786", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4787", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4788", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4789", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4790", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4791", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4792", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4793", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4794", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4795", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4796", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4797", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4798", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4799", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4800", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4801", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4802", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4803", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4804", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4805", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4806", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4807", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4808", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4809", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4810", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4811", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4812", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4813", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4814", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4815", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4816", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4817", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4818", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4819", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4820", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4821", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4822", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4823", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4824", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4825", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4826", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4827", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4828", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4829", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4830", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4831", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4832", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4833", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4834", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4835", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4836", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4837", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4838", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4839", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4840", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4841", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4842", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4843", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4844", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4845", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4846", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4847", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4848", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4849", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4850", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4851", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4852", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4853", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4854", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4855", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4856", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4857", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4858", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4859", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4860", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4861", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4862", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4863", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4864", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4865", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4866", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4867", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4868", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4869", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4870", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4871", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4872", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4873", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4874", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4875", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4876", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4877", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4878", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4879", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4880", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4881", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4882", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4883", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4884", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4885", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4886", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4887", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4888", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4889", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4890", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4891", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4892", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4893", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4894", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4895", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4896", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4897", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4898", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4899", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4900", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4901", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4902", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4903", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4904", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4905", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4906", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4907", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4908", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4909", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4910", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4911", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4912", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4913", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4914", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4915", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4916", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4917", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4918", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4919", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4920", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4921", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4922", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4923", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4924", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4925", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4926", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4927", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4928", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4929", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4930", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4931", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4932", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4933", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4934", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4935", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4936", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4937", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4938", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4939", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4940", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4941", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4942", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4943", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4944", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4945", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4946", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4947", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4948", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4949", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4950", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4951", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4952", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4953", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4954", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4955", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4956", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4957", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4958", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4959", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4960", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4961", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4962", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4963", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4964", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4965", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4966", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4967", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4968", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4969", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4970", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4971", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4972", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4973", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4974", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4975", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4976", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4977", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4978", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4979", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4980", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4981", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4982", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4983", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4984", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4985", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4986", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4987", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4988", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4989", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4990", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4991", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4992", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4993", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4994", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4995", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4996", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4997", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4998", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4999", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5000", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5001", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5002", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5003", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5004", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5005", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5006", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5007", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5008", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5009", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5010", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5011", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5012", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5013", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5014", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5015", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5016", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5017", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5018", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5019", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5020", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5021", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5022", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5023", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5024", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5025", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5026", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5027", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5028", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5029", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5030", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5031", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5032", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5033", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5034", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5035", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5036", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5037", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5038", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5039", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5040", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5041", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5042", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5043", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5044", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5045", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5046", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5047", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5048", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5049", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5050", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5051", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5052", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5053", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5054", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5055", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5056", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5057", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5058", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5059", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5060", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5061", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5062", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5063", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5064", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5065", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5066", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5067", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5068", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5069", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5070", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5071", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5072", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5073", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5074", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5075", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5076", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5077", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5078", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5079", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5080", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5081", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5082", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5083", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5084", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5085", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5086", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5087", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5088", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5089", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5090", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5091", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5092", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5093", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5094", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5095", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5096", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5097", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5098", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5099", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5100", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5101", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5102", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5103", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5104", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5105", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5106", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5107", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5108", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5109", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5110", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5111", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5112", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5113", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5114", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5115", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5116", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5117", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5118", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5119", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5120", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5121", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5122", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5123", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5124", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5125", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5126", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5127", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5128", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5129", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5130", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5131", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5132", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5133", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5134", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5135", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5136", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5137", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5138", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5139", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5140", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5141", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5142", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5143", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5144", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5145", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5146", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5147", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5148", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5149", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5150", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5151", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5152", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5153", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5154", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5155", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5156", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5157", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5158", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5159", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5160", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5161", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5162", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5163", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5164", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5165", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5166", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5167", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5168", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5169", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5170", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5171", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5172", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5173", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5174", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_5175", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_3_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U2350", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_3_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U2351", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_3_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U2352", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_3_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U2353", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_3_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U2354", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_3_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U2355", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_3_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U2356", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_3_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U2357", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_3_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U2358", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_3_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U2359", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_3_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U2360", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_3_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U2361", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_3_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U2362", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_3_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U2363", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_3_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U2364", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_3_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U2365", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_3_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U2366", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_3_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_3 {
		conv2d_64_padded_window_stream_3 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_3 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_3_Pipeline_inputs {
		conv2d_64_padded_window_stream_3 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_4601 {Type I LastRead 0 FirstWrite -1}
		weights_load_4602 {Type I LastRead 0 FirstWrite -1}
		weights_load_4603 {Type I LastRead 0 FirstWrite -1}
		weights_load_4604 {Type I LastRead 0 FirstWrite -1}
		weights_load_4605 {Type I LastRead 0 FirstWrite -1}
		weights_load_4606 {Type I LastRead 0 FirstWrite -1}
		weights_load_4607 {Type I LastRead 0 FirstWrite -1}
		weights_load_4608 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_3 {Type O LastRead -1 FirstWrite 16}
		weights_load_4609 {Type I LastRead 0 FirstWrite -1}
		weights_load_4610 {Type I LastRead 0 FirstWrite -1}
		weights_load_4611 {Type I LastRead 0 FirstWrite -1}
		weights_load_4612 {Type I LastRead 0 FirstWrite -1}
		weights_load_4613 {Type I LastRead 0 FirstWrite -1}
		weights_load_4614 {Type I LastRead 0 FirstWrite -1}
		weights_load_4615 {Type I LastRead 0 FirstWrite -1}
		weights_load_4616 {Type I LastRead 0 FirstWrite -1}
		weights_load_4617 {Type I LastRead 0 FirstWrite -1}
		weights_load_4618 {Type I LastRead 0 FirstWrite -1}
		weights_load_4619 {Type I LastRead 0 FirstWrite -1}
		weights_load_4620 {Type I LastRead 0 FirstWrite -1}
		weights_load_4621 {Type I LastRead 0 FirstWrite -1}
		weights_load_4622 {Type I LastRead 0 FirstWrite -1}
		weights_load_4623 {Type I LastRead 0 FirstWrite -1}
		weights_load_4624 {Type I LastRead 0 FirstWrite -1}
		weights_load_4625 {Type I LastRead 0 FirstWrite -1}
		weights_load_4626 {Type I LastRead 0 FirstWrite -1}
		weights_load_4627 {Type I LastRead 0 FirstWrite -1}
		weights_load_4628 {Type I LastRead 0 FirstWrite -1}
		weights_load_4629 {Type I LastRead 0 FirstWrite -1}
		weights_load_4630 {Type I LastRead 0 FirstWrite -1}
		weights_load_4631 {Type I LastRead 0 FirstWrite -1}
		weights_load_4632 {Type I LastRead 0 FirstWrite -1}
		weights_load_4633 {Type I LastRead 0 FirstWrite -1}
		weights_load_4634 {Type I LastRead 0 FirstWrite -1}
		weights_load_4635 {Type I LastRead 0 FirstWrite -1}
		weights_load_4636 {Type I LastRead 0 FirstWrite -1}
		weights_load_4637 {Type I LastRead 0 FirstWrite -1}
		weights_load_4638 {Type I LastRead 0 FirstWrite -1}
		weights_load_4639 {Type I LastRead 0 FirstWrite -1}
		weights_load_4640 {Type I LastRead 0 FirstWrite -1}
		weights_load_4641 {Type I LastRead 0 FirstWrite -1}
		weights_load_4642 {Type I LastRead 0 FirstWrite -1}
		weights_load_4643 {Type I LastRead 0 FirstWrite -1}
		weights_load_4644 {Type I LastRead 0 FirstWrite -1}
		weights_load_4645 {Type I LastRead 0 FirstWrite -1}
		weights_load_4646 {Type I LastRead 0 FirstWrite -1}
		weights_load_4647 {Type I LastRead 0 FirstWrite -1}
		weights_load_4648 {Type I LastRead 0 FirstWrite -1}
		weights_load_4649 {Type I LastRead 0 FirstWrite -1}
		weights_load_4650 {Type I LastRead 0 FirstWrite -1}
		weights_load_4651 {Type I LastRead 0 FirstWrite -1}
		weights_load_4652 {Type I LastRead 0 FirstWrite -1}
		weights_load_4653 {Type I LastRead 0 FirstWrite -1}
		weights_load_4654 {Type I LastRead 0 FirstWrite -1}
		weights_load_4655 {Type I LastRead 0 FirstWrite -1}
		weights_load_4656 {Type I LastRead 0 FirstWrite -1}
		weights_load_4657 {Type I LastRead 0 FirstWrite -1}
		weights_load_4658 {Type I LastRead 0 FirstWrite -1}
		weights_load_4659 {Type I LastRead 0 FirstWrite -1}
		weights_load_4660 {Type I LastRead 0 FirstWrite -1}
		weights_load_4661 {Type I LastRead 0 FirstWrite -1}
		weights_load_4662 {Type I LastRead 0 FirstWrite -1}
		weights_load_4663 {Type I LastRead 0 FirstWrite -1}
		weights_load_4664 {Type I LastRead 0 FirstWrite -1}
		weights_load_4665 {Type I LastRead 0 FirstWrite -1}
		weights_load_4666 {Type I LastRead 0 FirstWrite -1}
		weights_load_4667 {Type I LastRead 0 FirstWrite -1}
		weights_load_4668 {Type I LastRead 0 FirstWrite -1}
		weights_load_4669 {Type I LastRead 0 FirstWrite -1}
		weights_load_4670 {Type I LastRead 0 FirstWrite -1}
		weights_load_4671 {Type I LastRead 0 FirstWrite -1}
		weights_load_4672 {Type I LastRead 0 FirstWrite -1}
		weights_load_4673 {Type I LastRead 0 FirstWrite -1}
		weights_load_4674 {Type I LastRead 0 FirstWrite -1}
		weights_load_4675 {Type I LastRead 0 FirstWrite -1}
		weights_load_4676 {Type I LastRead 0 FirstWrite -1}
		weights_load_4677 {Type I LastRead 0 FirstWrite -1}
		weights_load_4678 {Type I LastRead 0 FirstWrite -1}
		weights_load_4679 {Type I LastRead 0 FirstWrite -1}
		weights_load_4680 {Type I LastRead 0 FirstWrite -1}
		weights_load_4681 {Type I LastRead 0 FirstWrite -1}
		weights_load_4682 {Type I LastRead 0 FirstWrite -1}
		weights_load_4683 {Type I LastRead 0 FirstWrite -1}
		weights_load_4684 {Type I LastRead 0 FirstWrite -1}
		weights_load_4685 {Type I LastRead 0 FirstWrite -1}
		weights_load_4686 {Type I LastRead 0 FirstWrite -1}
		weights_load_4687 {Type I LastRead 0 FirstWrite -1}
		weights_load_4688 {Type I LastRead 0 FirstWrite -1}
		weights_load_4689 {Type I LastRead 0 FirstWrite -1}
		weights_load_4690 {Type I LastRead 0 FirstWrite -1}
		weights_load_4691 {Type I LastRead 0 FirstWrite -1}
		weights_load_4692 {Type I LastRead 0 FirstWrite -1}
		weights_load_4693 {Type I LastRead 0 FirstWrite -1}
		weights_load_4694 {Type I LastRead 0 FirstWrite -1}
		weights_load_4695 {Type I LastRead 0 FirstWrite -1}
		weights_load_4696 {Type I LastRead 0 FirstWrite -1}
		weights_load_4697 {Type I LastRead 0 FirstWrite -1}
		weights_load_4698 {Type I LastRead 0 FirstWrite -1}
		weights_load_4699 {Type I LastRead 0 FirstWrite -1}
		weights_load_4700 {Type I LastRead 0 FirstWrite -1}
		weights_load_4701 {Type I LastRead 0 FirstWrite -1}
		weights_load_4702 {Type I LastRead 0 FirstWrite -1}
		weights_load_4703 {Type I LastRead 0 FirstWrite -1}
		weights_load_4704 {Type I LastRead 0 FirstWrite -1}
		weights_load_4705 {Type I LastRead 0 FirstWrite -1}
		weights_load_4706 {Type I LastRead 0 FirstWrite -1}
		weights_load_4707 {Type I LastRead 0 FirstWrite -1}
		weights_load_4708 {Type I LastRead 0 FirstWrite -1}
		weights_load_4709 {Type I LastRead 0 FirstWrite -1}
		weights_load_4710 {Type I LastRead 0 FirstWrite -1}
		weights_load_4711 {Type I LastRead 0 FirstWrite -1}
		weights_load_4712 {Type I LastRead 0 FirstWrite -1}
		weights_load_4713 {Type I LastRead 0 FirstWrite -1}
		weights_load_4714 {Type I LastRead 0 FirstWrite -1}
		weights_load_4715 {Type I LastRead 0 FirstWrite -1}
		weights_load_4716 {Type I LastRead 0 FirstWrite -1}
		weights_load_4717 {Type I LastRead 0 FirstWrite -1}
		weights_load_4718 {Type I LastRead 0 FirstWrite -1}
		weights_load_4719 {Type I LastRead 0 FirstWrite -1}
		weights_load_4720 {Type I LastRead 0 FirstWrite -1}
		weights_load_4721 {Type I LastRead 0 FirstWrite -1}
		weights_load_4722 {Type I LastRead 0 FirstWrite -1}
		weights_load_4723 {Type I LastRead 0 FirstWrite -1}
		weights_load_4724 {Type I LastRead 0 FirstWrite -1}
		weights_load_4725 {Type I LastRead 0 FirstWrite -1}
		weights_load_4726 {Type I LastRead 0 FirstWrite -1}
		weights_load_4727 {Type I LastRead 0 FirstWrite -1}
		weights_load_4728 {Type I LastRead 0 FirstWrite -1}
		weights_load_4729 {Type I LastRead 0 FirstWrite -1}
		weights_load_4730 {Type I LastRead 0 FirstWrite -1}
		weights_load_4731 {Type I LastRead 0 FirstWrite -1}
		weights_load_4732 {Type I LastRead 0 FirstWrite -1}
		weights_load_4733 {Type I LastRead 0 FirstWrite -1}
		weights_load_4734 {Type I LastRead 0 FirstWrite -1}
		weights_load_4735 {Type I LastRead 0 FirstWrite -1}
		weights_load_4736 {Type I LastRead 0 FirstWrite -1}
		weights_load_4737 {Type I LastRead 0 FirstWrite -1}
		weights_load_4738 {Type I LastRead 0 FirstWrite -1}
		weights_load_4739 {Type I LastRead 0 FirstWrite -1}
		weights_load_4740 {Type I LastRead 0 FirstWrite -1}
		weights_load_4741 {Type I LastRead 0 FirstWrite -1}
		weights_load_4742 {Type I LastRead 0 FirstWrite -1}
		weights_load_4743 {Type I LastRead 0 FirstWrite -1}
		weights_load_4744 {Type I LastRead 0 FirstWrite -1}
		weights_load_4745 {Type I LastRead 0 FirstWrite -1}
		weights_load_4746 {Type I LastRead 0 FirstWrite -1}
		weights_load_4747 {Type I LastRead 0 FirstWrite -1}
		weights_load_4748 {Type I LastRead 0 FirstWrite -1}
		weights_load_4749 {Type I LastRead 0 FirstWrite -1}
		weights_load_4750 {Type I LastRead 0 FirstWrite -1}
		weights_load_4751 {Type I LastRead 0 FirstWrite -1}
		weights_load_4752 {Type I LastRead 0 FirstWrite -1}
		weights_load_4753 {Type I LastRead 0 FirstWrite -1}
		weights_load_4754 {Type I LastRead 0 FirstWrite -1}
		weights_load_4755 {Type I LastRead 0 FirstWrite -1}
		weights_load_4756 {Type I LastRead 0 FirstWrite -1}
		weights_load_4757 {Type I LastRead 0 FirstWrite -1}
		weights_load_4758 {Type I LastRead 0 FirstWrite -1}
		weights_load_4759 {Type I LastRead 0 FirstWrite -1}
		weights_load_4760 {Type I LastRead 0 FirstWrite -1}
		weights_load_4761 {Type I LastRead 0 FirstWrite -1}
		weights_load_4762 {Type I LastRead 0 FirstWrite -1}
		weights_load_4763 {Type I LastRead 0 FirstWrite -1}
		weights_load_4764 {Type I LastRead 0 FirstWrite -1}
		weights_load_4765 {Type I LastRead 0 FirstWrite -1}
		weights_load_4766 {Type I LastRead 0 FirstWrite -1}
		weights_load_4767 {Type I LastRead 0 FirstWrite -1}
		weights_load_4768 {Type I LastRead 0 FirstWrite -1}
		weights_load_4769 {Type I LastRead 0 FirstWrite -1}
		weights_load_4770 {Type I LastRead 0 FirstWrite -1}
		weights_load_4771 {Type I LastRead 0 FirstWrite -1}
		weights_load_4772 {Type I LastRead 0 FirstWrite -1}
		weights_load_4773 {Type I LastRead 0 FirstWrite -1}
		weights_load_4774 {Type I LastRead 0 FirstWrite -1}
		weights_load_4775 {Type I LastRead 0 FirstWrite -1}
		weights_load_4776 {Type I LastRead 0 FirstWrite -1}
		weights_load_4777 {Type I LastRead 0 FirstWrite -1}
		weights_load_4778 {Type I LastRead 0 FirstWrite -1}
		weights_load_4779 {Type I LastRead 0 FirstWrite -1}
		weights_load_4780 {Type I LastRead 0 FirstWrite -1}
		weights_load_4781 {Type I LastRead 0 FirstWrite -1}
		weights_load_4782 {Type I LastRead 0 FirstWrite -1}
		weights_load_4783 {Type I LastRead 0 FirstWrite -1}
		weights_load_4784 {Type I LastRead 0 FirstWrite -1}
		weights_load_4785 {Type I LastRead 0 FirstWrite -1}
		weights_load_4786 {Type I LastRead 0 FirstWrite -1}
		weights_load_4787 {Type I LastRead 0 FirstWrite -1}
		weights_load_4788 {Type I LastRead 0 FirstWrite -1}
		weights_load_4789 {Type I LastRead 0 FirstWrite -1}
		weights_load_4790 {Type I LastRead 0 FirstWrite -1}
		weights_load_4791 {Type I LastRead 0 FirstWrite -1}
		weights_load_4792 {Type I LastRead 0 FirstWrite -1}
		weights_load_4793 {Type I LastRead 0 FirstWrite -1}
		weights_load_4794 {Type I LastRead 0 FirstWrite -1}
		weights_load_4795 {Type I LastRead 0 FirstWrite -1}
		weights_load_4796 {Type I LastRead 0 FirstWrite -1}
		weights_load_4797 {Type I LastRead 0 FirstWrite -1}
		weights_load_4798 {Type I LastRead 0 FirstWrite -1}
		weights_load_4799 {Type I LastRead 0 FirstWrite -1}
		weights_load_4800 {Type I LastRead 0 FirstWrite -1}
		weights_load_4801 {Type I LastRead 0 FirstWrite -1}
		weights_load_4802 {Type I LastRead 0 FirstWrite -1}
		weights_load_4803 {Type I LastRead 0 FirstWrite -1}
		weights_load_4804 {Type I LastRead 0 FirstWrite -1}
		weights_load_4805 {Type I LastRead 0 FirstWrite -1}
		weights_load_4806 {Type I LastRead 0 FirstWrite -1}
		weights_load_4807 {Type I LastRead 0 FirstWrite -1}
		weights_load_4808 {Type I LastRead 0 FirstWrite -1}
		weights_load_4809 {Type I LastRead 0 FirstWrite -1}
		weights_load_4810 {Type I LastRead 0 FirstWrite -1}
		weights_load_4811 {Type I LastRead 0 FirstWrite -1}
		weights_load_4812 {Type I LastRead 0 FirstWrite -1}
		weights_load_4813 {Type I LastRead 0 FirstWrite -1}
		weights_load_4814 {Type I LastRead 0 FirstWrite -1}
		weights_load_4815 {Type I LastRead 0 FirstWrite -1}
		weights_load_4816 {Type I LastRead 0 FirstWrite -1}
		weights_load_4817 {Type I LastRead 0 FirstWrite -1}
		weights_load_4818 {Type I LastRead 0 FirstWrite -1}
		weights_load_4819 {Type I LastRead 0 FirstWrite -1}
		weights_load_4820 {Type I LastRead 0 FirstWrite -1}
		weights_load_4821 {Type I LastRead 0 FirstWrite -1}
		weights_load_4822 {Type I LastRead 0 FirstWrite -1}
		weights_load_4823 {Type I LastRead 0 FirstWrite -1}
		weights_load_4824 {Type I LastRead 0 FirstWrite -1}
		weights_load_4825 {Type I LastRead 0 FirstWrite -1}
		weights_load_4826 {Type I LastRead 0 FirstWrite -1}
		weights_load_4827 {Type I LastRead 0 FirstWrite -1}
		weights_load_4828 {Type I LastRead 0 FirstWrite -1}
		weights_load_4829 {Type I LastRead 0 FirstWrite -1}
		weights_load_4830 {Type I LastRead 0 FirstWrite -1}
		weights_load_4831 {Type I LastRead 0 FirstWrite -1}
		weights_load_4832 {Type I LastRead 0 FirstWrite -1}
		weights_load_4833 {Type I LastRead 0 FirstWrite -1}
		weights_load_4834 {Type I LastRead 0 FirstWrite -1}
		weights_load_4835 {Type I LastRead 0 FirstWrite -1}
		weights_load_4836 {Type I LastRead 0 FirstWrite -1}
		weights_load_4837 {Type I LastRead 0 FirstWrite -1}
		weights_load_4838 {Type I LastRead 0 FirstWrite -1}
		weights_load_4839 {Type I LastRead 0 FirstWrite -1}
		weights_load_4840 {Type I LastRead 0 FirstWrite -1}
		weights_load_4841 {Type I LastRead 0 FirstWrite -1}
		weights_load_4842 {Type I LastRead 0 FirstWrite -1}
		weights_load_4843 {Type I LastRead 0 FirstWrite -1}
		weights_load_4844 {Type I LastRead 0 FirstWrite -1}
		weights_load_4845 {Type I LastRead 0 FirstWrite -1}
		weights_load_4846 {Type I LastRead 0 FirstWrite -1}
		weights_load_4847 {Type I LastRead 0 FirstWrite -1}
		weights_load_4848 {Type I LastRead 0 FirstWrite -1}
		weights_load_4849 {Type I LastRead 0 FirstWrite -1}
		weights_load_4850 {Type I LastRead 0 FirstWrite -1}
		weights_load_4851 {Type I LastRead 0 FirstWrite -1}
		weights_load_4852 {Type I LastRead 0 FirstWrite -1}
		weights_load_4853 {Type I LastRead 0 FirstWrite -1}
		weights_load_4854 {Type I LastRead 0 FirstWrite -1}
		weights_load_4855 {Type I LastRead 0 FirstWrite -1}
		weights_load_4856 {Type I LastRead 0 FirstWrite -1}
		weights_load_4857 {Type I LastRead 0 FirstWrite -1}
		weights_load_4858 {Type I LastRead 0 FirstWrite -1}
		weights_load_4859 {Type I LastRead 0 FirstWrite -1}
		weights_load_4860 {Type I LastRead 0 FirstWrite -1}
		weights_load_4861 {Type I LastRead 0 FirstWrite -1}
		weights_load_4862 {Type I LastRead 0 FirstWrite -1}
		weights_load_4863 {Type I LastRead 0 FirstWrite -1}
		weights_load_4864 {Type I LastRead 0 FirstWrite -1}
		weights_load_4865 {Type I LastRead 0 FirstWrite -1}
		weights_load_4866 {Type I LastRead 0 FirstWrite -1}
		weights_load_4867 {Type I LastRead 0 FirstWrite -1}
		weights_load_4868 {Type I LastRead 0 FirstWrite -1}
		weights_load_4869 {Type I LastRead 0 FirstWrite -1}
		weights_load_4870 {Type I LastRead 0 FirstWrite -1}
		weights_load_4871 {Type I LastRead 0 FirstWrite -1}
		weights_load_4872 {Type I LastRead 0 FirstWrite -1}
		weights_load_4873 {Type I LastRead 0 FirstWrite -1}
		weights_load_4874 {Type I LastRead 0 FirstWrite -1}
		weights_load_4875 {Type I LastRead 0 FirstWrite -1}
		weights_load_4876 {Type I LastRead 0 FirstWrite -1}
		weights_load_4877 {Type I LastRead 0 FirstWrite -1}
		weights_load_4878 {Type I LastRead 0 FirstWrite -1}
		weights_load_4879 {Type I LastRead 0 FirstWrite -1}
		weights_load_4880 {Type I LastRead 0 FirstWrite -1}
		weights_load_4881 {Type I LastRead 0 FirstWrite -1}
		weights_load_4882 {Type I LastRead 0 FirstWrite -1}
		weights_load_4883 {Type I LastRead 0 FirstWrite -1}
		weights_load_4884 {Type I LastRead 0 FirstWrite -1}
		weights_load_4885 {Type I LastRead 0 FirstWrite -1}
		weights_load_4886 {Type I LastRead 0 FirstWrite -1}
		weights_load_4887 {Type I LastRead 0 FirstWrite -1}
		weights_load_4888 {Type I LastRead 0 FirstWrite -1}
		weights_load_4889 {Type I LastRead 0 FirstWrite -1}
		weights_load_4890 {Type I LastRead 0 FirstWrite -1}
		weights_load_4891 {Type I LastRead 0 FirstWrite -1}
		weights_load_4892 {Type I LastRead 0 FirstWrite -1}
		weights_load_4893 {Type I LastRead 0 FirstWrite -1}
		weights_load_4894 {Type I LastRead 0 FirstWrite -1}
		weights_load_4895 {Type I LastRead 0 FirstWrite -1}
		weights_load_4896 {Type I LastRead 0 FirstWrite -1}
		weights_load_4897 {Type I LastRead 0 FirstWrite -1}
		weights_load_4898 {Type I LastRead 0 FirstWrite -1}
		weights_load_4899 {Type I LastRead 0 FirstWrite -1}
		weights_load_4900 {Type I LastRead 0 FirstWrite -1}
		weights_load_4901 {Type I LastRead 0 FirstWrite -1}
		weights_load_4902 {Type I LastRead 0 FirstWrite -1}
		weights_load_4903 {Type I LastRead 0 FirstWrite -1}
		weights_load_4904 {Type I LastRead 0 FirstWrite -1}
		weights_load_4905 {Type I LastRead 0 FirstWrite -1}
		weights_load_4906 {Type I LastRead 0 FirstWrite -1}
		weights_load_4907 {Type I LastRead 0 FirstWrite -1}
		weights_load_4908 {Type I LastRead 0 FirstWrite -1}
		weights_load_4909 {Type I LastRead 0 FirstWrite -1}
		weights_load_4910 {Type I LastRead 0 FirstWrite -1}
		weights_load_4911 {Type I LastRead 0 FirstWrite -1}
		weights_load_4912 {Type I LastRead 0 FirstWrite -1}
		weights_load_4913 {Type I LastRead 0 FirstWrite -1}
		weights_load_4914 {Type I LastRead 0 FirstWrite -1}
		weights_load_4915 {Type I LastRead 0 FirstWrite -1}
		weights_load_4916 {Type I LastRead 0 FirstWrite -1}
		weights_load_4917 {Type I LastRead 0 FirstWrite -1}
		weights_load_4918 {Type I LastRead 0 FirstWrite -1}
		weights_load_4919 {Type I LastRead 0 FirstWrite -1}
		weights_load_4920 {Type I LastRead 0 FirstWrite -1}
		weights_load_4921 {Type I LastRead 0 FirstWrite -1}
		weights_load_4922 {Type I LastRead 0 FirstWrite -1}
		weights_load_4923 {Type I LastRead 0 FirstWrite -1}
		weights_load_4924 {Type I LastRead 0 FirstWrite -1}
		weights_load_4925 {Type I LastRead 0 FirstWrite -1}
		weights_load_4926 {Type I LastRead 0 FirstWrite -1}
		weights_load_4927 {Type I LastRead 0 FirstWrite -1}
		weights_load_4928 {Type I LastRead 0 FirstWrite -1}
		weights_load_4929 {Type I LastRead 0 FirstWrite -1}
		weights_load_4930 {Type I LastRead 0 FirstWrite -1}
		weights_load_4931 {Type I LastRead 0 FirstWrite -1}
		weights_load_4932 {Type I LastRead 0 FirstWrite -1}
		weights_load_4933 {Type I LastRead 0 FirstWrite -1}
		weights_load_4934 {Type I LastRead 0 FirstWrite -1}
		weights_load_4935 {Type I LastRead 0 FirstWrite -1}
		weights_load_4936 {Type I LastRead 0 FirstWrite -1}
		weights_load_4937 {Type I LastRead 0 FirstWrite -1}
		weights_load_4938 {Type I LastRead 0 FirstWrite -1}
		weights_load_4939 {Type I LastRead 0 FirstWrite -1}
		weights_load_4940 {Type I LastRead 0 FirstWrite -1}
		weights_load_4941 {Type I LastRead 0 FirstWrite -1}
		weights_load_4942 {Type I LastRead 0 FirstWrite -1}
		weights_load_4943 {Type I LastRead 0 FirstWrite -1}
		weights_load_4944 {Type I LastRead 0 FirstWrite -1}
		weights_load_4945 {Type I LastRead 0 FirstWrite -1}
		weights_load_4946 {Type I LastRead 0 FirstWrite -1}
		weights_load_4947 {Type I LastRead 0 FirstWrite -1}
		weights_load_4948 {Type I LastRead 0 FirstWrite -1}
		weights_load_4949 {Type I LastRead 0 FirstWrite -1}
		weights_load_4950 {Type I LastRead 0 FirstWrite -1}
		weights_load_4951 {Type I LastRead 0 FirstWrite -1}
		weights_load_4952 {Type I LastRead 0 FirstWrite -1}
		weights_load_4953 {Type I LastRead 0 FirstWrite -1}
		weights_load_4954 {Type I LastRead 0 FirstWrite -1}
		weights_load_4955 {Type I LastRead 0 FirstWrite -1}
		weights_load_4956 {Type I LastRead 0 FirstWrite -1}
		weights_load_4957 {Type I LastRead 0 FirstWrite -1}
		weights_load_4958 {Type I LastRead 0 FirstWrite -1}
		weights_load_4959 {Type I LastRead 0 FirstWrite -1}
		weights_load_4960 {Type I LastRead 0 FirstWrite -1}
		weights_load_4961 {Type I LastRead 0 FirstWrite -1}
		weights_load_4962 {Type I LastRead 0 FirstWrite -1}
		weights_load_4963 {Type I LastRead 0 FirstWrite -1}
		weights_load_4964 {Type I LastRead 0 FirstWrite -1}
		weights_load_4965 {Type I LastRead 0 FirstWrite -1}
		weights_load_4966 {Type I LastRead 0 FirstWrite -1}
		weights_load_4967 {Type I LastRead 0 FirstWrite -1}
		weights_load_4968 {Type I LastRead 0 FirstWrite -1}
		weights_load_4969 {Type I LastRead 0 FirstWrite -1}
		weights_load_4970 {Type I LastRead 0 FirstWrite -1}
		weights_load_4971 {Type I LastRead 0 FirstWrite -1}
		weights_load_4972 {Type I LastRead 0 FirstWrite -1}
		weights_load_4973 {Type I LastRead 0 FirstWrite -1}
		weights_load_4974 {Type I LastRead 0 FirstWrite -1}
		weights_load_4975 {Type I LastRead 0 FirstWrite -1}
		weights_load_4976 {Type I LastRead 0 FirstWrite -1}
		weights_load_4977 {Type I LastRead 0 FirstWrite -1}
		weights_load_4978 {Type I LastRead 0 FirstWrite -1}
		weights_load_4979 {Type I LastRead 0 FirstWrite -1}
		weights_load_4980 {Type I LastRead 0 FirstWrite -1}
		weights_load_4981 {Type I LastRead 0 FirstWrite -1}
		weights_load_4982 {Type I LastRead 0 FirstWrite -1}
		weights_load_4983 {Type I LastRead 0 FirstWrite -1}
		weights_load_4984 {Type I LastRead 0 FirstWrite -1}
		weights_load_4985 {Type I LastRead 0 FirstWrite -1}
		weights_load_4986 {Type I LastRead 0 FirstWrite -1}
		weights_load_4987 {Type I LastRead 0 FirstWrite -1}
		weights_load_4988 {Type I LastRead 0 FirstWrite -1}
		weights_load_4989 {Type I LastRead 0 FirstWrite -1}
		weights_load_4990 {Type I LastRead 0 FirstWrite -1}
		weights_load_4991 {Type I LastRead 0 FirstWrite -1}
		weights_load_4992 {Type I LastRead 0 FirstWrite -1}
		weights_load_4993 {Type I LastRead 0 FirstWrite -1}
		weights_load_4994 {Type I LastRead 0 FirstWrite -1}
		weights_load_4995 {Type I LastRead 0 FirstWrite -1}
		weights_load_4996 {Type I LastRead 0 FirstWrite -1}
		weights_load_4997 {Type I LastRead 0 FirstWrite -1}
		weights_load_4998 {Type I LastRead 0 FirstWrite -1}
		weights_load_4999 {Type I LastRead 0 FirstWrite -1}
		weights_load_5000 {Type I LastRead 0 FirstWrite -1}
		weights_load_5001 {Type I LastRead 0 FirstWrite -1}
		weights_load_5002 {Type I LastRead 0 FirstWrite -1}
		weights_load_5003 {Type I LastRead 0 FirstWrite -1}
		weights_load_5004 {Type I LastRead 0 FirstWrite -1}
		weights_load_5005 {Type I LastRead 0 FirstWrite -1}
		weights_load_5006 {Type I LastRead 0 FirstWrite -1}
		weights_load_5007 {Type I LastRead 0 FirstWrite -1}
		weights_load_5008 {Type I LastRead 0 FirstWrite -1}
		weights_load_5009 {Type I LastRead 0 FirstWrite -1}
		weights_load_5010 {Type I LastRead 0 FirstWrite -1}
		weights_load_5011 {Type I LastRead 0 FirstWrite -1}
		weights_load_5012 {Type I LastRead 0 FirstWrite -1}
		weights_load_5013 {Type I LastRead 0 FirstWrite -1}
		weights_load_5014 {Type I LastRead 0 FirstWrite -1}
		weights_load_5015 {Type I LastRead 0 FirstWrite -1}
		weights_load_5016 {Type I LastRead 0 FirstWrite -1}
		weights_load_5017 {Type I LastRead 0 FirstWrite -1}
		weights_load_5018 {Type I LastRead 0 FirstWrite -1}
		weights_load_5019 {Type I LastRead 0 FirstWrite -1}
		weights_load_5020 {Type I LastRead 0 FirstWrite -1}
		weights_load_5021 {Type I LastRead 0 FirstWrite -1}
		weights_load_5022 {Type I LastRead 0 FirstWrite -1}
		weights_load_5023 {Type I LastRead 0 FirstWrite -1}
		weights_load_5024 {Type I LastRead 0 FirstWrite -1}
		weights_load_5025 {Type I LastRead 0 FirstWrite -1}
		weights_load_5026 {Type I LastRead 0 FirstWrite -1}
		weights_load_5027 {Type I LastRead 0 FirstWrite -1}
		weights_load_5028 {Type I LastRead 0 FirstWrite -1}
		weights_load_5029 {Type I LastRead 0 FirstWrite -1}
		weights_load_5030 {Type I LastRead 0 FirstWrite -1}
		weights_load_5031 {Type I LastRead 0 FirstWrite -1}
		weights_load_5032 {Type I LastRead 0 FirstWrite -1}
		weights_load_5033 {Type I LastRead 0 FirstWrite -1}
		weights_load_5034 {Type I LastRead 0 FirstWrite -1}
		weights_load_5035 {Type I LastRead 0 FirstWrite -1}
		weights_load_5036 {Type I LastRead 0 FirstWrite -1}
		weights_load_5037 {Type I LastRead 0 FirstWrite -1}
		weights_load_5038 {Type I LastRead 0 FirstWrite -1}
		weights_load_5039 {Type I LastRead 0 FirstWrite -1}
		weights_load_5040 {Type I LastRead 0 FirstWrite -1}
		weights_load_5041 {Type I LastRead 0 FirstWrite -1}
		weights_load_5042 {Type I LastRead 0 FirstWrite -1}
		weights_load_5043 {Type I LastRead 0 FirstWrite -1}
		weights_load_5044 {Type I LastRead 0 FirstWrite -1}
		weights_load_5045 {Type I LastRead 0 FirstWrite -1}
		weights_load_5046 {Type I LastRead 0 FirstWrite -1}
		weights_load_5047 {Type I LastRead 0 FirstWrite -1}
		weights_load_5048 {Type I LastRead 0 FirstWrite -1}
		weights_load_5049 {Type I LastRead 0 FirstWrite -1}
		weights_load_5050 {Type I LastRead 0 FirstWrite -1}
		weights_load_5051 {Type I LastRead 0 FirstWrite -1}
		weights_load_5052 {Type I LastRead 0 FirstWrite -1}
		weights_load_5053 {Type I LastRead 0 FirstWrite -1}
		weights_load_5054 {Type I LastRead 0 FirstWrite -1}
		weights_load_5055 {Type I LastRead 0 FirstWrite -1}
		weights_load_5056 {Type I LastRead 0 FirstWrite -1}
		weights_load_5057 {Type I LastRead 0 FirstWrite -1}
		weights_load_5058 {Type I LastRead 0 FirstWrite -1}
		weights_load_5059 {Type I LastRead 0 FirstWrite -1}
		weights_load_5060 {Type I LastRead 0 FirstWrite -1}
		weights_load_5061 {Type I LastRead 0 FirstWrite -1}
		weights_load_5062 {Type I LastRead 0 FirstWrite -1}
		weights_load_5063 {Type I LastRead 0 FirstWrite -1}
		weights_load_5064 {Type I LastRead 0 FirstWrite -1}
		weights_load_5065 {Type I LastRead 0 FirstWrite -1}
		weights_load_5066 {Type I LastRead 0 FirstWrite -1}
		weights_load_5067 {Type I LastRead 0 FirstWrite -1}
		weights_load_5068 {Type I LastRead 0 FirstWrite -1}
		weights_load_5069 {Type I LastRead 0 FirstWrite -1}
		weights_load_5070 {Type I LastRead 0 FirstWrite -1}
		weights_load_5071 {Type I LastRead 0 FirstWrite -1}
		weights_load_5072 {Type I LastRead 0 FirstWrite -1}
		weights_load_5073 {Type I LastRead 0 FirstWrite -1}
		weights_load_5074 {Type I LastRead 0 FirstWrite -1}
		weights_load_5075 {Type I LastRead 0 FirstWrite -1}
		weights_load_5076 {Type I LastRead 0 FirstWrite -1}
		weights_load_5077 {Type I LastRead 0 FirstWrite -1}
		weights_load_5078 {Type I LastRead 0 FirstWrite -1}
		weights_load_5079 {Type I LastRead 0 FirstWrite -1}
		weights_load_5080 {Type I LastRead 0 FirstWrite -1}
		weights_load_5081 {Type I LastRead 0 FirstWrite -1}
		weights_load_5082 {Type I LastRead 0 FirstWrite -1}
		weights_load_5083 {Type I LastRead 0 FirstWrite -1}
		weights_load_5084 {Type I LastRead 0 FirstWrite -1}
		weights_load_5085 {Type I LastRead 0 FirstWrite -1}
		weights_load_5086 {Type I LastRead 0 FirstWrite -1}
		weights_load_5087 {Type I LastRead 0 FirstWrite -1}
		weights_load_5088 {Type I LastRead 0 FirstWrite -1}
		weights_load_5089 {Type I LastRead 0 FirstWrite -1}
		weights_load_5090 {Type I LastRead 0 FirstWrite -1}
		weights_load_5091 {Type I LastRead 0 FirstWrite -1}
		weights_load_5092 {Type I LastRead 0 FirstWrite -1}
		weights_load_5093 {Type I LastRead 0 FirstWrite -1}
		weights_load_5094 {Type I LastRead 0 FirstWrite -1}
		weights_load_5095 {Type I LastRead 0 FirstWrite -1}
		weights_load_5096 {Type I LastRead 0 FirstWrite -1}
		weights_load_5097 {Type I LastRead 0 FirstWrite -1}
		weights_load_5098 {Type I LastRead 0 FirstWrite -1}
		weights_load_5099 {Type I LastRead 0 FirstWrite -1}
		weights_load_5100 {Type I LastRead 0 FirstWrite -1}
		weights_load_5101 {Type I LastRead 0 FirstWrite -1}
		weights_load_5102 {Type I LastRead 0 FirstWrite -1}
		weights_load_5103 {Type I LastRead 0 FirstWrite -1}
		weights_load_5104 {Type I LastRead 0 FirstWrite -1}
		weights_load_5105 {Type I LastRead 0 FirstWrite -1}
		weights_load_5106 {Type I LastRead 0 FirstWrite -1}
		weights_load_5107 {Type I LastRead 0 FirstWrite -1}
		weights_load_5108 {Type I LastRead 0 FirstWrite -1}
		weights_load_5109 {Type I LastRead 0 FirstWrite -1}
		weights_load_5110 {Type I LastRead 0 FirstWrite -1}
		weights_load_5111 {Type I LastRead 0 FirstWrite -1}
		weights_load_5112 {Type I LastRead 0 FirstWrite -1}
		weights_load_5113 {Type I LastRead 0 FirstWrite -1}
		weights_load_5114 {Type I LastRead 0 FirstWrite -1}
		weights_load_5115 {Type I LastRead 0 FirstWrite -1}
		weights_load_5116 {Type I LastRead 0 FirstWrite -1}
		weights_load_5117 {Type I LastRead 0 FirstWrite -1}
		weights_load_5118 {Type I LastRead 0 FirstWrite -1}
		weights_load_5119 {Type I LastRead 0 FirstWrite -1}
		weights_load_5120 {Type I LastRead 0 FirstWrite -1}
		weights_load_5121 {Type I LastRead 0 FirstWrite -1}
		weights_load_5122 {Type I LastRead 0 FirstWrite -1}
		weights_load_5123 {Type I LastRead 0 FirstWrite -1}
		weights_load_5124 {Type I LastRead 0 FirstWrite -1}
		weights_load_5125 {Type I LastRead 0 FirstWrite -1}
		weights_load_5126 {Type I LastRead 0 FirstWrite -1}
		weights_load_5127 {Type I LastRead 0 FirstWrite -1}
		weights_load_5128 {Type I LastRead 0 FirstWrite -1}
		weights_load_5129 {Type I LastRead 0 FirstWrite -1}
		weights_load_5130 {Type I LastRead 0 FirstWrite -1}
		weights_load_5131 {Type I LastRead 0 FirstWrite -1}
		weights_load_5132 {Type I LastRead 0 FirstWrite -1}
		weights_load_5133 {Type I LastRead 0 FirstWrite -1}
		weights_load_5134 {Type I LastRead 0 FirstWrite -1}
		weights_load_5135 {Type I LastRead 0 FirstWrite -1}
		weights_load_5136 {Type I LastRead 0 FirstWrite -1}
		weights_load_5137 {Type I LastRead 0 FirstWrite -1}
		weights_load_5138 {Type I LastRead 0 FirstWrite -1}
		weights_load_5139 {Type I LastRead 0 FirstWrite -1}
		weights_load_5140 {Type I LastRead 0 FirstWrite -1}
		weights_load_5141 {Type I LastRead 0 FirstWrite -1}
		weights_load_5142 {Type I LastRead 0 FirstWrite -1}
		weights_load_5143 {Type I LastRead 0 FirstWrite -1}
		weights_load_5144 {Type I LastRead 0 FirstWrite -1}
		weights_load_5145 {Type I LastRead 0 FirstWrite -1}
		weights_load_5146 {Type I LastRead 0 FirstWrite -1}
		weights_load_5147 {Type I LastRead 0 FirstWrite -1}
		weights_load_5148 {Type I LastRead 0 FirstWrite -1}
		weights_load_5149 {Type I LastRead 0 FirstWrite -1}
		weights_load_5150 {Type I LastRead 0 FirstWrite -1}
		weights_load_5151 {Type I LastRead 0 FirstWrite -1}
		weights_load_5152 {Type I LastRead 0 FirstWrite -1}
		weights_load_5153 {Type I LastRead 0 FirstWrite -1}
		weights_load_5154 {Type I LastRead 0 FirstWrite -1}
		weights_load_5155 {Type I LastRead 0 FirstWrite -1}
		weights_load_5156 {Type I LastRead 0 FirstWrite -1}
		weights_load_5157 {Type I LastRead 0 FirstWrite -1}
		weights_load_5158 {Type I LastRead 0 FirstWrite -1}
		weights_load_5159 {Type I LastRead 0 FirstWrite -1}
		weights_load_5160 {Type I LastRead 0 FirstWrite -1}
		weights_load_5161 {Type I LastRead 0 FirstWrite -1}
		weights_load_5162 {Type I LastRead 0 FirstWrite -1}
		weights_load_5163 {Type I LastRead 0 FirstWrite -1}
		weights_load_5164 {Type I LastRead 0 FirstWrite -1}
		weights_load_5165 {Type I LastRead 0 FirstWrite -1}
		weights_load_5166 {Type I LastRead 0 FirstWrite -1}
		weights_load_5167 {Type I LastRead 0 FirstWrite -1}
		weights_load_5168 {Type I LastRead 0 FirstWrite -1}
		weights_load_5169 {Type I LastRead 0 FirstWrite -1}
		weights_load_5170 {Type I LastRead 0 FirstWrite -1}
		weights_load_5171 {Type I LastRead 0 FirstWrite -1}
		weights_load_5172 {Type I LastRead 0 FirstWrite -1}
		weights_load_5173 {Type I LastRead 0 FirstWrite -1}
		weights_load_5174 {Type I LastRead 0 FirstWrite -1}
		weights_load_5175 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_3 { ap_fifo {  { conv2d_64_padded_window_stream_3_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_3_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_3_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_3_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_3_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_3 { ap_fifo {  { in_channel_map_stream_3_din fifo_port_we 1 32 }  { in_channel_map_stream_3_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_3_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_3_full_n fifo_status 0 1 }  { in_channel_map_stream_3_write fifo_data 1 1 } } }
}
