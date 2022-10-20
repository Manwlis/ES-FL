set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_31
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.31}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_31 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_31 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_31", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_31", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_31_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_31_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_31_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_31_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_31_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_31_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_31_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_31_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_31_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_31_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_31_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_31", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_31_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_31", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_31_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_31", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_31_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_31", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_31_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_31", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_31_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_31", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_31_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_31", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_31_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_31", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_31_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_31", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_31_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_31", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_31",
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
			{"Name" : "conv2d_64_padded_window_stream_31", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_31", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_31", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_31", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_31", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_31_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3451", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3452", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3453", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3454", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3455", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3456", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3457", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3458", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_31", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_31_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_3459", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3460", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3461", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3462", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3463", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3464", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3465", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3466", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3467", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3468", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3469", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3470", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3471", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3472", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3473", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3474", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3475", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3476", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3477", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3478", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3479", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3480", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3481", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3482", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3483", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3484", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3485", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3486", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3487", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3488", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3489", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3490", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3491", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3492", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3493", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3494", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3495", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3496", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3497", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3498", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3499", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3500", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3501", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3502", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3503", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3504", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3505", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3506", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3507", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3508", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3509", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3510", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3511", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3512", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3513", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3514", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3515", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3516", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3517", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3518", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3519", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3520", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3521", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3522", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3523", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3524", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3525", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3526", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3527", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3528", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3529", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3530", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3531", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3532", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3533", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3534", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3535", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3536", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3537", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3538", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3539", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3540", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3541", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3542", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3543", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3544", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3545", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3546", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3547", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3548", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3549", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3550", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3551", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3552", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3553", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3554", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3555", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3556", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3557", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3558", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3559", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3560", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3561", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3562", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3563", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3564", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3565", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3566", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3567", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3568", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3569", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3570", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3571", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3572", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3573", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3574", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3575", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3576", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3577", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3578", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3579", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3580", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3581", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3582", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3583", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3584", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3585", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3586", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3587", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3588", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3589", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3590", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3591", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3592", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3593", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3594", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3595", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3596", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3597", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3598", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3599", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3600", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3601", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3602", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3603", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3604", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3605", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3606", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3607", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3608", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3609", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3610", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3611", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3612", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3613", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3614", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3615", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3616", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3617", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3618", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3619", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3620", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3621", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3622", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3623", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3624", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3625", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3626", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3627", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3628", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3629", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3630", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3631", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3632", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3633", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3634", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3635", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3636", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3637", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3638", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3639", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3640", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3641", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3642", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3643", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3644", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3645", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3646", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3647", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3648", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3649", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3650", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3651", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3652", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3653", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3654", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3655", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3656", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3657", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3658", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3659", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3660", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3661", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3662", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3663", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3664", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3665", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3666", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3667", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3668", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3669", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3670", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3671", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3672", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3673", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3674", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3675", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3676", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3677", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3678", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3679", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3680", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3681", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3682", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3683", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3684", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3685", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3686", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3687", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3688", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3689", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3690", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3691", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3692", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3693", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3694", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3695", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3696", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3697", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3698", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3699", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3700", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3701", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3702", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3703", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3704", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3705", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3706", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3707", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3708", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3709", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3710", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3711", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3712", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3713", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3714", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3715", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3716", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3717", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3718", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3719", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3720", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3721", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3722", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3723", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3724", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3725", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3726", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3727", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3728", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3729", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3730", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3731", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3732", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3733", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3734", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3735", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3736", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3737", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3738", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3739", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3740", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3741", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3742", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3743", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3744", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3745", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3746", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3747", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3748", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3749", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3750", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3751", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3752", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3753", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3754", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3755", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3756", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3757", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3758", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3759", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3760", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3761", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3762", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3763", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3764", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3765", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3766", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3767", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3768", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3769", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3770", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3771", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3772", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3773", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3774", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3775", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3776", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3777", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3778", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3779", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3780", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3781", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3782", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3783", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3784", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3785", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3786", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3787", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3788", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3789", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3790", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3791", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3792", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3793", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3794", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3795", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3796", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3797", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3798", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3799", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3800", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3801", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3802", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3803", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3804", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3805", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3806", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3807", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3808", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3809", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3810", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3811", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3812", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3813", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3814", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3815", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3816", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3817", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3818", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3819", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3820", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3821", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3822", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3823", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3824", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3825", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3826", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3827", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3828", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3829", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3830", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3831", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3832", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3833", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3834", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3835", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3836", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3837", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3838", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3839", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3840", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3841", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3842", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3843", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3844", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3845", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3846", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3847", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3848", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3849", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3850", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3851", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3852", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3853", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3854", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3855", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3856", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3857", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3858", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3859", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3860", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3861", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3862", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3863", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3864", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3865", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3866", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3867", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3868", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3869", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3870", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3871", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3872", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3873", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3874", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3875", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3876", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3877", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3878", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3879", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3880", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3881", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3882", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3883", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3884", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3885", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3886", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3887", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3888", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3889", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3890", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3891", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3892", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3893", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3894", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3895", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3896", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3897", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3898", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3899", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3900", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3901", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3902", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3903", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3904", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3905", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3906", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3907", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3908", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3909", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3910", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3911", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3912", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3913", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3914", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3915", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3916", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3917", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3918", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3919", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3920", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3921", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3922", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3923", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3924", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3925", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3926", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3927", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3928", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3929", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3930", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3931", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3932", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3933", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3934", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3935", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3936", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3937", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3938", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3939", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3940", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3941", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3942", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3943", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3944", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3945", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3946", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3947", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3948", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3949", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3950", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3951", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3952", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3953", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3954", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3955", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3956", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3957", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3958", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3959", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3960", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3961", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3962", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3963", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3964", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3965", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3966", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3967", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3968", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3969", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3970", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3971", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3972", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3973", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3974", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3975", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3976", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3977", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3978", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3979", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3980", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3981", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3982", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3983", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3984", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3985", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3986", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3987", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3988", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3989", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3990", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3991", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3992", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3993", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3994", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3995", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3996", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3997", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3998", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_3999", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4000", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4001", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4002", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4003", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4004", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4005", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4006", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4007", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4008", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4009", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4010", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4011", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4012", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4013", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4014", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4015", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4016", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4017", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4018", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4019", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4020", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4021", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4022", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4023", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4024", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_4025", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U19094", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U19095", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U19096", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U19097", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U19098", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U19099", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U19100", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U19101", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U19102", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U19103", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U19104", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U19105", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U19106", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U19107", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U19108", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U19109", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U19110", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_31 {
		conv2d_64_padded_window_stream_31 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_31 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_Pipeline_inputs {
		conv2d_64_padded_window_stream_31 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_3451 {Type I LastRead 0 FirstWrite -1}
		weights_load_3452 {Type I LastRead 0 FirstWrite -1}
		weights_load_3453 {Type I LastRead 0 FirstWrite -1}
		weights_load_3454 {Type I LastRead 0 FirstWrite -1}
		weights_load_3455 {Type I LastRead 0 FirstWrite -1}
		weights_load_3456 {Type I LastRead 0 FirstWrite -1}
		weights_load_3457 {Type I LastRead 0 FirstWrite -1}
		weights_load_3458 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_31 {Type O LastRead -1 FirstWrite 16}
		weights_load_3459 {Type I LastRead 0 FirstWrite -1}
		weights_load_3460 {Type I LastRead 0 FirstWrite -1}
		weights_load_3461 {Type I LastRead 0 FirstWrite -1}
		weights_load_3462 {Type I LastRead 0 FirstWrite -1}
		weights_load_3463 {Type I LastRead 0 FirstWrite -1}
		weights_load_3464 {Type I LastRead 0 FirstWrite -1}
		weights_load_3465 {Type I LastRead 0 FirstWrite -1}
		weights_load_3466 {Type I LastRead 0 FirstWrite -1}
		weights_load_3467 {Type I LastRead 0 FirstWrite -1}
		weights_load_3468 {Type I LastRead 0 FirstWrite -1}
		weights_load_3469 {Type I LastRead 0 FirstWrite -1}
		weights_load_3470 {Type I LastRead 0 FirstWrite -1}
		weights_load_3471 {Type I LastRead 0 FirstWrite -1}
		weights_load_3472 {Type I LastRead 0 FirstWrite -1}
		weights_load_3473 {Type I LastRead 0 FirstWrite -1}
		weights_load_3474 {Type I LastRead 0 FirstWrite -1}
		weights_load_3475 {Type I LastRead 0 FirstWrite -1}
		weights_load_3476 {Type I LastRead 0 FirstWrite -1}
		weights_load_3477 {Type I LastRead 0 FirstWrite -1}
		weights_load_3478 {Type I LastRead 0 FirstWrite -1}
		weights_load_3479 {Type I LastRead 0 FirstWrite -1}
		weights_load_3480 {Type I LastRead 0 FirstWrite -1}
		weights_load_3481 {Type I LastRead 0 FirstWrite -1}
		weights_load_3482 {Type I LastRead 0 FirstWrite -1}
		weights_load_3483 {Type I LastRead 0 FirstWrite -1}
		weights_load_3484 {Type I LastRead 0 FirstWrite -1}
		weights_load_3485 {Type I LastRead 0 FirstWrite -1}
		weights_load_3486 {Type I LastRead 0 FirstWrite -1}
		weights_load_3487 {Type I LastRead 0 FirstWrite -1}
		weights_load_3488 {Type I LastRead 0 FirstWrite -1}
		weights_load_3489 {Type I LastRead 0 FirstWrite -1}
		weights_load_3490 {Type I LastRead 0 FirstWrite -1}
		weights_load_3491 {Type I LastRead 0 FirstWrite -1}
		weights_load_3492 {Type I LastRead 0 FirstWrite -1}
		weights_load_3493 {Type I LastRead 0 FirstWrite -1}
		weights_load_3494 {Type I LastRead 0 FirstWrite -1}
		weights_load_3495 {Type I LastRead 0 FirstWrite -1}
		weights_load_3496 {Type I LastRead 0 FirstWrite -1}
		weights_load_3497 {Type I LastRead 0 FirstWrite -1}
		weights_load_3498 {Type I LastRead 0 FirstWrite -1}
		weights_load_3499 {Type I LastRead 0 FirstWrite -1}
		weights_load_3500 {Type I LastRead 0 FirstWrite -1}
		weights_load_3501 {Type I LastRead 0 FirstWrite -1}
		weights_load_3502 {Type I LastRead 0 FirstWrite -1}
		weights_load_3503 {Type I LastRead 0 FirstWrite -1}
		weights_load_3504 {Type I LastRead 0 FirstWrite -1}
		weights_load_3505 {Type I LastRead 0 FirstWrite -1}
		weights_load_3506 {Type I LastRead 0 FirstWrite -1}
		weights_load_3507 {Type I LastRead 0 FirstWrite -1}
		weights_load_3508 {Type I LastRead 0 FirstWrite -1}
		weights_load_3509 {Type I LastRead 0 FirstWrite -1}
		weights_load_3510 {Type I LastRead 0 FirstWrite -1}
		weights_load_3511 {Type I LastRead 0 FirstWrite -1}
		weights_load_3512 {Type I LastRead 0 FirstWrite -1}
		weights_load_3513 {Type I LastRead 0 FirstWrite -1}
		weights_load_3514 {Type I LastRead 0 FirstWrite -1}
		weights_load_3515 {Type I LastRead 0 FirstWrite -1}
		weights_load_3516 {Type I LastRead 0 FirstWrite -1}
		weights_load_3517 {Type I LastRead 0 FirstWrite -1}
		weights_load_3518 {Type I LastRead 0 FirstWrite -1}
		weights_load_3519 {Type I LastRead 0 FirstWrite -1}
		weights_load_3520 {Type I LastRead 0 FirstWrite -1}
		weights_load_3521 {Type I LastRead 0 FirstWrite -1}
		weights_load_3522 {Type I LastRead 0 FirstWrite -1}
		weights_load_3523 {Type I LastRead 0 FirstWrite -1}
		weights_load_3524 {Type I LastRead 0 FirstWrite -1}
		weights_load_3525 {Type I LastRead 0 FirstWrite -1}
		weights_load_3526 {Type I LastRead 0 FirstWrite -1}
		weights_load_3527 {Type I LastRead 0 FirstWrite -1}
		weights_load_3528 {Type I LastRead 0 FirstWrite -1}
		weights_load_3529 {Type I LastRead 0 FirstWrite -1}
		weights_load_3530 {Type I LastRead 0 FirstWrite -1}
		weights_load_3531 {Type I LastRead 0 FirstWrite -1}
		weights_load_3532 {Type I LastRead 0 FirstWrite -1}
		weights_load_3533 {Type I LastRead 0 FirstWrite -1}
		weights_load_3534 {Type I LastRead 0 FirstWrite -1}
		weights_load_3535 {Type I LastRead 0 FirstWrite -1}
		weights_load_3536 {Type I LastRead 0 FirstWrite -1}
		weights_load_3537 {Type I LastRead 0 FirstWrite -1}
		weights_load_3538 {Type I LastRead 0 FirstWrite -1}
		weights_load_3539 {Type I LastRead 0 FirstWrite -1}
		weights_load_3540 {Type I LastRead 0 FirstWrite -1}
		weights_load_3541 {Type I LastRead 0 FirstWrite -1}
		weights_load_3542 {Type I LastRead 0 FirstWrite -1}
		weights_load_3543 {Type I LastRead 0 FirstWrite -1}
		weights_load_3544 {Type I LastRead 0 FirstWrite -1}
		weights_load_3545 {Type I LastRead 0 FirstWrite -1}
		weights_load_3546 {Type I LastRead 0 FirstWrite -1}
		weights_load_3547 {Type I LastRead 0 FirstWrite -1}
		weights_load_3548 {Type I LastRead 0 FirstWrite -1}
		weights_load_3549 {Type I LastRead 0 FirstWrite -1}
		weights_load_3550 {Type I LastRead 0 FirstWrite -1}
		weights_load_3551 {Type I LastRead 0 FirstWrite -1}
		weights_load_3552 {Type I LastRead 0 FirstWrite -1}
		weights_load_3553 {Type I LastRead 0 FirstWrite -1}
		weights_load_3554 {Type I LastRead 0 FirstWrite -1}
		weights_load_3555 {Type I LastRead 0 FirstWrite -1}
		weights_load_3556 {Type I LastRead 0 FirstWrite -1}
		weights_load_3557 {Type I LastRead 0 FirstWrite -1}
		weights_load_3558 {Type I LastRead 0 FirstWrite -1}
		weights_load_3559 {Type I LastRead 0 FirstWrite -1}
		weights_load_3560 {Type I LastRead 0 FirstWrite -1}
		weights_load_3561 {Type I LastRead 0 FirstWrite -1}
		weights_load_3562 {Type I LastRead 0 FirstWrite -1}
		weights_load_3563 {Type I LastRead 0 FirstWrite -1}
		weights_load_3564 {Type I LastRead 0 FirstWrite -1}
		weights_load_3565 {Type I LastRead 0 FirstWrite -1}
		weights_load_3566 {Type I LastRead 0 FirstWrite -1}
		weights_load_3567 {Type I LastRead 0 FirstWrite -1}
		weights_load_3568 {Type I LastRead 0 FirstWrite -1}
		weights_load_3569 {Type I LastRead 0 FirstWrite -1}
		weights_load_3570 {Type I LastRead 0 FirstWrite -1}
		weights_load_3571 {Type I LastRead 0 FirstWrite -1}
		weights_load_3572 {Type I LastRead 0 FirstWrite -1}
		weights_load_3573 {Type I LastRead 0 FirstWrite -1}
		weights_load_3574 {Type I LastRead 0 FirstWrite -1}
		weights_load_3575 {Type I LastRead 0 FirstWrite -1}
		weights_load_3576 {Type I LastRead 0 FirstWrite -1}
		weights_load_3577 {Type I LastRead 0 FirstWrite -1}
		weights_load_3578 {Type I LastRead 0 FirstWrite -1}
		weights_load_3579 {Type I LastRead 0 FirstWrite -1}
		weights_load_3580 {Type I LastRead 0 FirstWrite -1}
		weights_load_3581 {Type I LastRead 0 FirstWrite -1}
		weights_load_3582 {Type I LastRead 0 FirstWrite -1}
		weights_load_3583 {Type I LastRead 0 FirstWrite -1}
		weights_load_3584 {Type I LastRead 0 FirstWrite -1}
		weights_load_3585 {Type I LastRead 0 FirstWrite -1}
		weights_load_3586 {Type I LastRead 0 FirstWrite -1}
		weights_load_3587 {Type I LastRead 0 FirstWrite -1}
		weights_load_3588 {Type I LastRead 0 FirstWrite -1}
		weights_load_3589 {Type I LastRead 0 FirstWrite -1}
		weights_load_3590 {Type I LastRead 0 FirstWrite -1}
		weights_load_3591 {Type I LastRead 0 FirstWrite -1}
		weights_load_3592 {Type I LastRead 0 FirstWrite -1}
		weights_load_3593 {Type I LastRead 0 FirstWrite -1}
		weights_load_3594 {Type I LastRead 0 FirstWrite -1}
		weights_load_3595 {Type I LastRead 0 FirstWrite -1}
		weights_load_3596 {Type I LastRead 0 FirstWrite -1}
		weights_load_3597 {Type I LastRead 0 FirstWrite -1}
		weights_load_3598 {Type I LastRead 0 FirstWrite -1}
		weights_load_3599 {Type I LastRead 0 FirstWrite -1}
		weights_load_3600 {Type I LastRead 0 FirstWrite -1}
		weights_load_3601 {Type I LastRead 0 FirstWrite -1}
		weights_load_3602 {Type I LastRead 0 FirstWrite -1}
		weights_load_3603 {Type I LastRead 0 FirstWrite -1}
		weights_load_3604 {Type I LastRead 0 FirstWrite -1}
		weights_load_3605 {Type I LastRead 0 FirstWrite -1}
		weights_load_3606 {Type I LastRead 0 FirstWrite -1}
		weights_load_3607 {Type I LastRead 0 FirstWrite -1}
		weights_load_3608 {Type I LastRead 0 FirstWrite -1}
		weights_load_3609 {Type I LastRead 0 FirstWrite -1}
		weights_load_3610 {Type I LastRead 0 FirstWrite -1}
		weights_load_3611 {Type I LastRead 0 FirstWrite -1}
		weights_load_3612 {Type I LastRead 0 FirstWrite -1}
		weights_load_3613 {Type I LastRead 0 FirstWrite -1}
		weights_load_3614 {Type I LastRead 0 FirstWrite -1}
		weights_load_3615 {Type I LastRead 0 FirstWrite -1}
		weights_load_3616 {Type I LastRead 0 FirstWrite -1}
		weights_load_3617 {Type I LastRead 0 FirstWrite -1}
		weights_load_3618 {Type I LastRead 0 FirstWrite -1}
		weights_load_3619 {Type I LastRead 0 FirstWrite -1}
		weights_load_3620 {Type I LastRead 0 FirstWrite -1}
		weights_load_3621 {Type I LastRead 0 FirstWrite -1}
		weights_load_3622 {Type I LastRead 0 FirstWrite -1}
		weights_load_3623 {Type I LastRead 0 FirstWrite -1}
		weights_load_3624 {Type I LastRead 0 FirstWrite -1}
		weights_load_3625 {Type I LastRead 0 FirstWrite -1}
		weights_load_3626 {Type I LastRead 0 FirstWrite -1}
		weights_load_3627 {Type I LastRead 0 FirstWrite -1}
		weights_load_3628 {Type I LastRead 0 FirstWrite -1}
		weights_load_3629 {Type I LastRead 0 FirstWrite -1}
		weights_load_3630 {Type I LastRead 0 FirstWrite -1}
		weights_load_3631 {Type I LastRead 0 FirstWrite -1}
		weights_load_3632 {Type I LastRead 0 FirstWrite -1}
		weights_load_3633 {Type I LastRead 0 FirstWrite -1}
		weights_load_3634 {Type I LastRead 0 FirstWrite -1}
		weights_load_3635 {Type I LastRead 0 FirstWrite -1}
		weights_load_3636 {Type I LastRead 0 FirstWrite -1}
		weights_load_3637 {Type I LastRead 0 FirstWrite -1}
		weights_load_3638 {Type I LastRead 0 FirstWrite -1}
		weights_load_3639 {Type I LastRead 0 FirstWrite -1}
		weights_load_3640 {Type I LastRead 0 FirstWrite -1}
		weights_load_3641 {Type I LastRead 0 FirstWrite -1}
		weights_load_3642 {Type I LastRead 0 FirstWrite -1}
		weights_load_3643 {Type I LastRead 0 FirstWrite -1}
		weights_load_3644 {Type I LastRead 0 FirstWrite -1}
		weights_load_3645 {Type I LastRead 0 FirstWrite -1}
		weights_load_3646 {Type I LastRead 0 FirstWrite -1}
		weights_load_3647 {Type I LastRead 0 FirstWrite -1}
		weights_load_3648 {Type I LastRead 0 FirstWrite -1}
		weights_load_3649 {Type I LastRead 0 FirstWrite -1}
		weights_load_3650 {Type I LastRead 0 FirstWrite -1}
		weights_load_3651 {Type I LastRead 0 FirstWrite -1}
		weights_load_3652 {Type I LastRead 0 FirstWrite -1}
		weights_load_3653 {Type I LastRead 0 FirstWrite -1}
		weights_load_3654 {Type I LastRead 0 FirstWrite -1}
		weights_load_3655 {Type I LastRead 0 FirstWrite -1}
		weights_load_3656 {Type I LastRead 0 FirstWrite -1}
		weights_load_3657 {Type I LastRead 0 FirstWrite -1}
		weights_load_3658 {Type I LastRead 0 FirstWrite -1}
		weights_load_3659 {Type I LastRead 0 FirstWrite -1}
		weights_load_3660 {Type I LastRead 0 FirstWrite -1}
		weights_load_3661 {Type I LastRead 0 FirstWrite -1}
		weights_load_3662 {Type I LastRead 0 FirstWrite -1}
		weights_load_3663 {Type I LastRead 0 FirstWrite -1}
		weights_load_3664 {Type I LastRead 0 FirstWrite -1}
		weights_load_3665 {Type I LastRead 0 FirstWrite -1}
		weights_load_3666 {Type I LastRead 0 FirstWrite -1}
		weights_load_3667 {Type I LastRead 0 FirstWrite -1}
		weights_load_3668 {Type I LastRead 0 FirstWrite -1}
		weights_load_3669 {Type I LastRead 0 FirstWrite -1}
		weights_load_3670 {Type I LastRead 0 FirstWrite -1}
		weights_load_3671 {Type I LastRead 0 FirstWrite -1}
		weights_load_3672 {Type I LastRead 0 FirstWrite -1}
		weights_load_3673 {Type I LastRead 0 FirstWrite -1}
		weights_load_3674 {Type I LastRead 0 FirstWrite -1}
		weights_load_3675 {Type I LastRead 0 FirstWrite -1}
		weights_load_3676 {Type I LastRead 0 FirstWrite -1}
		weights_load_3677 {Type I LastRead 0 FirstWrite -1}
		weights_load_3678 {Type I LastRead 0 FirstWrite -1}
		weights_load_3679 {Type I LastRead 0 FirstWrite -1}
		weights_load_3680 {Type I LastRead 0 FirstWrite -1}
		weights_load_3681 {Type I LastRead 0 FirstWrite -1}
		weights_load_3682 {Type I LastRead 0 FirstWrite -1}
		weights_load_3683 {Type I LastRead 0 FirstWrite -1}
		weights_load_3684 {Type I LastRead 0 FirstWrite -1}
		weights_load_3685 {Type I LastRead 0 FirstWrite -1}
		weights_load_3686 {Type I LastRead 0 FirstWrite -1}
		weights_load_3687 {Type I LastRead 0 FirstWrite -1}
		weights_load_3688 {Type I LastRead 0 FirstWrite -1}
		weights_load_3689 {Type I LastRead 0 FirstWrite -1}
		weights_load_3690 {Type I LastRead 0 FirstWrite -1}
		weights_load_3691 {Type I LastRead 0 FirstWrite -1}
		weights_load_3692 {Type I LastRead 0 FirstWrite -1}
		weights_load_3693 {Type I LastRead 0 FirstWrite -1}
		weights_load_3694 {Type I LastRead 0 FirstWrite -1}
		weights_load_3695 {Type I LastRead 0 FirstWrite -1}
		weights_load_3696 {Type I LastRead 0 FirstWrite -1}
		weights_load_3697 {Type I LastRead 0 FirstWrite -1}
		weights_load_3698 {Type I LastRead 0 FirstWrite -1}
		weights_load_3699 {Type I LastRead 0 FirstWrite -1}
		weights_load_3700 {Type I LastRead 0 FirstWrite -1}
		weights_load_3701 {Type I LastRead 0 FirstWrite -1}
		weights_load_3702 {Type I LastRead 0 FirstWrite -1}
		weights_load_3703 {Type I LastRead 0 FirstWrite -1}
		weights_load_3704 {Type I LastRead 0 FirstWrite -1}
		weights_load_3705 {Type I LastRead 0 FirstWrite -1}
		weights_load_3706 {Type I LastRead 0 FirstWrite -1}
		weights_load_3707 {Type I LastRead 0 FirstWrite -1}
		weights_load_3708 {Type I LastRead 0 FirstWrite -1}
		weights_load_3709 {Type I LastRead 0 FirstWrite -1}
		weights_load_3710 {Type I LastRead 0 FirstWrite -1}
		weights_load_3711 {Type I LastRead 0 FirstWrite -1}
		weights_load_3712 {Type I LastRead 0 FirstWrite -1}
		weights_load_3713 {Type I LastRead 0 FirstWrite -1}
		weights_load_3714 {Type I LastRead 0 FirstWrite -1}
		weights_load_3715 {Type I LastRead 0 FirstWrite -1}
		weights_load_3716 {Type I LastRead 0 FirstWrite -1}
		weights_load_3717 {Type I LastRead 0 FirstWrite -1}
		weights_load_3718 {Type I LastRead 0 FirstWrite -1}
		weights_load_3719 {Type I LastRead 0 FirstWrite -1}
		weights_load_3720 {Type I LastRead 0 FirstWrite -1}
		weights_load_3721 {Type I LastRead 0 FirstWrite -1}
		weights_load_3722 {Type I LastRead 0 FirstWrite -1}
		weights_load_3723 {Type I LastRead 0 FirstWrite -1}
		weights_load_3724 {Type I LastRead 0 FirstWrite -1}
		weights_load_3725 {Type I LastRead 0 FirstWrite -1}
		weights_load_3726 {Type I LastRead 0 FirstWrite -1}
		weights_load_3727 {Type I LastRead 0 FirstWrite -1}
		weights_load_3728 {Type I LastRead 0 FirstWrite -1}
		weights_load_3729 {Type I LastRead 0 FirstWrite -1}
		weights_load_3730 {Type I LastRead 0 FirstWrite -1}
		weights_load_3731 {Type I LastRead 0 FirstWrite -1}
		weights_load_3732 {Type I LastRead 0 FirstWrite -1}
		weights_load_3733 {Type I LastRead 0 FirstWrite -1}
		weights_load_3734 {Type I LastRead 0 FirstWrite -1}
		weights_load_3735 {Type I LastRead 0 FirstWrite -1}
		weights_load_3736 {Type I LastRead 0 FirstWrite -1}
		weights_load_3737 {Type I LastRead 0 FirstWrite -1}
		weights_load_3738 {Type I LastRead 0 FirstWrite -1}
		weights_load_3739 {Type I LastRead 0 FirstWrite -1}
		weights_load_3740 {Type I LastRead 0 FirstWrite -1}
		weights_load_3741 {Type I LastRead 0 FirstWrite -1}
		weights_load_3742 {Type I LastRead 0 FirstWrite -1}
		weights_load_3743 {Type I LastRead 0 FirstWrite -1}
		weights_load_3744 {Type I LastRead 0 FirstWrite -1}
		weights_load_3745 {Type I LastRead 0 FirstWrite -1}
		weights_load_3746 {Type I LastRead 0 FirstWrite -1}
		weights_load_3747 {Type I LastRead 0 FirstWrite -1}
		weights_load_3748 {Type I LastRead 0 FirstWrite -1}
		weights_load_3749 {Type I LastRead 0 FirstWrite -1}
		weights_load_3750 {Type I LastRead 0 FirstWrite -1}
		weights_load_3751 {Type I LastRead 0 FirstWrite -1}
		weights_load_3752 {Type I LastRead 0 FirstWrite -1}
		weights_load_3753 {Type I LastRead 0 FirstWrite -1}
		weights_load_3754 {Type I LastRead 0 FirstWrite -1}
		weights_load_3755 {Type I LastRead 0 FirstWrite -1}
		weights_load_3756 {Type I LastRead 0 FirstWrite -1}
		weights_load_3757 {Type I LastRead 0 FirstWrite -1}
		weights_load_3758 {Type I LastRead 0 FirstWrite -1}
		weights_load_3759 {Type I LastRead 0 FirstWrite -1}
		weights_load_3760 {Type I LastRead 0 FirstWrite -1}
		weights_load_3761 {Type I LastRead 0 FirstWrite -1}
		weights_load_3762 {Type I LastRead 0 FirstWrite -1}
		weights_load_3763 {Type I LastRead 0 FirstWrite -1}
		weights_load_3764 {Type I LastRead 0 FirstWrite -1}
		weights_load_3765 {Type I LastRead 0 FirstWrite -1}
		weights_load_3766 {Type I LastRead 0 FirstWrite -1}
		weights_load_3767 {Type I LastRead 0 FirstWrite -1}
		weights_load_3768 {Type I LastRead 0 FirstWrite -1}
		weights_load_3769 {Type I LastRead 0 FirstWrite -1}
		weights_load_3770 {Type I LastRead 0 FirstWrite -1}
		weights_load_3771 {Type I LastRead 0 FirstWrite -1}
		weights_load_3772 {Type I LastRead 0 FirstWrite -1}
		weights_load_3773 {Type I LastRead 0 FirstWrite -1}
		weights_load_3774 {Type I LastRead 0 FirstWrite -1}
		weights_load_3775 {Type I LastRead 0 FirstWrite -1}
		weights_load_3776 {Type I LastRead 0 FirstWrite -1}
		weights_load_3777 {Type I LastRead 0 FirstWrite -1}
		weights_load_3778 {Type I LastRead 0 FirstWrite -1}
		weights_load_3779 {Type I LastRead 0 FirstWrite -1}
		weights_load_3780 {Type I LastRead 0 FirstWrite -1}
		weights_load_3781 {Type I LastRead 0 FirstWrite -1}
		weights_load_3782 {Type I LastRead 0 FirstWrite -1}
		weights_load_3783 {Type I LastRead 0 FirstWrite -1}
		weights_load_3784 {Type I LastRead 0 FirstWrite -1}
		weights_load_3785 {Type I LastRead 0 FirstWrite -1}
		weights_load_3786 {Type I LastRead 0 FirstWrite -1}
		weights_load_3787 {Type I LastRead 0 FirstWrite -1}
		weights_load_3788 {Type I LastRead 0 FirstWrite -1}
		weights_load_3789 {Type I LastRead 0 FirstWrite -1}
		weights_load_3790 {Type I LastRead 0 FirstWrite -1}
		weights_load_3791 {Type I LastRead 0 FirstWrite -1}
		weights_load_3792 {Type I LastRead 0 FirstWrite -1}
		weights_load_3793 {Type I LastRead 0 FirstWrite -1}
		weights_load_3794 {Type I LastRead 0 FirstWrite -1}
		weights_load_3795 {Type I LastRead 0 FirstWrite -1}
		weights_load_3796 {Type I LastRead 0 FirstWrite -1}
		weights_load_3797 {Type I LastRead 0 FirstWrite -1}
		weights_load_3798 {Type I LastRead 0 FirstWrite -1}
		weights_load_3799 {Type I LastRead 0 FirstWrite -1}
		weights_load_3800 {Type I LastRead 0 FirstWrite -1}
		weights_load_3801 {Type I LastRead 0 FirstWrite -1}
		weights_load_3802 {Type I LastRead 0 FirstWrite -1}
		weights_load_3803 {Type I LastRead 0 FirstWrite -1}
		weights_load_3804 {Type I LastRead 0 FirstWrite -1}
		weights_load_3805 {Type I LastRead 0 FirstWrite -1}
		weights_load_3806 {Type I LastRead 0 FirstWrite -1}
		weights_load_3807 {Type I LastRead 0 FirstWrite -1}
		weights_load_3808 {Type I LastRead 0 FirstWrite -1}
		weights_load_3809 {Type I LastRead 0 FirstWrite -1}
		weights_load_3810 {Type I LastRead 0 FirstWrite -1}
		weights_load_3811 {Type I LastRead 0 FirstWrite -1}
		weights_load_3812 {Type I LastRead 0 FirstWrite -1}
		weights_load_3813 {Type I LastRead 0 FirstWrite -1}
		weights_load_3814 {Type I LastRead 0 FirstWrite -1}
		weights_load_3815 {Type I LastRead 0 FirstWrite -1}
		weights_load_3816 {Type I LastRead 0 FirstWrite -1}
		weights_load_3817 {Type I LastRead 0 FirstWrite -1}
		weights_load_3818 {Type I LastRead 0 FirstWrite -1}
		weights_load_3819 {Type I LastRead 0 FirstWrite -1}
		weights_load_3820 {Type I LastRead 0 FirstWrite -1}
		weights_load_3821 {Type I LastRead 0 FirstWrite -1}
		weights_load_3822 {Type I LastRead 0 FirstWrite -1}
		weights_load_3823 {Type I LastRead 0 FirstWrite -1}
		weights_load_3824 {Type I LastRead 0 FirstWrite -1}
		weights_load_3825 {Type I LastRead 0 FirstWrite -1}
		weights_load_3826 {Type I LastRead 0 FirstWrite -1}
		weights_load_3827 {Type I LastRead 0 FirstWrite -1}
		weights_load_3828 {Type I LastRead 0 FirstWrite -1}
		weights_load_3829 {Type I LastRead 0 FirstWrite -1}
		weights_load_3830 {Type I LastRead 0 FirstWrite -1}
		weights_load_3831 {Type I LastRead 0 FirstWrite -1}
		weights_load_3832 {Type I LastRead 0 FirstWrite -1}
		weights_load_3833 {Type I LastRead 0 FirstWrite -1}
		weights_load_3834 {Type I LastRead 0 FirstWrite -1}
		weights_load_3835 {Type I LastRead 0 FirstWrite -1}
		weights_load_3836 {Type I LastRead 0 FirstWrite -1}
		weights_load_3837 {Type I LastRead 0 FirstWrite -1}
		weights_load_3838 {Type I LastRead 0 FirstWrite -1}
		weights_load_3839 {Type I LastRead 0 FirstWrite -1}
		weights_load_3840 {Type I LastRead 0 FirstWrite -1}
		weights_load_3841 {Type I LastRead 0 FirstWrite -1}
		weights_load_3842 {Type I LastRead 0 FirstWrite -1}
		weights_load_3843 {Type I LastRead 0 FirstWrite -1}
		weights_load_3844 {Type I LastRead 0 FirstWrite -1}
		weights_load_3845 {Type I LastRead 0 FirstWrite -1}
		weights_load_3846 {Type I LastRead 0 FirstWrite -1}
		weights_load_3847 {Type I LastRead 0 FirstWrite -1}
		weights_load_3848 {Type I LastRead 0 FirstWrite -1}
		weights_load_3849 {Type I LastRead 0 FirstWrite -1}
		weights_load_3850 {Type I LastRead 0 FirstWrite -1}
		weights_load_3851 {Type I LastRead 0 FirstWrite -1}
		weights_load_3852 {Type I LastRead 0 FirstWrite -1}
		weights_load_3853 {Type I LastRead 0 FirstWrite -1}
		weights_load_3854 {Type I LastRead 0 FirstWrite -1}
		weights_load_3855 {Type I LastRead 0 FirstWrite -1}
		weights_load_3856 {Type I LastRead 0 FirstWrite -1}
		weights_load_3857 {Type I LastRead 0 FirstWrite -1}
		weights_load_3858 {Type I LastRead 0 FirstWrite -1}
		weights_load_3859 {Type I LastRead 0 FirstWrite -1}
		weights_load_3860 {Type I LastRead 0 FirstWrite -1}
		weights_load_3861 {Type I LastRead 0 FirstWrite -1}
		weights_load_3862 {Type I LastRead 0 FirstWrite -1}
		weights_load_3863 {Type I LastRead 0 FirstWrite -1}
		weights_load_3864 {Type I LastRead 0 FirstWrite -1}
		weights_load_3865 {Type I LastRead 0 FirstWrite -1}
		weights_load_3866 {Type I LastRead 0 FirstWrite -1}
		weights_load_3867 {Type I LastRead 0 FirstWrite -1}
		weights_load_3868 {Type I LastRead 0 FirstWrite -1}
		weights_load_3869 {Type I LastRead 0 FirstWrite -1}
		weights_load_3870 {Type I LastRead 0 FirstWrite -1}
		weights_load_3871 {Type I LastRead 0 FirstWrite -1}
		weights_load_3872 {Type I LastRead 0 FirstWrite -1}
		weights_load_3873 {Type I LastRead 0 FirstWrite -1}
		weights_load_3874 {Type I LastRead 0 FirstWrite -1}
		weights_load_3875 {Type I LastRead 0 FirstWrite -1}
		weights_load_3876 {Type I LastRead 0 FirstWrite -1}
		weights_load_3877 {Type I LastRead 0 FirstWrite -1}
		weights_load_3878 {Type I LastRead 0 FirstWrite -1}
		weights_load_3879 {Type I LastRead 0 FirstWrite -1}
		weights_load_3880 {Type I LastRead 0 FirstWrite -1}
		weights_load_3881 {Type I LastRead 0 FirstWrite -1}
		weights_load_3882 {Type I LastRead 0 FirstWrite -1}
		weights_load_3883 {Type I LastRead 0 FirstWrite -1}
		weights_load_3884 {Type I LastRead 0 FirstWrite -1}
		weights_load_3885 {Type I LastRead 0 FirstWrite -1}
		weights_load_3886 {Type I LastRead 0 FirstWrite -1}
		weights_load_3887 {Type I LastRead 0 FirstWrite -1}
		weights_load_3888 {Type I LastRead 0 FirstWrite -1}
		weights_load_3889 {Type I LastRead 0 FirstWrite -1}
		weights_load_3890 {Type I LastRead 0 FirstWrite -1}
		weights_load_3891 {Type I LastRead 0 FirstWrite -1}
		weights_load_3892 {Type I LastRead 0 FirstWrite -1}
		weights_load_3893 {Type I LastRead 0 FirstWrite -1}
		weights_load_3894 {Type I LastRead 0 FirstWrite -1}
		weights_load_3895 {Type I LastRead 0 FirstWrite -1}
		weights_load_3896 {Type I LastRead 0 FirstWrite -1}
		weights_load_3897 {Type I LastRead 0 FirstWrite -1}
		weights_load_3898 {Type I LastRead 0 FirstWrite -1}
		weights_load_3899 {Type I LastRead 0 FirstWrite -1}
		weights_load_3900 {Type I LastRead 0 FirstWrite -1}
		weights_load_3901 {Type I LastRead 0 FirstWrite -1}
		weights_load_3902 {Type I LastRead 0 FirstWrite -1}
		weights_load_3903 {Type I LastRead 0 FirstWrite -1}
		weights_load_3904 {Type I LastRead 0 FirstWrite -1}
		weights_load_3905 {Type I LastRead 0 FirstWrite -1}
		weights_load_3906 {Type I LastRead 0 FirstWrite -1}
		weights_load_3907 {Type I LastRead 0 FirstWrite -1}
		weights_load_3908 {Type I LastRead 0 FirstWrite -1}
		weights_load_3909 {Type I LastRead 0 FirstWrite -1}
		weights_load_3910 {Type I LastRead 0 FirstWrite -1}
		weights_load_3911 {Type I LastRead 0 FirstWrite -1}
		weights_load_3912 {Type I LastRead 0 FirstWrite -1}
		weights_load_3913 {Type I LastRead 0 FirstWrite -1}
		weights_load_3914 {Type I LastRead 0 FirstWrite -1}
		weights_load_3915 {Type I LastRead 0 FirstWrite -1}
		weights_load_3916 {Type I LastRead 0 FirstWrite -1}
		weights_load_3917 {Type I LastRead 0 FirstWrite -1}
		weights_load_3918 {Type I LastRead 0 FirstWrite -1}
		weights_load_3919 {Type I LastRead 0 FirstWrite -1}
		weights_load_3920 {Type I LastRead 0 FirstWrite -1}
		weights_load_3921 {Type I LastRead 0 FirstWrite -1}
		weights_load_3922 {Type I LastRead 0 FirstWrite -1}
		weights_load_3923 {Type I LastRead 0 FirstWrite -1}
		weights_load_3924 {Type I LastRead 0 FirstWrite -1}
		weights_load_3925 {Type I LastRead 0 FirstWrite -1}
		weights_load_3926 {Type I LastRead 0 FirstWrite -1}
		weights_load_3927 {Type I LastRead 0 FirstWrite -1}
		weights_load_3928 {Type I LastRead 0 FirstWrite -1}
		weights_load_3929 {Type I LastRead 0 FirstWrite -1}
		weights_load_3930 {Type I LastRead 0 FirstWrite -1}
		weights_load_3931 {Type I LastRead 0 FirstWrite -1}
		weights_load_3932 {Type I LastRead 0 FirstWrite -1}
		weights_load_3933 {Type I LastRead 0 FirstWrite -1}
		weights_load_3934 {Type I LastRead 0 FirstWrite -1}
		weights_load_3935 {Type I LastRead 0 FirstWrite -1}
		weights_load_3936 {Type I LastRead 0 FirstWrite -1}
		weights_load_3937 {Type I LastRead 0 FirstWrite -1}
		weights_load_3938 {Type I LastRead 0 FirstWrite -1}
		weights_load_3939 {Type I LastRead 0 FirstWrite -1}
		weights_load_3940 {Type I LastRead 0 FirstWrite -1}
		weights_load_3941 {Type I LastRead 0 FirstWrite -1}
		weights_load_3942 {Type I LastRead 0 FirstWrite -1}
		weights_load_3943 {Type I LastRead 0 FirstWrite -1}
		weights_load_3944 {Type I LastRead 0 FirstWrite -1}
		weights_load_3945 {Type I LastRead 0 FirstWrite -1}
		weights_load_3946 {Type I LastRead 0 FirstWrite -1}
		weights_load_3947 {Type I LastRead 0 FirstWrite -1}
		weights_load_3948 {Type I LastRead 0 FirstWrite -1}
		weights_load_3949 {Type I LastRead 0 FirstWrite -1}
		weights_load_3950 {Type I LastRead 0 FirstWrite -1}
		weights_load_3951 {Type I LastRead 0 FirstWrite -1}
		weights_load_3952 {Type I LastRead 0 FirstWrite -1}
		weights_load_3953 {Type I LastRead 0 FirstWrite -1}
		weights_load_3954 {Type I LastRead 0 FirstWrite -1}
		weights_load_3955 {Type I LastRead 0 FirstWrite -1}
		weights_load_3956 {Type I LastRead 0 FirstWrite -1}
		weights_load_3957 {Type I LastRead 0 FirstWrite -1}
		weights_load_3958 {Type I LastRead 0 FirstWrite -1}
		weights_load_3959 {Type I LastRead 0 FirstWrite -1}
		weights_load_3960 {Type I LastRead 0 FirstWrite -1}
		weights_load_3961 {Type I LastRead 0 FirstWrite -1}
		weights_load_3962 {Type I LastRead 0 FirstWrite -1}
		weights_load_3963 {Type I LastRead 0 FirstWrite -1}
		weights_load_3964 {Type I LastRead 0 FirstWrite -1}
		weights_load_3965 {Type I LastRead 0 FirstWrite -1}
		weights_load_3966 {Type I LastRead 0 FirstWrite -1}
		weights_load_3967 {Type I LastRead 0 FirstWrite -1}
		weights_load_3968 {Type I LastRead 0 FirstWrite -1}
		weights_load_3969 {Type I LastRead 0 FirstWrite -1}
		weights_load_3970 {Type I LastRead 0 FirstWrite -1}
		weights_load_3971 {Type I LastRead 0 FirstWrite -1}
		weights_load_3972 {Type I LastRead 0 FirstWrite -1}
		weights_load_3973 {Type I LastRead 0 FirstWrite -1}
		weights_load_3974 {Type I LastRead 0 FirstWrite -1}
		weights_load_3975 {Type I LastRead 0 FirstWrite -1}
		weights_load_3976 {Type I LastRead 0 FirstWrite -1}
		weights_load_3977 {Type I LastRead 0 FirstWrite -1}
		weights_load_3978 {Type I LastRead 0 FirstWrite -1}
		weights_load_3979 {Type I LastRead 0 FirstWrite -1}
		weights_load_3980 {Type I LastRead 0 FirstWrite -1}
		weights_load_3981 {Type I LastRead 0 FirstWrite -1}
		weights_load_3982 {Type I LastRead 0 FirstWrite -1}
		weights_load_3983 {Type I LastRead 0 FirstWrite -1}
		weights_load_3984 {Type I LastRead 0 FirstWrite -1}
		weights_load_3985 {Type I LastRead 0 FirstWrite -1}
		weights_load_3986 {Type I LastRead 0 FirstWrite -1}
		weights_load_3987 {Type I LastRead 0 FirstWrite -1}
		weights_load_3988 {Type I LastRead 0 FirstWrite -1}
		weights_load_3989 {Type I LastRead 0 FirstWrite -1}
		weights_load_3990 {Type I LastRead 0 FirstWrite -1}
		weights_load_3991 {Type I LastRead 0 FirstWrite -1}
		weights_load_3992 {Type I LastRead 0 FirstWrite -1}
		weights_load_3993 {Type I LastRead 0 FirstWrite -1}
		weights_load_3994 {Type I LastRead 0 FirstWrite -1}
		weights_load_3995 {Type I LastRead 0 FirstWrite -1}
		weights_load_3996 {Type I LastRead 0 FirstWrite -1}
		weights_load_3997 {Type I LastRead 0 FirstWrite -1}
		weights_load_3998 {Type I LastRead 0 FirstWrite -1}
		weights_load_3999 {Type I LastRead 0 FirstWrite -1}
		weights_load_4000 {Type I LastRead 0 FirstWrite -1}
		weights_load_4001 {Type I LastRead 0 FirstWrite -1}
		weights_load_4002 {Type I LastRead 0 FirstWrite -1}
		weights_load_4003 {Type I LastRead 0 FirstWrite -1}
		weights_load_4004 {Type I LastRead 0 FirstWrite -1}
		weights_load_4005 {Type I LastRead 0 FirstWrite -1}
		weights_load_4006 {Type I LastRead 0 FirstWrite -1}
		weights_load_4007 {Type I LastRead 0 FirstWrite -1}
		weights_load_4008 {Type I LastRead 0 FirstWrite -1}
		weights_load_4009 {Type I LastRead 0 FirstWrite -1}
		weights_load_4010 {Type I LastRead 0 FirstWrite -1}
		weights_load_4011 {Type I LastRead 0 FirstWrite -1}
		weights_load_4012 {Type I LastRead 0 FirstWrite -1}
		weights_load_4013 {Type I LastRead 0 FirstWrite -1}
		weights_load_4014 {Type I LastRead 0 FirstWrite -1}
		weights_load_4015 {Type I LastRead 0 FirstWrite -1}
		weights_load_4016 {Type I LastRead 0 FirstWrite -1}
		weights_load_4017 {Type I LastRead 0 FirstWrite -1}
		weights_load_4018 {Type I LastRead 0 FirstWrite -1}
		weights_load_4019 {Type I LastRead 0 FirstWrite -1}
		weights_load_4020 {Type I LastRead 0 FirstWrite -1}
		weights_load_4021 {Type I LastRead 0 FirstWrite -1}
		weights_load_4022 {Type I LastRead 0 FirstWrite -1}
		weights_load_4023 {Type I LastRead 0 FirstWrite -1}
		weights_load_4024 {Type I LastRead 0 FirstWrite -1}
		weights_load_4025 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_31 { ap_fifo {  { conv2d_64_padded_window_stream_31_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_31_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_31_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_31_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_31_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_31 { ap_fifo {  { in_channel_map_stream_31_din fifo_port_we 1 32 }  { in_channel_map_stream_31_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_31_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_31_full_n fifo_status 0 1 }  { in_channel_map_stream_31_write fifo_data 1 1 } } }
}
