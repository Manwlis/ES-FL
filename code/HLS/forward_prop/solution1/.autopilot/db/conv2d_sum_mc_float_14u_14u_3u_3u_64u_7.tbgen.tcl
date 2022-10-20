set moduleName conv2d_sum_mc_float_14u_14u_3u_3u_64u_7
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
set C_modelName {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.7}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_padded_window_stream_7 int 288 regular {fifo 0 volatile }  }
	{ weights float 32 regular {array 576 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_7 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_padded_window_stream_7", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_7", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ conv2d_64_padded_window_stream_7_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_padded_window_stream_7_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_7_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_padded_window_stream_7_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_7_read sc_out sc_logic 1 signal 0 } 
	{ weights_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_q0 sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_7_din sc_out sc_lv 32 signal 2 } 
	{ in_channel_map_stream_7_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_7_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_7_full_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_7_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_64_padded_window_stream_7_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_7", "role": "dout" }} , 
 	{ "name": "conv2d_64_padded_window_stream_7_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_7", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_7_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_7", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_7_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_7", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_7_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_7", "role": "read" }} , 
 	{ "name": "weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights", "role": "address0" }} , 
 	{ "name": "weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights", "role": "ce0" }} , 
 	{ "name": "weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights", "role": "q0" }} , 
 	{ "name": "in_channel_map_stream_7_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_7", "role": "din" }} , 
 	{ "name": "in_channel_map_stream_7_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_7", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_7_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_7", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_7_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_7", "role": "full_n" }} , 
 	{ "name": "in_channel_map_stream_7_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_7", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_7",
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
			{"Name" : "conv2d_64_padded_window_stream_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_7_Pipeline_inputs_fu_6371", "Port" : "conv2d_64_padded_window_stream_7", "Inst_start_state" : "577", "Inst_end_state" : "578"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_7_Pipeline_inputs_fu_6371", "Port" : "in_channel_map_stream_7", "Inst_start_state" : "577", "Inst_end_state" : "578"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_7_Pipeline_inputs_fu_6371", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "conv2d_sum_mc_float_14u_14u_3u_3u_64u_7_Pipeline_inputs",
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
			{"Name" : "conv2d_64_padded_window_stream_7", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1151", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1152", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1153", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1154", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1155", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1156", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1157", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1158", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "in_channel_map_stream_7", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_load_1159", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1160", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1161", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1162", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1163", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1164", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1165", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1166", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1167", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1168", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1169", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1170", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1171", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1172", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1173", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1174", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1175", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1176", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1177", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1178", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1179", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1180", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1181", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1182", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1183", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1184", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1185", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1186", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1187", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1188", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1189", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1190", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1191", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1192", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1193", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1194", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1195", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1196", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1197", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1198", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1199", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1200", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1201", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1202", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1203", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1204", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1205", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1206", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1207", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1208", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1209", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1210", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1211", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1212", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1213", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1214", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1215", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1216", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1217", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1218", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1219", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1220", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1221", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1222", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1223", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1224", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1225", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1226", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1227", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1228", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1229", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1230", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1231", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1232", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1233", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1234", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1235", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1236", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1237", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1238", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1239", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1240", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1241", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1242", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1243", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1244", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1245", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1246", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1247", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1248", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1249", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1250", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1251", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1252", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1253", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1254", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1255", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1256", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1257", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1258", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1259", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1260", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1261", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1262", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1263", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1264", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1265", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1266", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1267", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1268", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1269", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1270", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1271", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1272", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1273", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1274", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1275", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1276", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1277", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1278", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1279", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1280", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1281", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1282", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1283", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1284", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1285", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1286", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1287", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1288", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1289", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1290", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1291", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1292", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1293", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1294", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1295", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1296", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1297", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1298", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1299", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1300", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1301", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1302", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1303", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1304", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1305", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1306", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1307", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1308", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1309", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1310", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1311", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1312", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1313", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1314", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1315", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1316", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1317", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1318", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1319", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1320", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1321", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1322", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1323", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1324", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1325", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1326", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1327", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1328", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1329", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1330", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1331", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1332", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1333", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1334", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1335", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1336", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1337", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1338", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1339", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1340", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1341", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1342", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1343", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1344", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1345", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1346", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1347", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1348", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1349", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1350", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1351", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1352", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1353", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1354", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1355", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1356", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1357", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1358", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1359", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1360", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1361", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1362", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1363", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1364", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1365", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1366", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1367", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1368", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1369", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1370", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1371", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1372", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1373", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1374", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1375", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1376", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1377", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1378", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1379", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1380", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1381", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1382", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1383", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1384", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1385", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1386", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1387", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1388", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1389", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1390", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1391", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1392", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1393", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1394", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1395", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1396", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1397", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1398", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1399", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1400", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1401", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1402", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1403", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1404", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1405", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1406", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1407", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1408", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1409", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1410", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1411", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1412", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1413", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1414", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1415", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1416", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1417", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1418", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1419", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1420", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1421", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1422", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1423", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1424", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1425", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1426", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1427", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1428", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1429", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1430", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1431", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1432", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1433", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1434", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1435", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1436", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1437", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1438", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1439", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1440", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1441", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1442", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1443", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1444", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1445", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1446", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1447", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1448", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1449", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1450", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1451", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1452", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1453", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1454", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1455", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1456", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1457", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1458", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1459", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1460", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1461", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1462", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1463", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1464", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1465", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1466", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1467", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1468", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1469", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1470", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1471", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1472", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1473", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1474", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1475", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1476", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1477", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1478", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1479", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1480", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1481", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1482", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1483", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1484", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1485", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1486", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1487", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1488", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1489", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1490", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1491", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1492", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1493", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1494", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1495", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1496", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1497", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1498", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1499", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1500", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1501", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1502", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1503", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1504", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1505", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1506", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1507", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1508", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1509", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1510", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1511", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1512", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1513", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1514", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1515", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1516", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1517", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1518", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1519", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1520", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1521", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1522", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1523", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1524", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1525", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1526", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1527", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1528", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1529", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1530", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1531", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1532", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1533", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1534", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1535", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1536", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1537", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1538", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1539", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1540", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1541", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1542", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1543", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1544", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1545", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1546", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1547", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1548", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1549", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1550", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1551", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1552", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1553", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1554", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1555", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1556", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1557", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1558", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1559", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1560", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1561", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1562", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1563", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1564", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1565", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1566", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1567", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1568", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1569", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1570", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1571", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1572", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1573", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1574", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1575", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1576", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1577", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1578", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1579", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1580", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1581", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1582", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1583", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1584", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1585", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1586", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1587", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1588", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1589", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1590", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1591", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1592", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1593", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1594", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1595", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1596", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1597", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1598", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1599", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1600", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1601", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1602", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1603", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1604", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1605", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1606", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1607", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1608", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1609", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1610", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1611", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1612", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1613", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1614", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1615", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1616", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1617", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1618", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1619", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1620", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1621", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1622", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1623", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1624", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1625", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1626", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1627", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1628", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1629", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1630", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1631", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1632", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1633", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1634", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1635", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1636", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1637", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1638", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1639", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1640", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1641", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1642", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1643", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1644", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1645", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1646", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1647", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1648", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1649", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1650", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1651", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1652", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1653", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1654", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1655", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1656", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1657", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1658", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1659", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1660", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1661", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1662", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1663", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1664", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1665", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1666", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1667", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1668", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1669", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1670", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1671", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1672", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1673", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1674", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1675", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1676", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1677", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1678", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1679", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1680", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1681", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1682", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1683", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1684", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1685", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1686", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1687", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1688", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1689", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1690", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1691", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1692", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1693", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1694", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1695", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1696", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1697", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1698", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1699", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1700", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1701", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1702", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1703", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1704", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1705", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1706", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1707", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1708", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1709", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1710", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1711", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1712", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1713", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1714", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1715", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1716", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1717", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1718", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1719", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1720", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1721", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1722", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1723", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1724", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "weights_load_1725", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "64", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage15", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage15_subdone", "QuitState" : "ap_ST_fsm_pp0_stage15", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage15_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_7_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U4742", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_7_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U4743", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_7_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U4744", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_7_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U4745", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_7_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U4746", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_7_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U4747", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_7_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U4748", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_7_Pipeline_inputs_fu_6371.fadd_32ns_32ns_32_3_full_dsp_1_U4749", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_7_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U4750", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_7_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U4751", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_7_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U4752", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_7_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U4753", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_7_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U4754", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_7_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U4755", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_7_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U4756", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_7_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U4757", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_7_Pipeline_inputs_fu_6371.fmul_32ns_32ns_32_2_max_dsp_1_U4758", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_sum_mc_float_14u_14u_3u_3u_64u_7_Pipeline_inputs_fu_6371.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_7 {
		conv2d_64_padded_window_stream_7 {Type I LastRead 1 FirstWrite -1}
		weights {Type I LastRead 575 FirstWrite -1}
		in_channel_map_stream_7 {Type O LastRead -1 FirstWrite 16}}
	conv2d_sum_mc_float_14u_14u_3u_3u_64u_7_Pipeline_inputs {
		conv2d_64_padded_window_stream_7 {Type I LastRead 1 FirstWrite -1}
		weights_load {Type I LastRead 0 FirstWrite -1}
		weights_load_1151 {Type I LastRead 0 FirstWrite -1}
		weights_load_1152 {Type I LastRead 0 FirstWrite -1}
		weights_load_1153 {Type I LastRead 0 FirstWrite -1}
		weights_load_1154 {Type I LastRead 0 FirstWrite -1}
		weights_load_1155 {Type I LastRead 0 FirstWrite -1}
		weights_load_1156 {Type I LastRead 0 FirstWrite -1}
		weights_load_1157 {Type I LastRead 0 FirstWrite -1}
		weights_load_1158 {Type I LastRead 0 FirstWrite -1}
		in_channel_map_stream_7 {Type O LastRead -1 FirstWrite 16}
		weights_load_1159 {Type I LastRead 0 FirstWrite -1}
		weights_load_1160 {Type I LastRead 0 FirstWrite -1}
		weights_load_1161 {Type I LastRead 0 FirstWrite -1}
		weights_load_1162 {Type I LastRead 0 FirstWrite -1}
		weights_load_1163 {Type I LastRead 0 FirstWrite -1}
		weights_load_1164 {Type I LastRead 0 FirstWrite -1}
		weights_load_1165 {Type I LastRead 0 FirstWrite -1}
		weights_load_1166 {Type I LastRead 0 FirstWrite -1}
		weights_load_1167 {Type I LastRead 0 FirstWrite -1}
		weights_load_1168 {Type I LastRead 0 FirstWrite -1}
		weights_load_1169 {Type I LastRead 0 FirstWrite -1}
		weights_load_1170 {Type I LastRead 0 FirstWrite -1}
		weights_load_1171 {Type I LastRead 0 FirstWrite -1}
		weights_load_1172 {Type I LastRead 0 FirstWrite -1}
		weights_load_1173 {Type I LastRead 0 FirstWrite -1}
		weights_load_1174 {Type I LastRead 0 FirstWrite -1}
		weights_load_1175 {Type I LastRead 0 FirstWrite -1}
		weights_load_1176 {Type I LastRead 0 FirstWrite -1}
		weights_load_1177 {Type I LastRead 0 FirstWrite -1}
		weights_load_1178 {Type I LastRead 0 FirstWrite -1}
		weights_load_1179 {Type I LastRead 0 FirstWrite -1}
		weights_load_1180 {Type I LastRead 0 FirstWrite -1}
		weights_load_1181 {Type I LastRead 0 FirstWrite -1}
		weights_load_1182 {Type I LastRead 0 FirstWrite -1}
		weights_load_1183 {Type I LastRead 0 FirstWrite -1}
		weights_load_1184 {Type I LastRead 0 FirstWrite -1}
		weights_load_1185 {Type I LastRead 0 FirstWrite -1}
		weights_load_1186 {Type I LastRead 0 FirstWrite -1}
		weights_load_1187 {Type I LastRead 0 FirstWrite -1}
		weights_load_1188 {Type I LastRead 0 FirstWrite -1}
		weights_load_1189 {Type I LastRead 0 FirstWrite -1}
		weights_load_1190 {Type I LastRead 0 FirstWrite -1}
		weights_load_1191 {Type I LastRead 0 FirstWrite -1}
		weights_load_1192 {Type I LastRead 0 FirstWrite -1}
		weights_load_1193 {Type I LastRead 0 FirstWrite -1}
		weights_load_1194 {Type I LastRead 0 FirstWrite -1}
		weights_load_1195 {Type I LastRead 0 FirstWrite -1}
		weights_load_1196 {Type I LastRead 0 FirstWrite -1}
		weights_load_1197 {Type I LastRead 0 FirstWrite -1}
		weights_load_1198 {Type I LastRead 0 FirstWrite -1}
		weights_load_1199 {Type I LastRead 0 FirstWrite -1}
		weights_load_1200 {Type I LastRead 0 FirstWrite -1}
		weights_load_1201 {Type I LastRead 0 FirstWrite -1}
		weights_load_1202 {Type I LastRead 0 FirstWrite -1}
		weights_load_1203 {Type I LastRead 0 FirstWrite -1}
		weights_load_1204 {Type I LastRead 0 FirstWrite -1}
		weights_load_1205 {Type I LastRead 0 FirstWrite -1}
		weights_load_1206 {Type I LastRead 0 FirstWrite -1}
		weights_load_1207 {Type I LastRead 0 FirstWrite -1}
		weights_load_1208 {Type I LastRead 0 FirstWrite -1}
		weights_load_1209 {Type I LastRead 0 FirstWrite -1}
		weights_load_1210 {Type I LastRead 0 FirstWrite -1}
		weights_load_1211 {Type I LastRead 0 FirstWrite -1}
		weights_load_1212 {Type I LastRead 0 FirstWrite -1}
		weights_load_1213 {Type I LastRead 0 FirstWrite -1}
		weights_load_1214 {Type I LastRead 0 FirstWrite -1}
		weights_load_1215 {Type I LastRead 0 FirstWrite -1}
		weights_load_1216 {Type I LastRead 0 FirstWrite -1}
		weights_load_1217 {Type I LastRead 0 FirstWrite -1}
		weights_load_1218 {Type I LastRead 0 FirstWrite -1}
		weights_load_1219 {Type I LastRead 0 FirstWrite -1}
		weights_load_1220 {Type I LastRead 0 FirstWrite -1}
		weights_load_1221 {Type I LastRead 0 FirstWrite -1}
		weights_load_1222 {Type I LastRead 0 FirstWrite -1}
		weights_load_1223 {Type I LastRead 0 FirstWrite -1}
		weights_load_1224 {Type I LastRead 0 FirstWrite -1}
		weights_load_1225 {Type I LastRead 0 FirstWrite -1}
		weights_load_1226 {Type I LastRead 0 FirstWrite -1}
		weights_load_1227 {Type I LastRead 0 FirstWrite -1}
		weights_load_1228 {Type I LastRead 0 FirstWrite -1}
		weights_load_1229 {Type I LastRead 0 FirstWrite -1}
		weights_load_1230 {Type I LastRead 0 FirstWrite -1}
		weights_load_1231 {Type I LastRead 0 FirstWrite -1}
		weights_load_1232 {Type I LastRead 0 FirstWrite -1}
		weights_load_1233 {Type I LastRead 0 FirstWrite -1}
		weights_load_1234 {Type I LastRead 0 FirstWrite -1}
		weights_load_1235 {Type I LastRead 0 FirstWrite -1}
		weights_load_1236 {Type I LastRead 0 FirstWrite -1}
		weights_load_1237 {Type I LastRead 0 FirstWrite -1}
		weights_load_1238 {Type I LastRead 0 FirstWrite -1}
		weights_load_1239 {Type I LastRead 0 FirstWrite -1}
		weights_load_1240 {Type I LastRead 0 FirstWrite -1}
		weights_load_1241 {Type I LastRead 0 FirstWrite -1}
		weights_load_1242 {Type I LastRead 0 FirstWrite -1}
		weights_load_1243 {Type I LastRead 0 FirstWrite -1}
		weights_load_1244 {Type I LastRead 0 FirstWrite -1}
		weights_load_1245 {Type I LastRead 0 FirstWrite -1}
		weights_load_1246 {Type I LastRead 0 FirstWrite -1}
		weights_load_1247 {Type I LastRead 0 FirstWrite -1}
		weights_load_1248 {Type I LastRead 0 FirstWrite -1}
		weights_load_1249 {Type I LastRead 0 FirstWrite -1}
		weights_load_1250 {Type I LastRead 0 FirstWrite -1}
		weights_load_1251 {Type I LastRead 0 FirstWrite -1}
		weights_load_1252 {Type I LastRead 0 FirstWrite -1}
		weights_load_1253 {Type I LastRead 0 FirstWrite -1}
		weights_load_1254 {Type I LastRead 0 FirstWrite -1}
		weights_load_1255 {Type I LastRead 0 FirstWrite -1}
		weights_load_1256 {Type I LastRead 0 FirstWrite -1}
		weights_load_1257 {Type I LastRead 0 FirstWrite -1}
		weights_load_1258 {Type I LastRead 0 FirstWrite -1}
		weights_load_1259 {Type I LastRead 0 FirstWrite -1}
		weights_load_1260 {Type I LastRead 0 FirstWrite -1}
		weights_load_1261 {Type I LastRead 0 FirstWrite -1}
		weights_load_1262 {Type I LastRead 0 FirstWrite -1}
		weights_load_1263 {Type I LastRead 0 FirstWrite -1}
		weights_load_1264 {Type I LastRead 0 FirstWrite -1}
		weights_load_1265 {Type I LastRead 0 FirstWrite -1}
		weights_load_1266 {Type I LastRead 0 FirstWrite -1}
		weights_load_1267 {Type I LastRead 0 FirstWrite -1}
		weights_load_1268 {Type I LastRead 0 FirstWrite -1}
		weights_load_1269 {Type I LastRead 0 FirstWrite -1}
		weights_load_1270 {Type I LastRead 0 FirstWrite -1}
		weights_load_1271 {Type I LastRead 0 FirstWrite -1}
		weights_load_1272 {Type I LastRead 0 FirstWrite -1}
		weights_load_1273 {Type I LastRead 0 FirstWrite -1}
		weights_load_1274 {Type I LastRead 0 FirstWrite -1}
		weights_load_1275 {Type I LastRead 0 FirstWrite -1}
		weights_load_1276 {Type I LastRead 0 FirstWrite -1}
		weights_load_1277 {Type I LastRead 0 FirstWrite -1}
		weights_load_1278 {Type I LastRead 0 FirstWrite -1}
		weights_load_1279 {Type I LastRead 0 FirstWrite -1}
		weights_load_1280 {Type I LastRead 0 FirstWrite -1}
		weights_load_1281 {Type I LastRead 0 FirstWrite -1}
		weights_load_1282 {Type I LastRead 0 FirstWrite -1}
		weights_load_1283 {Type I LastRead 0 FirstWrite -1}
		weights_load_1284 {Type I LastRead 0 FirstWrite -1}
		weights_load_1285 {Type I LastRead 0 FirstWrite -1}
		weights_load_1286 {Type I LastRead 0 FirstWrite -1}
		weights_load_1287 {Type I LastRead 0 FirstWrite -1}
		weights_load_1288 {Type I LastRead 0 FirstWrite -1}
		weights_load_1289 {Type I LastRead 0 FirstWrite -1}
		weights_load_1290 {Type I LastRead 0 FirstWrite -1}
		weights_load_1291 {Type I LastRead 0 FirstWrite -1}
		weights_load_1292 {Type I LastRead 0 FirstWrite -1}
		weights_load_1293 {Type I LastRead 0 FirstWrite -1}
		weights_load_1294 {Type I LastRead 0 FirstWrite -1}
		weights_load_1295 {Type I LastRead 0 FirstWrite -1}
		weights_load_1296 {Type I LastRead 0 FirstWrite -1}
		weights_load_1297 {Type I LastRead 0 FirstWrite -1}
		weights_load_1298 {Type I LastRead 0 FirstWrite -1}
		weights_load_1299 {Type I LastRead 0 FirstWrite -1}
		weights_load_1300 {Type I LastRead 0 FirstWrite -1}
		weights_load_1301 {Type I LastRead 0 FirstWrite -1}
		weights_load_1302 {Type I LastRead 0 FirstWrite -1}
		weights_load_1303 {Type I LastRead 0 FirstWrite -1}
		weights_load_1304 {Type I LastRead 0 FirstWrite -1}
		weights_load_1305 {Type I LastRead 0 FirstWrite -1}
		weights_load_1306 {Type I LastRead 0 FirstWrite -1}
		weights_load_1307 {Type I LastRead 0 FirstWrite -1}
		weights_load_1308 {Type I LastRead 0 FirstWrite -1}
		weights_load_1309 {Type I LastRead 0 FirstWrite -1}
		weights_load_1310 {Type I LastRead 0 FirstWrite -1}
		weights_load_1311 {Type I LastRead 0 FirstWrite -1}
		weights_load_1312 {Type I LastRead 0 FirstWrite -1}
		weights_load_1313 {Type I LastRead 0 FirstWrite -1}
		weights_load_1314 {Type I LastRead 0 FirstWrite -1}
		weights_load_1315 {Type I LastRead 0 FirstWrite -1}
		weights_load_1316 {Type I LastRead 0 FirstWrite -1}
		weights_load_1317 {Type I LastRead 0 FirstWrite -1}
		weights_load_1318 {Type I LastRead 0 FirstWrite -1}
		weights_load_1319 {Type I LastRead 0 FirstWrite -1}
		weights_load_1320 {Type I LastRead 0 FirstWrite -1}
		weights_load_1321 {Type I LastRead 0 FirstWrite -1}
		weights_load_1322 {Type I LastRead 0 FirstWrite -1}
		weights_load_1323 {Type I LastRead 0 FirstWrite -1}
		weights_load_1324 {Type I LastRead 0 FirstWrite -1}
		weights_load_1325 {Type I LastRead 0 FirstWrite -1}
		weights_load_1326 {Type I LastRead 0 FirstWrite -1}
		weights_load_1327 {Type I LastRead 0 FirstWrite -1}
		weights_load_1328 {Type I LastRead 0 FirstWrite -1}
		weights_load_1329 {Type I LastRead 0 FirstWrite -1}
		weights_load_1330 {Type I LastRead 0 FirstWrite -1}
		weights_load_1331 {Type I LastRead 0 FirstWrite -1}
		weights_load_1332 {Type I LastRead 0 FirstWrite -1}
		weights_load_1333 {Type I LastRead 0 FirstWrite -1}
		weights_load_1334 {Type I LastRead 0 FirstWrite -1}
		weights_load_1335 {Type I LastRead 0 FirstWrite -1}
		weights_load_1336 {Type I LastRead 0 FirstWrite -1}
		weights_load_1337 {Type I LastRead 0 FirstWrite -1}
		weights_load_1338 {Type I LastRead 0 FirstWrite -1}
		weights_load_1339 {Type I LastRead 0 FirstWrite -1}
		weights_load_1340 {Type I LastRead 0 FirstWrite -1}
		weights_load_1341 {Type I LastRead 0 FirstWrite -1}
		weights_load_1342 {Type I LastRead 0 FirstWrite -1}
		weights_load_1343 {Type I LastRead 0 FirstWrite -1}
		weights_load_1344 {Type I LastRead 0 FirstWrite -1}
		weights_load_1345 {Type I LastRead 0 FirstWrite -1}
		weights_load_1346 {Type I LastRead 0 FirstWrite -1}
		weights_load_1347 {Type I LastRead 0 FirstWrite -1}
		weights_load_1348 {Type I LastRead 0 FirstWrite -1}
		weights_load_1349 {Type I LastRead 0 FirstWrite -1}
		weights_load_1350 {Type I LastRead 0 FirstWrite -1}
		weights_load_1351 {Type I LastRead 0 FirstWrite -1}
		weights_load_1352 {Type I LastRead 0 FirstWrite -1}
		weights_load_1353 {Type I LastRead 0 FirstWrite -1}
		weights_load_1354 {Type I LastRead 0 FirstWrite -1}
		weights_load_1355 {Type I LastRead 0 FirstWrite -1}
		weights_load_1356 {Type I LastRead 0 FirstWrite -1}
		weights_load_1357 {Type I LastRead 0 FirstWrite -1}
		weights_load_1358 {Type I LastRead 0 FirstWrite -1}
		weights_load_1359 {Type I LastRead 0 FirstWrite -1}
		weights_load_1360 {Type I LastRead 0 FirstWrite -1}
		weights_load_1361 {Type I LastRead 0 FirstWrite -1}
		weights_load_1362 {Type I LastRead 0 FirstWrite -1}
		weights_load_1363 {Type I LastRead 0 FirstWrite -1}
		weights_load_1364 {Type I LastRead 0 FirstWrite -1}
		weights_load_1365 {Type I LastRead 0 FirstWrite -1}
		weights_load_1366 {Type I LastRead 0 FirstWrite -1}
		weights_load_1367 {Type I LastRead 0 FirstWrite -1}
		weights_load_1368 {Type I LastRead 0 FirstWrite -1}
		weights_load_1369 {Type I LastRead 0 FirstWrite -1}
		weights_load_1370 {Type I LastRead 0 FirstWrite -1}
		weights_load_1371 {Type I LastRead 0 FirstWrite -1}
		weights_load_1372 {Type I LastRead 0 FirstWrite -1}
		weights_load_1373 {Type I LastRead 0 FirstWrite -1}
		weights_load_1374 {Type I LastRead 0 FirstWrite -1}
		weights_load_1375 {Type I LastRead 0 FirstWrite -1}
		weights_load_1376 {Type I LastRead 0 FirstWrite -1}
		weights_load_1377 {Type I LastRead 0 FirstWrite -1}
		weights_load_1378 {Type I LastRead 0 FirstWrite -1}
		weights_load_1379 {Type I LastRead 0 FirstWrite -1}
		weights_load_1380 {Type I LastRead 0 FirstWrite -1}
		weights_load_1381 {Type I LastRead 0 FirstWrite -1}
		weights_load_1382 {Type I LastRead 0 FirstWrite -1}
		weights_load_1383 {Type I LastRead 0 FirstWrite -1}
		weights_load_1384 {Type I LastRead 0 FirstWrite -1}
		weights_load_1385 {Type I LastRead 0 FirstWrite -1}
		weights_load_1386 {Type I LastRead 0 FirstWrite -1}
		weights_load_1387 {Type I LastRead 0 FirstWrite -1}
		weights_load_1388 {Type I LastRead 0 FirstWrite -1}
		weights_load_1389 {Type I LastRead 0 FirstWrite -1}
		weights_load_1390 {Type I LastRead 0 FirstWrite -1}
		weights_load_1391 {Type I LastRead 0 FirstWrite -1}
		weights_load_1392 {Type I LastRead 0 FirstWrite -1}
		weights_load_1393 {Type I LastRead 0 FirstWrite -1}
		weights_load_1394 {Type I LastRead 0 FirstWrite -1}
		weights_load_1395 {Type I LastRead 0 FirstWrite -1}
		weights_load_1396 {Type I LastRead 0 FirstWrite -1}
		weights_load_1397 {Type I LastRead 0 FirstWrite -1}
		weights_load_1398 {Type I LastRead 0 FirstWrite -1}
		weights_load_1399 {Type I LastRead 0 FirstWrite -1}
		weights_load_1400 {Type I LastRead 0 FirstWrite -1}
		weights_load_1401 {Type I LastRead 0 FirstWrite -1}
		weights_load_1402 {Type I LastRead 0 FirstWrite -1}
		weights_load_1403 {Type I LastRead 0 FirstWrite -1}
		weights_load_1404 {Type I LastRead 0 FirstWrite -1}
		weights_load_1405 {Type I LastRead 0 FirstWrite -1}
		weights_load_1406 {Type I LastRead 0 FirstWrite -1}
		weights_load_1407 {Type I LastRead 0 FirstWrite -1}
		weights_load_1408 {Type I LastRead 0 FirstWrite -1}
		weights_load_1409 {Type I LastRead 0 FirstWrite -1}
		weights_load_1410 {Type I LastRead 0 FirstWrite -1}
		weights_load_1411 {Type I LastRead 0 FirstWrite -1}
		weights_load_1412 {Type I LastRead 0 FirstWrite -1}
		weights_load_1413 {Type I LastRead 0 FirstWrite -1}
		weights_load_1414 {Type I LastRead 0 FirstWrite -1}
		weights_load_1415 {Type I LastRead 0 FirstWrite -1}
		weights_load_1416 {Type I LastRead 0 FirstWrite -1}
		weights_load_1417 {Type I LastRead 0 FirstWrite -1}
		weights_load_1418 {Type I LastRead 0 FirstWrite -1}
		weights_load_1419 {Type I LastRead 0 FirstWrite -1}
		weights_load_1420 {Type I LastRead 0 FirstWrite -1}
		weights_load_1421 {Type I LastRead 0 FirstWrite -1}
		weights_load_1422 {Type I LastRead 0 FirstWrite -1}
		weights_load_1423 {Type I LastRead 0 FirstWrite -1}
		weights_load_1424 {Type I LastRead 0 FirstWrite -1}
		weights_load_1425 {Type I LastRead 0 FirstWrite -1}
		weights_load_1426 {Type I LastRead 0 FirstWrite -1}
		weights_load_1427 {Type I LastRead 0 FirstWrite -1}
		weights_load_1428 {Type I LastRead 0 FirstWrite -1}
		weights_load_1429 {Type I LastRead 0 FirstWrite -1}
		weights_load_1430 {Type I LastRead 0 FirstWrite -1}
		weights_load_1431 {Type I LastRead 0 FirstWrite -1}
		weights_load_1432 {Type I LastRead 0 FirstWrite -1}
		weights_load_1433 {Type I LastRead 0 FirstWrite -1}
		weights_load_1434 {Type I LastRead 0 FirstWrite -1}
		weights_load_1435 {Type I LastRead 0 FirstWrite -1}
		weights_load_1436 {Type I LastRead 0 FirstWrite -1}
		weights_load_1437 {Type I LastRead 0 FirstWrite -1}
		weights_load_1438 {Type I LastRead 0 FirstWrite -1}
		weights_load_1439 {Type I LastRead 0 FirstWrite -1}
		weights_load_1440 {Type I LastRead 0 FirstWrite -1}
		weights_load_1441 {Type I LastRead 0 FirstWrite -1}
		weights_load_1442 {Type I LastRead 0 FirstWrite -1}
		weights_load_1443 {Type I LastRead 0 FirstWrite -1}
		weights_load_1444 {Type I LastRead 0 FirstWrite -1}
		weights_load_1445 {Type I LastRead 0 FirstWrite -1}
		weights_load_1446 {Type I LastRead 0 FirstWrite -1}
		weights_load_1447 {Type I LastRead 0 FirstWrite -1}
		weights_load_1448 {Type I LastRead 0 FirstWrite -1}
		weights_load_1449 {Type I LastRead 0 FirstWrite -1}
		weights_load_1450 {Type I LastRead 0 FirstWrite -1}
		weights_load_1451 {Type I LastRead 0 FirstWrite -1}
		weights_load_1452 {Type I LastRead 0 FirstWrite -1}
		weights_load_1453 {Type I LastRead 0 FirstWrite -1}
		weights_load_1454 {Type I LastRead 0 FirstWrite -1}
		weights_load_1455 {Type I LastRead 0 FirstWrite -1}
		weights_load_1456 {Type I LastRead 0 FirstWrite -1}
		weights_load_1457 {Type I LastRead 0 FirstWrite -1}
		weights_load_1458 {Type I LastRead 0 FirstWrite -1}
		weights_load_1459 {Type I LastRead 0 FirstWrite -1}
		weights_load_1460 {Type I LastRead 0 FirstWrite -1}
		weights_load_1461 {Type I LastRead 0 FirstWrite -1}
		weights_load_1462 {Type I LastRead 0 FirstWrite -1}
		weights_load_1463 {Type I LastRead 0 FirstWrite -1}
		weights_load_1464 {Type I LastRead 0 FirstWrite -1}
		weights_load_1465 {Type I LastRead 0 FirstWrite -1}
		weights_load_1466 {Type I LastRead 0 FirstWrite -1}
		weights_load_1467 {Type I LastRead 0 FirstWrite -1}
		weights_load_1468 {Type I LastRead 0 FirstWrite -1}
		weights_load_1469 {Type I LastRead 0 FirstWrite -1}
		weights_load_1470 {Type I LastRead 0 FirstWrite -1}
		weights_load_1471 {Type I LastRead 0 FirstWrite -1}
		weights_load_1472 {Type I LastRead 0 FirstWrite -1}
		weights_load_1473 {Type I LastRead 0 FirstWrite -1}
		weights_load_1474 {Type I LastRead 0 FirstWrite -1}
		weights_load_1475 {Type I LastRead 0 FirstWrite -1}
		weights_load_1476 {Type I LastRead 0 FirstWrite -1}
		weights_load_1477 {Type I LastRead 0 FirstWrite -1}
		weights_load_1478 {Type I LastRead 0 FirstWrite -1}
		weights_load_1479 {Type I LastRead 0 FirstWrite -1}
		weights_load_1480 {Type I LastRead 0 FirstWrite -1}
		weights_load_1481 {Type I LastRead 0 FirstWrite -1}
		weights_load_1482 {Type I LastRead 0 FirstWrite -1}
		weights_load_1483 {Type I LastRead 0 FirstWrite -1}
		weights_load_1484 {Type I LastRead 0 FirstWrite -1}
		weights_load_1485 {Type I LastRead 0 FirstWrite -1}
		weights_load_1486 {Type I LastRead 0 FirstWrite -1}
		weights_load_1487 {Type I LastRead 0 FirstWrite -1}
		weights_load_1488 {Type I LastRead 0 FirstWrite -1}
		weights_load_1489 {Type I LastRead 0 FirstWrite -1}
		weights_load_1490 {Type I LastRead 0 FirstWrite -1}
		weights_load_1491 {Type I LastRead 0 FirstWrite -1}
		weights_load_1492 {Type I LastRead 0 FirstWrite -1}
		weights_load_1493 {Type I LastRead 0 FirstWrite -1}
		weights_load_1494 {Type I LastRead 0 FirstWrite -1}
		weights_load_1495 {Type I LastRead 0 FirstWrite -1}
		weights_load_1496 {Type I LastRead 0 FirstWrite -1}
		weights_load_1497 {Type I LastRead 0 FirstWrite -1}
		weights_load_1498 {Type I LastRead 0 FirstWrite -1}
		weights_load_1499 {Type I LastRead 0 FirstWrite -1}
		weights_load_1500 {Type I LastRead 0 FirstWrite -1}
		weights_load_1501 {Type I LastRead 0 FirstWrite -1}
		weights_load_1502 {Type I LastRead 0 FirstWrite -1}
		weights_load_1503 {Type I LastRead 0 FirstWrite -1}
		weights_load_1504 {Type I LastRead 0 FirstWrite -1}
		weights_load_1505 {Type I LastRead 0 FirstWrite -1}
		weights_load_1506 {Type I LastRead 0 FirstWrite -1}
		weights_load_1507 {Type I LastRead 0 FirstWrite -1}
		weights_load_1508 {Type I LastRead 0 FirstWrite -1}
		weights_load_1509 {Type I LastRead 0 FirstWrite -1}
		weights_load_1510 {Type I LastRead 0 FirstWrite -1}
		weights_load_1511 {Type I LastRead 0 FirstWrite -1}
		weights_load_1512 {Type I LastRead 0 FirstWrite -1}
		weights_load_1513 {Type I LastRead 0 FirstWrite -1}
		weights_load_1514 {Type I LastRead 0 FirstWrite -1}
		weights_load_1515 {Type I LastRead 0 FirstWrite -1}
		weights_load_1516 {Type I LastRead 0 FirstWrite -1}
		weights_load_1517 {Type I LastRead 0 FirstWrite -1}
		weights_load_1518 {Type I LastRead 0 FirstWrite -1}
		weights_load_1519 {Type I LastRead 0 FirstWrite -1}
		weights_load_1520 {Type I LastRead 0 FirstWrite -1}
		weights_load_1521 {Type I LastRead 0 FirstWrite -1}
		weights_load_1522 {Type I LastRead 0 FirstWrite -1}
		weights_load_1523 {Type I LastRead 0 FirstWrite -1}
		weights_load_1524 {Type I LastRead 0 FirstWrite -1}
		weights_load_1525 {Type I LastRead 0 FirstWrite -1}
		weights_load_1526 {Type I LastRead 0 FirstWrite -1}
		weights_load_1527 {Type I LastRead 0 FirstWrite -1}
		weights_load_1528 {Type I LastRead 0 FirstWrite -1}
		weights_load_1529 {Type I LastRead 0 FirstWrite -1}
		weights_load_1530 {Type I LastRead 0 FirstWrite -1}
		weights_load_1531 {Type I LastRead 0 FirstWrite -1}
		weights_load_1532 {Type I LastRead 0 FirstWrite -1}
		weights_load_1533 {Type I LastRead 0 FirstWrite -1}
		weights_load_1534 {Type I LastRead 0 FirstWrite -1}
		weights_load_1535 {Type I LastRead 0 FirstWrite -1}
		weights_load_1536 {Type I LastRead 0 FirstWrite -1}
		weights_load_1537 {Type I LastRead 0 FirstWrite -1}
		weights_load_1538 {Type I LastRead 0 FirstWrite -1}
		weights_load_1539 {Type I LastRead 0 FirstWrite -1}
		weights_load_1540 {Type I LastRead 0 FirstWrite -1}
		weights_load_1541 {Type I LastRead 0 FirstWrite -1}
		weights_load_1542 {Type I LastRead 0 FirstWrite -1}
		weights_load_1543 {Type I LastRead 0 FirstWrite -1}
		weights_load_1544 {Type I LastRead 0 FirstWrite -1}
		weights_load_1545 {Type I LastRead 0 FirstWrite -1}
		weights_load_1546 {Type I LastRead 0 FirstWrite -1}
		weights_load_1547 {Type I LastRead 0 FirstWrite -1}
		weights_load_1548 {Type I LastRead 0 FirstWrite -1}
		weights_load_1549 {Type I LastRead 0 FirstWrite -1}
		weights_load_1550 {Type I LastRead 0 FirstWrite -1}
		weights_load_1551 {Type I LastRead 0 FirstWrite -1}
		weights_load_1552 {Type I LastRead 0 FirstWrite -1}
		weights_load_1553 {Type I LastRead 0 FirstWrite -1}
		weights_load_1554 {Type I LastRead 0 FirstWrite -1}
		weights_load_1555 {Type I LastRead 0 FirstWrite -1}
		weights_load_1556 {Type I LastRead 0 FirstWrite -1}
		weights_load_1557 {Type I LastRead 0 FirstWrite -1}
		weights_load_1558 {Type I LastRead 0 FirstWrite -1}
		weights_load_1559 {Type I LastRead 0 FirstWrite -1}
		weights_load_1560 {Type I LastRead 0 FirstWrite -1}
		weights_load_1561 {Type I LastRead 0 FirstWrite -1}
		weights_load_1562 {Type I LastRead 0 FirstWrite -1}
		weights_load_1563 {Type I LastRead 0 FirstWrite -1}
		weights_load_1564 {Type I LastRead 0 FirstWrite -1}
		weights_load_1565 {Type I LastRead 0 FirstWrite -1}
		weights_load_1566 {Type I LastRead 0 FirstWrite -1}
		weights_load_1567 {Type I LastRead 0 FirstWrite -1}
		weights_load_1568 {Type I LastRead 0 FirstWrite -1}
		weights_load_1569 {Type I LastRead 0 FirstWrite -1}
		weights_load_1570 {Type I LastRead 0 FirstWrite -1}
		weights_load_1571 {Type I LastRead 0 FirstWrite -1}
		weights_load_1572 {Type I LastRead 0 FirstWrite -1}
		weights_load_1573 {Type I LastRead 0 FirstWrite -1}
		weights_load_1574 {Type I LastRead 0 FirstWrite -1}
		weights_load_1575 {Type I LastRead 0 FirstWrite -1}
		weights_load_1576 {Type I LastRead 0 FirstWrite -1}
		weights_load_1577 {Type I LastRead 0 FirstWrite -1}
		weights_load_1578 {Type I LastRead 0 FirstWrite -1}
		weights_load_1579 {Type I LastRead 0 FirstWrite -1}
		weights_load_1580 {Type I LastRead 0 FirstWrite -1}
		weights_load_1581 {Type I LastRead 0 FirstWrite -1}
		weights_load_1582 {Type I LastRead 0 FirstWrite -1}
		weights_load_1583 {Type I LastRead 0 FirstWrite -1}
		weights_load_1584 {Type I LastRead 0 FirstWrite -1}
		weights_load_1585 {Type I LastRead 0 FirstWrite -1}
		weights_load_1586 {Type I LastRead 0 FirstWrite -1}
		weights_load_1587 {Type I LastRead 0 FirstWrite -1}
		weights_load_1588 {Type I LastRead 0 FirstWrite -1}
		weights_load_1589 {Type I LastRead 0 FirstWrite -1}
		weights_load_1590 {Type I LastRead 0 FirstWrite -1}
		weights_load_1591 {Type I LastRead 0 FirstWrite -1}
		weights_load_1592 {Type I LastRead 0 FirstWrite -1}
		weights_load_1593 {Type I LastRead 0 FirstWrite -1}
		weights_load_1594 {Type I LastRead 0 FirstWrite -1}
		weights_load_1595 {Type I LastRead 0 FirstWrite -1}
		weights_load_1596 {Type I LastRead 0 FirstWrite -1}
		weights_load_1597 {Type I LastRead 0 FirstWrite -1}
		weights_load_1598 {Type I LastRead 0 FirstWrite -1}
		weights_load_1599 {Type I LastRead 0 FirstWrite -1}
		weights_load_1600 {Type I LastRead 0 FirstWrite -1}
		weights_load_1601 {Type I LastRead 0 FirstWrite -1}
		weights_load_1602 {Type I LastRead 0 FirstWrite -1}
		weights_load_1603 {Type I LastRead 0 FirstWrite -1}
		weights_load_1604 {Type I LastRead 0 FirstWrite -1}
		weights_load_1605 {Type I LastRead 0 FirstWrite -1}
		weights_load_1606 {Type I LastRead 0 FirstWrite -1}
		weights_load_1607 {Type I LastRead 0 FirstWrite -1}
		weights_load_1608 {Type I LastRead 0 FirstWrite -1}
		weights_load_1609 {Type I LastRead 0 FirstWrite -1}
		weights_load_1610 {Type I LastRead 0 FirstWrite -1}
		weights_load_1611 {Type I LastRead 0 FirstWrite -1}
		weights_load_1612 {Type I LastRead 0 FirstWrite -1}
		weights_load_1613 {Type I LastRead 0 FirstWrite -1}
		weights_load_1614 {Type I LastRead 0 FirstWrite -1}
		weights_load_1615 {Type I LastRead 0 FirstWrite -1}
		weights_load_1616 {Type I LastRead 0 FirstWrite -1}
		weights_load_1617 {Type I LastRead 0 FirstWrite -1}
		weights_load_1618 {Type I LastRead 0 FirstWrite -1}
		weights_load_1619 {Type I LastRead 0 FirstWrite -1}
		weights_load_1620 {Type I LastRead 0 FirstWrite -1}
		weights_load_1621 {Type I LastRead 0 FirstWrite -1}
		weights_load_1622 {Type I LastRead 0 FirstWrite -1}
		weights_load_1623 {Type I LastRead 0 FirstWrite -1}
		weights_load_1624 {Type I LastRead 0 FirstWrite -1}
		weights_load_1625 {Type I LastRead 0 FirstWrite -1}
		weights_load_1626 {Type I LastRead 0 FirstWrite -1}
		weights_load_1627 {Type I LastRead 0 FirstWrite -1}
		weights_load_1628 {Type I LastRead 0 FirstWrite -1}
		weights_load_1629 {Type I LastRead 0 FirstWrite -1}
		weights_load_1630 {Type I LastRead 0 FirstWrite -1}
		weights_load_1631 {Type I LastRead 0 FirstWrite -1}
		weights_load_1632 {Type I LastRead 0 FirstWrite -1}
		weights_load_1633 {Type I LastRead 0 FirstWrite -1}
		weights_load_1634 {Type I LastRead 0 FirstWrite -1}
		weights_load_1635 {Type I LastRead 0 FirstWrite -1}
		weights_load_1636 {Type I LastRead 0 FirstWrite -1}
		weights_load_1637 {Type I LastRead 0 FirstWrite -1}
		weights_load_1638 {Type I LastRead 0 FirstWrite -1}
		weights_load_1639 {Type I LastRead 0 FirstWrite -1}
		weights_load_1640 {Type I LastRead 0 FirstWrite -1}
		weights_load_1641 {Type I LastRead 0 FirstWrite -1}
		weights_load_1642 {Type I LastRead 0 FirstWrite -1}
		weights_load_1643 {Type I LastRead 0 FirstWrite -1}
		weights_load_1644 {Type I LastRead 0 FirstWrite -1}
		weights_load_1645 {Type I LastRead 0 FirstWrite -1}
		weights_load_1646 {Type I LastRead 0 FirstWrite -1}
		weights_load_1647 {Type I LastRead 0 FirstWrite -1}
		weights_load_1648 {Type I LastRead 0 FirstWrite -1}
		weights_load_1649 {Type I LastRead 0 FirstWrite -1}
		weights_load_1650 {Type I LastRead 0 FirstWrite -1}
		weights_load_1651 {Type I LastRead 0 FirstWrite -1}
		weights_load_1652 {Type I LastRead 0 FirstWrite -1}
		weights_load_1653 {Type I LastRead 0 FirstWrite -1}
		weights_load_1654 {Type I LastRead 0 FirstWrite -1}
		weights_load_1655 {Type I LastRead 0 FirstWrite -1}
		weights_load_1656 {Type I LastRead 0 FirstWrite -1}
		weights_load_1657 {Type I LastRead 0 FirstWrite -1}
		weights_load_1658 {Type I LastRead 0 FirstWrite -1}
		weights_load_1659 {Type I LastRead 0 FirstWrite -1}
		weights_load_1660 {Type I LastRead 0 FirstWrite -1}
		weights_load_1661 {Type I LastRead 0 FirstWrite -1}
		weights_load_1662 {Type I LastRead 0 FirstWrite -1}
		weights_load_1663 {Type I LastRead 0 FirstWrite -1}
		weights_load_1664 {Type I LastRead 0 FirstWrite -1}
		weights_load_1665 {Type I LastRead 0 FirstWrite -1}
		weights_load_1666 {Type I LastRead 0 FirstWrite -1}
		weights_load_1667 {Type I LastRead 0 FirstWrite -1}
		weights_load_1668 {Type I LastRead 0 FirstWrite -1}
		weights_load_1669 {Type I LastRead 0 FirstWrite -1}
		weights_load_1670 {Type I LastRead 0 FirstWrite -1}
		weights_load_1671 {Type I LastRead 0 FirstWrite -1}
		weights_load_1672 {Type I LastRead 0 FirstWrite -1}
		weights_load_1673 {Type I LastRead 0 FirstWrite -1}
		weights_load_1674 {Type I LastRead 0 FirstWrite -1}
		weights_load_1675 {Type I LastRead 0 FirstWrite -1}
		weights_load_1676 {Type I LastRead 0 FirstWrite -1}
		weights_load_1677 {Type I LastRead 0 FirstWrite -1}
		weights_load_1678 {Type I LastRead 0 FirstWrite -1}
		weights_load_1679 {Type I LastRead 0 FirstWrite -1}
		weights_load_1680 {Type I LastRead 0 FirstWrite -1}
		weights_load_1681 {Type I LastRead 0 FirstWrite -1}
		weights_load_1682 {Type I LastRead 0 FirstWrite -1}
		weights_load_1683 {Type I LastRead 0 FirstWrite -1}
		weights_load_1684 {Type I LastRead 0 FirstWrite -1}
		weights_load_1685 {Type I LastRead 0 FirstWrite -1}
		weights_load_1686 {Type I LastRead 0 FirstWrite -1}
		weights_load_1687 {Type I LastRead 0 FirstWrite -1}
		weights_load_1688 {Type I LastRead 0 FirstWrite -1}
		weights_load_1689 {Type I LastRead 0 FirstWrite -1}
		weights_load_1690 {Type I LastRead 0 FirstWrite -1}
		weights_load_1691 {Type I LastRead 0 FirstWrite -1}
		weights_load_1692 {Type I LastRead 0 FirstWrite -1}
		weights_load_1693 {Type I LastRead 0 FirstWrite -1}
		weights_load_1694 {Type I LastRead 0 FirstWrite -1}
		weights_load_1695 {Type I LastRead 0 FirstWrite -1}
		weights_load_1696 {Type I LastRead 0 FirstWrite -1}
		weights_load_1697 {Type I LastRead 0 FirstWrite -1}
		weights_load_1698 {Type I LastRead 0 FirstWrite -1}
		weights_load_1699 {Type I LastRead 0 FirstWrite -1}
		weights_load_1700 {Type I LastRead 0 FirstWrite -1}
		weights_load_1701 {Type I LastRead 0 FirstWrite -1}
		weights_load_1702 {Type I LastRead 0 FirstWrite -1}
		weights_load_1703 {Type I LastRead 0 FirstWrite -1}
		weights_load_1704 {Type I LastRead 0 FirstWrite -1}
		weights_load_1705 {Type I LastRead 0 FirstWrite -1}
		weights_load_1706 {Type I LastRead 0 FirstWrite -1}
		weights_load_1707 {Type I LastRead 0 FirstWrite -1}
		weights_load_1708 {Type I LastRead 0 FirstWrite -1}
		weights_load_1709 {Type I LastRead 0 FirstWrite -1}
		weights_load_1710 {Type I LastRead 0 FirstWrite -1}
		weights_load_1711 {Type I LastRead 0 FirstWrite -1}
		weights_load_1712 {Type I LastRead 0 FirstWrite -1}
		weights_load_1713 {Type I LastRead 0 FirstWrite -1}
		weights_load_1714 {Type I LastRead 0 FirstWrite -1}
		weights_load_1715 {Type I LastRead 0 FirstWrite -1}
		weights_load_1716 {Type I LastRead 0 FirstWrite -1}
		weights_load_1717 {Type I LastRead 0 FirstWrite -1}
		weights_load_1718 {Type I LastRead 0 FirstWrite -1}
		weights_load_1719 {Type I LastRead 0 FirstWrite -1}
		weights_load_1720 {Type I LastRead 0 FirstWrite -1}
		weights_load_1721 {Type I LastRead 0 FirstWrite -1}
		weights_load_1722 {Type I LastRead 0 FirstWrite -1}
		weights_load_1723 {Type I LastRead 0 FirstWrite -1}
		weights_load_1724 {Type I LastRead 0 FirstWrite -1}
		weights_load_1725 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 1

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13138", "Max" : "13138"}
	, {"Name" : "Interval", "Min" : "13138", "Max" : "13138"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_64_padded_window_stream_7 { ap_fifo {  { conv2d_64_padded_window_stream_7_dout fifo_port_we 0 288 }  { conv2d_64_padded_window_stream_7_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_7_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_7_empty_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_7_read fifo_data 1 1 } } }
	weights { ap_memory {  { weights_address0 mem_address 1 10 }  { weights_ce0 mem_ce 1 1 }  { weights_q0 mem_dout 0 32 } } }
	in_channel_map_stream_7 { ap_fifo {  { in_channel_map_stream_7_din fifo_port_we 1 32 }  { in_channel_map_stream_7_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_7_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_7_full_n fifo_status 0 1 }  { in_channel_map_stream_7_write fifo_data 1 1 } } }
}
