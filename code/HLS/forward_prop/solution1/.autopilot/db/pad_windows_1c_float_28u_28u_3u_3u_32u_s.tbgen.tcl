set moduleName pad_windows_1c_float_28u_28u_3u_3u_32u_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {pad_windows_1c<float, 28u, 28u, 3u, 3u, 32u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_32_window_stream int 288 regular {fifo 0 volatile }  }
	{ conv2d_32_padded_window_stream int 288 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_32_window_stream", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "conv2d_32_padded_window_stream", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ conv2d_32_window_stream_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_32_window_stream_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_32_window_stream_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_32_window_stream_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_32_window_stream_read sc_out sc_logic 1 signal 0 } 
	{ conv2d_32_padded_window_stream_din sc_out sc_lv 288 signal 1 } 
	{ conv2d_32_padded_window_stream_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ conv2d_32_padded_window_stream_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ conv2d_32_padded_window_stream_full_n sc_in sc_logic 1 signal 1 } 
	{ conv2d_32_padded_window_stream_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_32_window_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_32_window_stream", "role": "dout" }} , 
 	{ "name": "conv2d_32_window_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_32_window_stream", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_32_window_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_32_window_stream", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_32_window_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_32_window_stream", "role": "empty_n" }} , 
 	{ "name": "conv2d_32_window_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_32_window_stream", "role": "read" }} , 
 	{ "name": "conv2d_32_padded_window_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_32_padded_window_stream", "role": "din" }} , 
 	{ "name": "conv2d_32_padded_window_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_32_padded_window_stream", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_32_padded_window_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_32_padded_window_stream", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_32_padded_window_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_32_padded_window_stream", "role": "full_n" }} , 
 	{ "name": "conv2d_32_padded_window_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_32_padded_window_stream", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "pad_windows_1c_float_28u_28u_3u_3u_32u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "786", "EstimateLatencyMax" : "786",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv2d_32_window_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_32_window_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_32_padded_window_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_32_padded_window_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "in_y_in_x", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	pad_windows_1c_float_28u_28u_3u_3u_32u_s {
		conv2d_32_window_stream {Type I LastRead 1 FirstWrite -1}
		conv2d_32_padded_window_stream {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "786", "Max" : "786"}
	, {"Name" : "Interval", "Min" : "786", "Max" : "786"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	conv2d_32_window_stream { ap_fifo {  { conv2d_32_window_stream_dout fifo_port_we 0 288 }  { conv2d_32_window_stream_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_32_window_stream_fifo_cap fifo_update 0 3 }  { conv2d_32_window_stream_empty_n fifo_status 0 1 }  { conv2d_32_window_stream_read fifo_data 1 1 } } }
	conv2d_32_padded_window_stream { ap_fifo {  { conv2d_32_padded_window_stream_din fifo_port_we 1 288 }  { conv2d_32_padded_window_stream_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_32_padded_window_stream_fifo_cap fifo_update 0 3 }  { conv2d_32_padded_window_stream_full_n fifo_status 0 1 }  { conv2d_32_padded_window_stream_write fifo_data 1 1 } } }
}
