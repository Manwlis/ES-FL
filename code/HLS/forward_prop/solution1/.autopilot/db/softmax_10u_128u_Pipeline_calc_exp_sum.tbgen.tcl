set moduleName softmax_10u_128u_Pipeline_calc_exp_sum
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
set C_modelName {softmax<10u, 128u>_Pipeline_calc_exp_sum}
set C_modelType { void 0 }
set C_modelArgList {
	{ add1827_reload float 32 regular  }
	{ add18_129_reload float 32 regular  }
	{ add18_231_reload float 32 regular  }
	{ add18_333_reload float 32 regular  }
	{ add18_435_reload float 32 regular  }
	{ add18_537_reload float 32 regular  }
	{ add18_639_reload float 32 regular  }
	{ add18_741_reload float 32 regular  }
	{ add18_843_reload float 32 regular  }
	{ add18_945_reload float 32 regular  }
	{ select_ln478_9 float 32 regular  }
	{ softmax_sum_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "add1827_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add18_129_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add18_231_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add18_333_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add18_435_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add18_537_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add18_639_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add18_741_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add18_843_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add18_945_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln478_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "softmax_sum_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ add1827_reload sc_in sc_lv 32 signal 0 } 
	{ add18_129_reload sc_in sc_lv 32 signal 1 } 
	{ add18_231_reload sc_in sc_lv 32 signal 2 } 
	{ add18_333_reload sc_in sc_lv 32 signal 3 } 
	{ add18_435_reload sc_in sc_lv 32 signal 4 } 
	{ add18_537_reload sc_in sc_lv 32 signal 5 } 
	{ add18_639_reload sc_in sc_lv 32 signal 6 } 
	{ add18_741_reload sc_in sc_lv 32 signal 7 } 
	{ add18_843_reload sc_in sc_lv 32 signal 8 } 
	{ add18_945_reload sc_in sc_lv 32 signal 9 } 
	{ select_ln478_9 sc_in sc_lv 32 signal 10 } 
	{ softmax_sum_out sc_out sc_lv 32 signal 11 } 
	{ softmax_sum_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ grp_fu_203_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_203_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_203_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_203_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_203_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_631_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_631_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_631_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_631_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "add1827_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add1827_reload", "role": "default" }} , 
 	{ "name": "add18_129_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add18_129_reload", "role": "default" }} , 
 	{ "name": "add18_231_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add18_231_reload", "role": "default" }} , 
 	{ "name": "add18_333_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add18_333_reload", "role": "default" }} , 
 	{ "name": "add18_435_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add18_435_reload", "role": "default" }} , 
 	{ "name": "add18_537_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add18_537_reload", "role": "default" }} , 
 	{ "name": "add18_639_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add18_639_reload", "role": "default" }} , 
 	{ "name": "add18_741_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add18_741_reload", "role": "default" }} , 
 	{ "name": "add18_843_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add18_843_reload", "role": "default" }} , 
 	{ "name": "add18_945_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add18_945_reload", "role": "default" }} , 
 	{ "name": "select_ln478_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "select_ln478_9", "role": "default" }} , 
 	{ "name": "softmax_sum_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "softmax_sum_out", "role": "default" }} , 
 	{ "name": "softmax_sum_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "softmax_sum_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_203_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_203_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_203_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_203_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_203_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_203_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_203_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_203_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_203_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_203_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_631_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_631_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_631_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_631_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_631_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_631_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_631_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_631_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_104_32_1_1_U20408", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		softmax_sum_out {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "51", "Max" : "51"}
	, {"Name" : "Interval", "Min" : "51", "Max" : "51"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	add1827_reload { ap_none {  { add1827_reload in_data 0 32 } } }
	add18_129_reload { ap_none {  { add18_129_reload in_data 0 32 } } }
	add18_231_reload { ap_none {  { add18_231_reload in_data 0 32 } } }
	add18_333_reload { ap_none {  { add18_333_reload in_data 0 32 } } }
	add18_435_reload { ap_none {  { add18_435_reload in_data 0 32 } } }
	add18_537_reload { ap_none {  { add18_537_reload in_data 0 32 } } }
	add18_639_reload { ap_none {  { add18_639_reload in_data 0 32 } } }
	add18_741_reload { ap_none {  { add18_741_reload in_data 0 32 } } }
	add18_843_reload { ap_none {  { add18_843_reload in_data 0 32 } } }
	add18_945_reload { ap_none {  { add18_945_reload in_data 0 32 } } }
	select_ln478_9 { ap_none {  { select_ln478_9 in_data 0 32 } } }
	softmax_sum_out { ap_vld {  { softmax_sum_out out_data 1 32 }  { softmax_sum_out_ap_vld out_vld 1 1 } } }
}
