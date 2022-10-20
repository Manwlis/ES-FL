set moduleName write_gmem
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
set C_modelName {write_gmem}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_32_f_map_out130 int 32 regular {fifo 0 volatile }  }
	{ maxp2d_32_f_map_out131 int 32 regular {fifo 0 volatile }  }
	{ conv2d_64_f_map_out132 int 32 regular {fifo 0 volatile }  }
	{ maxp2d_64_f_map_out133 int 32 regular {fifo 0 volatile }  }
	{ dense_f_map_out134 int 32 regular {fifo 0 volatile }  }
	{ softmax_f_map_out135 int 32 regular {fifo 0 volatile }  }
	{ gmem int 512 regular {axi_master 1}  }
	{ gmem_conv2d_32_feature_map int 64 regular {fifo 0}  }
	{ gmem_maxp2d_32_feature_map int 64 regular {fifo 0}  }
	{ gmem_conv2d_64_feature_map int 64 regular {fifo 0}  }
	{ gmem_maxp2d_64_feature_map int 64 regular {fifo 0}  }
	{ gmem_dense_feature_map int 64 regular {fifo 0}  }
	{ gmem_softmax_feature_map int 64 regular {fifo 0}  }
	{ conv2d_32_activations_stream123 int 1 regular {fifo 0 volatile }  }
	{ maxp2d_32_activations_window_stream int 4 regular {fifo 0 volatile }  }
	{ conv2d_64_activations_stream126 int 1 regular {fifo 0 volatile }  }
	{ maxp2d_64_activations_window_stream int 4 regular {fifo 0 volatile }  }
	{ dense_activations_stream129 int 1 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_32_f_map_out130", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "maxp2d_32_f_map_out131", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv2d_64_f_map_out132", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "maxp2d_64_f_map_out133", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dense_f_map_out134", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "softmax_f_map_out135", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "gmem_conv2d_32_weights","offset": { "type": "dynamic","port_name": "gmem_conv2d_32_weights","bundle": "control"},"direction": "READONLY"},{"cName": "gmem_conv2d_32_biases","offset": { "type": "dynamic","port_name": "gmem_conv2d_32_biases","bundle": "control"},"direction": "READONLY"},{"cName": "gmem_conv2d_64_weights","offset": { "type": "dynamic","port_name": "gmem_conv2d_64_weights","bundle": "control"},"direction": "READONLY"},{"cName": "gmem_conv2d_64_biases","offset": { "type": "dynamic","port_name": "gmem_conv2d_64_biases","bundle": "control"},"direction": "READONLY"},{"cName": "gmem_dense_weights","offset": { "type": "dynamic","port_name": "gmem_dense_weights","bundle": "control"},"direction": "READONLY"},{"cName": "gmem_dense_biases","offset": { "type": "dynamic","port_name": "gmem_dense_biases","bundle": "control"},"direction": "READONLY"},{"cName": "gmem_softmax_weights","offset": { "type": "dynamic","port_name": "gmem_softmax_weights","bundle": "control"},"direction": "READONLY"},{"cName": "gmem_softmax_biases","offset": { "type": "dynamic","port_name": "gmem_softmax_biases","bundle": "control"},"direction": "READONLY"},{"cName": "gmem_conv2d_32_feature_map","offset": { "type": "dynamic","port_name": "gmem_conv2d_32_feature_map","bundle": "control"},"direction": "WRITEONLY"},{"cName": "gmem_maxp2d_32_feature_map","offset": { "type": "dynamic","port_name": "gmem_maxp2d_32_feature_map","bundle": "control"},"direction": "WRITEONLY"},{"cName": "gmem_conv2d_64_feature_map","offset": { "type": "dynamic","port_name": "gmem_conv2d_64_feature_map","bundle": "control"},"direction": "WRITEONLY"},{"cName": "gmem_maxp2d_64_feature_map","offset": { "type": "dynamic","port_name": "gmem_maxp2d_64_feature_map","bundle": "control"},"direction": "WRITEONLY"},{"cName": "gmem_dense_feature_map","offset": { "type": "dynamic","port_name": "gmem_dense_feature_map","bundle": "control"},"direction": "WRITEONLY"},{"cName": "gmem_softmax_feature_map","offset": { "type": "dynamic","port_name": "gmem_softmax_feature_map","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "gmem_conv2d_32_feature_map", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_maxp2d_32_feature_map", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_conv2d_64_feature_map", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_maxp2d_64_feature_map", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_dense_feature_map", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_softmax_feature_map", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "conv2d_32_activations_stream123", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "maxp2d_32_activations_window_stream", "interface" : "fifo", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "conv2d_64_activations_stream126", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "maxp2d_64_activations_window_stream", "interface" : "fifo", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "dense_activations_stream129", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 138
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ conv2d_32_f_map_out130_dout sc_in sc_lv 32 signal 0 } 
	{ conv2d_32_f_map_out130_num_data_valid sc_in sc_lv 16 signal 0 } 
	{ conv2d_32_f_map_out130_fifo_cap sc_in sc_lv 16 signal 0 } 
	{ conv2d_32_f_map_out130_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_32_f_map_out130_read sc_out sc_logic 1 signal 0 } 
	{ maxp2d_32_f_map_out131_dout sc_in sc_lv 32 signal 1 } 
	{ maxp2d_32_f_map_out131_num_data_valid sc_in sc_lv 14 signal 1 } 
	{ maxp2d_32_f_map_out131_fifo_cap sc_in sc_lv 14 signal 1 } 
	{ maxp2d_32_f_map_out131_empty_n sc_in sc_logic 1 signal 1 } 
	{ maxp2d_32_f_map_out131_read sc_out sc_logic 1 signal 1 } 
	{ conv2d_64_f_map_out132_dout sc_in sc_lv 32 signal 2 } 
	{ conv2d_64_f_map_out132_num_data_valid sc_in sc_lv 15 signal 2 } 
	{ conv2d_64_f_map_out132_fifo_cap sc_in sc_lv 15 signal 2 } 
	{ conv2d_64_f_map_out132_empty_n sc_in sc_logic 1 signal 2 } 
	{ conv2d_64_f_map_out132_read sc_out sc_logic 1 signal 2 } 
	{ maxp2d_64_f_map_out133_dout sc_in sc_lv 32 signal 3 } 
	{ maxp2d_64_f_map_out133_num_data_valid sc_in sc_lv 13 signal 3 } 
	{ maxp2d_64_f_map_out133_fifo_cap sc_in sc_lv 13 signal 3 } 
	{ maxp2d_64_f_map_out133_empty_n sc_in sc_logic 1 signal 3 } 
	{ maxp2d_64_f_map_out133_read sc_out sc_logic 1 signal 3 } 
	{ dense_f_map_out134_dout sc_in sc_lv 32 signal 4 } 
	{ dense_f_map_out134_num_data_valid sc_in sc_lv 8 signal 4 } 
	{ dense_f_map_out134_fifo_cap sc_in sc_lv 8 signal 4 } 
	{ dense_f_map_out134_empty_n sc_in sc_logic 1 signal 4 } 
	{ dense_f_map_out134_read sc_out sc_logic 1 signal 4 } 
	{ softmax_f_map_out135_dout sc_in sc_lv 32 signal 5 } 
	{ softmax_f_map_out135_num_data_valid sc_in sc_lv 5 signal 5 } 
	{ softmax_f_map_out135_fifo_cap sc_in sc_lv 5 signal 5 } 
	{ softmax_f_map_out135_empty_n sc_in sc_logic 1 signal 5 } 
	{ softmax_f_map_out135_read sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 512 signal 6 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 64 signal 6 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 512 signal 6 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem_RFIFONUM sc_in sc_lv 9 signal 6 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 6 } 
	{ gmem_conv2d_32_feature_map_dout sc_in sc_lv 64 signal 7 } 
	{ gmem_conv2d_32_feature_map_num_data_valid sc_in sc_lv 5 signal 7 } 
	{ gmem_conv2d_32_feature_map_fifo_cap sc_in sc_lv 5 signal 7 } 
	{ gmem_conv2d_32_feature_map_empty_n sc_in sc_logic 1 signal 7 } 
	{ gmem_conv2d_32_feature_map_read sc_out sc_logic 1 signal 7 } 
	{ gmem_maxp2d_32_feature_map_dout sc_in sc_lv 64 signal 8 } 
	{ gmem_maxp2d_32_feature_map_num_data_valid sc_in sc_lv 5 signal 8 } 
	{ gmem_maxp2d_32_feature_map_fifo_cap sc_in sc_lv 5 signal 8 } 
	{ gmem_maxp2d_32_feature_map_empty_n sc_in sc_logic 1 signal 8 } 
	{ gmem_maxp2d_32_feature_map_read sc_out sc_logic 1 signal 8 } 
	{ gmem_conv2d_64_feature_map_dout sc_in sc_lv 64 signal 9 } 
	{ gmem_conv2d_64_feature_map_num_data_valid sc_in sc_lv 5 signal 9 } 
	{ gmem_conv2d_64_feature_map_fifo_cap sc_in sc_lv 5 signal 9 } 
	{ gmem_conv2d_64_feature_map_empty_n sc_in sc_logic 1 signal 9 } 
	{ gmem_conv2d_64_feature_map_read sc_out sc_logic 1 signal 9 } 
	{ gmem_maxp2d_64_feature_map_dout sc_in sc_lv 64 signal 10 } 
	{ gmem_maxp2d_64_feature_map_num_data_valid sc_in sc_lv 5 signal 10 } 
	{ gmem_maxp2d_64_feature_map_fifo_cap sc_in sc_lv 5 signal 10 } 
	{ gmem_maxp2d_64_feature_map_empty_n sc_in sc_logic 1 signal 10 } 
	{ gmem_maxp2d_64_feature_map_read sc_out sc_logic 1 signal 10 } 
	{ gmem_dense_feature_map_dout sc_in sc_lv 64 signal 11 } 
	{ gmem_dense_feature_map_num_data_valid sc_in sc_lv 5 signal 11 } 
	{ gmem_dense_feature_map_fifo_cap sc_in sc_lv 5 signal 11 } 
	{ gmem_dense_feature_map_empty_n sc_in sc_logic 1 signal 11 } 
	{ gmem_dense_feature_map_read sc_out sc_logic 1 signal 11 } 
	{ gmem_softmax_feature_map_dout sc_in sc_lv 64 signal 12 } 
	{ gmem_softmax_feature_map_num_data_valid sc_in sc_lv 5 signal 12 } 
	{ gmem_softmax_feature_map_fifo_cap sc_in sc_lv 5 signal 12 } 
	{ gmem_softmax_feature_map_empty_n sc_in sc_logic 1 signal 12 } 
	{ gmem_softmax_feature_map_read sc_out sc_logic 1 signal 12 } 
	{ conv2d_32_activations_stream123_dout sc_in sc_lv 1 signal 13 } 
	{ conv2d_32_activations_stream123_num_data_valid sc_in sc_lv 16 signal 13 } 
	{ conv2d_32_activations_stream123_fifo_cap sc_in sc_lv 16 signal 13 } 
	{ conv2d_32_activations_stream123_empty_n sc_in sc_logic 1 signal 13 } 
	{ conv2d_32_activations_stream123_read sc_out sc_logic 1 signal 13 } 
	{ maxp2d_32_activations_window_stream_dout sc_in sc_lv 4 signal 14 } 
	{ maxp2d_32_activations_window_stream_num_data_valid sc_in sc_lv 14 signal 14 } 
	{ maxp2d_32_activations_window_stream_fifo_cap sc_in sc_lv 14 signal 14 } 
	{ maxp2d_32_activations_window_stream_empty_n sc_in sc_logic 1 signal 14 } 
	{ maxp2d_32_activations_window_stream_read sc_out sc_logic 1 signal 14 } 
	{ conv2d_64_activations_stream126_dout sc_in sc_lv 1 signal 15 } 
	{ conv2d_64_activations_stream126_num_data_valid sc_in sc_lv 15 signal 15 } 
	{ conv2d_64_activations_stream126_fifo_cap sc_in sc_lv 15 signal 15 } 
	{ conv2d_64_activations_stream126_empty_n sc_in sc_logic 1 signal 15 } 
	{ conv2d_64_activations_stream126_read sc_out sc_logic 1 signal 15 } 
	{ maxp2d_64_activations_window_stream_dout sc_in sc_lv 4 signal 16 } 
	{ maxp2d_64_activations_window_stream_num_data_valid sc_in sc_lv 13 signal 16 } 
	{ maxp2d_64_activations_window_stream_fifo_cap sc_in sc_lv 13 signal 16 } 
	{ maxp2d_64_activations_window_stream_empty_n sc_in sc_logic 1 signal 16 } 
	{ maxp2d_64_activations_window_stream_read sc_out sc_logic 1 signal 16 } 
	{ dense_activations_stream129_dout sc_in sc_lv 1 signal 17 } 
	{ dense_activations_stream129_num_data_valid sc_in sc_lv 8 signal 17 } 
	{ dense_activations_stream129_fifo_cap sc_in sc_lv 8 signal 17 } 
	{ dense_activations_stream129_empty_n sc_in sc_logic 1 signal 17 } 
	{ dense_activations_stream129_read sc_out sc_logic 1 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv2d_32_f_map_out130_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_32_f_map_out130", "role": "dout" }} , 
 	{ "name": "conv2d_32_f_map_out130_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv2d_32_f_map_out130", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_32_f_map_out130_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv2d_32_f_map_out130", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_32_f_map_out130_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_32_f_map_out130", "role": "empty_n" }} , 
 	{ "name": "conv2d_32_f_map_out130_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_32_f_map_out130", "role": "read" }} , 
 	{ "name": "maxp2d_32_f_map_out131_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "maxp2d_32_f_map_out131", "role": "dout" }} , 
 	{ "name": "maxp2d_32_f_map_out131_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "maxp2d_32_f_map_out131", "role": "num_data_valid" }} , 
 	{ "name": "maxp2d_32_f_map_out131_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "maxp2d_32_f_map_out131", "role": "fifo_cap" }} , 
 	{ "name": "maxp2d_32_f_map_out131_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "maxp2d_32_f_map_out131", "role": "empty_n" }} , 
 	{ "name": "maxp2d_32_f_map_out131_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "maxp2d_32_f_map_out131", "role": "read" }} , 
 	{ "name": "conv2d_64_f_map_out132_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_f_map_out132", "role": "dout" }} , 
 	{ "name": "conv2d_64_f_map_out132_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv2d_64_f_map_out132", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_f_map_out132_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv2d_64_f_map_out132", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_f_map_out132_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_f_map_out132", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_f_map_out132_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_f_map_out132", "role": "read" }} , 
 	{ "name": "maxp2d_64_f_map_out133_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "maxp2d_64_f_map_out133", "role": "dout" }} , 
 	{ "name": "maxp2d_64_f_map_out133_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "maxp2d_64_f_map_out133", "role": "num_data_valid" }} , 
 	{ "name": "maxp2d_64_f_map_out133_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "maxp2d_64_f_map_out133", "role": "fifo_cap" }} , 
 	{ "name": "maxp2d_64_f_map_out133_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "maxp2d_64_f_map_out133", "role": "empty_n" }} , 
 	{ "name": "maxp2d_64_f_map_out133_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "maxp2d_64_f_map_out133", "role": "read" }} , 
 	{ "name": "dense_f_map_out134_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dense_f_map_out134", "role": "dout" }} , 
 	{ "name": "dense_f_map_out134_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dense_f_map_out134", "role": "num_data_valid" }} , 
 	{ "name": "dense_f_map_out134_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dense_f_map_out134", "role": "fifo_cap" }} , 
 	{ "name": "dense_f_map_out134_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_f_map_out134", "role": "empty_n" }} , 
 	{ "name": "dense_f_map_out134_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_f_map_out134", "role": "read" }} , 
 	{ "name": "softmax_f_map_out135_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "softmax_f_map_out135", "role": "dout" }} , 
 	{ "name": "softmax_f_map_out135_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "softmax_f_map_out135", "role": "num_data_valid" }} , 
 	{ "name": "softmax_f_map_out135_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "softmax_f_map_out135", "role": "fifo_cap" }} , 
 	{ "name": "softmax_f_map_out135_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "softmax_f_map_out135", "role": "empty_n" }} , 
 	{ "name": "softmax_f_map_out135_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "softmax_f_map_out135", "role": "read" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
 	{ "name": "gmem_conv2d_32_feature_map_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_conv2d_32_feature_map", "role": "dout" }} , 
 	{ "name": "gmem_conv2d_32_feature_map_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "gmem_conv2d_32_feature_map", "role": "num_data_valid" }} , 
 	{ "name": "gmem_conv2d_32_feature_map_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "gmem_conv2d_32_feature_map", "role": "fifo_cap" }} , 
 	{ "name": "gmem_conv2d_32_feature_map_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_conv2d_32_feature_map", "role": "empty_n" }} , 
 	{ "name": "gmem_conv2d_32_feature_map_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_conv2d_32_feature_map", "role": "read" }} , 
 	{ "name": "gmem_maxp2d_32_feature_map_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_maxp2d_32_feature_map", "role": "dout" }} , 
 	{ "name": "gmem_maxp2d_32_feature_map_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "gmem_maxp2d_32_feature_map", "role": "num_data_valid" }} , 
 	{ "name": "gmem_maxp2d_32_feature_map_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "gmem_maxp2d_32_feature_map", "role": "fifo_cap" }} , 
 	{ "name": "gmem_maxp2d_32_feature_map_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_maxp2d_32_feature_map", "role": "empty_n" }} , 
 	{ "name": "gmem_maxp2d_32_feature_map_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_maxp2d_32_feature_map", "role": "read" }} , 
 	{ "name": "gmem_conv2d_64_feature_map_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_conv2d_64_feature_map", "role": "dout" }} , 
 	{ "name": "gmem_conv2d_64_feature_map_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "gmem_conv2d_64_feature_map", "role": "num_data_valid" }} , 
 	{ "name": "gmem_conv2d_64_feature_map_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "gmem_conv2d_64_feature_map", "role": "fifo_cap" }} , 
 	{ "name": "gmem_conv2d_64_feature_map_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_conv2d_64_feature_map", "role": "empty_n" }} , 
 	{ "name": "gmem_conv2d_64_feature_map_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_conv2d_64_feature_map", "role": "read" }} , 
 	{ "name": "gmem_maxp2d_64_feature_map_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_maxp2d_64_feature_map", "role": "dout" }} , 
 	{ "name": "gmem_maxp2d_64_feature_map_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "gmem_maxp2d_64_feature_map", "role": "num_data_valid" }} , 
 	{ "name": "gmem_maxp2d_64_feature_map_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "gmem_maxp2d_64_feature_map", "role": "fifo_cap" }} , 
 	{ "name": "gmem_maxp2d_64_feature_map_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_maxp2d_64_feature_map", "role": "empty_n" }} , 
 	{ "name": "gmem_maxp2d_64_feature_map_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_maxp2d_64_feature_map", "role": "read" }} , 
 	{ "name": "gmem_dense_feature_map_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_dense_feature_map", "role": "dout" }} , 
 	{ "name": "gmem_dense_feature_map_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "gmem_dense_feature_map", "role": "num_data_valid" }} , 
 	{ "name": "gmem_dense_feature_map_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "gmem_dense_feature_map", "role": "fifo_cap" }} , 
 	{ "name": "gmem_dense_feature_map_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dense_feature_map", "role": "empty_n" }} , 
 	{ "name": "gmem_dense_feature_map_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dense_feature_map", "role": "read" }} , 
 	{ "name": "gmem_softmax_feature_map_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_softmax_feature_map", "role": "dout" }} , 
 	{ "name": "gmem_softmax_feature_map_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "gmem_softmax_feature_map", "role": "num_data_valid" }} , 
 	{ "name": "gmem_softmax_feature_map_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "gmem_softmax_feature_map", "role": "fifo_cap" }} , 
 	{ "name": "gmem_softmax_feature_map_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_softmax_feature_map", "role": "empty_n" }} , 
 	{ "name": "gmem_softmax_feature_map_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_softmax_feature_map", "role": "read" }} , 
 	{ "name": "conv2d_32_activations_stream123_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_32_activations_stream123", "role": "dout" }} , 
 	{ "name": "conv2d_32_activations_stream123_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv2d_32_activations_stream123", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_32_activations_stream123_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv2d_32_activations_stream123", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_32_activations_stream123_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_32_activations_stream123", "role": "empty_n" }} , 
 	{ "name": "conv2d_32_activations_stream123_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_32_activations_stream123", "role": "read" }} , 
 	{ "name": "maxp2d_32_activations_window_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "maxp2d_32_activations_window_stream", "role": "dout" }} , 
 	{ "name": "maxp2d_32_activations_window_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "maxp2d_32_activations_window_stream", "role": "num_data_valid" }} , 
 	{ "name": "maxp2d_32_activations_window_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "maxp2d_32_activations_window_stream", "role": "fifo_cap" }} , 
 	{ "name": "maxp2d_32_activations_window_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "maxp2d_32_activations_window_stream", "role": "empty_n" }} , 
 	{ "name": "maxp2d_32_activations_window_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "maxp2d_32_activations_window_stream", "role": "read" }} , 
 	{ "name": "conv2d_64_activations_stream126_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_activations_stream126", "role": "dout" }} , 
 	{ "name": "conv2d_64_activations_stream126_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv2d_64_activations_stream126", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_activations_stream126_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv2d_64_activations_stream126", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_activations_stream126_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_activations_stream126", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_activations_stream126_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_activations_stream126", "role": "read" }} , 
 	{ "name": "maxp2d_64_activations_window_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "maxp2d_64_activations_window_stream", "role": "dout" }} , 
 	{ "name": "maxp2d_64_activations_window_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "maxp2d_64_activations_window_stream", "role": "num_data_valid" }} , 
 	{ "name": "maxp2d_64_activations_window_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "maxp2d_64_activations_window_stream", "role": "fifo_cap" }} , 
 	{ "name": "maxp2d_64_activations_window_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "maxp2d_64_activations_window_stream", "role": "empty_n" }} , 
 	{ "name": "maxp2d_64_activations_window_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "maxp2d_64_activations_window_stream", "role": "read" }} , 
 	{ "name": "dense_activations_stream129_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_activations_stream129", "role": "dout" }} , 
 	{ "name": "dense_activations_stream129_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dense_activations_stream129", "role": "num_data_valid" }} , 
 	{ "name": "dense_activations_stream129_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dense_activations_stream129", "role": "fifo_cap" }} , 
 	{ "name": "dense_activations_stream129_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_activations_stream129", "role": "empty_n" }} , 
 	{ "name": "dense_activations_stream129_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_activations_stream129", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5", "7", "9", "11", "13", "15", "17", "19", "21"],
		"CDFG" : "write_gmem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "94810", "EstimateLatencyMax" : "94810",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv2d_32_f_map_out130", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "25088", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_write_gmem_Pipeline_VITIS_LOOP_518_1_fu_186", "Port" : "conv2d_32_f_map_out130", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "maxp2d_32_f_map_out131", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "6272", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_write_gmem_Pipeline_VITIS_LOOP_521_2_fu_195", "Port" : "maxp2d_32_f_map_out131", "Inst_start_state" : "73", "Inst_end_state" : "74"}]},
			{"Name" : "conv2d_64_f_map_out132", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "12544", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_write_gmem_Pipeline_VITIS_LOOP_524_3_fu_204", "Port" : "conv2d_64_f_map_out132", "Inst_start_state" : "143", "Inst_end_state" : "144"}]},
			{"Name" : "maxp2d_64_f_map_out133", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3136", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_write_gmem_Pipeline_VITIS_LOOP_527_4_fu_213", "Port" : "maxp2d_64_f_map_out133", "Inst_start_state" : "213", "Inst_end_state" : "214"}]},
			{"Name" : "dense_f_map_out134", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_write_gmem_Pipeline_VITIS_LOOP_530_5_fu_222", "Port" : "dense_f_map_out134", "Inst_start_state" : "283", "Inst_end_state" : "284"}]},
			{"Name" : "softmax_f_map_out135", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_write_gmem_Pipeline_VITIS_LOOP_533_6_fu_231", "Port" : "softmax_f_map_out135", "Inst_start_state" : "353", "Inst_end_state" : "354"}]},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_write_gmem_Pipeline_VITIS_LOOP_524_3_fu_204", "Port" : "gmem", "Inst_start_state" : "143", "Inst_end_state" : "144"},
					{"ID" : "1", "SubInstance" : "grp_write_gmem_Pipeline_VITIS_LOOP_518_1_fu_186", "Port" : "gmem", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "3", "SubInstance" : "grp_write_gmem_Pipeline_VITIS_LOOP_521_2_fu_195", "Port" : "gmem", "Inst_start_state" : "73", "Inst_end_state" : "74"},
					{"ID" : "7", "SubInstance" : "grp_write_gmem_Pipeline_VITIS_LOOP_527_4_fu_213", "Port" : "gmem", "Inst_start_state" : "213", "Inst_end_state" : "214"},
					{"ID" : "9", "SubInstance" : "grp_write_gmem_Pipeline_VITIS_LOOP_530_5_fu_222", "Port" : "gmem", "Inst_start_state" : "283", "Inst_end_state" : "284"},
					{"ID" : "11", "SubInstance" : "grp_write_gmem_Pipeline_VITIS_LOOP_533_6_fu_231", "Port" : "gmem", "Inst_start_state" : "353", "Inst_end_state" : "354"}]},
			{"Name" : "gmem_conv2d_32_feature_map", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "gmem_conv2d_32_feature_map_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_maxp2d_32_feature_map", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "gmem_maxp2d_32_feature_map_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_conv2d_64_feature_map", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "gmem_conv2d_64_feature_map_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_maxp2d_64_feature_map", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "gmem_maxp2d_64_feature_map_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_dense_feature_map", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "gmem_dense_feature_map_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_softmax_feature_map", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "gmem_softmax_feature_map_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_32_activations_stream123", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "25088", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_write_gmem_Pipeline_VITIS_LOOP_537_7_fu_241", "Port" : "conv2d_32_activations_stream123", "Inst_start_state" : "356", "Inst_end_state" : "357"}]},
			{"Name" : "maxp2d_32_activations_window_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "6272", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_write_gmem_Pipeline_VITIS_LOOP_540_8_fu_247", "Port" : "maxp2d_32_activations_window_stream", "Inst_start_state" : "359", "Inst_end_state" : "360"}]},
			{"Name" : "conv2d_64_activations_stream126", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "12544", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_write_gmem_Pipeline_VITIS_LOOP_543_9_fu_253", "Port" : "conv2d_64_activations_stream126", "Inst_start_state" : "362", "Inst_end_state" : "363"}]},
			{"Name" : "maxp2d_64_activations_window_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3136", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_write_gmem_Pipeline_VITIS_LOOP_546_10_fu_259", "Port" : "maxp2d_64_activations_window_stream", "Inst_start_state" : "365", "Inst_end_state" : "366"}]},
			{"Name" : "dense_activations_stream129", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_write_gmem_Pipeline_VITIS_LOOP_549_11_fu_265", "Port" : "dense_activations_stream129", "Inst_start_state" : "368", "Inst_end_state" : "369"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_write_gmem_Pipeline_VITIS_LOOP_518_1_fu_186", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "write_gmem_Pipeline_VITIS_LOOP_518_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25091", "EstimateLatencyMax" : "25091",
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
			{"Name" : "sext_ln518", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv2d_32_f_map_out130", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_32_f_map_out130_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_518_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_gmem_Pipeline_VITIS_LOOP_518_1_fu_186.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_write_gmem_Pipeline_VITIS_LOOP_521_2_fu_195", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "write_gmem_Pipeline_VITIS_LOOP_521_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6275", "EstimateLatencyMax" : "6275",
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
			{"Name" : "sext_ln521", "Type" : "None", "Direction" : "I"},
			{"Name" : "maxp2d_32_f_map_out131", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "maxp2d_32_f_map_out131_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_521_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_gmem_Pipeline_VITIS_LOOP_521_2_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_write_gmem_Pipeline_VITIS_LOOP_524_3_fu_204", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "write_gmem_Pipeline_VITIS_LOOP_524_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12547", "EstimateLatencyMax" : "12547",
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
			{"Name" : "sext_ln524", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv2d_64_f_map_out132", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_f_map_out132_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_524_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_gmem_Pipeline_VITIS_LOOP_524_3_fu_204.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_write_gmem_Pipeline_VITIS_LOOP_527_4_fu_213", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "write_gmem_Pipeline_VITIS_LOOP_527_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3139", "EstimateLatencyMax" : "3139",
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
			{"Name" : "sext_ln527", "Type" : "None", "Direction" : "I"},
			{"Name" : "maxp2d_64_f_map_out133", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "maxp2d_64_f_map_out133_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_527_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_gmem_Pipeline_VITIS_LOOP_527_4_fu_213.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_write_gmem_Pipeline_VITIS_LOOP_530_5_fu_222", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "write_gmem_Pipeline_VITIS_LOOP_530_5",
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
			{"Name" : "sext_ln530", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_f_map_out134", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dense_f_map_out134_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_530_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_gmem_Pipeline_VITIS_LOOP_530_5_fu_222.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_write_gmem_Pipeline_VITIS_LOOP_533_6_fu_231", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "write_gmem_Pipeline_VITIS_LOOP_533_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "81", "EstimateLatencyMax" : "81",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "softmax_f_map_out135", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "softmax_f_map_out135_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_softmax_feature_map_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln534_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_533_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter70", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter70", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_gmem_Pipeline_VITIS_LOOP_533_6_fu_231.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_write_gmem_Pipeline_VITIS_LOOP_537_7_fu_241", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "write_gmem_Pipeline_VITIS_LOOP_537_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25090", "EstimateLatencyMax" : "25090",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv2d_32_activations_stream123", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_32_activations_stream123_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_537_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_gmem_Pipeline_VITIS_LOOP_537_7_fu_241.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_write_gmem_Pipeline_VITIS_LOOP_540_8_fu_247", "Parent" : "0", "Child" : ["16"],
		"CDFG" : "write_gmem_Pipeline_VITIS_LOOP_540_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6274", "EstimateLatencyMax" : "6274",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "maxp2d_32_activations_window_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "maxp2d_32_activations_window_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_540_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_gmem_Pipeline_VITIS_LOOP_540_8_fu_247.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_write_gmem_Pipeline_VITIS_LOOP_543_9_fu_253", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "write_gmem_Pipeline_VITIS_LOOP_543_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12546", "EstimateLatencyMax" : "12546",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv2d_64_activations_stream126", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "conv2d_64_activations_stream126_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_543_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_gmem_Pipeline_VITIS_LOOP_543_9_fu_253.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_write_gmem_Pipeline_VITIS_LOOP_546_10_fu_259", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "write_gmem_Pipeline_VITIS_LOOP_546_10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3138", "EstimateLatencyMax" : "3138",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "maxp2d_64_activations_window_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "maxp2d_64_activations_window_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_546_10", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_gmem_Pipeline_VITIS_LOOP_546_10_fu_259.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_write_gmem_Pipeline_VITIS_LOOP_549_11_fu_265", "Parent" : "0", "Child" : ["22"],
		"CDFG" : "write_gmem_Pipeline_VITIS_LOOP_549_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dense_activations_stream129", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dense_activations_stream129_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_549_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_gmem_Pipeline_VITIS_LOOP_549_11_fu_265.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"}]}


set ArgLastReadFirstWriteLatency {
	write_gmem {
		conv2d_32_f_map_out130 {Type I LastRead 1 FirstWrite -1}
		maxp2d_32_f_map_out131 {Type I LastRead 1 FirstWrite -1}
		conv2d_64_f_map_out132 {Type I LastRead 1 FirstWrite -1}
		maxp2d_64_f_map_out133 {Type I LastRead 1 FirstWrite -1}
		dense_f_map_out134 {Type I LastRead 1 FirstWrite -1}
		softmax_f_map_out135 {Type I LastRead 1 FirstWrite -1}
		gmem {Type O LastRead 284 FirstWrite 2}
		gmem_conv2d_32_feature_map {Type I LastRead 0 FirstWrite -1}
		gmem_maxp2d_32_feature_map {Type I LastRead 0 FirstWrite -1}
		gmem_conv2d_64_feature_map {Type I LastRead 0 FirstWrite -1}
		gmem_maxp2d_64_feature_map {Type I LastRead 0 FirstWrite -1}
		gmem_dense_feature_map {Type I LastRead 0 FirstWrite -1}
		gmem_softmax_feature_map {Type I LastRead 0 FirstWrite -1}
		conv2d_32_activations_stream123 {Type I LastRead 1 FirstWrite -1}
		maxp2d_32_activations_window_stream {Type I LastRead 1 FirstWrite -1}
		conv2d_64_activations_stream126 {Type I LastRead 1 FirstWrite -1}
		maxp2d_64_activations_window_stream {Type I LastRead 1 FirstWrite -1}
		dense_activations_stream129 {Type I LastRead 1 FirstWrite -1}}
	write_gmem_Pipeline_VITIS_LOOP_518_1 {
		gmem {Type O LastRead -1 FirstWrite 2}
		sext_ln518 {Type I LastRead 0 FirstWrite -1}
		conv2d_32_f_map_out130 {Type I LastRead 1 FirstWrite -1}}
	write_gmem_Pipeline_VITIS_LOOP_521_2 {
		gmem {Type O LastRead -1 FirstWrite 2}
		sext_ln521 {Type I LastRead 0 FirstWrite -1}
		maxp2d_32_f_map_out131 {Type I LastRead 1 FirstWrite -1}}
	write_gmem_Pipeline_VITIS_LOOP_524_3 {
		gmem {Type O LastRead -1 FirstWrite 2}
		sext_ln524 {Type I LastRead 0 FirstWrite -1}
		conv2d_64_f_map_out132 {Type I LastRead 1 FirstWrite -1}}
	write_gmem_Pipeline_VITIS_LOOP_527_4 {
		gmem {Type O LastRead -1 FirstWrite 2}
		sext_ln527 {Type I LastRead 0 FirstWrite -1}
		maxp2d_64_f_map_out133 {Type I LastRead 1 FirstWrite -1}}
	write_gmem_Pipeline_VITIS_LOOP_530_5 {
		gmem {Type O LastRead -1 FirstWrite 2}
		sext_ln530 {Type I LastRead 0 FirstWrite -1}
		dense_f_map_out134 {Type I LastRead 1 FirstWrite -1}}
	write_gmem_Pipeline_VITIS_LOOP_533_6 {
		softmax_f_map_out135 {Type I LastRead 1 FirstWrite -1}
		gmem_softmax_feature_map_load {Type I LastRead 0 FirstWrite -1}
		trunc_ln534_1 {Type I LastRead 0 FirstWrite -1}
		gmem {Type O LastRead 3 FirstWrite 2}}
	write_gmem_Pipeline_VITIS_LOOP_537_7 {
		conv2d_32_activations_stream123 {Type I LastRead 1 FirstWrite -1}}
	write_gmem_Pipeline_VITIS_LOOP_540_8 {
		maxp2d_32_activations_window_stream {Type I LastRead 1 FirstWrite -1}}
	write_gmem_Pipeline_VITIS_LOOP_543_9 {
		conv2d_64_activations_stream126 {Type I LastRead 1 FirstWrite -1}}
	write_gmem_Pipeline_VITIS_LOOP_546_10 {
		maxp2d_64_activations_window_stream {Type I LastRead 1 FirstWrite -1}}
	write_gmem_Pipeline_VITIS_LOOP_549_11 {
		dense_activations_stream129 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "94810", "Max" : "94810"}
	, {"Name" : "Interval", "Min" : "94810", "Max" : "94810"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv2d_32_f_map_out130 { ap_fifo {  { conv2d_32_f_map_out130_dout fifo_port_we 0 32 }  { conv2d_32_f_map_out130_num_data_valid fifo_status_num_data_valid 0 16 }  { conv2d_32_f_map_out130_fifo_cap fifo_update 0 16 }  { conv2d_32_f_map_out130_empty_n fifo_status 0 1 }  { conv2d_32_f_map_out130_read fifo_data 1 1 } } }
	maxp2d_32_f_map_out131 { ap_fifo {  { maxp2d_32_f_map_out131_dout fifo_port_we 0 32 }  { maxp2d_32_f_map_out131_num_data_valid fifo_status_num_data_valid 0 14 }  { maxp2d_32_f_map_out131_fifo_cap fifo_update 0 14 }  { maxp2d_32_f_map_out131_empty_n fifo_status 0 1 }  { maxp2d_32_f_map_out131_read fifo_data 1 1 } } }
	conv2d_64_f_map_out132 { ap_fifo {  { conv2d_64_f_map_out132_dout fifo_port_we 0 32 }  { conv2d_64_f_map_out132_num_data_valid fifo_status_num_data_valid 0 15 }  { conv2d_64_f_map_out132_fifo_cap fifo_update 0 15 }  { conv2d_64_f_map_out132_empty_n fifo_status 0 1 }  { conv2d_64_f_map_out132_read fifo_data 1 1 } } }
	maxp2d_64_f_map_out133 { ap_fifo {  { maxp2d_64_f_map_out133_dout fifo_port_we 0 32 }  { maxp2d_64_f_map_out133_num_data_valid fifo_status_num_data_valid 0 13 }  { maxp2d_64_f_map_out133_fifo_cap fifo_update 0 13 }  { maxp2d_64_f_map_out133_empty_n fifo_status 0 1 }  { maxp2d_64_f_map_out133_read fifo_data 1 1 } } }
	dense_f_map_out134 { ap_fifo {  { dense_f_map_out134_dout fifo_port_we 0 32 }  { dense_f_map_out134_num_data_valid fifo_status_num_data_valid 0 8 }  { dense_f_map_out134_fifo_cap fifo_update 0 8 }  { dense_f_map_out134_empty_n fifo_status 0 1 }  { dense_f_map_out134_read fifo_data 1 1 } } }
	softmax_f_map_out135 { ap_fifo {  { softmax_f_map_out135_dout fifo_port_we 0 32 }  { softmax_f_map_out135_num_data_valid fifo_status_num_data_valid 0 5 }  { softmax_f_map_out135_fifo_cap fifo_update 0 5 }  { softmax_f_map_out135_empty_n fifo_status 0 1 }  { softmax_f_map_out135_read fifo_data 1 1 } } }
	 { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 32 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 512 }  { m_axi_gmem_WSTRB STRB 1 64 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 32 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 512 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RFIFONUM LEN 0 9 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
	gmem_conv2d_32_feature_map { ap_fifo {  { gmem_conv2d_32_feature_map_dout fifo_port_we 0 64 }  { gmem_conv2d_32_feature_map_num_data_valid fifo_status_num_data_valid 0 5 }  { gmem_conv2d_32_feature_map_fifo_cap fifo_update 0 5 }  { gmem_conv2d_32_feature_map_empty_n fifo_status 0 1 }  { gmem_conv2d_32_feature_map_read fifo_data 1 1 } } }
	gmem_maxp2d_32_feature_map { ap_fifo {  { gmem_maxp2d_32_feature_map_dout fifo_port_we 0 64 }  { gmem_maxp2d_32_feature_map_num_data_valid fifo_status_num_data_valid 0 5 }  { gmem_maxp2d_32_feature_map_fifo_cap fifo_update 0 5 }  { gmem_maxp2d_32_feature_map_empty_n fifo_status 0 1 }  { gmem_maxp2d_32_feature_map_read fifo_data 1 1 } } }
	gmem_conv2d_64_feature_map { ap_fifo {  { gmem_conv2d_64_feature_map_dout fifo_port_we 0 64 }  { gmem_conv2d_64_feature_map_num_data_valid fifo_status_num_data_valid 0 5 }  { gmem_conv2d_64_feature_map_fifo_cap fifo_update 0 5 }  { gmem_conv2d_64_feature_map_empty_n fifo_status 0 1 }  { gmem_conv2d_64_feature_map_read fifo_data 1 1 } } }
	gmem_maxp2d_64_feature_map { ap_fifo {  { gmem_maxp2d_64_feature_map_dout fifo_port_we 0 64 }  { gmem_maxp2d_64_feature_map_num_data_valid fifo_status_num_data_valid 0 5 }  { gmem_maxp2d_64_feature_map_fifo_cap fifo_update 0 5 }  { gmem_maxp2d_64_feature_map_empty_n fifo_status 0 1 }  { gmem_maxp2d_64_feature_map_read fifo_data 1 1 } } }
	gmem_dense_feature_map { ap_fifo {  { gmem_dense_feature_map_dout fifo_port_we 0 64 }  { gmem_dense_feature_map_num_data_valid fifo_status_num_data_valid 0 5 }  { gmem_dense_feature_map_fifo_cap fifo_update 0 5 }  { gmem_dense_feature_map_empty_n fifo_status 0 1 }  { gmem_dense_feature_map_read fifo_data 1 1 } } }
	gmem_softmax_feature_map { ap_fifo {  { gmem_softmax_feature_map_dout fifo_port_we 0 64 }  { gmem_softmax_feature_map_num_data_valid fifo_status_num_data_valid 0 5 }  { gmem_softmax_feature_map_fifo_cap fifo_update 0 5 }  { gmem_softmax_feature_map_empty_n fifo_status 0 1 }  { gmem_softmax_feature_map_read fifo_data 1 1 } } }
	conv2d_32_activations_stream123 { ap_fifo {  { conv2d_32_activations_stream123_dout fifo_port_we 0 1 }  { conv2d_32_activations_stream123_num_data_valid fifo_status_num_data_valid 0 16 }  { conv2d_32_activations_stream123_fifo_cap fifo_update 0 16 }  { conv2d_32_activations_stream123_empty_n fifo_status 0 1 }  { conv2d_32_activations_stream123_read fifo_data 1 1 } } }
	maxp2d_32_activations_window_stream { ap_fifo {  { maxp2d_32_activations_window_stream_dout fifo_port_we 0 4 }  { maxp2d_32_activations_window_stream_num_data_valid fifo_status_num_data_valid 0 14 }  { maxp2d_32_activations_window_stream_fifo_cap fifo_update 0 14 }  { maxp2d_32_activations_window_stream_empty_n fifo_status 0 1 }  { maxp2d_32_activations_window_stream_read fifo_data 1 1 } } }
	conv2d_64_activations_stream126 { ap_fifo {  { conv2d_64_activations_stream126_dout fifo_port_we 0 1 }  { conv2d_64_activations_stream126_num_data_valid fifo_status_num_data_valid 0 15 }  { conv2d_64_activations_stream126_fifo_cap fifo_update 0 15 }  { conv2d_64_activations_stream126_empty_n fifo_status 0 1 }  { conv2d_64_activations_stream126_read fifo_data 1 1 } } }
	maxp2d_64_activations_window_stream { ap_fifo {  { maxp2d_64_activations_window_stream_dout fifo_port_we 0 4 }  { maxp2d_64_activations_window_stream_num_data_valid fifo_status_num_data_valid 0 13 }  { maxp2d_64_activations_window_stream_fifo_cap fifo_update 0 13 }  { maxp2d_64_activations_window_stream_empty_n fifo_status 0 1 }  { maxp2d_64_activations_window_stream_read fifo_data 1 1 } } }
	dense_activations_stream129 { ap_fifo {  { dense_activations_stream129_dout fifo_port_we 0 1 }  { dense_activations_stream129_num_data_valid fifo_status_num_data_valid 0 8 }  { dense_activations_stream129_fifo_cap fifo_update 0 8 }  { dense_activations_stream129_empty_n fifo_status 0 1 }  { dense_activations_stream129_read fifo_data 1 1 } } }
}
