set moduleName softmax_error_propagation_10u_128u_Pipeline_store_output_error
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
set C_modelName {softmax_error_propagation<10u, 128u>_Pipeline_store_output_error}
set C_modelType { void 0 }
set C_modelArgList {
	{ softmax_output_error_stream15 int 32 regular {fifo 0 volatile }  }
	{ output_error float 32 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "softmax_output_error_stream15", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_error", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ softmax_output_error_stream15_dout sc_in sc_lv 32 signal 0 } 
	{ softmax_output_error_stream15_num_data_valid sc_in sc_lv 4 signal 0 } 
	{ softmax_output_error_stream15_fifo_cap sc_in sc_lv 4 signal 0 } 
	{ softmax_output_error_stream15_empty_n sc_in sc_logic 1 signal 0 } 
	{ softmax_output_error_stream15_read sc_out sc_logic 1 signal 0 } 
	{ output_error_address0 sc_out sc_lv 4 signal 1 } 
	{ output_error_ce0 sc_out sc_logic 1 signal 1 } 
	{ output_error_we0 sc_out sc_logic 1 signal 1 } 
	{ output_error_d0 sc_out sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "softmax_output_error_stream15_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "softmax_output_error_stream15", "role": "dout" }} , 
 	{ "name": "softmax_output_error_stream15_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "softmax_output_error_stream15", "role": "num_data_valid" }} , 
 	{ "name": "softmax_output_error_stream15_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "softmax_output_error_stream15", "role": "fifo_cap" }} , 
 	{ "name": "softmax_output_error_stream15_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "softmax_output_error_stream15", "role": "empty_n" }} , 
 	{ "name": "softmax_output_error_stream15_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "softmax_output_error_stream15", "role": "read" }} , 
 	{ "name": "output_error_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_error", "role": "address0" }} , 
 	{ "name": "output_error_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_error", "role": "ce0" }} , 
 	{ "name": "output_error_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_error", "role": "we0" }} , 
 	{ "name": "output_error_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_error", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "softmax_error_propagation_10u_128u_Pipeline_store_output_error",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "softmax_output_error_stream15", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "softmax_output_error_stream15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_error", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "store_output_error", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	softmax_error_propagation_10u_128u_Pipeline_store_output_error {
		softmax_output_error_stream15 {Type I LastRead 1 FirstWrite -1}
		output_error {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12", "Max" : "12"}
	, {"Name" : "Interval", "Min" : "12", "Max" : "12"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	softmax_output_error_stream15 { ap_fifo {  { softmax_output_error_stream15_dout fifo_port_we 0 32 }  { softmax_output_error_stream15_num_data_valid fifo_status_num_data_valid 0 4 }  { softmax_output_error_stream15_fifo_cap fifo_update 0 4 }  { softmax_output_error_stream15_empty_n fifo_status 0 1 }  { softmax_output_error_stream15_read fifo_data 1 1 } } }
	output_error { ap_memory {  { output_error_address0 mem_address 1 4 }  { output_error_ce0 mem_ce 1 1 }  { output_error_we0 mem_we 1 1 }  { output_error_d0 mem_din 1 32 } } }
}
