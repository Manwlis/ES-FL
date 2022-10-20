set moduleName sparce_categorical_cross_entropy_10u_s
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
set C_modelName {sparce_categorical_cross_entropy<10u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ softmax_f_map_stream14 int 32 regular {fifo 0 volatile }  }
	{ label_r int 32 regular {fifo 0}  }
	{ softmax_output_error_stream15 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "softmax_f_map_stream14", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "label_r", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "softmax_output_error_stream15", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ softmax_f_map_stream14_dout sc_in sc_lv 32 signal 0 } 
	{ softmax_f_map_stream14_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ softmax_f_map_stream14_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ softmax_f_map_stream14_empty_n sc_in sc_logic 1 signal 0 } 
	{ softmax_f_map_stream14_read sc_out sc_logic 1 signal 0 } 
	{ label_r_dout sc_in sc_lv 32 signal 1 } 
	{ label_r_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ label_r_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ label_r_empty_n sc_in sc_logic 1 signal 1 } 
	{ label_r_read sc_out sc_logic 1 signal 1 } 
	{ softmax_output_error_stream15_din sc_out sc_lv 32 signal 2 } 
	{ softmax_output_error_stream15_num_data_valid sc_in sc_lv 4 signal 2 } 
	{ softmax_output_error_stream15_fifo_cap sc_in sc_lv 4 signal 2 } 
	{ softmax_output_error_stream15_full_n sc_in sc_logic 1 signal 2 } 
	{ softmax_output_error_stream15_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "softmax_f_map_stream14_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "softmax_f_map_stream14", "role": "dout" }} , 
 	{ "name": "softmax_f_map_stream14_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "softmax_f_map_stream14", "role": "num_data_valid" }} , 
 	{ "name": "softmax_f_map_stream14_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "softmax_f_map_stream14", "role": "fifo_cap" }} , 
 	{ "name": "softmax_f_map_stream14_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "softmax_f_map_stream14", "role": "empty_n" }} , 
 	{ "name": "softmax_f_map_stream14_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "softmax_f_map_stream14", "role": "read" }} , 
 	{ "name": "label_r_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "label_r", "role": "dout" }} , 
 	{ "name": "label_r_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "label_r", "role": "num_data_valid" }} , 
 	{ "name": "label_r_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "label_r", "role": "fifo_cap" }} , 
 	{ "name": "label_r_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "label_r", "role": "empty_n" }} , 
 	{ "name": "label_r_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "label_r", "role": "read" }} , 
 	{ "name": "softmax_output_error_stream15_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "softmax_output_error_stream15", "role": "din" }} , 
 	{ "name": "softmax_output_error_stream15_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "softmax_output_error_stream15", "role": "num_data_valid" }} , 
 	{ "name": "softmax_output_error_stream15_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "softmax_output_error_stream15", "role": "fifo_cap" }} , 
 	{ "name": "softmax_output_error_stream15_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "softmax_output_error_stream15", "role": "full_n" }} , 
 	{ "name": "softmax_output_error_stream15_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "softmax_output_error_stream15", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "sparce_categorical_cross_entropy_10u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "21",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "softmax_f_map_stream14", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sparce_categorical_cross_entropy_10u_Pipeline_output_error_fu_38", "Port" : "softmax_f_map_stream14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "label_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "label_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "softmax_output_error_stream15", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sparce_categorical_cross_entropy_10u_Pipeline_output_error_fu_38", "Port" : "softmax_output_error_stream15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sparce_categorical_cross_entropy_10u_Pipeline_output_error_fu_38", "Parent" : "0", "Child" : ["2", "3", "4"],
		"CDFG" : "sparce_categorical_cross_entropy_10u_Pipeline_output_error",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "softmax_f_map_stream14", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "softmax_f_map_stream14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "label_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "softmax_output_error_stream15", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "softmax_output_error_stream15_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "output_error", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparce_categorical_cross_entropy_10u_Pipeline_output_error_fu_38.fsub_32ns_32ns_32_4_full_dsp_1_U18", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparce_categorical_cross_entropy_10u_Pipeline_output_error_fu_38.uitofp_32ns_32_4_no_dsp_1_U19", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sparce_categorical_cross_entropy_10u_Pipeline_output_error_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	sparce_categorical_cross_entropy_10u_s {
		softmax_f_map_stream14 {Type I LastRead 3 FirstWrite -1}
		label_r {Type I LastRead 0 FirstWrite -1}
		softmax_output_error_stream15 {Type O LastRead -1 FirstWrite 8}}
	sparce_categorical_cross_entropy_10u_Pipeline_output_error {
		softmax_f_map_stream14 {Type I LastRead 3 FirstWrite -1}
		label_load {Type I LastRead 0 FirstWrite -1}
		softmax_output_error_stream15 {Type O LastRead -1 FirstWrite 8}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "21", "Max" : "21"}
	, {"Name" : "Interval", "Min" : "21", "Max" : "21"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	softmax_f_map_stream14 { ap_fifo {  { softmax_f_map_stream14_dout fifo_port_we 0 32 }  { softmax_f_map_stream14_num_data_valid fifo_status_num_data_valid 0 2 }  { softmax_f_map_stream14_fifo_cap fifo_update 0 2 }  { softmax_f_map_stream14_empty_n fifo_status 0 1 }  { softmax_f_map_stream14_read fifo_data 1 1 } } }
	label_r { ap_fifo {  { label_r_dout fifo_port_we 0 32 }  { label_r_num_data_valid fifo_status_num_data_valid 0 3 }  { label_r_fifo_cap fifo_update 0 3 }  { label_r_empty_n fifo_status 0 1 }  { label_r_read fifo_data 1 1 } } }
	softmax_output_error_stream15 { ap_fifo {  { softmax_output_error_stream15_din fifo_port_we 1 32 }  { softmax_output_error_stream15_num_data_valid fifo_status_num_data_valid 0 4 }  { softmax_output_error_stream15_fifo_cap fifo_update 0 4 }  { softmax_output_error_stream15_full_n fifo_status 0 1 }  { softmax_output_error_stream15_write fifo_data 1 1 } } }
}
