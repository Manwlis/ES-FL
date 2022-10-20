set moduleName save_variables_locally_Pipeline_VITIS_LOOP_28_3_VITIS_LOOP_29_4
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
set C_modelName {save_variables_locally_Pipeline_VITIS_LOOP_28_3_VITIS_LOOP_29_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem int 512 regular {axi_master 0}  }
	{ sext_ln28 int 58 regular  }
	{ conv2d_64_weights_0 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_1 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_2 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_3 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_4 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_5 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_6 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_7 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_8 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_9 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_10 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_11 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_12 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_13 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_14 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_15 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_16 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_17 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_18 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_19 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_20 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_21 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_22 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_23 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_24 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_25 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_26 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_27 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_28 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_29 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_30 float 32 regular {array 576 { 3 0 } 0 1 }  }
	{ conv2d_64_weights_31 float 32 regular {array 576 { 3 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "gmem_conv2d_32_weights","offset": { "type": "dynamic","port_name": "gmem_conv2d_32_weights","bundle": "control"},"direction": "READONLY"},{"cName": "gmem_conv2d_32_biases","offset": { "type": "dynamic","port_name": "gmem_conv2d_32_biases","bundle": "control"},"direction": "READONLY"},{"cName": "gmem_conv2d_64_weights","offset": { "type": "dynamic","port_name": "gmem_conv2d_64_weights","bundle": "control"},"direction": "READONLY"},{"cName": "gmem_conv2d_64_biases","offset": { "type": "dynamic","port_name": "gmem_conv2d_64_biases","bundle": "control"},"direction": "READONLY"},{"cName": "gmem_dense_weights","offset": { "type": "dynamic","port_name": "gmem_dense_weights","bundle": "control"},"direction": "READONLY"},{"cName": "gmem_dense_biases","offset": { "type": "dynamic","port_name": "gmem_dense_biases","bundle": "control"},"direction": "READONLY"},{"cName": "gmem_softmax_weights","offset": { "type": "dynamic","port_name": "gmem_softmax_weights","bundle": "control"},"direction": "READONLY"},{"cName": "gmem_softmax_biases","offset": { "type": "dynamic","port_name": "gmem_softmax_biases","bundle": "control"},"direction": "READONLY"},{"cName": "gmem_conv2d_32_feature_map","offset": { "type": "dynamic","port_name": "gmem_conv2d_32_feature_map","bundle": "control"},"direction": "WRITEONLY"},{"cName": "gmem_maxp2d_32_feature_map","offset": { "type": "dynamic","port_name": "gmem_maxp2d_32_feature_map","bundle": "control"},"direction": "WRITEONLY"},{"cName": "gmem_conv2d_64_feature_map","offset": { "type": "dynamic","port_name": "gmem_conv2d_64_feature_map","bundle": "control"},"direction": "WRITEONLY"},{"cName": "gmem_maxp2d_64_feature_map","offset": { "type": "dynamic","port_name": "gmem_maxp2d_64_feature_map","bundle": "control"},"direction": "WRITEONLY"},{"cName": "gmem_dense_feature_map","offset": { "type": "dynamic","port_name": "gmem_dense_feature_map","bundle": "control"},"direction": "WRITEONLY"},{"cName": "gmem_softmax_feature_map","offset": { "type": "dynamic","port_name": "gmem_softmax_feature_map","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "sext_ln28", "interface" : "wire", "bitwidth" : 58, "direction" : "READONLY"} , 
 	{ "Name" : "conv2d_64_weights_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_9", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_10", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_11", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_12", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_13", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_14", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_15", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_16", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_17", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_18", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_19", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_20", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_21", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_22", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_23", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_24", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_25", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_26", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_27", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_28", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_29", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_30", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_weights_31", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 181
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 32 signal 0 } 
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
	{ m_axi_gmem_ARLEN sc_out sc_lv 32 signal 0 } 
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
	{ m_axi_gmem_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln28 sc_in sc_lv 58 signal 1 } 
	{ conv2d_64_weights_0_address1 sc_out sc_lv 10 signal 2 } 
	{ conv2d_64_weights_0_ce1 sc_out sc_logic 1 signal 2 } 
	{ conv2d_64_weights_0_we1 sc_out sc_logic 1 signal 2 } 
	{ conv2d_64_weights_0_d1 sc_out sc_lv 32 signal 2 } 
	{ conv2d_64_weights_1_address1 sc_out sc_lv 10 signal 3 } 
	{ conv2d_64_weights_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ conv2d_64_weights_1_we1 sc_out sc_logic 1 signal 3 } 
	{ conv2d_64_weights_1_d1 sc_out sc_lv 32 signal 3 } 
	{ conv2d_64_weights_2_address1 sc_out sc_lv 10 signal 4 } 
	{ conv2d_64_weights_2_ce1 sc_out sc_logic 1 signal 4 } 
	{ conv2d_64_weights_2_we1 sc_out sc_logic 1 signal 4 } 
	{ conv2d_64_weights_2_d1 sc_out sc_lv 32 signal 4 } 
	{ conv2d_64_weights_3_address1 sc_out sc_lv 10 signal 5 } 
	{ conv2d_64_weights_3_ce1 sc_out sc_logic 1 signal 5 } 
	{ conv2d_64_weights_3_we1 sc_out sc_logic 1 signal 5 } 
	{ conv2d_64_weights_3_d1 sc_out sc_lv 32 signal 5 } 
	{ conv2d_64_weights_4_address1 sc_out sc_lv 10 signal 6 } 
	{ conv2d_64_weights_4_ce1 sc_out sc_logic 1 signal 6 } 
	{ conv2d_64_weights_4_we1 sc_out sc_logic 1 signal 6 } 
	{ conv2d_64_weights_4_d1 sc_out sc_lv 32 signal 6 } 
	{ conv2d_64_weights_5_address1 sc_out sc_lv 10 signal 7 } 
	{ conv2d_64_weights_5_ce1 sc_out sc_logic 1 signal 7 } 
	{ conv2d_64_weights_5_we1 sc_out sc_logic 1 signal 7 } 
	{ conv2d_64_weights_5_d1 sc_out sc_lv 32 signal 7 } 
	{ conv2d_64_weights_6_address1 sc_out sc_lv 10 signal 8 } 
	{ conv2d_64_weights_6_ce1 sc_out sc_logic 1 signal 8 } 
	{ conv2d_64_weights_6_we1 sc_out sc_logic 1 signal 8 } 
	{ conv2d_64_weights_6_d1 sc_out sc_lv 32 signal 8 } 
	{ conv2d_64_weights_7_address1 sc_out sc_lv 10 signal 9 } 
	{ conv2d_64_weights_7_ce1 sc_out sc_logic 1 signal 9 } 
	{ conv2d_64_weights_7_we1 sc_out sc_logic 1 signal 9 } 
	{ conv2d_64_weights_7_d1 sc_out sc_lv 32 signal 9 } 
	{ conv2d_64_weights_8_address1 sc_out sc_lv 10 signal 10 } 
	{ conv2d_64_weights_8_ce1 sc_out sc_logic 1 signal 10 } 
	{ conv2d_64_weights_8_we1 sc_out sc_logic 1 signal 10 } 
	{ conv2d_64_weights_8_d1 sc_out sc_lv 32 signal 10 } 
	{ conv2d_64_weights_9_address1 sc_out sc_lv 10 signal 11 } 
	{ conv2d_64_weights_9_ce1 sc_out sc_logic 1 signal 11 } 
	{ conv2d_64_weights_9_we1 sc_out sc_logic 1 signal 11 } 
	{ conv2d_64_weights_9_d1 sc_out sc_lv 32 signal 11 } 
	{ conv2d_64_weights_10_address1 sc_out sc_lv 10 signal 12 } 
	{ conv2d_64_weights_10_ce1 sc_out sc_logic 1 signal 12 } 
	{ conv2d_64_weights_10_we1 sc_out sc_logic 1 signal 12 } 
	{ conv2d_64_weights_10_d1 sc_out sc_lv 32 signal 12 } 
	{ conv2d_64_weights_11_address1 sc_out sc_lv 10 signal 13 } 
	{ conv2d_64_weights_11_ce1 sc_out sc_logic 1 signal 13 } 
	{ conv2d_64_weights_11_we1 sc_out sc_logic 1 signal 13 } 
	{ conv2d_64_weights_11_d1 sc_out sc_lv 32 signal 13 } 
	{ conv2d_64_weights_12_address1 sc_out sc_lv 10 signal 14 } 
	{ conv2d_64_weights_12_ce1 sc_out sc_logic 1 signal 14 } 
	{ conv2d_64_weights_12_we1 sc_out sc_logic 1 signal 14 } 
	{ conv2d_64_weights_12_d1 sc_out sc_lv 32 signal 14 } 
	{ conv2d_64_weights_13_address1 sc_out sc_lv 10 signal 15 } 
	{ conv2d_64_weights_13_ce1 sc_out sc_logic 1 signal 15 } 
	{ conv2d_64_weights_13_we1 sc_out sc_logic 1 signal 15 } 
	{ conv2d_64_weights_13_d1 sc_out sc_lv 32 signal 15 } 
	{ conv2d_64_weights_14_address1 sc_out sc_lv 10 signal 16 } 
	{ conv2d_64_weights_14_ce1 sc_out sc_logic 1 signal 16 } 
	{ conv2d_64_weights_14_we1 sc_out sc_logic 1 signal 16 } 
	{ conv2d_64_weights_14_d1 sc_out sc_lv 32 signal 16 } 
	{ conv2d_64_weights_15_address1 sc_out sc_lv 10 signal 17 } 
	{ conv2d_64_weights_15_ce1 sc_out sc_logic 1 signal 17 } 
	{ conv2d_64_weights_15_we1 sc_out sc_logic 1 signal 17 } 
	{ conv2d_64_weights_15_d1 sc_out sc_lv 32 signal 17 } 
	{ conv2d_64_weights_16_address1 sc_out sc_lv 10 signal 18 } 
	{ conv2d_64_weights_16_ce1 sc_out sc_logic 1 signal 18 } 
	{ conv2d_64_weights_16_we1 sc_out sc_logic 1 signal 18 } 
	{ conv2d_64_weights_16_d1 sc_out sc_lv 32 signal 18 } 
	{ conv2d_64_weights_17_address1 sc_out sc_lv 10 signal 19 } 
	{ conv2d_64_weights_17_ce1 sc_out sc_logic 1 signal 19 } 
	{ conv2d_64_weights_17_we1 sc_out sc_logic 1 signal 19 } 
	{ conv2d_64_weights_17_d1 sc_out sc_lv 32 signal 19 } 
	{ conv2d_64_weights_18_address1 sc_out sc_lv 10 signal 20 } 
	{ conv2d_64_weights_18_ce1 sc_out sc_logic 1 signal 20 } 
	{ conv2d_64_weights_18_we1 sc_out sc_logic 1 signal 20 } 
	{ conv2d_64_weights_18_d1 sc_out sc_lv 32 signal 20 } 
	{ conv2d_64_weights_19_address1 sc_out sc_lv 10 signal 21 } 
	{ conv2d_64_weights_19_ce1 sc_out sc_logic 1 signal 21 } 
	{ conv2d_64_weights_19_we1 sc_out sc_logic 1 signal 21 } 
	{ conv2d_64_weights_19_d1 sc_out sc_lv 32 signal 21 } 
	{ conv2d_64_weights_20_address1 sc_out sc_lv 10 signal 22 } 
	{ conv2d_64_weights_20_ce1 sc_out sc_logic 1 signal 22 } 
	{ conv2d_64_weights_20_we1 sc_out sc_logic 1 signal 22 } 
	{ conv2d_64_weights_20_d1 sc_out sc_lv 32 signal 22 } 
	{ conv2d_64_weights_21_address1 sc_out sc_lv 10 signal 23 } 
	{ conv2d_64_weights_21_ce1 sc_out sc_logic 1 signal 23 } 
	{ conv2d_64_weights_21_we1 sc_out sc_logic 1 signal 23 } 
	{ conv2d_64_weights_21_d1 sc_out sc_lv 32 signal 23 } 
	{ conv2d_64_weights_22_address1 sc_out sc_lv 10 signal 24 } 
	{ conv2d_64_weights_22_ce1 sc_out sc_logic 1 signal 24 } 
	{ conv2d_64_weights_22_we1 sc_out sc_logic 1 signal 24 } 
	{ conv2d_64_weights_22_d1 sc_out sc_lv 32 signal 24 } 
	{ conv2d_64_weights_23_address1 sc_out sc_lv 10 signal 25 } 
	{ conv2d_64_weights_23_ce1 sc_out sc_logic 1 signal 25 } 
	{ conv2d_64_weights_23_we1 sc_out sc_logic 1 signal 25 } 
	{ conv2d_64_weights_23_d1 sc_out sc_lv 32 signal 25 } 
	{ conv2d_64_weights_24_address1 sc_out sc_lv 10 signal 26 } 
	{ conv2d_64_weights_24_ce1 sc_out sc_logic 1 signal 26 } 
	{ conv2d_64_weights_24_we1 sc_out sc_logic 1 signal 26 } 
	{ conv2d_64_weights_24_d1 sc_out sc_lv 32 signal 26 } 
	{ conv2d_64_weights_25_address1 sc_out sc_lv 10 signal 27 } 
	{ conv2d_64_weights_25_ce1 sc_out sc_logic 1 signal 27 } 
	{ conv2d_64_weights_25_we1 sc_out sc_logic 1 signal 27 } 
	{ conv2d_64_weights_25_d1 sc_out sc_lv 32 signal 27 } 
	{ conv2d_64_weights_26_address1 sc_out sc_lv 10 signal 28 } 
	{ conv2d_64_weights_26_ce1 sc_out sc_logic 1 signal 28 } 
	{ conv2d_64_weights_26_we1 sc_out sc_logic 1 signal 28 } 
	{ conv2d_64_weights_26_d1 sc_out sc_lv 32 signal 28 } 
	{ conv2d_64_weights_27_address1 sc_out sc_lv 10 signal 29 } 
	{ conv2d_64_weights_27_ce1 sc_out sc_logic 1 signal 29 } 
	{ conv2d_64_weights_27_we1 sc_out sc_logic 1 signal 29 } 
	{ conv2d_64_weights_27_d1 sc_out sc_lv 32 signal 29 } 
	{ conv2d_64_weights_28_address1 sc_out sc_lv 10 signal 30 } 
	{ conv2d_64_weights_28_ce1 sc_out sc_logic 1 signal 30 } 
	{ conv2d_64_weights_28_we1 sc_out sc_logic 1 signal 30 } 
	{ conv2d_64_weights_28_d1 sc_out sc_lv 32 signal 30 } 
	{ conv2d_64_weights_29_address1 sc_out sc_lv 10 signal 31 } 
	{ conv2d_64_weights_29_ce1 sc_out sc_logic 1 signal 31 } 
	{ conv2d_64_weights_29_we1 sc_out sc_logic 1 signal 31 } 
	{ conv2d_64_weights_29_d1 sc_out sc_lv 32 signal 31 } 
	{ conv2d_64_weights_30_address1 sc_out sc_lv 10 signal 32 } 
	{ conv2d_64_weights_30_ce1 sc_out sc_logic 1 signal 32 } 
	{ conv2d_64_weights_30_we1 sc_out sc_logic 1 signal 32 } 
	{ conv2d_64_weights_30_d1 sc_out sc_lv 32 signal 32 } 
	{ conv2d_64_weights_31_address1 sc_out sc_lv 10 signal 33 } 
	{ conv2d_64_weights_31_ce1 sc_out sc_logic 1 signal 33 } 
	{ conv2d_64_weights_31_we1 sc_out sc_logic 1 signal 33 } 
	{ conv2d_64_weights_31_d1 sc_out sc_lv 32 signal 33 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "sext_ln28", "direction": "in", "datatype": "sc_lv", "bitwidth":58, "type": "signal", "bundle":{"name": "sext_ln28", "role": "default" }} , 
 	{ "name": "conv2d_64_weights_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_0", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_0", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_0", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_0", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_1", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_1", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_1", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_1", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_2", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_2", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_2", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_2", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_3", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_3", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_3", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_3", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_4", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_4", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_4", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_4", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_5", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_5", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_5", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_5", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_6", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_6", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_6", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_6", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_7", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_7", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_7", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_7", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_8", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_8", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_8_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_8", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_8_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_8", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_9", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_9", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_9_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_9", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_9_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_9", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_10", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_10", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_10_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_10", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_10_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_10", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_11", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_11", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_11_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_11", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_11_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_11", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_12", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_12", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_12_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_12", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_12_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_12", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_13", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_13", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_13_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_13", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_13_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_13", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_14", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_14", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_14_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_14", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_14_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_14", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_15", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_15", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_15_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_15", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_15_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_15", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_16_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_16", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_16_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_16", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_16_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_16", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_16_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_16", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_17_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_17", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_17_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_17", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_17_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_17", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_17_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_17", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_18_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_18", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_18_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_18", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_18_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_18", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_18_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_18", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_19_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_19", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_19_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_19", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_19_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_19", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_19_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_19", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_20_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_20", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_20_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_20", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_20_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_20", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_20_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_20", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_21_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_21", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_21_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_21", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_21_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_21", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_21_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_21", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_22_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_22", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_22_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_22", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_22_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_22", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_22_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_22", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_23_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_23", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_23_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_23", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_23_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_23", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_23_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_23", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_24_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_24", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_24_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_24", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_24_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_24", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_24_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_24", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_25_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_25", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_25_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_25", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_25_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_25", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_25_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_25", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_26_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_26", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_26_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_26", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_26_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_26", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_26_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_26", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_27_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_27", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_27_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_27", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_27_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_27", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_27_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_27", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_28_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_28", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_28_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_28", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_28_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_28", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_28_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_28", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_29_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_29", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_29_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_29", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_29_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_29", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_29_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_29", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_30_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_30", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_30_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_30", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_30_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_30", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_30_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_30", "role": "d1" }} , 
 	{ "name": "conv2d_64_weights_31_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv2d_64_weights_31", "role": "address1" }} , 
 	{ "name": "conv2d_64_weights_31_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_31", "role": "ce1" }} , 
 	{ "name": "conv2d_64_weights_31_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_weights_31", "role": "we1" }} , 
 	{ "name": "conv2d_64_weights_31_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_weights_31", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "save_variables_locally_Pipeline_VITIS_LOOP_28_3_VITIS_LOOP_29_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18435", "EstimateLatencyMax" : "18435",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln28", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv2d_64_weights_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2d_64_weights_31", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_3_VITIS_LOOP_29_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	save_variables_locally_Pipeline_VITIS_LOOP_28_3_VITIS_LOOP_29_4 {
		gmem {Type I LastRead 1 FirstWrite -1}
		sext_ln28 {Type I LastRead 0 FirstWrite -1}
		conv2d_64_weights_0 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_1 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_2 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_3 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_4 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_5 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_6 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_7 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_8 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_9 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_10 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_11 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_12 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_13 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_14 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_15 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_16 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_17 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_18 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_19 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_20 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_21 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_22 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_23 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_24 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_25 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_26 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_27 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_28 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_29 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_30 {Type O LastRead -1 FirstWrite 2}
		conv2d_64_weights_31 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18435", "Max" : "18435"}
	, {"Name" : "Interval", "Min" : "18435", "Max" : "18435"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 32 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 512 }  { m_axi_gmem_WSTRB STRB 1 64 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 32 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 512 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RFIFONUM LEN 0 9 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
	sext_ln28 { ap_none {  { sext_ln28 in_data 0 58 } } }
	conv2d_64_weights_0 { ap_memory {  { conv2d_64_weights_0_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_0_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_0_we1 MemPortWE2 1 1 }  { conv2d_64_weights_0_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_1 { ap_memory {  { conv2d_64_weights_1_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_1_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_1_we1 MemPortWE2 1 1 }  { conv2d_64_weights_1_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_2 { ap_memory {  { conv2d_64_weights_2_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_2_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_2_we1 MemPortWE2 1 1 }  { conv2d_64_weights_2_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_3 { ap_memory {  { conv2d_64_weights_3_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_3_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_3_we1 MemPortWE2 1 1 }  { conv2d_64_weights_3_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_4 { ap_memory {  { conv2d_64_weights_4_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_4_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_4_we1 MemPortWE2 1 1 }  { conv2d_64_weights_4_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_5 { ap_memory {  { conv2d_64_weights_5_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_5_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_5_we1 MemPortWE2 1 1 }  { conv2d_64_weights_5_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_6 { ap_memory {  { conv2d_64_weights_6_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_6_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_6_we1 MemPortWE2 1 1 }  { conv2d_64_weights_6_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_7 { ap_memory {  { conv2d_64_weights_7_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_7_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_7_we1 MemPortWE2 1 1 }  { conv2d_64_weights_7_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_8 { ap_memory {  { conv2d_64_weights_8_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_8_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_8_we1 MemPortWE2 1 1 }  { conv2d_64_weights_8_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_9 { ap_memory {  { conv2d_64_weights_9_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_9_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_9_we1 MemPortWE2 1 1 }  { conv2d_64_weights_9_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_10 { ap_memory {  { conv2d_64_weights_10_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_10_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_10_we1 MemPortWE2 1 1 }  { conv2d_64_weights_10_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_11 { ap_memory {  { conv2d_64_weights_11_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_11_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_11_we1 MemPortWE2 1 1 }  { conv2d_64_weights_11_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_12 { ap_memory {  { conv2d_64_weights_12_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_12_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_12_we1 MemPortWE2 1 1 }  { conv2d_64_weights_12_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_13 { ap_memory {  { conv2d_64_weights_13_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_13_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_13_we1 MemPortWE2 1 1 }  { conv2d_64_weights_13_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_14 { ap_memory {  { conv2d_64_weights_14_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_14_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_14_we1 MemPortWE2 1 1 }  { conv2d_64_weights_14_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_15 { ap_memory {  { conv2d_64_weights_15_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_15_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_15_we1 MemPortWE2 1 1 }  { conv2d_64_weights_15_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_16 { ap_memory {  { conv2d_64_weights_16_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_16_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_16_we1 MemPortWE2 1 1 }  { conv2d_64_weights_16_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_17 { ap_memory {  { conv2d_64_weights_17_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_17_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_17_we1 MemPortWE2 1 1 }  { conv2d_64_weights_17_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_18 { ap_memory {  { conv2d_64_weights_18_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_18_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_18_we1 MemPortWE2 1 1 }  { conv2d_64_weights_18_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_19 { ap_memory {  { conv2d_64_weights_19_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_19_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_19_we1 MemPortWE2 1 1 }  { conv2d_64_weights_19_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_20 { ap_memory {  { conv2d_64_weights_20_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_20_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_20_we1 MemPortWE2 1 1 }  { conv2d_64_weights_20_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_21 { ap_memory {  { conv2d_64_weights_21_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_21_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_21_we1 MemPortWE2 1 1 }  { conv2d_64_weights_21_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_22 { ap_memory {  { conv2d_64_weights_22_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_22_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_22_we1 MemPortWE2 1 1 }  { conv2d_64_weights_22_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_23 { ap_memory {  { conv2d_64_weights_23_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_23_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_23_we1 MemPortWE2 1 1 }  { conv2d_64_weights_23_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_24 { ap_memory {  { conv2d_64_weights_24_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_24_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_24_we1 MemPortWE2 1 1 }  { conv2d_64_weights_24_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_25 { ap_memory {  { conv2d_64_weights_25_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_25_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_25_we1 MemPortWE2 1 1 }  { conv2d_64_weights_25_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_26 { ap_memory {  { conv2d_64_weights_26_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_26_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_26_we1 MemPortWE2 1 1 }  { conv2d_64_weights_26_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_27 { ap_memory {  { conv2d_64_weights_27_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_27_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_27_we1 MemPortWE2 1 1 }  { conv2d_64_weights_27_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_28 { ap_memory {  { conv2d_64_weights_28_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_28_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_28_we1 MemPortWE2 1 1 }  { conv2d_64_weights_28_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_29 { ap_memory {  { conv2d_64_weights_29_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_29_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_29_we1 MemPortWE2 1 1 }  { conv2d_64_weights_29_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_30 { ap_memory {  { conv2d_64_weights_30_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_30_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_30_we1 MemPortWE2 1 1 }  { conv2d_64_weights_30_d1 MemPortDIN2 1 32 } } }
	conv2d_64_weights_31 { ap_memory {  { conv2d_64_weights_31_address1 MemPortADDR2 1 10 }  { conv2d_64_weights_31_ce1 MemPortCE2 1 1 }  { conv2d_64_weights_31_we1 MemPortWE2 1 1 }  { conv2d_64_weights_31_d1 MemPortDIN2 1 32 } } }
}
