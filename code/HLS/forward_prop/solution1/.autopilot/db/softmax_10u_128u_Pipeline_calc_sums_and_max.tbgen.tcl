set moduleName softmax_10u_128u_Pipeline_calc_sums_and_max
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
set C_modelName {softmax<10u, 128u>_Pipeline_calc_sums_and_max}
set C_modelType { void 0 }
set C_modelArgList {
	{ sum_9_reload float 32 regular  }
	{ sum_8_reload float 32 regular  }
	{ sum_7_reload float 32 regular  }
	{ sum_6_reload float 32 regular  }
	{ sum_5_reload float 32 regular  }
	{ sum_4_reload float 32 regular  }
	{ sum_3_reload float 32 regular  }
	{ sum_2_reload float 32 regular  }
	{ sum_1_reload float 32 regular  }
	{ sum_reload float 32 regular  }
	{ dense_feature_map_stream128 int 32 regular {fifo 0 volatile }  }
	{ weights_0 float 32 regular {array 427 { 1 1 } 1 1 }  }
	{ weights_1 float 32 regular {array 427 { 1 1 } 1 1 }  }
	{ weights_2 float 32 regular {array 427 { 1 1 } 1 1 }  }
	{ add18_945_out float 32 regular {pointer 1}  }
	{ add18_843_out float 32 regular {pointer 1}  }
	{ add18_741_out float 32 regular {pointer 1}  }
	{ add18_639_out float 32 regular {pointer 1}  }
	{ add18_537_out float 32 regular {pointer 1}  }
	{ add18_435_out float 32 regular {pointer 1}  }
	{ add18_333_out float 32 regular {pointer 1}  }
	{ add18_231_out float 32 regular {pointer 1}  }
	{ add18_129_out float 32 regular {pointer 1}  }
	{ add1827_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sum_9_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_8_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_7_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_6_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_5_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dense_feature_map_stream128", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add18_945_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add18_843_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add18_741_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add18_639_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add18_537_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add18_435_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add18_333_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add18_231_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add18_129_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add1827_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 64
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sum_9_reload sc_in sc_lv 32 signal 0 } 
	{ sum_8_reload sc_in sc_lv 32 signal 1 } 
	{ sum_7_reload sc_in sc_lv 32 signal 2 } 
	{ sum_6_reload sc_in sc_lv 32 signal 3 } 
	{ sum_5_reload sc_in sc_lv 32 signal 4 } 
	{ sum_4_reload sc_in sc_lv 32 signal 5 } 
	{ sum_3_reload sc_in sc_lv 32 signal 6 } 
	{ sum_2_reload sc_in sc_lv 32 signal 7 } 
	{ sum_1_reload sc_in sc_lv 32 signal 8 } 
	{ sum_reload sc_in sc_lv 32 signal 9 } 
	{ dense_feature_map_stream128_dout sc_in sc_lv 32 signal 10 } 
	{ dense_feature_map_stream128_num_data_valid sc_in sc_lv 3 signal 10 } 
	{ dense_feature_map_stream128_fifo_cap sc_in sc_lv 3 signal 10 } 
	{ dense_feature_map_stream128_empty_n sc_in sc_logic 1 signal 10 } 
	{ dense_feature_map_stream128_read sc_out sc_logic 1 signal 10 } 
	{ weights_0_address0 sc_out sc_lv 9 signal 11 } 
	{ weights_0_ce0 sc_out sc_logic 1 signal 11 } 
	{ weights_0_q0 sc_in sc_lv 32 signal 11 } 
	{ weights_0_address1 sc_out sc_lv 9 signal 11 } 
	{ weights_0_ce1 sc_out sc_logic 1 signal 11 } 
	{ weights_0_q1 sc_in sc_lv 32 signal 11 } 
	{ weights_1_address0 sc_out sc_lv 9 signal 12 } 
	{ weights_1_ce0 sc_out sc_logic 1 signal 12 } 
	{ weights_1_q0 sc_in sc_lv 32 signal 12 } 
	{ weights_1_address1 sc_out sc_lv 9 signal 12 } 
	{ weights_1_ce1 sc_out sc_logic 1 signal 12 } 
	{ weights_1_q1 sc_in sc_lv 32 signal 12 } 
	{ weights_2_address0 sc_out sc_lv 9 signal 13 } 
	{ weights_2_ce0 sc_out sc_logic 1 signal 13 } 
	{ weights_2_q0 sc_in sc_lv 32 signal 13 } 
	{ weights_2_address1 sc_out sc_lv 9 signal 13 } 
	{ weights_2_ce1 sc_out sc_logic 1 signal 13 } 
	{ weights_2_q1 sc_in sc_lv 32 signal 13 } 
	{ add18_945_out sc_out sc_lv 32 signal 14 } 
	{ add18_945_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ add18_843_out sc_out sc_lv 32 signal 15 } 
	{ add18_843_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ add18_741_out sc_out sc_lv 32 signal 16 } 
	{ add18_741_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ add18_639_out sc_out sc_lv 32 signal 17 } 
	{ add18_639_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ add18_537_out sc_out sc_lv 32 signal 18 } 
	{ add18_537_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ add18_435_out sc_out sc_lv 32 signal 19 } 
	{ add18_435_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ add18_333_out sc_out sc_lv 32 signal 20 } 
	{ add18_333_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ add18_231_out sc_out sc_lv 32 signal 21 } 
	{ add18_231_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ add18_129_out sc_out sc_lv 32 signal 22 } 
	{ add18_129_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ add1827_out sc_out sc_lv 32 signal 23 } 
	{ add1827_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ grp_fu_203_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_203_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_203_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_203_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_203_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sum_9_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_9_reload", "role": "default" }} , 
 	{ "name": "sum_8_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_8_reload", "role": "default" }} , 
 	{ "name": "sum_7_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_7_reload", "role": "default" }} , 
 	{ "name": "sum_6_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_6_reload", "role": "default" }} , 
 	{ "name": "sum_5_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_5_reload", "role": "default" }} , 
 	{ "name": "sum_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_4_reload", "role": "default" }} , 
 	{ "name": "sum_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_3_reload", "role": "default" }} , 
 	{ "name": "sum_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_2_reload", "role": "default" }} , 
 	{ "name": "sum_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_1_reload", "role": "default" }} , 
 	{ "name": "sum_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_reload", "role": "default" }} , 
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
 	{ "name": "add18_945_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add18_945_out", "role": "default" }} , 
 	{ "name": "add18_945_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add18_945_out", "role": "ap_vld" }} , 
 	{ "name": "add18_843_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add18_843_out", "role": "default" }} , 
 	{ "name": "add18_843_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add18_843_out", "role": "ap_vld" }} , 
 	{ "name": "add18_741_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add18_741_out", "role": "default" }} , 
 	{ "name": "add18_741_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add18_741_out", "role": "ap_vld" }} , 
 	{ "name": "add18_639_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add18_639_out", "role": "default" }} , 
 	{ "name": "add18_639_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add18_639_out", "role": "ap_vld" }} , 
 	{ "name": "add18_537_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add18_537_out", "role": "default" }} , 
 	{ "name": "add18_537_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add18_537_out", "role": "ap_vld" }} , 
 	{ "name": "add18_435_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add18_435_out", "role": "default" }} , 
 	{ "name": "add18_435_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add18_435_out", "role": "ap_vld" }} , 
 	{ "name": "add18_333_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add18_333_out", "role": "default" }} , 
 	{ "name": "add18_333_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add18_333_out", "role": "ap_vld" }} , 
 	{ "name": "add18_231_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add18_231_out", "role": "default" }} , 
 	{ "name": "add18_231_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add18_231_out", "role": "ap_vld" }} , 
 	{ "name": "add18_129_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add18_129_out", "role": "default" }} , 
 	{ "name": "add18_129_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add18_129_out", "role": "ap_vld" }} , 
 	{ "name": "add1827_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add1827_out", "role": "default" }} , 
 	{ "name": "add1827_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add1827_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_203_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_203_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_203_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_203_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_203_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_203_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_203_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_203_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_203_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_203_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U20360", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U20361", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U20362", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U20363", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U20364", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_311_32_1_1_U20365", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_311_32_1_1_U20366", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_311_32_1_1_U20367", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_311_32_1_1_U20368", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_11ns_3ns_11_15_1_U20369", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_311_32_1_1_U20370", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_311_32_1_1_U20371", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_11ns_12ns_23_4_1_U20372", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_11ns_12ns_23_4_1_U20373", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_11ns_12ns_23_4_1_U20374", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_11ns_12ns_23_4_1_U20375", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_11ns_12ns_23_4_1_U20376", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_11ns_12ns_23_4_1_U20377", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_11ns_12ns_23_4_1_U20378", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		add1827_out {Type O LastRead -1 FirstWrite 21}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "535", "Max" : "535"}
	, {"Name" : "Interval", "Min" : "535", "Max" : "535"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sum_9_reload { ap_none {  { sum_9_reload in_data 0 32 } } }
	sum_8_reload { ap_none {  { sum_8_reload in_data 0 32 } } }
	sum_7_reload { ap_none {  { sum_7_reload in_data 0 32 } } }
	sum_6_reload { ap_none {  { sum_6_reload in_data 0 32 } } }
	sum_5_reload { ap_none {  { sum_5_reload in_data 0 32 } } }
	sum_4_reload { ap_none {  { sum_4_reload in_data 0 32 } } }
	sum_3_reload { ap_none {  { sum_3_reload in_data 0 32 } } }
	sum_2_reload { ap_none {  { sum_2_reload in_data 0 32 } } }
	sum_1_reload { ap_none {  { sum_1_reload in_data 0 32 } } }
	sum_reload { ap_none {  { sum_reload in_data 0 32 } } }
	dense_feature_map_stream128 { ap_fifo {  { dense_feature_map_stream128_dout fifo_port_we 0 32 }  { dense_feature_map_stream128_num_data_valid fifo_status_num_data_valid 0 3 }  { dense_feature_map_stream128_fifo_cap fifo_update 0 3 }  { dense_feature_map_stream128_empty_n fifo_status 0 1 }  { dense_feature_map_stream128_read fifo_data 1 1 } } }
	weights_0 { ap_memory {  { weights_0_address0 mem_address 1 9 }  { weights_0_ce0 mem_ce 1 1 }  { weights_0_q0 in_data 0 32 }  { weights_0_address1 MemPortADDR2 1 9 }  { weights_0_ce1 MemPortCE2 1 1 }  { weights_0_q1 in_data 0 32 } } }
	weights_1 { ap_memory {  { weights_1_address0 mem_address 1 9 }  { weights_1_ce0 mem_ce 1 1 }  { weights_1_q0 in_data 0 32 }  { weights_1_address1 MemPortADDR2 1 9 }  { weights_1_ce1 MemPortCE2 1 1 }  { weights_1_q1 in_data 0 32 } } }
	weights_2 { ap_memory {  { weights_2_address0 mem_address 1 9 }  { weights_2_ce0 mem_ce 1 1 }  { weights_2_q0 in_data 0 32 }  { weights_2_address1 MemPortADDR2 1 9 }  { weights_2_ce1 MemPortCE2 1 1 }  { weights_2_q1 in_data 0 32 } } }
	add18_945_out { ap_vld {  { add18_945_out out_data 1 32 }  { add18_945_out_ap_vld out_vld 1 1 } } }
	add18_843_out { ap_vld {  { add18_843_out out_data 1 32 }  { add18_843_out_ap_vld out_vld 1 1 } } }
	add18_741_out { ap_vld {  { add18_741_out out_data 1 32 }  { add18_741_out_ap_vld out_vld 1 1 } } }
	add18_639_out { ap_vld {  { add18_639_out out_data 1 32 }  { add18_639_out_ap_vld out_vld 1 1 } } }
	add18_537_out { ap_vld {  { add18_537_out out_data 1 32 }  { add18_537_out_ap_vld out_vld 1 1 } } }
	add18_435_out { ap_vld {  { add18_435_out out_data 1 32 }  { add18_435_out_ap_vld out_vld 1 1 } } }
	add18_333_out { ap_vld {  { add18_333_out out_data 1 32 }  { add18_333_out_ap_vld out_vld 1 1 } } }
	add18_231_out { ap_vld {  { add18_231_out out_data 1 32 }  { add18_231_out_ap_vld out_vld 1 1 } } }
	add18_129_out { ap_vld {  { add18_129_out out_data 1 32 }  { add18_129_out_ap_vld out_vld 1 1 } } }
	add1827_out { ap_vld {  { add1827_out out_data 1 32 }  { add1827_out_ap_vld out_vld 1 1 } } }
}
