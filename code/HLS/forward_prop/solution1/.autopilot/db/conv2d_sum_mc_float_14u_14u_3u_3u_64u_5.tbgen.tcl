set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_5
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.5}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_5 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_5 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_5", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_5", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_5_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_5_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_5_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_5_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_5_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_5_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_5_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_5_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_5_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_5_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_5", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_5_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_5", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_5_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_5", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_5", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_5", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_5_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_5", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_5_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_5", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_5_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_5", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_5_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_5", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_5_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_5", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_5",
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
			{"Name" : "conv2d_64_padded_window_stream_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_5_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_5", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_5_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_5", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_5_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_5_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_5", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2301", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2302", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2303", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2304", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2305", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2306", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2307", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2308", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_5", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_2309", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2310", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2311", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2312", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2313", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2314", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2315", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2316", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2317", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2318", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2319", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2320", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2321", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2322", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2323", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2324", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2325", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2326", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2327", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2328", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2329", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2330", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2331", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2332", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2333", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2334", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2335", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2336", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2337", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2338", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2339", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2340", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2341", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2342", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2343", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2344", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2345", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2346", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2347", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2348", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2349", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2350", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2351", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2352", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2353", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2354", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2355", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2356", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2357", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2358", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2359", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2360", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2361", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2362", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2363", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2364", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2365", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2366", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2367", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2368", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2369", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2370", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2371", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2372", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2373", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2374", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2375", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2376", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2377", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2378", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2379", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2380", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2381", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2382", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2383", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2384", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2385", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2386", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2387", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2388", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2389", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2390", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2391", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2392", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2393", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2394", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2395", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2396", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2397", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2398", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2399", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2400", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2401", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2402", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2403", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2404", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2405", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2406", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2407", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2408", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2409", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2410", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2411", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2412", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2413", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2414", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2415", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2416", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2417", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2418", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2419", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2420", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2421", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2422", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2423", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2424", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2425", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2426", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2427", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2428", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2429", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2430", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2431", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2432", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2433", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2434", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2435", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2436", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2437", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2438", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2439", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2440", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2441", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2442", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2443", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2444", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2445", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2446", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2447", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2448", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2449", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2450", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2451", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2452", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2453", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2454", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2455", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2456", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2457", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2458", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2459", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2460", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2461", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2462", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2463", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2464", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2465", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2466", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2467", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2468", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2469", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2470", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2471", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2472", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2473", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2474", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2475", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2476", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2477", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2478", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2479", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2480", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2481", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2482", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2483", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2484", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2485", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2486", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2487", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2488", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2489", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2490", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2491", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2492", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2493", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2494", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2495", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2496", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2497", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2498", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2499", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2500", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2501", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2502", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2503", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2504", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2505", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2506", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2507", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2508", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2509", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2510", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2511", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2512", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2513", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2514", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2515", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2516", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2517", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2518", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2519", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2520", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2521", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2522", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2523", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2524", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2525", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2526", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2527", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2528", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2529", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2530", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2531", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2532", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2533", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2534", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2535", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2536", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2537", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2538", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2539", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2540", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2541", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2542", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2543", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2544", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2545", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2546", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2547", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2548", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2549", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2550", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2551", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2552", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2553", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2554", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2555", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2556", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2557", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2558", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2559", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2560", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2561", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2562", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2563", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2564", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2565", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2566", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2567", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2568", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2569", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2570", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2571", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2572", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2573", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2574", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2575", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2576", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2577", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2578", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2579", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2580", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2581", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2582", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2583", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2584", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2585", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2586", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2587", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2588", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2589", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2590", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2591", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2592", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2593", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2594", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2595", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2596", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2597", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2598", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2599", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2600", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2601", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2602", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2603", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2604", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2605", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2606", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2607", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2608", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2609", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2610", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2611", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2612", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2613", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2614", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2615", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2616", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2617", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2618", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2619", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2620", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2621", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2622", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2623", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2624", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2625", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2626", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2627", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2628", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2629", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2630", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2631", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2632", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2633", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2634", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2635", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2636", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2637", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2638", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2639", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2640", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2641", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2642", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2643", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2644", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2645", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2646", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2647", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2648", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2649", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2650", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2651", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2652", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2653", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2654", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2655", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2656", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2657", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2658", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2659", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2660", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2661", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2662", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2663", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2664", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2665", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2666", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2667", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2668", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2669", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2670", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2671", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2672", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2673", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2674", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2675", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2676", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2677", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2678", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2679", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2680", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2681", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2682", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2683", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2684", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2685", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2686", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2687", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2688", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2689", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2690", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2691", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2692", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2693", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2694", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2695", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2696", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2697", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2698", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2699", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2700", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2701", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2702", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2703", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2704", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2705", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2706", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2707", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2708", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2709", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2710", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2711", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2712", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2713", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2714", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2715", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2716", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2717", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2718", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2719", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2720", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2721", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2722", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2723", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2724", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2725", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2726", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2727", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2728", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2729", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2730", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2731", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2732", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2733", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2734", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2735", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2736", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2737", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2738", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2739", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2740", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2741", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2742", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2743", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2744", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2745", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2746", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2747", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2748", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2749", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2750", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2751", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2752", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2753", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2754", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2755", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2756", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2757", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2758", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2759", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2760", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2761", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2762", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2763", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2764", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2765", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2766", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2767", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2768", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2769", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2770", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2771", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2772", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2773", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2774", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2775", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2776", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2777", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2778", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2779", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2780", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2781", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2782", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2783", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2784", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2785", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2786", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2787", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2788", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2789", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2790", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2791", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2792", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2793", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2794", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2795", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2796", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2797", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2798", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2799", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2800", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2801", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2802", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2803", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2804", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2805", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2806", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2807", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2808", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2809", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2810", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2811", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2812", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2813", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2814", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2815", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2816", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2817", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2818", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2819", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2820", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2821", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2822", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2823", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2824", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2825", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2826", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2827", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2828", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2829", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2830", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2831", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2832", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2833", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2834", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2835", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2836", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2837", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2838", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2839", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2840", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2841", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2842", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2843", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2844", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2845", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2846", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2847", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2848", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2849", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2850", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2851", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2852", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2853", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2854", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2855", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2856", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2857", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2858", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2859", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2860", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2861", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2862", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2863", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2864", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2865", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2866", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2867", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2868", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2869", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2870", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2871", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2872", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2873", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2874", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_2875", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_5_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U3546", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_5_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U3547", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_5_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U3548", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_5_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U3549", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_5_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U3550", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_5_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U3551", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_5_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U3552", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_5_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U3553", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_5_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U3554", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_5_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U3555", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_5_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U3556", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_5_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U3557", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_5_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U3558", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_5_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U3559", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_5_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U3560", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_5_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U3561", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_5_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U3562", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_5_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_5 {
		conv2d_64_padded_window_stream_5 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_5 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_5_Pipeline_inputs {
		conv2d_64_padded_window_stream_5 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_2301 {Type I LastRead 0 FirstWrite -1}
		weights_load_2302 {Type I LastRead 0 FirstWrite -1}
		weights_load_2303 {Type I LastRead 0 FirstWrite -1}
		weights_load_2304 {Type I LastRead 0 FirstWrite -1}
		weights_load_2305 {Type I LastRead 0 FirstWrite -1}
		weights_load_2306 {Type I LastRead 0 FirstWrite -1}
		weights_load_2307 {Type I LastRead 0 FirstWrite -1}
		weights_load_2308 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_5 {Type O LastRead -1 FirstWrite 16}
		weights_load_2309 {Type I LastRead 0 FirstWrite -1}
		weights_load_2310 {Type I LastRead 0 FirstWrite -1}
		weights_load_2311 {Type I LastRead 0 FirstWrite -1}
		weights_load_2312 {Type I LastRead 0 FirstWrite -1}
		weights_load_2313 {Type I LastRead 0 FirstWrite -1}
		weights_load_2314 {Type I LastRead 0 FirstWrite -1}
		weights_load_2315 {Type I LastRead 0 FirstWrite -1}
		weights_load_2316 {Type I LastRead 0 FirstWrite -1}
		weights_load_2317 {Type I LastRead 0 FirstWrite -1}
		weights_load_2318 {Type I LastRead 0 FirstWrite -1}
		weights_load_2319 {Type I LastRead 0 FirstWrite -1}
		weights_load_2320 {Type I LastRead 0 FirstWrite -1}
		weights_load_2321 {Type I LastRead 0 FirstWrite -1}
		weights_load_2322 {Type I LastRead 0 FirstWrite -1}
		weights_load_2323 {Type I LastRead 0 FirstWrite -1}
		weights_load_2324 {Type I LastRead 0 FirstWrite -1}
		weights_load_2325 {Type I LastRead 0 FirstWrite -1}
		weights_load_2326 {Type I LastRead 0 FirstWrite -1}
		weights_load_2327 {Type I LastRead 0 FirstWrite -1}
		weights_load_2328 {Type I LastRead 0 FirstWrite -1}
		weights_load_2329 {Type I LastRead 0 FirstWrite -1}
		weights_load_2330 {Type I LastRead 0 FirstWrite -1}
		weights_load_2331 {Type I LastRead 0 FirstWrite -1}
		weights_load_2332 {Type I LastRead 0 FirstWrite -1}
		weights_load_2333 {Type I LastRead 0 FirstWrite -1}
		weights_load_2334 {Type I LastRead 0 FirstWrite -1}
		weights_load_2335 {Type I LastRead 0 FirstWrite -1}
		weights_load_2336 {Type I LastRead 0 FirstWrite -1}
		weights_load_2337 {Type I LastRead 0 FirstWrite -1}
		weights_load_2338 {Type I LastRead 0 FirstWrite -1}
		weights_load_2339 {Type I LastRead 0 FirstWrite -1}
		weights_load_2340 {Type I LastRead 0 FirstWrite -1}
		weights_load_2341 {Type I LastRead 0 FirstWrite -1}
		weights_load_2342 {Type I LastRead 0 FirstWrite -1}
		weights_load_2343 {Type I LastRead 0 FirstWrite -1}
		weights_load_2344 {Type I LastRead 0 FirstWrite -1}
		weights_load_2345 {Type I LastRead 0 FirstWrite -1}
		weights_load_2346 {Type I LastRead 0 FirstWrite -1}
		weights_load_2347 {Type I LastRead 0 FirstWrite -1}
		weights_load_2348 {Type I LastRead 0 FirstWrite -1}
		weights_load_2349 {Type I LastRead 0 FirstWrite -1}
		weights_load_2350 {Type I LastRead 0 FirstWrite -1}
		weights_load_2351 {Type I LastRead 0 FirstWrite -1}
		weights_load_2352 {Type I LastRead 0 FirstWrite -1}
		weights_load_2353 {Type I LastRead 0 FirstWrite -1}
		weights_load_2354 {Type I LastRead 0 FirstWrite -1}
		weights_load_2355 {Type I LastRead 0 FirstWrite -1}
		weights_load_2356 {Type I LastRead 0 FirstWrite -1}
		weights_load_2357 {Type I LastRead 0 FirstWrite -1}
		weights_load_2358 {Type I LastRead 0 FirstWrite -1}
		weights_load_2359 {Type I LastRead 0 FirstWrite -1}
		weights_load_2360 {Type I LastRead 0 FirstWrite -1}
		weights_load_2361 {Type I LastRead 0 FirstWrite -1}
		weights_load_2362 {Type I LastRead 0 FirstWrite -1}
		weights_load_2363 {Type I LastRead 0 FirstWrite -1}
		weights_load_2364 {Type I LastRead 0 FirstWrite -1}
		weights_load_2365 {Type I LastRead 0 FirstWrite -1}
		weights_load_2366 {Type I LastRead 0 FirstWrite -1}
		weights_load_2367 {Type I LastRead 0 FirstWrite -1}
		weights_load_2368 {Type I LastRead 0 FirstWrite -1}
		weights_load_2369 {Type I LastRead 0 FirstWrite -1}
		weights_load_2370 {Type I LastRead 0 FirstWrite -1}
		weights_load_2371 {Type I LastRead 0 FirstWrite -1}
		weights_load_2372 {Type I LastRead 0 FirstWrite -1}
		weights_load_2373 {Type I LastRead 0 FirstWrite -1}
		weights_load_2374 {Type I LastRead 0 FirstWrite -1}
		weights_load_2375 {Type I LastRead 0 FirstWrite -1}
		weights_load_2376 {Type I LastRead 0 FirstWrite -1}
		weights_load_2377 {Type I LastRead 0 FirstWrite -1}
		weights_load_2378 {Type I LastRead 0 FirstWrite -1}
		weights_load_2379 {Type I LastRead 0 FirstWrite -1}
		weights_load_2380 {Type I LastRead 0 FirstWrite -1}
		weights_load_2381 {Type I LastRead 0 FirstWrite -1}
		weights_load_2382 {Type I LastRead 0 FirstWrite -1}
		weights_load_2383 {Type I LastRead 0 FirstWrite -1}
		weights_load_2384 {Type I LastRead 0 FirstWrite -1}
		weights_load_2385 {Type I LastRead 0 FirstWrite -1}
		weights_load_2386 {Type I LastRead 0 FirstWrite -1}
		weights_load_2387 {Type I LastRead 0 FirstWrite -1}
		weights_load_2388 {Type I LastRead 0 FirstWrite -1}
		weights_load_2389 {Type I LastRead 0 FirstWrite -1}
		weights_load_2390 {Type I LastRead 0 FirstWrite -1}
		weights_load_2391 {Type I LastRead 0 FirstWrite -1}
		weights_load_2392 {Type I LastRead 0 FirstWrite -1}
		weights_load_2393 {Type I LastRead 0 FirstWrite -1}
		weights_load_2394 {Type I LastRead 0 FirstWrite -1}
		weights_load_2395 {Type I LastRead 0 FirstWrite -1}
		weights_load_2396 {Type I LastRead 0 FirstWrite -1}
		weights_load_2397 {Type I LastRead 0 FirstWrite -1}
		weights_load_2398 {Type I LastRead 0 FirstWrite -1}
		weights_load_2399 {Type I LastRead 0 FirstWrite -1}
		weights_load_2400 {Type I LastRead 0 FirstWrite -1}
		weights_load_2401 {Type I LastRead 0 FirstWrite -1}
		weights_load_2402 {Type I LastRead 0 FirstWrite -1}
		weights_load_2403 {Type I LastRead 0 FirstWrite -1}
		weights_load_2404 {Type I LastRead 0 FirstWrite -1}
		weights_load_2405 {Type I LastRead 0 FirstWrite -1}
		weights_load_2406 {Type I LastRead 0 FirstWrite -1}
		weights_load_2407 {Type I LastRead 0 FirstWrite -1}
		weights_load_2408 {Type I LastRead 0 FirstWrite -1}
		weights_load_2409 {Type I LastRead 0 FirstWrite -1}
		weights_load_2410 {Type I LastRead 0 FirstWrite -1}
		weights_load_2411 {Type I LastRead 0 FirstWrite -1}
		weights_load_2412 {Type I LastRead 0 FirstWrite -1}
		weights_load_2413 {Type I LastRead 0 FirstWrite -1}
		weights_load_2414 {Type I LastRead 0 FirstWrite -1}
		weights_load_2415 {Type I LastRead 0 FirstWrite -1}
		weights_load_2416 {Type I LastRead 0 FirstWrite -1}
		weights_load_2417 {Type I LastRead 0 FirstWrite -1}
		weights_load_2418 {Type I LastRead 0 FirstWrite -1}
		weights_load_2419 {Type I LastRead 0 FirstWrite -1}
		weights_load_2420 {Type I LastRead 0 FirstWrite -1}
		weights_load_2421 {Type I LastRead 0 FirstWrite -1}
		weights_load_2422 {Type I LastRead 0 FirstWrite -1}
		weights_load_2423 {Type I LastRead 0 FirstWrite -1}
		weights_load_2424 {Type I LastRead 0 FirstWrite -1}
		weights_load_2425 {Type I LastRead 0 FirstWrite -1}
		weights_load_2426 {Type I LastRead 0 FirstWrite -1}
		weights_load_2427 {Type I LastRead 0 FirstWrite -1}
		weights_load_2428 {Type I LastRead 0 FirstWrite -1}
		weights_load_2429 {Type I LastRead 0 FirstWrite -1}
		weights_load_2430 {Type I LastRead 0 FirstWrite -1}
		weights_load_2431 {Type I LastRead 0 FirstWrite -1}
		weights_load_2432 {Type I LastRead 0 FirstWrite -1}
		weights_load_2433 {Type I LastRead 0 FirstWrite -1}
		weights_load_2434 {Type I LastRead 0 FirstWrite -1}
		weights_load_2435 {Type I LastRead 0 FirstWrite -1}
		weights_load_2436 {Type I LastRead 0 FirstWrite -1}
		weights_load_2437 {Type I LastRead 0 FirstWrite -1}
		weights_load_2438 {Type I LastRead 0 FirstWrite -1}
		weights_load_2439 {Type I LastRead 0 FirstWrite -1}
		weights_load_2440 {Type I LastRead 0 FirstWrite -1}
		weights_load_2441 {Type I LastRead 0 FirstWrite -1}
		weights_load_2442 {Type I LastRead 0 FirstWrite -1}
		weights_load_2443 {Type I LastRead 0 FirstWrite -1}
		weights_load_2444 {Type I LastRead 0 FirstWrite -1}
		weights_load_2445 {Type I LastRead 0 FirstWrite -1}
		weights_load_2446 {Type I LastRead 0 FirstWrite -1}
		weights_load_2447 {Type I LastRead 0 FirstWrite -1}
		weights_load_2448 {Type I LastRead 0 FirstWrite -1}
		weights_load_2449 {Type I LastRead 0 FirstWrite -1}
		weights_load_2450 {Type I LastRead 0 FirstWrite -1}
		weights_load_2451 {Type I LastRead 0 FirstWrite -1}
		weights_load_2452 {Type I LastRead 0 FirstWrite -1}
		weights_load_2453 {Type I LastRead 0 FirstWrite -1}
		weights_load_2454 {Type I LastRead 0 FirstWrite -1}
		weights_load_2455 {Type I LastRead 0 FirstWrite -1}
		weights_load_2456 {Type I LastRead 0 FirstWrite -1}
		weights_load_2457 {Type I LastRead 0 FirstWrite -1}
		weights_load_2458 {Type I LastRead 0 FirstWrite -1}
		weights_load_2459 {Type I LastRead 0 FirstWrite -1}
		weights_load_2460 {Type I LastRead 0 FirstWrite -1}
		weights_load_2461 {Type I LastRead 0 FirstWrite -1}
		weights_load_2462 {Type I LastRead 0 FirstWrite -1}
		weights_load_2463 {Type I LastRead 0 FirstWrite -1}
		weights_load_2464 {Type I LastRead 0 FirstWrite -1}
		weights_load_2465 {Type I LastRead 0 FirstWrite -1}
		weights_load_2466 {Type I LastRead 0 FirstWrite -1}
		weights_load_2467 {Type I LastRead 0 FirstWrite -1}
		weights_load_2468 {Type I LastRead 0 FirstWrite -1}
		weights_load_2469 {Type I LastRead 0 FirstWrite -1}
		weights_load_2470 {Type I LastRead 0 FirstWrite -1}
		weights_load_2471 {Type I LastRead 0 FirstWrite -1}
		weights_load_2472 {Type I LastRead 0 FirstWrite -1}
		weights_load_2473 {Type I LastRead 0 FirstWrite -1}
		weights_load_2474 {Type I LastRead 0 FirstWrite -1}
		weights_load_2475 {Type I LastRead 0 FirstWrite -1}
		weights_load_2476 {Type I LastRead 0 FirstWrite -1}
		weights_load_2477 {Type I LastRead 0 FirstWrite -1}
		weights_load_2478 {Type I LastRead 0 FirstWrite -1}
		weights_load_2479 {Type I LastRead 0 FirstWrite -1}
		weights_load_2480 {Type I LastRead 0 FirstWrite -1}
		weights_load_2481 {Type I LastRead 0 FirstWrite -1}
		weights_load_2482 {Type I LastRead 0 FirstWrite -1}
		weights_load_2483 {Type I LastRead 0 FirstWrite -1}
		weights_load_2484 {Type I LastRead 0 FirstWrite -1}
		weights_load_2485 {Type I LastRead 0 FirstWrite -1}
		weights_load_2486 {Type I LastRead 0 FirstWrite -1}
		weights_load_2487 {Type I LastRead 0 FirstWrite -1}
		weights_load_2488 {Type I LastRead 0 FirstWrite -1}
		weights_load_2489 {Type I LastRead 0 FirstWrite -1}
		weights_load_2490 {Type I LastRead 0 FirstWrite -1}
		weights_load_2491 {Type I LastRead 0 FirstWrite -1}
		weights_load_2492 {Type I LastRead 0 FirstWrite -1}
		weights_load_2493 {Type I LastRead 0 FirstWrite -1}
		weights_load_2494 {Type I LastRead 0 FirstWrite -1}
		weights_load_2495 {Type I LastRead 0 FirstWrite -1}
		weights_load_2496 {Type I LastRead 0 FirstWrite -1}
		weights_load_2497 {Type I LastRead 0 FirstWrite -1}
		weights_load_2498 {Type I LastRead 0 FirstWrite -1}
		weights_load_2499 {Type I LastRead 0 FirstWrite -1}
		weights_load_2500 {Type I LastRead 0 FirstWrite -1}
		weights_load_2501 {Type I LastRead 0 FirstWrite -1}
		weights_load_2502 {Type I LastRead 0 FirstWrite -1}
		weights_load_2503 {Type I LastRead 0 FirstWrite -1}
		weights_load_2504 {Type I LastRead 0 FirstWrite -1}
		weights_load_2505 {Type I LastRead 0 FirstWrite -1}
		weights_load_2506 {Type I LastRead 0 FirstWrite -1}
		weights_load_2507 {Type I LastRead 0 FirstWrite -1}
		weights_load_2508 {Type I LastRead 0 FirstWrite -1}
		weights_load_2509 {Type I LastRead 0 FirstWrite -1}
		weights_load_2510 {Type I LastRead 0 FirstWrite -1}
		weights_load_2511 {Type I LastRead 0 FirstWrite -1}
		weights_load_2512 {Type I LastRead 0 FirstWrite -1}
		weights_load_2513 {Type I LastRead 0 FirstWrite -1}
		weights_load_2514 {Type I LastRead 0 FirstWrite -1}
		weights_load_2515 {Type I LastRead 0 FirstWrite -1}
		weights_load_2516 {Type I LastRead 0 FirstWrite -1}
		weights_load_2517 {Type I LastRead 0 FirstWrite -1}
		weights_load_2518 {Type I LastRead 0 FirstWrite -1}
		weights_load_2519 {Type I LastRead 0 FirstWrite -1}
		weights_load_2520 {Type I LastRead 0 FirstWrite -1}
		weights_load_2521 {Type I LastRead 0 FirstWrite -1}
		weights_load_2522 {Type I LastRead 0 FirstWrite -1}
		weights_load_2523 {Type I LastRead 0 FirstWrite -1}
		weights_load_2524 {Type I LastRead 0 FirstWrite -1}
		weights_load_2525 {Type I LastRead 0 FirstWrite -1}
		weights_load_2526 {Type I LastRead 0 FirstWrite -1}
		weights_load_2527 {Type I LastRead 0 FirstWrite -1}
		weights_load_2528 {Type I LastRead 0 FirstWrite -1}
		weights_load_2529 {Type I LastRead 0 FirstWrite -1}
		weights_load_2530 {Type I LastRead 0 FirstWrite -1}
		weights_load_2531 {Type I LastRead 0 FirstWrite -1}
		weights_load_2532 {Type I LastRead 0 FirstWrite -1}
		weights_load_2533 {Type I LastRead 0 FirstWrite -1}
		weights_load_2534 {Type I LastRead 0 FirstWrite -1}
		weights_load_2535 {Type I LastRead 0 FirstWrite -1}
		weights_load_2536 {Type I LastRead 0 FirstWrite -1}
		weights_load_2537 {Type I LastRead 0 FirstWrite -1}
		weights_load_2538 {Type I LastRead 0 FirstWrite -1}
		weights_load_2539 {Type I LastRead 0 FirstWrite -1}
		weights_load_2540 {Type I LastRead 0 FirstWrite -1}
		weights_load_2541 {Type I LastRead 0 FirstWrite -1}
		weights_load_2542 {Type I LastRead 0 FirstWrite -1}
		weights_load_2543 {Type I LastRead 0 FirstWrite -1}
		weights_load_2544 {Type I LastRead 0 FirstWrite -1}
		weights_load_2545 {Type I LastRead 0 FirstWrite -1}
		weights_load_2546 {Type I LastRead 0 FirstWrite -1}
		weights_load_2547 {Type I LastRead 0 FirstWrite -1}
		weights_load_2548 {Type I LastRead 0 FirstWrite -1}
		weights_load_2549 {Type I LastRead 0 FirstWrite -1}
		weights_load_2550 {Type I LastRead 0 FirstWrite -1}
		weights_load_2551 {Type I LastRead 0 FirstWrite -1}
		weights_load_2552 {Type I LastRead 0 FirstWrite -1}
		weights_load_2553 {Type I LastRead 0 FirstWrite -1}
		weights_load_2554 {Type I LastRead 0 FirstWrite -1}
		weights_load_2555 {Type I LastRead 0 FirstWrite -1}
		weights_load_2556 {Type I LastRead 0 FirstWrite -1}
		weights_load_2557 {Type I LastRead 0 FirstWrite -1}
		weights_load_2558 {Type I LastRead 0 FirstWrite -1}
		weights_load_2559 {Type I LastRead 0 FirstWrite -1}
		weights_load_2560 {Type I LastRead 0 FirstWrite -1}
		weights_load_2561 {Type I LastRead 0 FirstWrite -1}
		weights_load_2562 {Type I LastRead 0 FirstWrite -1}
		weights_load_2563 {Type I LastRead 0 FirstWrite -1}
		weights_load_2564 {Type I LastRead 0 FirstWrite -1}
		weights_load_2565 {Type I LastRead 0 FirstWrite -1}
		weights_load_2566 {Type I LastRead 0 FirstWrite -1}
		weights_load_2567 {Type I LastRead 0 FirstWrite -1}
		weights_load_2568 {Type I LastRead 0 FirstWrite -1}
		weights_load_2569 {Type I LastRead 0 FirstWrite -1}
		weights_load_2570 {Type I LastRead 0 FirstWrite -1}
		weights_load_2571 {Type I LastRead 0 FirstWrite -1}
		weights_load_2572 {Type I LastRead 0 FirstWrite -1}
		weights_load_2573 {Type I LastRead 0 FirstWrite -1}
		weights_load_2574 {Type I LastRead 0 FirstWrite -1}
		weights_load_2575 {Type I LastRead 0 FirstWrite -1}
		weights_load_2576 {Type I LastRead 0 FirstWrite -1}
		weights_load_2577 {Type I LastRead 0 FirstWrite -1}
		weights_load_2578 {Type I LastRead 0 FirstWrite -1}
		weights_load_2579 {Type I LastRead 0 FirstWrite -1}
		weights_load_2580 {Type I LastRead 0 FirstWrite -1}
		weights_load_2581 {Type I LastRead 0 FirstWrite -1}
		weights_load_2582 {Type I LastRead 0 FirstWrite -1}
		weights_load_2583 {Type I LastRead 0 FirstWrite -1}
		weights_load_2584 {Type I LastRead 0 FirstWrite -1}
		weights_load_2585 {Type I LastRead 0 FirstWrite -1}
		weights_load_2586 {Type I LastRead 0 FirstWrite -1}
		weights_load_2587 {Type I LastRead 0 FirstWrite -1}
		weights_load_2588 {Type I LastRead 0 FirstWrite -1}
		weights_load_2589 {Type I LastRead 0 FirstWrite -1}
		weights_load_2590 {Type I LastRead 0 FirstWrite -1}
		weights_load_2591 {Type I LastRead 0 FirstWrite -1}
		weights_load_2592 {Type I LastRead 0 FirstWrite -1}
		weights_load_2593 {Type I LastRead 0 FirstWrite -1}
		weights_load_2594 {Type I LastRead 0 FirstWrite -1}
		weights_load_2595 {Type I LastRead 0 FirstWrite -1}
		weights_load_2596 {Type I LastRead 0 FirstWrite -1}
		weights_load_2597 {Type I LastRead 0 FirstWrite -1}
		weights_load_2598 {Type I LastRead 0 FirstWrite -1}
		weights_load_2599 {Type I LastRead 0 FirstWrite -1}
		weights_load_2600 {Type I LastRead 0 FirstWrite -1}
		weights_load_2601 {Type I LastRead 0 FirstWrite -1}
		weights_load_2602 {Type I LastRead 0 FirstWrite -1}
		weights_load_2603 {Type I LastRead 0 FirstWrite -1}
		weights_load_2604 {Type I LastRead 0 FirstWrite -1}
		weights_load_2605 {Type I LastRead 0 FirstWrite -1}
		weights_load_2606 {Type I LastRead 0 FirstWrite -1}
		weights_load_2607 {Type I LastRead 0 FirstWrite -1}
		weights_load_2608 {Type I LastRead 0 FirstWrite -1}
		weights_load_2609 {Type I LastRead 0 FirstWrite -1}
		weights_load_2610 {Type I LastRead 0 FirstWrite -1}
		weights_load_2611 {Type I LastRead 0 FirstWrite -1}
		weights_load_2612 {Type I LastRead 0 FirstWrite -1}
		weights_load_2613 {Type I LastRead 0 FirstWrite -1}
		weights_load_2614 {Type I LastRead 0 FirstWrite -1}
		weights_load_2615 {Type I LastRead 0 FirstWrite -1}
		weights_load_2616 {Type I LastRead 0 FirstWrite -1}
		weights_load_2617 {Type I LastRead 0 FirstWrite -1}
		weights_load_2618 {Type I LastRead 0 FirstWrite -1}
		weights_load_2619 {Type I LastRead 0 FirstWrite -1}
		weights_load_2620 {Type I LastRead 0 FirstWrite -1}
		weights_load_2621 {Type I LastRead 0 FirstWrite -1}
		weights_load_2622 {Type I LastRead 0 FirstWrite -1}
		weights_load_2623 {Type I LastRead 0 FirstWrite -1}
		weights_load_2624 {Type I LastRead 0 FirstWrite -1}
		weights_load_2625 {Type I LastRead 0 FirstWrite -1}
		weights_load_2626 {Type I LastRead 0 FirstWrite -1}
		weights_load_2627 {Type I LastRead 0 FirstWrite -1}
		weights_load_2628 {Type I LastRead 0 FirstWrite -1}
		weights_load_2629 {Type I LastRead 0 FirstWrite -1}
		weights_load_2630 {Type I LastRead 0 FirstWrite -1}
		weights_load_2631 {Type I LastRead 0 FirstWrite -1}
		weights_load_2632 {Type I LastRead 0 FirstWrite -1}
		weights_load_2633 {Type I LastRead 0 FirstWrite -1}
		weights_load_2634 {Type I LastRead 0 FirstWrite -1}
		weights_load_2635 {Type I LastRead 0 FirstWrite -1}
		weights_load_2636 {Type I LastRead 0 FirstWrite -1}
		weights_load_2637 {Type I LastRead 0 FirstWrite -1}
		weights_load_2638 {Type I LastRead 0 FirstWrite -1}
		weights_load_2639 {Type I LastRead 0 FirstWrite -1}
		weights_load_2640 {Type I LastRead 0 FirstWrite -1}
		weights_load_2641 {Type I LastRead 0 FirstWrite -1}
		weights_load_2642 {Type I LastRead 0 FirstWrite -1}
		weights_load_2643 {Type I LastRead 0 FirstWrite -1}
		weights_load_2644 {Type I LastRead 0 FirstWrite -1}
		weights_load_2645 {Type I LastRead 0 FirstWrite -1}
		weights_load_2646 {Type I LastRead 0 FirstWrite -1}
		weights_load_2647 {Type I LastRead 0 FirstWrite -1}
		weights_load_2648 {Type I LastRead 0 FirstWrite -1}
		weights_load_2649 {Type I LastRead 0 FirstWrite -1}
		weights_load_2650 {Type I LastRead 0 FirstWrite -1}
		weights_load_2651 {Type I LastRead 0 FirstWrite -1}
		weights_load_2652 {Type I LastRead 0 FirstWrite -1}
		weights_load_2653 {Type I LastRead 0 FirstWrite -1}
		weights_load_2654 {Type I LastRead 0 FirstWrite -1}
		weights_load_2655 {Type I LastRead 0 FirstWrite -1}
		weights_load_2656 {Type I LastRead 0 FirstWrite -1}
		weights_load_2657 {Type I LastRead 0 FirstWrite -1}
		weights_load_2658 {Type I LastRead 0 FirstWrite -1}
		weights_load_2659 {Type I LastRead 0 FirstWrite -1}
		weights_load_2660 {Type I LastRead 0 FirstWrite -1}
		weights_load_2661 {Type I LastRead 0 FirstWrite -1}
		weights_load_2662 {Type I LastRead 0 FirstWrite -1}
		weights_load_2663 {Type I LastRead 0 FirstWrite -1}
		weights_load_2664 {Type I LastRead 0 FirstWrite -1}
		weights_load_2665 {Type I LastRead 0 FirstWrite -1}
		weights_load_2666 {Type I LastRead 0 FirstWrite -1}
		weights_load_2667 {Type I LastRead 0 FirstWrite -1}
		weights_load_2668 {Type I LastRead 0 FirstWrite -1}
		weights_load_2669 {Type I LastRead 0 FirstWrite -1}
		weights_load_2670 {Type I LastRead 0 FirstWrite -1}
		weights_load_2671 {Type I LastRead 0 FirstWrite -1}
		weights_load_2672 {Type I LastRead 0 FirstWrite -1}
		weights_load_2673 {Type I LastRead 0 FirstWrite -1}
		weights_load_2674 {Type I LastRead 0 FirstWrite -1}
		weights_load_2675 {Type I LastRead 0 FirstWrite -1}
		weights_load_2676 {Type I LastRead 0 FirstWrite -1}
		weights_load_2677 {Type I LastRead 0 FirstWrite -1}
		weights_load_2678 {Type I LastRead 0 FirstWrite -1}
		weights_load_2679 {Type I LastRead 0 FirstWrite -1}
		weights_load_2680 {Type I LastRead 0 FirstWrite -1}
		weights_load_2681 {Type I LastRead 0 FirstWrite -1}
		weights_load_2682 {Type I LastRead 0 FirstWrite -1}
		weights_load_2683 {Type I LastRead 0 FirstWrite -1}
		weights_load_2684 {Type I LastRead 0 FirstWrite -1}
		weights_load_2685 {Type I LastRead 0 FirstWrite -1}
		weights_load_2686 {Type I LastRead 0 FirstWrite -1}
		weights_load_2687 {Type I LastRead 0 FirstWrite -1}
		weights_load_2688 {Type I LastRead 0 FirstWrite -1}
		weights_load_2689 {Type I LastRead 0 FirstWrite -1}
		weights_load_2690 {Type I LastRead 0 FirstWrite -1}
		weights_load_2691 {Type I LastRead 0 FirstWrite -1}
		weights_load_2692 {Type I LastRead 0 FirstWrite -1}
		weights_load_2693 {Type I LastRead 0 FirstWrite -1}
		weights_load_2694 {Type I LastRead 0 FirstWrite -1}
		weights_load_2695 {Type I LastRead 0 FirstWrite -1}
		weights_load_2696 {Type I LastRead 0 FirstWrite -1}
		weights_load_2697 {Type I LastRead 0 FirstWrite -1}
		weights_load_2698 {Type I LastRead 0 FirstWrite -1}
		weights_load_2699 {Type I LastRead 0 FirstWrite -1}
		weights_load_2700 {Type I LastRead 0 FirstWrite -1}
		weights_load_2701 {Type I LastRead 0 FirstWrite -1}
		weights_load_2702 {Type I LastRead 0 FirstWrite -1}
		weights_load_2703 {Type I LastRead 0 FirstWrite -1}
		weights_load_2704 {Type I LastRead 0 FirstWrite -1}
		weights_load_2705 {Type I LastRead 0 FirstWrite -1}
		weights_load_2706 {Type I LastRead 0 FirstWrite -1}
		weights_load_2707 {Type I LastRead 0 FirstWrite -1}
		weights_load_2708 {Type I LastRead 0 FirstWrite -1}
		weights_load_2709 {Type I LastRead 0 FirstWrite -1}
		weights_load_2710 {Type I LastRead 0 FirstWrite -1}
		weights_load_2711 {Type I LastRead 0 FirstWrite -1}
		weights_load_2712 {Type I LastRead 0 FirstWrite -1}
		weights_load_2713 {Type I LastRead 0 FirstWrite -1}
		weights_load_2714 {Type I LastRead 0 FirstWrite -1}
		weights_load_2715 {Type I LastRead 0 FirstWrite -1}
		weights_load_2716 {Type I LastRead 0 FirstWrite -1}
		weights_load_2717 {Type I LastRead 0 FirstWrite -1}
		weights_load_2718 {Type I LastRead 0 FirstWrite -1}
		weights_load_2719 {Type I LastRead 0 FirstWrite -1}
		weights_load_2720 {Type I LastRead 0 FirstWrite -1}
		weights_load_2721 {Type I LastRead 0 FirstWrite -1}
		weights_load_2722 {Type I LastRead 0 FirstWrite -1}
		weights_load_2723 {Type I LastRead 0 FirstWrite -1}
		weights_load_2724 {Type I LastRead 0 FirstWrite -1}
		weights_load_2725 {Type I LastRead 0 FirstWrite -1}
		weights_load_2726 {Type I LastRead 0 FirstWrite -1}
		weights_load_2727 {Type I LastRead 0 FirstWrite -1}
		weights_load_2728 {Type I LastRead 0 FirstWrite -1}
		weights_load_2729 {Type I LastRead 0 FirstWrite -1}
		weights_load_2730 {Type I LastRead 0 FirstWrite -1}
		weights_load_2731 {Type I LastRead 0 FirstWrite -1}
		weights_load_2732 {Type I LastRead 0 FirstWrite -1}
		weights_load_2733 {Type I LastRead 0 FirstWrite -1}
		weights_load_2734 {Type I LastRead 0 FirstWrite -1}
		weights_load_2735 {Type I LastRead 0 FirstWrite -1}
		weights_load_2736 {Type I LastRead 0 FirstWrite -1}
		weights_load_2737 {Type I LastRead 0 FirstWrite -1}
		weights_load_2738 {Type I LastRead 0 FirstWrite -1}
		weights_load_2739 {Type I LastRead 0 FirstWrite -1}
		weights_load_2740 {Type I LastRead 0 FirstWrite -1}
		weights_load_2741 {Type I LastRead 0 FirstWrite -1}
		weights_load_2742 {Type I LastRead 0 FirstWrite -1}
		weights_load_2743 {Type I LastRead 0 FirstWrite -1}
		weights_load_2744 {Type I LastRead 0 FirstWrite -1}
		weights_load_2745 {Type I LastRead 0 FirstWrite -1}
		weights_load_2746 {Type I LastRead 0 FirstWrite -1}
		weights_load_2747 {Type I LastRead 0 FirstWrite -1}
		weights_load_2748 {Type I LastRead 0 FirstWrite -1}
		weights_load_2749 {Type I LastRead 0 FirstWrite -1}
		weights_load_2750 {Type I LastRead 0 FirstWrite -1}
		weights_load_2751 {Type I LastRead 0 FirstWrite -1}
		weights_load_2752 {Type I LastRead 0 FirstWrite -1}
		weights_load_2753 {Type I LastRead 0 FirstWrite -1}
		weights_load_2754 {Type I LastRead 0 FirstWrite -1}
		weights_load_2755 {Type I LastRead 0 FirstWrite -1}
		weights_load_2756 {Type I LastRead 0 FirstWrite -1}
		weights_load_2757 {Type I LastRead 0 FirstWrite -1}
		weights_load_2758 {Type I LastRead 0 FirstWrite -1}
		weights_load_2759 {Type I LastRead 0 FirstWrite -1}
		weights_load_2760 {Type I LastRead 0 FirstWrite -1}
		weights_load_2761 {Type I LastRead 0 FirstWrite -1}
		weights_load_2762 {Type I LastRead 0 FirstWrite -1}
		weights_load_2763 {Type I LastRead 0 FirstWrite -1}
		weights_load_2764 {Type I LastRead 0 FirstWrite -1}
		weights_load_2765 {Type I LastRead 0 FirstWrite -1}
		weights_load_2766 {Type I LastRead 0 FirstWrite -1}
		weights_load_2767 {Type I LastRead 0 FirstWrite -1}
		weights_load_2768 {Type I LastRead 0 FirstWrite -1}
		weights_load_2769 {Type I LastRead 0 FirstWrite -1}
		weights_load_2770 {Type I LastRead 0 FirstWrite -1}
		weights_load_2771 {Type I LastRead 0 FirstWrite -1}
		weights_load_2772 {Type I LastRead 0 FirstWrite -1}
		weights_load_2773 {Type I LastRead 0 FirstWrite -1}
		weights_load_2774 {Type I LastRead 0 FirstWrite -1}
		weights_load_2775 {Type I LastRead 0 FirstWrite -1}
		weights_load_2776 {Type I LastRead 0 FirstWrite -1}
		weights_load_2777 {Type I LastRead 0 FirstWrite -1}
		weights_load_2778 {Type I LastRead 0 FirstWrite -1}
		weights_load_2779 {Type I LastRead 0 FirstWrite -1}
		weights_load_2780 {Type I LastRead 0 FirstWrite -1}
		weights_load_2781 {Type I LastRead 0 FirstWrite -1}
		weights_load_2782 {Type I LastRead 0 FirstWrite -1}
		weights_load_2783 {Type I LastRead 0 FirstWrite -1}
		weights_load_2784 {Type I LastRead 0 FirstWrite -1}
		weights_load_2785 {Type I LastRead 0 FirstWrite -1}
		weights_load_2786 {Type I LastRead 0 FirstWrite -1}
		weights_load_2787 {Type I LastRead 0 FirstWrite -1}
		weights_load_2788 {Type I LastRead 0 FirstWrite -1}
		weights_load_2789 {Type I LastRead 0 FirstWrite -1}
		weights_load_2790 {Type I LastRead 0 FirstWrite -1}
		weights_load_2791 {Type I LastRead 0 FirstWrite -1}
		weights_load_2792 {Type I LastRead 0 FirstWrite -1}
		weights_load_2793 {Type I LastRead 0 FirstWrite -1}
		weights_load_2794 {Type I LastRead 0 FirstWrite -1}
		weights_load_2795 {Type I LastRead 0 FirstWrite -1}
		weights_load_2796 {Type I LastRead 0 FirstWrite -1}
		weights_load_2797 {Type I LastRead 0 FirstWrite -1}
		weights_load_2798 {Type I LastRead 0 FirstWrite -1}
		weights_load_2799 {Type I LastRead 0 FirstWrite -1}
		weights_load_2800 {Type I LastRead 0 FirstWrite -1}
		weights_load_2801 {Type I LastRead 0 FirstWrite -1}
		weights_load_2802 {Type I LastRead 0 FirstWrite -1}
		weights_load_2803 {Type I LastRead 0 FirstWrite -1}
		weights_load_2804 {Type I LastRead 0 FirstWrite -1}
		weights_load_2805 {Type I LastRead 0 FirstWrite -1}
		weights_load_2806 {Type I LastRead 0 FirstWrite -1}
		weights_load_2807 {Type I LastRead 0 FirstWrite -1}
		weights_load_2808 {Type I LastRead 0 FirstWrite -1}
		weights_load_2809 {Type I LastRead 0 FirstWrite -1}
		weights_load_2810 {Type I LastRead 0 FirstWrite -1}
		weights_load_2811 {Type I LastRead 0 FirstWrite -1}
		weights_load_2812 {Type I LastRead 0 FirstWrite -1}
		weights_load_2813 {Type I LastRead 0 FirstWrite -1}
		weights_load_2814 {Type I LastRead 0 FirstWrite -1}
		weights_load_2815 {Type I LastRead 0 FirstWrite -1}
		weights_load_2816 {Type I LastRead 0 FirstWrite -1}
		weights_load_2817 {Type I LastRead 0 FirstWrite -1}
		weights_load_2818 {Type I LastRead 0 FirstWrite -1}
		weights_load_2819 {Type I LastRead 0 FirstWrite -1}
		weights_load_2820 {Type I LastRead 0 FirstWrite -1}
		weights_load_2821 {Type I LastRead 0 FirstWrite -1}
		weights_load_2822 {Type I LastRead 0 FirstWrite -1}
		weights_load_2823 {Type I LastRead 0 FirstWrite -1}
		weights_load_2824 {Type I LastRead 0 FirstWrite -1}
		weights_load_2825 {Type I LastRead 0 FirstWrite -1}
		weights_load_2826 {Type I LastRead 0 FirstWrite -1}
		weights_load_2827 {Type I LastRead 0 FirstWrite -1}
		weights_load_2828 {Type I LastRead 0 FirstWrite -1}
		weights_load_2829 {Type I LastRead 0 FirstWrite -1}
		weights_load_2830 {Type I LastRead 0 FirstWrite -1}
		weights_load_2831 {Type I LastRead 0 FirstWrite -1}
		weights_load_2832 {Type I LastRead 0 FirstWrite -1}
		weights_load_2833 {Type I LastRead 0 FirstWrite -1}
		weights_load_2834 {Type I LastRead 0 FirstWrite -1}
		weights_load_2835 {Type I LastRead 0 FirstWrite -1}
		weights_load_2836 {Type I LastRead 0 FirstWrite -1}
		weights_load_2837 {Type I LastRead 0 FirstWrite -1}
		weights_load_2838 {Type I LastRead 0 FirstWrite -1}
		weights_load_2839 {Type I LastRead 0 FirstWrite -1}
		weights_load_2840 {Type I LastRead 0 FirstWrite -1}
		weights_load_2841 {Type I LastRead 0 FirstWrite -1}
		weights_load_2842 {Type I LastRead 0 FirstWrite -1}
		weights_load_2843 {Type I LastRead 0 FirstWrite -1}
		weights_load_2844 {Type I LastRead 0 FirstWrite -1}
		weights_load_2845 {Type I LastRead 0 FirstWrite -1}
		weights_load_2846 {Type I LastRead 0 FirstWrite -1}
		weights_load_2847 {Type I LastRead 0 FirstWrite -1}
		weights_load_2848 {Type I LastRead 0 FirstWrite -1}
		weights_load_2849 {Type I LastRead 0 FirstWrite -1}
		weights_load_2850 {Type I LastRead 0 FirstWrite -1}
		weights_load_2851 {Type I LastRead 0 FirstWrite -1}
		weights_load_2852 {Type I LastRead 0 FirstWrite -1}
		weights_load_2853 {Type I LastRead 0 FirstWrite -1}
		weights_load_2854 {Type I LastRead 0 FirstWrite -1}
		weights_load_2855 {Type I LastRead 0 FirstWrite -1}
		weights_load_2856 {Type I LastRead 0 FirstWrite -1}
		weights_load_2857 {Type I LastRead 0 FirstWrite -1}
		weights_load_2858 {Type I LastRead 0 FirstWrite -1}
		weights_load_2859 {Type I LastRead 0 FirstWrite -1}
		weights_load_2860 {Type I LastRead 0 FirstWrite -1}
		weights_load_2861 {Type I LastRead 0 FirstWrite -1}
		weights_load_2862 {Type I LastRead 0 FirstWrite -1}
		weights_load_2863 {Type I LastRead 0 FirstWrite -1}
		weights_load_2864 {Type I LastRead 0 FirstWrite -1}
		weights_load_2865 {Type I LastRead 0 FirstWrite -1}
		weights_load_2866 {Type I LastRead 0 FirstWrite -1}
		weights_load_2867 {Type I LastRead 0 FirstWrite -1}
		weights_load_2868 {Type I LastRead 0 FirstWrite -1}
		weights_load_2869 {Type I LastRead 0 FirstWrite -1}
		weights_load_2870 {Type I LastRead 0 FirstWrite -1}
		weights_load_2871 {Type I LastRead 0 FirstWrite -1}
		weights_load_2872 {Type I LastRead 0 FirstWrite -1}
		weights_load_2873 {Type I LastRead 0 FirstWrite -1}
		weights_load_2874 {Type I LastRead 0 FirstWrite -1}
		weights_load_2875 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_5 { ap_fifo {  { conv2d_64_padded_window_stream_5_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_5_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_5_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_5_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_5_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_5 { ap_fifo {  { in_channel_map_stream_5_din fifo_port_we 1 32 }  { in_channel_map_stream_5_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_5_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_5_full_n fifo_status 0 1 }  { in_channel_map_stream_5_write fifo_data 1 1 } } }
}
