set moduleName accel
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_chain
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {accel}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem int 512 regular {axi_master 2}  }
	{ gmem_softmax_weights int 64 regular {axi_slave 0}  }
	{ layer_output int 64 regular {axi_slave 0}  }
	{ label_r int 32 regular {axi_slave 0}  }
	{ input_error int 64 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "gmem_softmax_weights","offset": { "type": "dynamic","port_name": "gmem_softmax_weights","bundle": "control"},"direction": "READONLY"},{"cName": "layer_output","offset": { "type": "dynamic","port_name": "layer_output","bundle": "control"},"direction": "READONLY"},{"cName": "input_error","offset": { "type": "dynamic","port_name": "input_error","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "gmem_softmax_weights", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "layer_output", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "label_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "input_error", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":59}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"accel","role":"start","value":"0","valid_bit":"0"},{"name":"accel","role":"continue","value":"0","valid_bit":"4"},{"name":"accel","role":"auto_start","value":"0","valid_bit":"7"},{"name":"gmem_softmax_weights","role":"data","value":"16"},{"name":"layer_output","role":"data","value":"28"},{"name":"label_r","role":"data","value":"40"},{"name":"input_error","role":"data","value":"48"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"accel","role":"start","value":"0","valid_bit":"0"},{"name":"accel","role":"done","value":"0","valid_bit":"1"},{"name":"accel","role":"idle","value":"0","valid_bit":"2"},{"name":"accel","role":"ready","value":"0","valid_bit":"3"},{"name":"accel","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "10", "15", "40", "43", "44", "45", "46", "47", "48", "49"],
		"CDFG" : "accel",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1668", "EstimateLatencyMax" : "1668",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "4", "Name" : "entry_proc_U0"},
			{"ID" : "5", "Name" : "save_variables_locally_10u_128u_U0"}],
		"OutputProcess" : [
			{"ID" : "40", "Name" : "write_mem_float_128u_U0"}],
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "save_variables_locally_10u_128u_U0", "Port" : "gmem"},
					{"ID" : "40", "SubInstance" : "write_mem_float_128u_U0", "Port" : "gmem"}]},
			{"Name" : "gmem_softmax_weights", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer_output", "Type" : "None", "Direction" : "I"},
			{"Name" : "label_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_error", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.softmax_weights_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc_U0", "Parent" : "0",
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
			{"Name" : "label_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "label_r_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["10"], "DependentChan" : "43", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "label_r_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_error", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_error_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["40"], "DependentChan" : "44", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "input_error_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.save_variables_locally_10u_128u_U0", "Parent" : "0", "Child" : ["6", "8"],
		"CDFG" : "save_variables_locally_10u_128u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1439", "EstimateLatencyMax" : "1439",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_save_variables_locally_10u_128u_Pipeline_save_weights_L_fu_52", "Port" : "gmem", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "8", "SubInstance" : "grp_save_variables_locally_10u_128u_Pipeline_stream_input_fu_63", "Port" : "gmem", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "gmem_softmax_weights", "Type" : "None", "Direction" : "I"},
			{"Name" : "softmax_weights", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["15"], "DependentChan" : "1",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_save_variables_locally_10u_128u_Pipeline_save_weights_L_fu_52", "Port" : "softmax_weights", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "layer_output", "Type" : "None", "Direction" : "I"},
			{"Name" : "softmax_f_map_stream14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["10"], "DependentChan" : "45", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_save_variables_locally_10u_128u_Pipeline_stream_input_fu_63", "Port" : "softmax_f_map_stream14", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.save_variables_locally_10u_128u_U0.grp_save_variables_locally_10u_128u_Pipeline_save_weights_L_fu_52", "Parent" : "5", "Child" : ["7"],
		"CDFG" : "save_variables_locally_10u_128u_Pipeline_save_weights_L",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1353", "EstimateLatencyMax" : "1353",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "softmax_weights", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "gmem_softmax_weights", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_softmax_weights_cast", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "save_weights_L", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter72", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter72", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.save_variables_locally_10u_128u_U0.grp_save_variables_locally_10u_128u_Pipeline_save_weights_L_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.save_variables_locally_10u_128u_U0.grp_save_variables_locally_10u_128u_Pipeline_stream_input_fu_63", "Parent" : "5", "Child" : ["9"],
		"CDFG" : "save_variables_locally_10u_128u_Pipeline_stream_input",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "83", "EstimateLatencyMax" : "83",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "softmax_f_map_stream14", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "softmax_f_map_stream14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer_output", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "stream_input", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter72", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter72", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.save_variables_locally_10u_128u_U0.grp_save_variables_locally_10u_128u_Pipeline_stream_input_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparce_categorical_cross_entropy_10u_U0", "Parent" : "0", "Child" : ["11"],
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
		"StartSource" : "4",
		"StartFifo" : "start_for_sparce_categorical_cross_entropy_10u_U0_U",
		"Port" : [
			{"Name" : "softmax_f_map_stream14", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "45", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sparce_categorical_cross_entropy_10u_Pipeline_output_error_fu_38", "Port" : "softmax_f_map_stream14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "label_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "43", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "label_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "softmax_output_error_stream15", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["15"], "DependentChan" : "46", "DependentChanDepth" : "6", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sparce_categorical_cross_entropy_10u_Pipeline_output_error_fu_38", "Port" : "softmax_output_error_stream15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sparce_categorical_cross_entropy_10u_U0.grp_sparce_categorical_cross_entropy_10u_Pipeline_output_error_fu_38", "Parent" : "10", "Child" : ["12", "13", "14"],
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
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sparce_categorical_cross_entropy_10u_U0.grp_sparce_categorical_cross_entropy_10u_Pipeline_output_error_fu_38.fsub_32ns_32ns_32_4_full_dsp_1_U18", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sparce_categorical_cross_entropy_10u_U0.grp_sparce_categorical_cross_entropy_10u_Pipeline_output_error_fu_38.uitofp_32ns_32_4_no_dsp_1_U19", "Parent" : "11"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sparce_categorical_cross_entropy_10u_U0.grp_sparce_categorical_cross_entropy_10u_Pipeline_output_error_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.softmax_error_propagation_10u_128u_U0", "Parent" : "0", "Child" : ["16", "17", "19"],
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
			{"Name" : "softmax_output_error_stream15", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "46", "DependentChanDepth" : "6", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_softmax_error_propagation_10u_128u_Pipeline_store_output_error_fu_137", "Port" : "softmax_output_error_stream15", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "1",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145", "Port" : "weights", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "softmax_input_error_stream16", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["40"], "DependentChan" : "47", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145", "Port" : "softmax_input_error_stream16", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.softmax_error_propagation_10u_128u_U0.output_error_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.softmax_error_propagation_10u_128u_U0.grp_softmax_error_propagation_10u_128u_Pipeline_store_output_error_fu_137", "Parent" : "15", "Child" : ["18"],
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
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_error_propagation_10u_128u_U0.grp_softmax_error_propagation_10u_128u_Pipeline_store_output_error_fu_137.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.softmax_error_propagation_10u_128u_U0.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145", "Parent" : "15", "Child" : ["20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39"],
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
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_error_propagation_10u_128u_U0.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fadd_32ns_32ns_32_4_full_dsp_1_U30", "Parent" : "19"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_error_propagation_10u_128u_U0.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fadd_32ns_32ns_32_4_full_dsp_1_U31", "Parent" : "19"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_error_propagation_10u_128u_U0.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fadd_32ns_32ns_32_4_full_dsp_1_U32", "Parent" : "19"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_error_propagation_10u_128u_U0.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fadd_32ns_32ns_32_4_full_dsp_1_U33", "Parent" : "19"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_error_propagation_10u_128u_U0.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fadd_32ns_32ns_32_4_full_dsp_1_U34", "Parent" : "19"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_error_propagation_10u_128u_U0.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fadd_32ns_32ns_32_4_full_dsp_1_U35", "Parent" : "19"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_error_propagation_10u_128u_U0.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fadd_32ns_32ns_32_4_full_dsp_1_U36", "Parent" : "19"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_error_propagation_10u_128u_U0.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fadd_32ns_32ns_32_4_full_dsp_1_U37", "Parent" : "19"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_error_propagation_10u_128u_U0.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fadd_32ns_32ns_32_4_full_dsp_1_U38", "Parent" : "19"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_error_propagation_10u_128u_U0.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fmul_32ns_32ns_32_3_max_dsp_1_U39", "Parent" : "19"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_error_propagation_10u_128u_U0.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fmul_32ns_32ns_32_3_max_dsp_1_U40", "Parent" : "19"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_error_propagation_10u_128u_U0.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fmul_32ns_32ns_32_3_max_dsp_1_U41", "Parent" : "19"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_error_propagation_10u_128u_U0.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fmul_32ns_32ns_32_3_max_dsp_1_U42", "Parent" : "19"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_error_propagation_10u_128u_U0.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fmul_32ns_32ns_32_3_max_dsp_1_U43", "Parent" : "19"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_error_propagation_10u_128u_U0.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fmul_32ns_32ns_32_3_max_dsp_1_U44", "Parent" : "19"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_error_propagation_10u_128u_U0.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fmul_32ns_32ns_32_3_max_dsp_1_U45", "Parent" : "19"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_error_propagation_10u_128u_U0.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fmul_32ns_32ns_32_3_max_dsp_1_U46", "Parent" : "19"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_error_propagation_10u_128u_U0.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fmul_32ns_32ns_32_3_max_dsp_1_U47", "Parent" : "19"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_error_propagation_10u_128u_U0.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.fmul_32ns_32ns_32_3_max_dsp_1_U48", "Parent" : "19"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_error_propagation_10u_128u_U0.grp_softmax_error_propagation_10u_128u_Pipeline_input_fu_145.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.write_mem_float_128u_U0", "Parent" : "0", "Child" : ["41"],
		"CDFG" : "write_mem_float_128u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "202", "EstimateLatencyMax" : "202",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "4",
		"StartFifo" : "start_for_write_mem_float_128u_U0_U",
		"Port" : [
			{"Name" : "softmax_input_error_stream16", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["15"], "DependentChan" : "47", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_write_mem_float_128u_Pipeline_write_out_mem_fu_66", "Port" : "softmax_input_error_stream16", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_write_mem_float_128u_Pipeline_write_out_mem_fu_66", "Port" : "gmem", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "output_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "44", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "output_r_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.write_mem_float_128u_U0.grp_write_mem_float_128u_Pipeline_write_out_mem_fu_66", "Parent" : "40", "Child" : ["42"],
		"CDFG" : "write_mem_float_128u_Pipeline_write_out_mem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "131", "EstimateLatencyMax" : "131",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln40", "Type" : "None", "Direction" : "I"},
			{"Name" : "softmax_input_error_stream16", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "softmax_input_error_stream16_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "write_out_mem", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.write_mem_float_128u_U0.grp_write_mem_float_128u_Pipeline_write_out_mem_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.label_r_c_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_error_c_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.softmax_f_map_stream_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.softmax_output_error_stream_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.softmax_input_error_stream_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_sparce_categorical_cross_entropy_10u_U0_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_write_mem_float_128u_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	accel {
		gmem {Type IO LastRead 71 FirstWrite -1}
		gmem_softmax_weights {Type I LastRead 0 FirstWrite -1}
		layer_output {Type I LastRead 0 FirstWrite -1}
		label_r {Type I LastRead 1 FirstWrite -1}
		input_error {Type I LastRead 1 FirstWrite -1}}
	entry_proc {
		label_r {Type I LastRead 0 FirstWrite -1}
		label_r_c {Type O LastRead -1 FirstWrite 0}
		input_error {Type I LastRead 0 FirstWrite -1}
		input_error_c {Type O LastRead -1 FirstWrite 0}}
	save_variables_locally_10u_128u_s {
		gmem {Type I LastRead 71 FirstWrite -1}
		gmem_softmax_weights {Type I LastRead 0 FirstWrite -1}
		softmax_weights {Type O LastRead -1 FirstWrite 72}
		layer_output {Type I LastRead 1 FirstWrite -1}
		softmax_f_map_stream14 {Type O LastRead -1 FirstWrite 72}}
	save_variables_locally_10u_128u_Pipeline_save_weights_L {
		softmax_weights {Type O LastRead -1 FirstWrite 72}
		gmem_softmax_weights {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 71 FirstWrite -1}
		gmem_softmax_weights_cast {Type I LastRead 0 FirstWrite -1}}
	save_variables_locally_10u_128u_Pipeline_stream_input {
		softmax_f_map_stream14 {Type O LastRead -1 FirstWrite 72}
		layer_output {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 71 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}}
	sparce_categorical_cross_entropy_10u_s {
		softmax_f_map_stream14 {Type I LastRead 3 FirstWrite -1}
		label_r {Type I LastRead 0 FirstWrite -1}
		softmax_output_error_stream15 {Type O LastRead -1 FirstWrite 8}}
	sparce_categorical_cross_entropy_10u_Pipeline_output_error {
		softmax_f_map_stream14 {Type I LastRead 3 FirstWrite -1}
		label_load {Type I LastRead 0 FirstWrite -1}
		softmax_output_error_stream15 {Type O LastRead -1 FirstWrite 8}}
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
		softmax_input_error_stream16 {Type O LastRead -1 FirstWrite 21}}
	write_mem_float_128u_s {
		softmax_input_error_stream16 {Type I LastRead 1 FirstWrite -1}
		gmem {Type O LastRead 4 FirstWrite 2}
		output_r {Type I LastRead 0 FirstWrite -1}}
	write_mem_float_128u_Pipeline_write_out_mem {
		gmem {Type O LastRead -1 FirstWrite 2}
		sext_ln40 {Type I LastRead 0 FirstWrite -1}
		softmax_input_error_stream16 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1668", "Max" : "1668"}
	, {"Name" : "Interval", "Min" : "1440", "Max" : "1440"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 8 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 512 }  { m_axi_gmem_WSTRB STRB 1 64 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 8 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 512 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 64 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 64 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
