set moduleName softmax_error_propagation_10u_128u_s
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
set C_modelName {softmax_error_propagation<10u, 128u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ softmax_output_error_stream15 int 32 regular {fifo 0 volatile }  }
	{ weights int 320 regular {array 128 { 1 3 } 1 1 }  }
	{ softmax_input_error_stream16 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "softmax_output_error_stream15", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 320, "direction" : "READONLY"} , 
 	{ "Name" : "softmax_input_error_stream16", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ softmax_output_error_stream15_dout sc_in sc_lv 32 signal 0 } 
	{ softmax_output_error_stream15_num_data_valid sc_in sc_lv 4 signal 0 } 
	{ softmax_output_error_stream15_fifo_cap sc_in sc_lv 4 signal 0 } 
	{ softmax_output_error_stream15_empty_n sc_in sc_logic 1 signal 0 } 
	{ softmax_output_error_stream15_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 7 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 320 signal 1 } 
	{ softmax_input_error_stream16_din sc_out sc_lv 32 signal 2 } 
	{ softmax_input_error_stream16_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ softmax_input_error_stream16_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ softmax_input_error_stream16_full_n sc_in sc_logic 1 signal 2 } 
	{ softmax_input_error_stream16_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "softmax_output_error_stream15_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "softmax_output_error_stream15", "role": "dout" }} , 
 	{ "name": "softmax_output_error_stream15_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "softmax_output_error_stream15", "role": "num_data_valid" }} , 
 	{ "name": "softmax_output_error_stream15_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "softmax_output_error_stream15", "role": "fifo_cap" }} , 
 	{ "name": "softmax_output_error_stream15_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "softmax_output_error_stream15", "role": "empty_n" }} , 
 	{ "name": "softmax_output_error_stream15_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "softmax_output_error_stream15", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":320, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "softmax_input_error_stream16_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "softmax_input_error_stream16", "role": "din" }} , 
 	{ "name": "softmax_input_error_stream16_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "softmax_input_error_stream16", "role": "num_data_valid" }} , 
 	{ "name": "softmax_input_error_stream16_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "softmax_input_error_stream16", "role": "fifo_cap" }} , 
 	{ "name": "softmax_input_error_stream16_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "softmax_input_error_stream16", "role": "full_n" }} , 
 	{ "name": "softmax_input_error_stream16_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "softmax_input_error_stream16", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4"],
		"CDFG" : "softmax_error_propagation_10u_128u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "170", "EstimateLatencyMax" : "170",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "softmax_output_error_stream15", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_softmax_error_propagation_10u_128u_Pipeline_store_output_error_fu_137", "Port" : "softmax_output_error_stream15", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145", "Port" : "weights", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "softmax_input_error_stream16", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145", "Port" : "softmax_input_error_stream16", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_error_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_softmax_error_propagation_10u_128u_Pipeline_store_output_error_fu_137", "Parent" : "0", "Child" : ["3"],
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_error_propagation_10u_128u_Pipeline_store_output_error_fu_137.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145", "Parent" : "0", "Child" : ["5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"],
		"CDFG" : "softmax_error_propagation_10u_128u_Pipeline_input",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "150", "EstimateLatencyMax" : "150",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_error_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_error_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_error_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_error_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_error_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_error_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_error_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_error_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_error_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_error_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "softmax_input_error_stream16", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "softmax_input_error_stream16_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "input", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter21", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter21", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fadd_32ns_32ns_32_4_full_dsp_1_U30", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fadd_32ns_32ns_32_4_full_dsp_1_U31", "Parent" : "4"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fadd_32ns_32ns_32_4_full_dsp_1_U32", "Parent" : "4"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fadd_32ns_32ns_32_4_full_dsp_1_U33", "Parent" : "4"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fadd_32ns_32ns_32_4_full_dsp_1_U34", "Parent" : "4"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fadd_32ns_32ns_32_4_full_dsp_1_U35", "Parent" : "4"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fadd_32ns_32ns_32_4_full_dsp_1_U36", "Parent" : "4"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fadd_32ns_32ns_32_4_full_dsp_1_U37", "Parent" : "4"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fadd_32ns_32ns_32_4_full_dsp_1_U38", "Parent" : "4"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fmul_32ns_32ns_32_3_max_dsp_1_U39", "Parent" : "4"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fmul_32ns_32ns_32_3_max_dsp_1_U40", "Parent" : "4"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fmul_32ns_32ns_32_3_max_dsp_1_U41", "Parent" : "4"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fmul_32ns_32ns_32_3_max_dsp_1_U42", "Parent" : "4"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fmul_32ns_32ns_32_3_max_dsp_1_U43", "Parent" : "4"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fmul_32ns_32ns_32_3_max_dsp_1_U44", "Parent" : "4"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fmul_32ns_32ns_32_3_max_dsp_1_U45", "Parent" : "4"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fmul_32ns_32ns_32_3_max_dsp_1_U46", "Parent" : "4"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fmul_32ns_32ns_32_3_max_dsp_1_U47", "Parent" : "4"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fmul_32ns_32ns_32_3_max_dsp_1_U48", "Parent" : "4"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"}]}


set ArgLastReadFirstWriteLatency {
	softmax_error_propagation_10u_128u_s {
		softmax_output_error_stream15 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 0 FirstWrite -1}
		softmax_input_error_stream16 {Type O LastRead -1 FirstWrite 21}}
	softmax_error_propagation_10u_128u_Pipeline_store_output_error {
		softmax_output_error_stream15 {Type I LastRead 1 FirstWrite -1}
		output_error {Type O LastRead -1 FirstWrite 1}}
	softmax_error_propagation_10u_128u_Pipeline_input {
		weights {Type I LastRead 0 FirstWrite -1}
		output_error_load {Type I LastRead 0 FirstWrite -1}
		output_error_load_1 {Type I LastRead 0 FirstWrite -1}
		output_error_load_2 {Type I LastRead 0 FirstWrite -1}
		output_error_load_3 {Type I LastRead 0 FirstWrite -1}
		output_error_load_4 {Type I LastRead 0 FirstWrite -1}
		output_error_load_5 {Type I LastRead 0 FirstWrite -1}
		output_error_load_6 {Type I LastRead 0 FirstWrite -1}
		output_error_load_7 {Type I LastRead 0 FirstWrite -1}
		output_error_load_8 {Type I LastRead 0 FirstWrite -1}
		output_error_load_9 {Type I LastRead 0 FirstWrite -1}
		softmax_input_error_stream16 {Type O LastRead -1 FirstWrite 21}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "170", "Max" : "170"}
	, {"Name" : "Interval", "Min" : "170", "Max" : "170"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	softmax_output_error_stream15 { ap_fifo {  { softmax_output_error_stream15_dout fifo_port_we 0 32 }  { softmax_output_error_stream15_num_data_valid fifo_status_num_data_valid 0 4 }  { softmax_output_error_stream15_fifo_cap fifo_update 0 4 }  { softmax_output_error_stream15_empty_n fifo_status 0 1 }  { softmax_output_error_stream15_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 7 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 320 } } }
	softmax_input_error_stream16 { ap_fifo {  { softmax_input_error_stream16_din fifo_port_we 1 32 }  { softmax_input_error_stream16_num_data_valid fifo_status_num_data_valid 0 2 }  { softmax_input_error_stream16_fifo_cap fifo_update 0 2 }  { softmax_input_error_stream16_full_n fifo_status 0 1 }  { softmax_input_error_stream16_write fifo_data 1 1 } } }
}
