set moduleName softmax_10u_128u_s
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
set C_modelName {softmax<10u, 128u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ dense_feature_map_stream128 int 32 regular {fifo 0 volatile }  }
	{ weights_0 float 32 regular {array 427 { 1 1 } 1 1 }  }
	{ weights_1 float 32 regular {array 427 { 1 1 } 1 1 }  }
	{ weights_2 float 32 regular {array 427 { 1 1 } 1 1 }  }
	{ biases float 32 regular {array 10 { 1 3 } 1 1 }  }
	{ softmax_f_map_out135 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dense_feature_map_stream128", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "biases", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "softmax_f_map_out135", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dense_feature_map_stream128_dout sc_in sc_lv 32 signal 0 } 
	{ dense_feature_map_stream128_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ dense_feature_map_stream128_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ dense_feature_map_stream128_empty_n sc_in sc_logic 1 signal 0 } 
	{ dense_feature_map_stream128_read sc_out sc_logic 1 signal 0 } 
	{ weights_0_address0 sc_out sc_lv 9 signal 1 } 
	{ weights_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_0_q0 sc_in sc_lv 32 signal 1 } 
	{ weights_0_address1 sc_out sc_lv 9 signal 1 } 
	{ weights_0_ce1 sc_out sc_logic 1 signal 1 } 
	{ weights_0_q1 sc_in sc_lv 32 signal 1 } 
	{ weights_1_address0 sc_out sc_lv 9 signal 2 } 
	{ weights_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ weights_1_q0 sc_in sc_lv 32 signal 2 } 
	{ weights_1_address1 sc_out sc_lv 9 signal 2 } 
	{ weights_1_ce1 sc_out sc_logic 1 signal 2 } 
	{ weights_1_q1 sc_in sc_lv 32 signal 2 } 
	{ weights_2_address0 sc_out sc_lv 9 signal 3 } 
	{ weights_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ weights_2_q0 sc_in sc_lv 32 signal 3 } 
	{ weights_2_address1 sc_out sc_lv 9 signal 3 } 
	{ weights_2_ce1 sc_out sc_logic 1 signal 3 } 
	{ weights_2_q1 sc_in sc_lv 32 signal 3 } 
	{ biases_address0 sc_out sc_lv 4 signal 4 } 
	{ biases_ce0 sc_out sc_logic 1 signal 4 } 
	{ biases_q0 sc_in sc_lv 32 signal 4 } 
	{ softmax_f_map_out135_din sc_out sc_lv 32 signal 5 } 
	{ softmax_f_map_out135_num_data_valid sc_in sc_lv 5 signal 5 } 
	{ softmax_f_map_out135_fifo_cap sc_in sc_lv 5 signal 5 } 
	{ softmax_f_map_out135_full_n sc_in sc_logic 1 signal 5 } 
	{ softmax_f_map_out135_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dense_feature_map_stream128_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dense_feature_map_stream128", "role": "dout" }} , 
 	{ "name": "dense_feature_map_stream128_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dense_feature_map_stream128", "role": "num_data_valid" }} , 
 	{ "name": "dense_feature_map_stream128_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dense_feature_map_stream128", "role": "fifo_cap" }} , 
 	{ "name": "dense_feature_map_stream128_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_feature_map_stream128", "role": "empty_n" }} , 
 	{ "name": "dense_feature_map_stream128_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_feature_map_stream128", "role": "read" }} , 
 	{ "name": "weights_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_0", "role": "address0" }} , 
 	{ "name": "weights_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_0", "role": "ce0" }} , 
 	{ "name": "weights_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_0", "role": "q0" }} , 
 	{ "name": "weights_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_0", "role": "address1" }} , 
 	{ "name": "weights_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_0", "role": "ce1" }} , 
 	{ "name": "weights_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_0", "role": "q1" }} , 
 	{ "name": "weights_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_1", "role": "address0" }} , 
 	{ "name": "weights_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_1", "role": "ce0" }} , 
 	{ "name": "weights_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_1", "role": "q0" }} , 
 	{ "name": "weights_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_1", "role": "address1" }} , 
 	{ "name": "weights_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_1", "role": "ce1" }} , 
 	{ "name": "weights_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_1", "role": "q1" }} , 
 	{ "name": "weights_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_2", "role": "address0" }} , 
 	{ "name": "weights_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_2", "role": "ce0" }} , 
 	{ "name": "weights_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_2", "role": "q0" }} , 
 	{ "name": "weights_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weights_2", "role": "address1" }} , 
 	{ "name": "weights_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_2", "role": "ce1" }} , 
 	{ "name": "weights_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_2", "role": "q1" }} , 
 	{ "name": "biases_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "biases", "role": "address0" }} , 
 	{ "name": "biases_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "biases", "role": "ce0" }} , 
 	{ "name": "biases_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "biases", "role": "q0" }} , 
 	{ "name": "softmax_f_map_out135_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "softmax_f_map_out135", "role": "din" }} , 
 	{ "name": "softmax_f_map_out135_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "softmax_f_map_out135", "role": "num_data_valid" }} , 
 	{ "name": "softmax_f_map_out135_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "softmax_f_map_out135", "role": "fifo_cap" }} , 
 	{ "name": "softmax_f_map_out135_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "softmax_f_map_out135", "role": "full_n" }} , 
 	{ "name": "softmax_f_map_out135_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "softmax_f_map_out135", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "24", "27", "30", "31", "32", "33"],
		"CDFG" : "softmax_10u_128u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "644", "EstimateLatencyMax" : "644",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dense_feature_map_stream128", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_softmax_10u_128u_Pipeline_calc_sums_and_max_fu_138", "Port" : "dense_feature_map_stream128", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "weights_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_softmax_10u_128u_Pipeline_calc_sums_and_max_fu_138", "Port" : "weights_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "weights_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_softmax_10u_128u_Pipeline_calc_sums_and_max_fu_138", "Port" : "weights_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "weights_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_softmax_10u_128u_Pipeline_calc_sums_and_max_fu_138", "Port" : "weights_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "biases", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_softmax_10u_128u_Pipeline_VITIS_LOOP_463_1_fu_122", "Port" : "biases", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "softmax_f_map_out135", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_softmax_10u_128u_Pipeline_feature_map_fu_186", "Port" : "softmax_f_map_out135", "Inst_start_state" : "26", "Inst_end_state" : "27"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_VITIS_LOOP_463_1_fu_122", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "softmax_10u_128u_Pipeline_VITIS_LOOP_463_1",
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
			{"Name" : "biases", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_463_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_VITIS_LOOP_463_1_fu_122.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_calc_sums_and_max_fu_138", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"],
		"CDFG" : "softmax_10u_128u_Pipeline_calc_sums_and_max",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "535", "EstimateLatencyMax" : "535",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sum_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_feature_map_stream128", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dense_feature_map_stream128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "add18_945_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add18_843_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add18_741_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add18_639_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add18_537_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add18_435_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add18_333_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add18_231_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add18_129_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add1827_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "calc_sums_and_max", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_calc_sums_and_max_fu_138.fadd_32ns_32ns_32_3_full_dsp_1_U20360", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_calc_sums_and_max_fu_138.fadd_32ns_32ns_32_3_full_dsp_1_U20361", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_calc_sums_and_max_fu_138.fmul_32ns_32ns_32_2_max_dsp_1_U20362", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_calc_sums_and_max_fu_138.fmul_32ns_32ns_32_2_max_dsp_1_U20363", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_calc_sums_and_max_fu_138.fmul_32ns_32ns_32_2_max_dsp_1_U20364", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_calc_sums_and_max_fu_138.mux_311_32_1_1_U20365", "Parent" : "3"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_calc_sums_and_max_fu_138.mux_311_32_1_1_U20366", "Parent" : "3"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_calc_sums_and_max_fu_138.mux_311_32_1_1_U20367", "Parent" : "3"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_calc_sums_and_max_fu_138.mux_311_32_1_1_U20368", "Parent" : "3"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_calc_sums_and_max_fu_138.urem_11ns_3ns_11_15_1_U20369", "Parent" : "3"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_calc_sums_and_max_fu_138.mux_311_32_1_1_U20370", "Parent" : "3"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_calc_sums_and_max_fu_138.mux_311_32_1_1_U20371", "Parent" : "3"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_calc_sums_and_max_fu_138.mul_mul_11ns_12ns_23_4_1_U20372", "Parent" : "3"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_calc_sums_and_max_fu_138.mul_mul_11ns_12ns_23_4_1_U20373", "Parent" : "3"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_calc_sums_and_max_fu_138.mul_mul_11ns_12ns_23_4_1_U20374", "Parent" : "3"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_calc_sums_and_max_fu_138.mul_mul_11ns_12ns_23_4_1_U20375", "Parent" : "3"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_calc_sums_and_max_fu_138.mul_mul_11ns_12ns_23_4_1_U20376", "Parent" : "3"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_calc_sums_and_max_fu_138.mul_mul_11ns_12ns_23_4_1_U20377", "Parent" : "3"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_calc_sums_and_max_fu_138.mul_mul_11ns_12ns_23_4_1_U20378", "Parent" : "3"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_calc_sums_and_max_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_calc_exp_sum_fu_170", "Parent" : "0", "Child" : ["25", "26"],
		"CDFG" : "softmax_10u_128u_Pipeline_calc_exp_sum",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "51",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "add1827_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add18_129_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add18_231_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add18_333_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add18_435_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add18_537_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add18_639_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add18_741_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add18_843_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add18_945_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln478_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "softmax_sum_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "calc_exp_sum", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_calc_exp_sum_fu_170.mux_104_32_1_1_U20408", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_calc_exp_sum_fu_170.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_feature_map_fu_186", "Parent" : "0", "Child" : ["28", "29"],
		"CDFG" : "softmax_10u_128u_Pipeline_feature_map",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "20",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "add1827_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add18_129_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add18_231_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add18_333_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add18_435_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add18_537_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add18_639_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add18_741_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add18_843_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add18_945_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "constant_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "softmax_f_map_out135", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "softmax_f_map_out135_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "feature_map", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_feature_map_fu_186.mux_104_32_1_1_U20424", "Parent" : "27"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_10u_128u_Pipeline_feature_map_fu_186.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_3_full_dsp_1_U20437", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U20438", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flog_32ns_32ns_32_6_full_dsp_1_U20439", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fexp_32ns_32ns_32_5_full_dsp_1_U20440", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	softmax_10u_128u_s {
		dense_feature_map_stream128 {Type I LastRead 16 FirstWrite -1}
		weights_0 {Type I LastRead 17 FirstWrite -1}
		weights_1 {Type I LastRead 17 FirstWrite -1}
		weights_2 {Type I LastRead 17 FirstWrite -1}
		biases {Type I LastRead 0 FirstWrite -1}
		softmax_f_map_out135 {Type O LastRead -1 FirstWrite 9}}
	softmax_10u_128u_Pipeline_VITIS_LOOP_463_1 {
		biases {Type I LastRead 0 FirstWrite -1}
		sum_9_out {Type O LastRead -1 FirstWrite 0}
		sum_8_out {Type O LastRead -1 FirstWrite 0}
		sum_7_out {Type O LastRead -1 FirstWrite 0}
		sum_6_out {Type O LastRead -1 FirstWrite 0}
		sum_5_out {Type O LastRead -1 FirstWrite 0}
		sum_4_out {Type O LastRead -1 FirstWrite 0}
		sum_3_out {Type O LastRead -1 FirstWrite 0}
		sum_2_out {Type O LastRead -1 FirstWrite 0}
		sum_1_out {Type O LastRead -1 FirstWrite 0}
		sum_out {Type O LastRead -1 FirstWrite 0}}
	softmax_10u_128u_Pipeline_calc_sums_and_max {
		sum_9_reload {Type I LastRead 0 FirstWrite -1}
		sum_8_reload {Type I LastRead 0 FirstWrite -1}
		sum_7_reload {Type I LastRead 0 FirstWrite -1}
		sum_6_reload {Type I LastRead 0 FirstWrite -1}
		sum_5_reload {Type I LastRead 0 FirstWrite -1}
		sum_4_reload {Type I LastRead 0 FirstWrite -1}
		sum_3_reload {Type I LastRead 0 FirstWrite -1}
		sum_2_reload {Type I LastRead 0 FirstWrite -1}
		sum_1_reload {Type I LastRead 0 FirstWrite -1}
		sum_reload {Type I LastRead 0 FirstWrite -1}
		dense_feature_map_stream128 {Type I LastRead 16 FirstWrite -1}
		weights_0 {Type I LastRead 17 FirstWrite -1}
		weights_1 {Type I LastRead 17 FirstWrite -1}
		weights_2 {Type I LastRead 17 FirstWrite -1}
		add18_945_out {Type O LastRead -1 FirstWrite 21}
		add18_843_out {Type O LastRead -1 FirstWrite 21}
		add18_741_out {Type O LastRead -1 FirstWrite 21}
		add18_639_out {Type O LastRead -1 FirstWrite 21}
		add18_537_out {Type O LastRead -1 FirstWrite 21}
		add18_435_out {Type O LastRead -1 FirstWrite 21}
		add18_333_out {Type O LastRead -1 FirstWrite 21}
		add18_231_out {Type O LastRead -1 FirstWrite 21}
		add18_129_out {Type O LastRead -1 FirstWrite 21}
		add1827_out {Type O LastRead -1 FirstWrite 21}}
	softmax_10u_128u_Pipeline_calc_exp_sum {
		add1827_reload {Type I LastRead 0 FirstWrite -1}
		add18_129_reload {Type I LastRead 0 FirstWrite -1}
		add18_231_reload {Type I LastRead 0 FirstWrite -1}
		add18_333_reload {Type I LastRead 0 FirstWrite -1}
		add18_435_reload {Type I LastRead 0 FirstWrite -1}
		add18_537_reload {Type I LastRead 0 FirstWrite -1}
		add18_639_reload {Type I LastRead 0 FirstWrite -1}
		add18_741_reload {Type I LastRead 0 FirstWrite -1}
		add18_843_reload {Type I LastRead 0 FirstWrite -1}
		add18_945_reload {Type I LastRead 0 FirstWrite -1}
		select_ln478_9 {Type I LastRead 0 FirstWrite -1}
		softmax_sum_out {Type O LastRead -1 FirstWrite 9}}
	softmax_10u_128u_Pipeline_feature_map {
		add1827_reload {Type I LastRead 0 FirstWrite -1}
		add18_129_reload {Type I LastRead 0 FirstWrite -1}
		add18_231_reload {Type I LastRead 0 FirstWrite -1}
		add18_333_reload {Type I LastRead 0 FirstWrite -1}
		add18_435_reload {Type I LastRead 0 FirstWrite -1}
		add18_537_reload {Type I LastRead 0 FirstWrite -1}
		add18_639_reload {Type I LastRead 0 FirstWrite -1}
		add18_741_reload {Type I LastRead 0 FirstWrite -1}
		add18_843_reload {Type I LastRead 0 FirstWrite -1}
		add18_945_reload {Type I LastRead 0 FirstWrite -1}
		constant_r {Type I LastRead 0 FirstWrite -1}
		softmax_f_map_out135 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "644", "Max" : "644"}
	, {"Name" : "Interval", "Min" : "644", "Max" : "644"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dense_feature_map_stream128 { ap_fifo {  { dense_feature_map_stream128_dout fifo_port_we 0 32 }  { dense_feature_map_stream128_num_data_valid fifo_status_num_data_valid 0 3 }  { dense_feature_map_stream128_fifo_cap fifo_update 0 3 }  { dense_feature_map_stream128_empty_n fifo_status 0 1 }  { dense_feature_map_stream128_read fifo_data 1 1 } } }
	weights_0 { ap_memory {  { weights_0_address0 mem_address 1 9 }  { weights_0_ce0 mem_ce 1 1 }  { weights_0_q0 mem_dout 0 32 }  { weights_0_address1 MemPortADDR2 1 9 }  { weights_0_ce1 MemPortCE2 1 1 }  { weights_0_q1 MemPortDOUT2 0 32 } } }
	weights_1 { ap_memory {  { weights_1_address0 mem_address 1 9 }  { weights_1_ce0 mem_ce 1 1 }  { weights_1_q0 mem_dout 0 32 }  { weights_1_address1 MemPortADDR2 1 9 }  { weights_1_ce1 MemPortCE2 1 1 }  { weights_1_q1 MemPortDOUT2 0 32 } } }
	weights_2 { ap_memory {  { weights_2_address0 mem_address 1 9 }  { weights_2_ce0 mem_ce 1 1 }  { weights_2_q0 mem_dout 0 32 }  { weights_2_address1 MemPortADDR2 1 9 }  { weights_2_ce1 MemPortCE2 1 1 }  { weights_2_q1 MemPortDOUT2 0 32 } } }
	biases { ap_memory {  { biases_address0 mem_address 1 4 }  { biases_ce0 mem_ce 1 1 }  { biases_q0 mem_dout 0 32 } } }
	softmax_f_map_out135 { ap_fifo {  { softmax_f_map_out135_din fifo_port_we 1 32 }  { softmax_f_map_out135_num_data_valid fifo_status_num_data_valid 0 5 }  { softmax_f_map_out135_fifo_cap fifo_update 0 5 }  { softmax_f_map_out135_full_n fifo_status 0 1 }  { softmax_f_map_out135_write fifo_data 1 1 } } }
}
