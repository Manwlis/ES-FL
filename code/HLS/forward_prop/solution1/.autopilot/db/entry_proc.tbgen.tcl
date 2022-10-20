set moduleName entry_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {entry_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem_conv2d_32_feature_map int 64 regular  }
	{ gmem_conv2d_32_feature_map_c int 64 regular {fifo 1}  }
	{ gmem_maxp2d_32_feature_map int 64 regular  }
	{ gmem_maxp2d_32_feature_map_c int 64 regular {fifo 1}  }
	{ gmem_conv2d_64_feature_map int 64 regular  }
	{ gmem_conv2d_64_feature_map_c int 64 regular {fifo 1}  }
	{ gmem_maxp2d_64_feature_map int 64 regular  }
	{ gmem_maxp2d_64_feature_map_c int 64 regular {fifo 1}  }
	{ gmem_dense_feature_map int 64 regular  }
	{ gmem_dense_feature_map_c int 64 regular {fifo 1}  }
	{ gmem_softmax_feature_map int 64 regular  }
	{ gmem_softmax_feature_map_c int 64 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_conv2d_32_feature_map", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_conv2d_32_feature_map_c", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "gmem_maxp2d_32_feature_map", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_maxp2d_32_feature_map_c", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "gmem_conv2d_64_feature_map", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_conv2d_64_feature_map_c", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "gmem_maxp2d_64_feature_map", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_maxp2d_64_feature_map_c", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "gmem_dense_feature_map", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_dense_feature_map_c", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "gmem_softmax_feature_map", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_softmax_feature_map_c", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ gmem_conv2d_32_feature_map sc_in sc_lv 64 signal 0 } 
	{ gmem_conv2d_32_feature_map_c_din sc_out sc_lv 64 signal 1 } 
	{ gmem_conv2d_32_feature_map_c_num_data_valid sc_in sc_lv 5 signal 1 } 
	{ gmem_conv2d_32_feature_map_c_fifo_cap sc_in sc_lv 5 signal 1 } 
	{ gmem_conv2d_32_feature_map_c_full_n sc_in sc_logic 1 signal 1 } 
	{ gmem_conv2d_32_feature_map_c_write sc_out sc_logic 1 signal 1 } 
	{ gmem_maxp2d_32_feature_map sc_in sc_lv 64 signal 2 } 
	{ gmem_maxp2d_32_feature_map_c_din sc_out sc_lv 64 signal 3 } 
	{ gmem_maxp2d_32_feature_map_c_num_data_valid sc_in sc_lv 5 signal 3 } 
	{ gmem_maxp2d_32_feature_map_c_fifo_cap sc_in sc_lv 5 signal 3 } 
	{ gmem_maxp2d_32_feature_map_c_full_n sc_in sc_logic 1 signal 3 } 
	{ gmem_maxp2d_32_feature_map_c_write sc_out sc_logic 1 signal 3 } 
	{ gmem_conv2d_64_feature_map sc_in sc_lv 64 signal 4 } 
	{ gmem_conv2d_64_feature_map_c_din sc_out sc_lv 64 signal 5 } 
	{ gmem_conv2d_64_feature_map_c_num_data_valid sc_in sc_lv 5 signal 5 } 
	{ gmem_conv2d_64_feature_map_c_fifo_cap sc_in sc_lv 5 signal 5 } 
	{ gmem_conv2d_64_feature_map_c_full_n sc_in sc_logic 1 signal 5 } 
	{ gmem_conv2d_64_feature_map_c_write sc_out sc_logic 1 signal 5 } 
	{ gmem_maxp2d_64_feature_map sc_in sc_lv 64 signal 6 } 
	{ gmem_maxp2d_64_feature_map_c_din sc_out sc_lv 64 signal 7 } 
	{ gmem_maxp2d_64_feature_map_c_num_data_valid sc_in sc_lv 5 signal 7 } 
	{ gmem_maxp2d_64_feature_map_c_fifo_cap sc_in sc_lv 5 signal 7 } 
	{ gmem_maxp2d_64_feature_map_c_full_n sc_in sc_logic 1 signal 7 } 
	{ gmem_maxp2d_64_feature_map_c_write sc_out sc_logic 1 signal 7 } 
	{ gmem_dense_feature_map sc_in sc_lv 64 signal 8 } 
	{ gmem_dense_feature_map_c_din sc_out sc_lv 64 signal 9 } 
	{ gmem_dense_feature_map_c_num_data_valid sc_in sc_lv 5 signal 9 } 
	{ gmem_dense_feature_map_c_fifo_cap sc_in sc_lv 5 signal 9 } 
	{ gmem_dense_feature_map_c_full_n sc_in sc_logic 1 signal 9 } 
	{ gmem_dense_feature_map_c_write sc_out sc_logic 1 signal 9 } 
	{ gmem_softmax_feature_map sc_in sc_lv 64 signal 10 } 
	{ gmem_softmax_feature_map_c_din sc_out sc_lv 64 signal 11 } 
	{ gmem_softmax_feature_map_c_num_data_valid sc_in sc_lv 5 signal 11 } 
	{ gmem_softmax_feature_map_c_fifo_cap sc_in sc_lv 5 signal 11 } 
	{ gmem_softmax_feature_map_c_full_n sc_in sc_logic 1 signal 11 } 
	{ gmem_softmax_feature_map_c_write sc_out sc_logic 1 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "gmem_conv2d_32_feature_map", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_conv2d_32_feature_map", "role": "default" }} , 
 	{ "name": "gmem_conv2d_32_feature_map_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_conv2d_32_feature_map_c", "role": "din" }} , 
 	{ "name": "gmem_conv2d_32_feature_map_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "gmem_conv2d_32_feature_map_c", "role": "num_data_valid" }} , 
 	{ "name": "gmem_conv2d_32_feature_map_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "gmem_conv2d_32_feature_map_c", "role": "fifo_cap" }} , 
 	{ "name": "gmem_conv2d_32_feature_map_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_conv2d_32_feature_map_c", "role": "full_n" }} , 
 	{ "name": "gmem_conv2d_32_feature_map_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_conv2d_32_feature_map_c", "role": "write" }} , 
 	{ "name": "gmem_maxp2d_32_feature_map", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_maxp2d_32_feature_map", "role": "default" }} , 
 	{ "name": "gmem_maxp2d_32_feature_map_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_maxp2d_32_feature_map_c", "role": "din" }} , 
 	{ "name": "gmem_maxp2d_32_feature_map_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "gmem_maxp2d_32_feature_map_c", "role": "num_data_valid" }} , 
 	{ "name": "gmem_maxp2d_32_feature_map_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "gmem_maxp2d_32_feature_map_c", "role": "fifo_cap" }} , 
 	{ "name": "gmem_maxp2d_32_feature_map_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_maxp2d_32_feature_map_c", "role": "full_n" }} , 
 	{ "name": "gmem_maxp2d_32_feature_map_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_maxp2d_32_feature_map_c", "role": "write" }} , 
 	{ "name": "gmem_conv2d_64_feature_map", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_conv2d_64_feature_map", "role": "default" }} , 
 	{ "name": "gmem_conv2d_64_feature_map_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_conv2d_64_feature_map_c", "role": "din" }} , 
 	{ "name": "gmem_conv2d_64_feature_map_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "gmem_conv2d_64_feature_map_c", "role": "num_data_valid" }} , 
 	{ "name": "gmem_conv2d_64_feature_map_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "gmem_conv2d_64_feature_map_c", "role": "fifo_cap" }} , 
 	{ "name": "gmem_conv2d_64_feature_map_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_conv2d_64_feature_map_c", "role": "full_n" }} , 
 	{ "name": "gmem_conv2d_64_feature_map_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_conv2d_64_feature_map_c", "role": "write" }} , 
 	{ "name": "gmem_maxp2d_64_feature_map", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_maxp2d_64_feature_map", "role": "default" }} , 
 	{ "name": "gmem_maxp2d_64_feature_map_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_maxp2d_64_feature_map_c", "role": "din" }} , 
 	{ "name": "gmem_maxp2d_64_feature_map_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "gmem_maxp2d_64_feature_map_c", "role": "num_data_valid" }} , 
 	{ "name": "gmem_maxp2d_64_feature_map_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "gmem_maxp2d_64_feature_map_c", "role": "fifo_cap" }} , 
 	{ "name": "gmem_maxp2d_64_feature_map_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_maxp2d_64_feature_map_c", "role": "full_n" }} , 
 	{ "name": "gmem_maxp2d_64_feature_map_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_maxp2d_64_feature_map_c", "role": "write" }} , 
 	{ "name": "gmem_dense_feature_map", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_dense_feature_map", "role": "default" }} , 
 	{ "name": "gmem_dense_feature_map_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_dense_feature_map_c", "role": "din" }} , 
 	{ "name": "gmem_dense_feature_map_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "gmem_dense_feature_map_c", "role": "num_data_valid" }} , 
 	{ "name": "gmem_dense_feature_map_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "gmem_dense_feature_map_c", "role": "fifo_cap" }} , 
 	{ "name": "gmem_dense_feature_map_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dense_feature_map_c", "role": "full_n" }} , 
 	{ "name": "gmem_dense_feature_map_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dense_feature_map_c", "role": "write" }} , 
 	{ "name": "gmem_softmax_feature_map", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_softmax_feature_map", "role": "default" }} , 
 	{ "name": "gmem_softmax_feature_map_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_softmax_feature_map_c", "role": "din" }} , 
 	{ "name": "gmem_softmax_feature_map_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "gmem_softmax_feature_map_c", "role": "num_data_valid" }} , 
 	{ "name": "gmem_softmax_feature_map_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "gmem_softmax_feature_map_c", "role": "fifo_cap" }} , 
 	{ "name": "gmem_softmax_feature_map_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_softmax_feature_map_c", "role": "full_n" }} , 
 	{ "name": "gmem_softmax_feature_map_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_softmax_feature_map_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem_conv2d_32_feature_map", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_conv2d_32_feature_map_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "gmem_conv2d_32_feature_map_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_maxp2d_32_feature_map", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_maxp2d_32_feature_map_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "gmem_maxp2d_32_feature_map_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_conv2d_64_feature_map", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_conv2d_64_feature_map_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "gmem_conv2d_64_feature_map_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_maxp2d_64_feature_map", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_maxp2d_64_feature_map_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "gmem_maxp2d_64_feature_map_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_dense_feature_map", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_dense_feature_map_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "gmem_dense_feature_map_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_softmax_feature_map", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_softmax_feature_map_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "gmem_softmax_feature_map_c_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	entry_proc {
		gmem_conv2d_32_feature_map {Type I LastRead 0 FirstWrite -1}
		gmem_conv2d_32_feature_map_c {Type O LastRead -1 FirstWrite 0}
		gmem_maxp2d_32_feature_map {Type I LastRead 0 FirstWrite -1}
		gmem_maxp2d_32_feature_map_c {Type O LastRead -1 FirstWrite 0}
		gmem_conv2d_64_feature_map {Type I LastRead 0 FirstWrite -1}
		gmem_conv2d_64_feature_map_c {Type O LastRead -1 FirstWrite 0}
		gmem_maxp2d_64_feature_map {Type I LastRead 0 FirstWrite -1}
		gmem_maxp2d_64_feature_map_c {Type O LastRead -1 FirstWrite 0}
		gmem_dense_feature_map {Type I LastRead 0 FirstWrite -1}
		gmem_dense_feature_map_c {Type O LastRead -1 FirstWrite 0}
		gmem_softmax_feature_map {Type I LastRead 0 FirstWrite -1}
		gmem_softmax_feature_map_c {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_conv2d_32_feature_map { ap_none {  { gmem_conv2d_32_feature_map in_data 0 64 } } }
	gmem_conv2d_32_feature_map_c { ap_fifo {  { gmem_conv2d_32_feature_map_c_din fifo_port_we 1 64 }  { gmem_conv2d_32_feature_map_c_num_data_valid fifo_status_num_data_valid 0 5 }  { gmem_conv2d_32_feature_map_c_fifo_cap fifo_update 0 5 }  { gmem_conv2d_32_feature_map_c_full_n fifo_status 0 1 }  { gmem_conv2d_32_feature_map_c_write fifo_data 1 1 } } }
	gmem_maxp2d_32_feature_map { ap_none {  { gmem_maxp2d_32_feature_map in_data 0 64 } } }
	gmem_maxp2d_32_feature_map_c { ap_fifo {  { gmem_maxp2d_32_feature_map_c_din fifo_port_we 1 64 }  { gmem_maxp2d_32_feature_map_c_num_data_valid fifo_status_num_data_valid 0 5 }  { gmem_maxp2d_32_feature_map_c_fifo_cap fifo_update 0 5 }  { gmem_maxp2d_32_feature_map_c_full_n fifo_status 0 1 }  { gmem_maxp2d_32_feature_map_c_write fifo_data 1 1 } } }
	gmem_conv2d_64_feature_map { ap_none {  { gmem_conv2d_64_feature_map in_data 0 64 } } }
	gmem_conv2d_64_feature_map_c { ap_fifo {  { gmem_conv2d_64_feature_map_c_din fifo_port_we 1 64 }  { gmem_conv2d_64_feature_map_c_num_data_valid fifo_status_num_data_valid 0 5 }  { gmem_conv2d_64_feature_map_c_fifo_cap fifo_update 0 5 }  { gmem_conv2d_64_feature_map_c_full_n fifo_status 0 1 }  { gmem_conv2d_64_feature_map_c_write fifo_data 1 1 } } }
	gmem_maxp2d_64_feature_map { ap_none {  { gmem_maxp2d_64_feature_map in_data 0 64 } } }
	gmem_maxp2d_64_feature_map_c { ap_fifo {  { gmem_maxp2d_64_feature_map_c_din fifo_port_we 1 64 }  { gmem_maxp2d_64_feature_map_c_num_data_valid fifo_status_num_data_valid 0 5 }  { gmem_maxp2d_64_feature_map_c_fifo_cap fifo_update 0 5 }  { gmem_maxp2d_64_feature_map_c_full_n fifo_status 0 1 }  { gmem_maxp2d_64_feature_map_c_write fifo_data 1 1 } } }
	gmem_dense_feature_map { ap_none {  { gmem_dense_feature_map in_data 0 64 } } }
	gmem_dense_feature_map_c { ap_fifo {  { gmem_dense_feature_map_c_din fifo_port_we 1 64 }  { gmem_dense_feature_map_c_num_data_valid fifo_status_num_data_valid 0 5 }  { gmem_dense_feature_map_c_fifo_cap fifo_update 0 5 }  { gmem_dense_feature_map_c_full_n fifo_status 0 1 }  { gmem_dense_feature_map_c_write fifo_data 1 1 } } }
	gmem_softmax_feature_map { ap_none {  { gmem_softmax_feature_map in_data 0 64 } } }
	gmem_softmax_feature_map_c { ap_fifo {  { gmem_softmax_feature_map_c_din fifo_port_we 1 64 }  { gmem_softmax_feature_map_c_num_data_valid fifo_status_num_data_valid 0 5 }  { gmem_softmax_feature_map_c_fifo_cap fifo_update 0 5 }  { gmem_softmax_feature_map_c_full_n fifo_status 0 1 }  { gmem_softmax_feature_map_c_write fifo_data 1 1 } } }
}
