set moduleName dense_128u_3136u_s
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
set C_modelName {dense<128u, 3136u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ maxp2d_64_feature_map_stream127 int 32 regular {fifo 0 volatile }  }
	{ weights_0 float 32 regular {array 50176 { 1 1 } 1 1 }  }
	{ weights_1 float 32 regular {array 50176 { 1 1 } 1 1 }  }
	{ weights_2 float 32 regular {array 50176 { 1 1 } 1 1 }  }
	{ weights_3 float 32 regular {array 50176 { 1 1 } 1 1 }  }
	{ weights_4 float 32 regular {array 50176 { 1 1 } 1 1 }  }
	{ weights_5 float 32 regular {array 50176 { 1 1 } 1 1 }  }
	{ weights_6 float 32 regular {array 50176 { 1 1 } 1 1 }  }
	{ weights_7 float 32 regular {array 50176 { 1 1 } 1 1 }  }
	{ biases float 32 regular {array 128 { 1 3 } 1 1 }  }
	{ dense_feature_map_stream128 int 32 regular {fifo 1 volatile }  }
	{ dense_activations_stream129 int 1 regular {fifo 1 volatile }  }
	{ dense_f_map_out134 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "maxp2d_64_feature_map_stream127", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "biases", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dense_feature_map_stream128", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dense_activations_stream129", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dense_f_map_out134", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 78
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ maxp2d_64_feature_map_stream127_dout sc_in sc_lv 32 signal 0 } 
	{ maxp2d_64_feature_map_stream127_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ maxp2d_64_feature_map_stream127_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ maxp2d_64_feature_map_stream127_empty_n sc_in sc_logic 1 signal 0 } 
	{ maxp2d_64_feature_map_stream127_read sc_out sc_logic 1 signal 0 } 
	{ weights_0_address0 sc_out sc_lv 16 signal 1 } 
	{ weights_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_0_q0 sc_in sc_lv 32 signal 1 } 
	{ weights_0_address1 sc_out sc_lv 16 signal 1 } 
	{ weights_0_ce1 sc_out sc_logic 1 signal 1 } 
	{ weights_0_q1 sc_in sc_lv 32 signal 1 } 
	{ weights_1_address0 sc_out sc_lv 16 signal 2 } 
	{ weights_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ weights_1_q0 sc_in sc_lv 32 signal 2 } 
	{ weights_1_address1 sc_out sc_lv 16 signal 2 } 
	{ weights_1_ce1 sc_out sc_logic 1 signal 2 } 
	{ weights_1_q1 sc_in sc_lv 32 signal 2 } 
	{ weights_2_address0 sc_out sc_lv 16 signal 3 } 
	{ weights_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ weights_2_q0 sc_in sc_lv 32 signal 3 } 
	{ weights_2_address1 sc_out sc_lv 16 signal 3 } 
	{ weights_2_ce1 sc_out sc_logic 1 signal 3 } 
	{ weights_2_q1 sc_in sc_lv 32 signal 3 } 
	{ weights_3_address0 sc_out sc_lv 16 signal 4 } 
	{ weights_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ weights_3_q0 sc_in sc_lv 32 signal 4 } 
	{ weights_3_address1 sc_out sc_lv 16 signal 4 } 
	{ weights_3_ce1 sc_out sc_logic 1 signal 4 } 
	{ weights_3_q1 sc_in sc_lv 32 signal 4 } 
	{ weights_4_address0 sc_out sc_lv 16 signal 5 } 
	{ weights_4_ce0 sc_out sc_logic 1 signal 5 } 
	{ weights_4_q0 sc_in sc_lv 32 signal 5 } 
	{ weights_4_address1 sc_out sc_lv 16 signal 5 } 
	{ weights_4_ce1 sc_out sc_logic 1 signal 5 } 
	{ weights_4_q1 sc_in sc_lv 32 signal 5 } 
	{ weights_5_address0 sc_out sc_lv 16 signal 6 } 
	{ weights_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ weights_5_q0 sc_in sc_lv 32 signal 6 } 
	{ weights_5_address1 sc_out sc_lv 16 signal 6 } 
	{ weights_5_ce1 sc_out sc_logic 1 signal 6 } 
	{ weights_5_q1 sc_in sc_lv 32 signal 6 } 
	{ weights_6_address0 sc_out sc_lv 16 signal 7 } 
	{ weights_6_ce0 sc_out sc_logic 1 signal 7 } 
	{ weights_6_q0 sc_in sc_lv 32 signal 7 } 
	{ weights_6_address1 sc_out sc_lv 16 signal 7 } 
	{ weights_6_ce1 sc_out sc_logic 1 signal 7 } 
	{ weights_6_q1 sc_in sc_lv 32 signal 7 } 
	{ weights_7_address0 sc_out sc_lv 16 signal 8 } 
	{ weights_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ weights_7_q0 sc_in sc_lv 32 signal 8 } 
	{ weights_7_address1 sc_out sc_lv 16 signal 8 } 
	{ weights_7_ce1 sc_out sc_logic 1 signal 8 } 
	{ weights_7_q1 sc_in sc_lv 32 signal 8 } 
	{ biases_address0 sc_out sc_lv 7 signal 9 } 
	{ biases_ce0 sc_out sc_logic 1 signal 9 } 
	{ biases_q0 sc_in sc_lv 32 signal 9 } 
	{ dense_feature_map_stream128_din sc_out sc_lv 32 signal 10 } 
	{ dense_feature_map_stream128_num_data_valid sc_in sc_lv 3 signal 10 } 
	{ dense_feature_map_stream128_fifo_cap sc_in sc_lv 3 signal 10 } 
	{ dense_feature_map_stream128_full_n sc_in sc_logic 1 signal 10 } 
	{ dense_feature_map_stream128_write sc_out sc_logic 1 signal 10 } 
	{ dense_activations_stream129_din sc_out sc_lv 1 signal 11 } 
	{ dense_activations_stream129_num_data_valid sc_in sc_lv 8 signal 11 } 
	{ dense_activations_stream129_fifo_cap sc_in sc_lv 8 signal 11 } 
	{ dense_activations_stream129_full_n sc_in sc_logic 1 signal 11 } 
	{ dense_activations_stream129_write sc_out sc_logic 1 signal 11 } 
	{ dense_f_map_out134_din sc_out sc_lv 32 signal 12 } 
	{ dense_f_map_out134_num_data_valid sc_in sc_lv 8 signal 12 } 
	{ dense_f_map_out134_fifo_cap sc_in sc_lv 8 signal 12 } 
	{ dense_f_map_out134_full_n sc_in sc_logic 1 signal 12 } 
	{ dense_f_map_out134_write sc_out sc_logic 1 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "maxp2d_64_feature_map_stream127_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "maxp2d_64_feature_map_stream127", "role": "dout" }} , 
 	{ "name": "maxp2d_64_feature_map_stream127_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "maxp2d_64_feature_map_stream127", "role": "num_data_valid" }} , 
 	{ "name": "maxp2d_64_feature_map_stream127_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "maxp2d_64_feature_map_stream127", "role": "fifo_cap" }} , 
 	{ "name": "maxp2d_64_feature_map_stream127_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "maxp2d_64_feature_map_stream127", "role": "empty_n" }} , 
 	{ "name": "maxp2d_64_feature_map_stream127_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "maxp2d_64_feature_map_stream127", "role": "read" }} , 
 	{ "name": "weights_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_0", "role": "address0" }} , 
 	{ "name": "weights_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_0", "role": "ce0" }} , 
 	{ "name": "weights_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_0", "role": "q0" }} , 
 	{ "name": "weights_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_0", "role": "address1" }} , 
 	{ "name": "weights_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_0", "role": "ce1" }} , 
 	{ "name": "weights_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_0", "role": "q1" }} , 
 	{ "name": "weights_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_1", "role": "address0" }} , 
 	{ "name": "weights_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_1", "role": "ce0" }} , 
 	{ "name": "weights_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_1", "role": "q0" }} , 
 	{ "name": "weights_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_1", "role": "address1" }} , 
 	{ "name": "weights_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_1", "role": "ce1" }} , 
 	{ "name": "weights_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_1", "role": "q1" }} , 
 	{ "name": "weights_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_2", "role": "address0" }} , 
 	{ "name": "weights_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_2", "role": "ce0" }} , 
 	{ "name": "weights_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_2", "role": "q0" }} , 
 	{ "name": "weights_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_2", "role": "address1" }} , 
 	{ "name": "weights_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_2", "role": "ce1" }} , 
 	{ "name": "weights_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_2", "role": "q1" }} , 
 	{ "name": "weights_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_3", "role": "address0" }} , 
 	{ "name": "weights_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_3", "role": "ce0" }} , 
 	{ "name": "weights_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_3", "role": "q0" }} , 
 	{ "name": "weights_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_3", "role": "address1" }} , 
 	{ "name": "weights_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_3", "role": "ce1" }} , 
 	{ "name": "weights_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_3", "role": "q1" }} , 
 	{ "name": "weights_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_4", "role": "address0" }} , 
 	{ "name": "weights_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_4", "role": "ce0" }} , 
 	{ "name": "weights_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_4", "role": "q0" }} , 
 	{ "name": "weights_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_4", "role": "address1" }} , 
 	{ "name": "weights_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_4", "role": "ce1" }} , 
 	{ "name": "weights_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_4", "role": "q1" }} , 
 	{ "name": "weights_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_5", "role": "address0" }} , 
 	{ "name": "weights_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_5", "role": "ce0" }} , 
 	{ "name": "weights_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_5", "role": "q0" }} , 
 	{ "name": "weights_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_5", "role": "address1" }} , 
 	{ "name": "weights_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_5", "role": "ce1" }} , 
 	{ "name": "weights_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_5", "role": "q1" }} , 
 	{ "name": "weights_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_6", "role": "address0" }} , 
 	{ "name": "weights_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_6", "role": "ce0" }} , 
 	{ "name": "weights_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_6", "role": "q0" }} , 
 	{ "name": "weights_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_6", "role": "address1" }} , 
 	{ "name": "weights_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_6", "role": "ce1" }} , 
 	{ "name": "weights_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_6", "role": "q1" }} , 
 	{ "name": "weights_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_7", "role": "address0" }} , 
 	{ "name": "weights_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_7", "role": "ce0" }} , 
 	{ "name": "weights_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_7", "role": "q0" }} , 
 	{ "name": "weights_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_7", "role": "address1" }} , 
 	{ "name": "weights_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_7", "role": "ce1" }} , 
 	{ "name": "weights_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_7", "role": "q1" }} , 
 	{ "name": "biases_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "biases", "role": "address0" }} , 
 	{ "name": "biases_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "biases", "role": "ce0" }} , 
 	{ "name": "biases_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "biases", "role": "q0" }} , 
 	{ "name": "dense_feature_map_stream128_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dense_feature_map_stream128", "role": "din" }} , 
 	{ "name": "dense_feature_map_stream128_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dense_feature_map_stream128", "role": "num_data_valid" }} , 
 	{ "name": "dense_feature_map_stream128_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dense_feature_map_stream128", "role": "fifo_cap" }} , 
 	{ "name": "dense_feature_map_stream128_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_feature_map_stream128", "role": "full_n" }} , 
 	{ "name": "dense_feature_map_stream128_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_feature_map_stream128", "role": "write" }} , 
 	{ "name": "dense_activations_stream129_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_activations_stream129", "role": "din" }} , 
 	{ "name": "dense_activations_stream129_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dense_activations_stream129", "role": "num_data_valid" }} , 
 	{ "name": "dense_activations_stream129_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dense_activations_stream129", "role": "fifo_cap" }} , 
 	{ "name": "dense_activations_stream129_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_activations_stream129", "role": "full_n" }} , 
 	{ "name": "dense_activations_stream129_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_activations_stream129", "role": "write" }} , 
 	{ "name": "dense_f_map_out134_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dense_f_map_out134", "role": "din" }} , 
 	{ "name": "dense_f_map_out134_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dense_f_map_out134", "role": "num_data_valid" }} , 
 	{ "name": "dense_f_map_out134_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dense_f_map_out134", "role": "fifo_cap" }} , 
 	{ "name": "dense_f_map_out134_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_f_map_out134", "role": "full_n" }} , 
 	{ "name": "dense_f_map_out134_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_f_map_out134", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "37"],
		"CDFG" : "dense_128u_3136u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25362", "EstimateLatencyMax" : "25362",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "maxp2d_64_feature_map_stream127", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_128u_3136u_Pipeline_inputs_fu_1204", "Port" : "maxp2d_64_feature_map_stream127", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "weights_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_128u_3136u_Pipeline_inputs_fu_1204", "Port" : "weights_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "weights_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_128u_3136u_Pipeline_inputs_fu_1204", "Port" : "weights_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "weights_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_128u_3136u_Pipeline_inputs_fu_1204", "Port" : "weights_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "weights_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_128u_3136u_Pipeline_inputs_fu_1204", "Port" : "weights_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "weights_4", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_128u_3136u_Pipeline_inputs_fu_1204", "Port" : "weights_4", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "weights_5", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_128u_3136u_Pipeline_inputs_fu_1204", "Port" : "weights_5", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "weights_6", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_128u_3136u_Pipeline_inputs_fu_1204", "Port" : "weights_6", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "weights_7", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dense_128u_3136u_Pipeline_inputs_fu_1204", "Port" : "weights_7", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "biases", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dense_128u_3136u_Pipeline_init_sums_fu_1070", "Port" : "biases", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "dense_feature_map_stream128", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_dense_128u_3136u_Pipeline_activate_fu_1482", "Port" : "dense_feature_map_stream128", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "dense_activations_stream129", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_dense_128u_3136u_Pipeline_activate_fu_1482", "Port" : "dense_activations_stream129", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "dense_f_map_out134", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_dense_128u_3136u_Pipeline_activate_fu_1482", "Port" : "dense_f_map_out134", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_init_sums_fu_1070", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "dense_128u_3136u_Pipeline_init_sums",
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
			{"Name" : "biases", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "kernel_sum_127_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_126_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_125_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_124_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_123_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_122_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_121_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_120_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_119_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_118_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_117_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_116_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_115_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_113_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_112_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_111_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_110_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_109_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_108_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_107_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_106_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_105_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_104_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_103_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_102_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_101_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_100_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_99_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_98_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_97_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_96_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_95_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_94_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_93_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_92_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_91_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_90_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_89_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_88_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_87_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_86_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_85_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_84_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_83_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_82_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_80_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_79_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_78_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_76_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_73_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_71_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_70_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_66_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_65_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_64_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_63_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_62_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_61_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_60_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_58_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_57_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_56_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_55_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_52_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_51_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_48_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_47_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_45_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "kernel_sum_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "init_sums", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_init_sums_fu_1070.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36"],
		"CDFG" : "dense_128u_3136u_Pipeline_inputs",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25096", "EstimateLatencyMax" : "25096",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "kernel_sum_127_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_126_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_125_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_124_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_123_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_122_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_121_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_120_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_119_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_118_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_117_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_116_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_115_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_114_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_113_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_112_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_111_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_110_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_109_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_108_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_107_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_106_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_105_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_104_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_103_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_102_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_101_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_100_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_99_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_98_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_97_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_96_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_95_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_94_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_93_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_92_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_91_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_90_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_89_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_88_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_87_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_86_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_85_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_84_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_83_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_82_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_81_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_80_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_79_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_78_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_77_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_76_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_75_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_74_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_73_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_72_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_71_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_70_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_69_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_68_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_67_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_66_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_65_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_64_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_63_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_62_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_61_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_60_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_59_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_58_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_57_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_56_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_55_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_54_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_53_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_52_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_51_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_50_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_49_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_48_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_47_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_46_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_45_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_44_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_43_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_42_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_41_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_40_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_39_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_38_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_37_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_36_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_35_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_34_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_33_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_32_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_31_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_30_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_26_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_25_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_16_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_15_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_sum_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "maxp2d_64_feature_map_stream127", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "maxp2d_64_feature_map_stream127_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "add17_127154_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_126153_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_125152_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_124151_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_123150_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_122149_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_121148_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_120147_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_119146_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_118145_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_117144_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_116143_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_115142_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_114141_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_113140_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_112139_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_111138_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_110137_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_109136_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_108135_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_107134_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_106133_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_105132_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_104131_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_103130_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_102129_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_101128_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_100127_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_99126_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_98125_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_97124_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_96123_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_95122_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_94121_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_93120_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_92119_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_91118_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_90117_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_89116_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_88115_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_87114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_86113_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_85112_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_84111_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_83110_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_82109_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_81108_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_80107_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_79106_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_78105_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_77104_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_76103_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_75102_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_74101_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_73100_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_7299_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_7198_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_7097_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_6996_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_6895_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_6794_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_6693_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_6592_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_6491_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_6390_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_6289_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_6188_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_6087_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_5986_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_5885_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_5784_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_5683_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_5582_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_5481_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_5380_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_5279_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_5178_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_5077_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_4976_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_4875_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_4774_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_4673_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_4572_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_4471_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_4370_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_4269_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_4168_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_4067_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_3966_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_3865_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_3764_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_3663_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_3562_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_3461_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_3360_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_3259_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_3158_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_3057_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_2956_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_2855_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_2754_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_2653_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_2552_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_2451_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_2350_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_2249_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_2148_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_2047_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_1946_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_1845_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_1744_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_1643_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_1542_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_1441_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_1340_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_1239_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_1138_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_1037_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_936_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_835_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_734_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_633_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_532_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_431_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_330_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_229_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add17_128_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add177_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "inputs", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage6", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage6_subdone", "QuitState" : "ap_ST_fsm_pp0_stage6", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage6_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fadd_32ns_32ns_32_3_full_dsp_1_U19904", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fadd_32ns_32ns_32_3_full_dsp_1_U19905", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fadd_32ns_32ns_32_3_full_dsp_1_U19906", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fadd_32ns_32ns_32_3_full_dsp_1_U19907", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fadd_32ns_32ns_32_3_full_dsp_1_U19908", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fadd_32ns_32ns_32_3_full_dsp_1_U19909", "Parent" : "3"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fadd_32ns_32ns_32_3_full_dsp_1_U19910", "Parent" : "3"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fadd_32ns_32ns_32_3_full_dsp_1_U19911", "Parent" : "3"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fadd_32ns_32ns_32_3_full_dsp_1_U19912", "Parent" : "3"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fadd_32ns_32ns_32_3_full_dsp_1_U19913", "Parent" : "3"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fadd_32ns_32ns_32_3_full_dsp_1_U19914", "Parent" : "3"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fadd_32ns_32ns_32_3_full_dsp_1_U19915", "Parent" : "3"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fadd_32ns_32ns_32_3_full_dsp_1_U19916", "Parent" : "3"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fadd_32ns_32ns_32_3_full_dsp_1_U19917", "Parent" : "3"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fadd_32ns_32ns_32_3_full_dsp_1_U19918", "Parent" : "3"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fadd_32ns_32ns_32_3_full_dsp_1_U19919", "Parent" : "3"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fmul_32ns_32ns_32_2_max_dsp_1_U19920", "Parent" : "3"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fmul_32ns_32ns_32_2_max_dsp_1_U19921", "Parent" : "3"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fmul_32ns_32ns_32_2_max_dsp_1_U19922", "Parent" : "3"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fmul_32ns_32ns_32_2_max_dsp_1_U19923", "Parent" : "3"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fmul_32ns_32ns_32_2_max_dsp_1_U19924", "Parent" : "3"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fmul_32ns_32ns_32_2_max_dsp_1_U19925", "Parent" : "3"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fmul_32ns_32ns_32_2_max_dsp_1_U19926", "Parent" : "3"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fmul_32ns_32ns_32_2_max_dsp_1_U19927", "Parent" : "3"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fmul_32ns_32ns_32_2_max_dsp_1_U19928", "Parent" : "3"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fmul_32ns_32ns_32_2_max_dsp_1_U19929", "Parent" : "3"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fmul_32ns_32ns_32_2_max_dsp_1_U19930", "Parent" : "3"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fmul_32ns_32ns_32_2_max_dsp_1_U19931", "Parent" : "3"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fmul_32ns_32ns_32_2_max_dsp_1_U19932", "Parent" : "3"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fmul_32ns_32ns_32_2_max_dsp_1_U19933", "Parent" : "3"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fmul_32ns_32ns_32_2_max_dsp_1_U19934", "Parent" : "3"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.fmul_32ns_32ns_32_2_max_dsp_1_U19935", "Parent" : "3"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_inputs_fu_1204.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_activate_fu_1482", "Parent" : "0", "Child" : ["38", "39", "40"],
		"CDFG" : "dense_128u_3136u_Pipeline_activate",
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
			{"Name" : "add177_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_128_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_229_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_330_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_431_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_532_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_633_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_734_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_835_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_936_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_1037_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_1138_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_1239_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_1340_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_1441_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_1542_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_1643_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_1744_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_1845_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_1946_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_2047_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_2148_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_2249_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_2350_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_2451_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_2552_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_2653_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_2754_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_2855_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_2956_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_3057_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_3158_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_3259_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_3360_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_3461_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_3562_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_3663_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_3764_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_3865_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_3966_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_4067_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_4168_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_4269_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_4370_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_4471_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_4572_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_4673_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_4774_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_4875_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_4976_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_5077_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_5178_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_5279_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_5380_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_5481_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_5582_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_5683_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_5784_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_5885_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_5986_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_6087_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_6188_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_6289_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_6390_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_6491_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_6592_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_6693_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_6794_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_6895_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_6996_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_7097_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_7198_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_7299_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_73100_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_74101_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_75102_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_76103_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_77104_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_78105_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_79106_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_80107_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_81108_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_82109_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_83110_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_84111_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_85112_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_86113_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_87114_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_88115_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_89116_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_90117_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_91118_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_92119_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_93120_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_94121_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_95122_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_96123_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_97124_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_98125_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_99126_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_100127_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_101128_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_102129_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_103130_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_104131_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_105132_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_106133_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_107134_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_108135_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_109136_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_110137_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_111138_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_112139_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_113140_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_114141_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_115142_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_116143_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_117144_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_118145_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_119146_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_120147_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_121148_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_122149_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_123150_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_124151_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_125152_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_126153_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add17_127154_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense_feature_map_stream128", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dense_feature_map_stream128_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dense_activations_stream129", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dense_activations_stream129_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dense_f_map_out134", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dense_f_map_out134_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "activate", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_activate_fu_1482.fcmp_32ns_32ns_1_2_no_dsp_1_U20201", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_activate_fu_1482.mux_1288_32_1_1_U20202", "Parent" : "37"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_128u_3136u_Pipeline_activate_fu_1482.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"}]}


set ArgLastReadFirstWriteLatency {
	dense_128u_3136u_s {
		maxp2d_64_feature_map_stream127 {Type I LastRead 1 FirstWrite -1}
		weights_0 {Type I LastRead 8 FirstWrite -1}
		weights_1 {Type I LastRead 8 FirstWrite -1}
		weights_2 {Type I LastRead 8 FirstWrite -1}
		weights_3 {Type I LastRead 8 FirstWrite -1}
		weights_4 {Type I LastRead 8 FirstWrite -1}
		weights_5 {Type I LastRead 8 FirstWrite -1}
		weights_6 {Type I LastRead 8 FirstWrite -1}
		weights_7 {Type I LastRead 8 FirstWrite -1}
		biases {Type I LastRead 0 FirstWrite -1}
		dense_feature_map_stream128 {Type O LastRead -1 FirstWrite 1}
		dense_activations_stream129 {Type O LastRead -1 FirstWrite 1}
		dense_f_map_out134 {Type O LastRead -1 FirstWrite 1}}
	dense_128u_3136u_Pipeline_init_sums {
		biases {Type I LastRead 0 FirstWrite -1}
		kernel_sum_127_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_126_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_125_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_124_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_123_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_122_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_121_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_120_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_119_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_118_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_117_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_116_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_115_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_114_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_113_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_112_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_111_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_110_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_109_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_108_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_107_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_106_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_105_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_104_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_103_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_102_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_101_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_100_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_99_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_98_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_97_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_96_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_95_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_94_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_93_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_92_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_91_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_90_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_89_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_88_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_87_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_86_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_85_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_84_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_83_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_82_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_81_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_80_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_79_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_78_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_77_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_76_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_75_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_74_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_73_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_72_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_71_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_70_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_69_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_68_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_67_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_66_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_65_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_64_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_63_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_62_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_61_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_60_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_59_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_58_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_57_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_56_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_55_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_54_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_53_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_52_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_51_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_50_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_49_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_48_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_47_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_46_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_45_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_44_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_43_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_42_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_41_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_40_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_39_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_38_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_37_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_36_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_35_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_34_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_33_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_32_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_31_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_30_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_29_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_28_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_27_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_26_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_25_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_24_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_23_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_22_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_21_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_20_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_19_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_18_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_17_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_16_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_15_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_14_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_13_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_12_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_11_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_10_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_9_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_8_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_7_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_6_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_5_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_4_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_3_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_2_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_1_out {Type O LastRead -1 FirstWrite 0}
		kernel_sum_out {Type O LastRead -1 FirstWrite 0}}
	dense_128u_3136u_Pipeline_inputs {
		kernel_sum_127_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_126_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_125_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_124_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_123_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_122_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_121_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_120_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_119_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_118_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_117_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_116_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_115_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_114_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_113_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_112_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_111_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_110_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_109_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_108_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_107_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_106_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_105_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_104_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_103_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_102_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_101_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_100_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_99_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_98_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_97_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_96_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_95_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_94_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_93_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_92_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_91_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_90_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_89_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_88_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_87_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_86_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_85_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_84_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_83_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_82_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_81_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_80_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_79_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_78_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_77_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_76_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_75_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_74_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_73_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_72_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_71_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_70_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_69_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_68_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_67_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_66_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_65_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_64_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_63_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_62_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_61_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_60_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_59_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_58_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_57_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_56_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_55_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_54_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_53_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_52_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_51_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_50_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_49_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_48_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_47_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_46_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_45_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_44_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_43_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_42_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_41_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_40_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_39_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_38_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_37_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_36_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_35_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_34_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_33_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_32_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_31_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_30_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_29_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_28_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_27_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_26_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_25_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_24_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_23_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_22_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_21_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_20_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_19_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_18_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_17_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_16_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_15_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_14_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_13_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_12_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_11_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_10_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_9_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_8_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_7_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_6_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_5_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_4_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_3_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_2_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_1_reload {Type I LastRead 0 FirstWrite -1}
		kernel_sum_reload {Type I LastRead 0 FirstWrite -1}
		maxp2d_64_feature_map_stream127 {Type I LastRead 1 FirstWrite -1}
		weights_0 {Type I LastRead 8 FirstWrite -1}
		weights_1 {Type I LastRead 8 FirstWrite -1}
		weights_2 {Type I LastRead 8 FirstWrite -1}
		weights_3 {Type I LastRead 8 FirstWrite -1}
		weights_4 {Type I LastRead 8 FirstWrite -1}
		weights_5 {Type I LastRead 8 FirstWrite -1}
		weights_6 {Type I LastRead 8 FirstWrite -1}
		weights_7 {Type I LastRead 8 FirstWrite -1}
		add17_127154_out {Type O LastRead -1 FirstWrite 6}
		add17_126153_out {Type O LastRead -1 FirstWrite 6}
		add17_125152_out {Type O LastRead -1 FirstWrite 6}
		add17_124151_out {Type O LastRead -1 FirstWrite 6}
		add17_123150_out {Type O LastRead -1 FirstWrite 6}
		add17_122149_out {Type O LastRead -1 FirstWrite 6}
		add17_121148_out {Type O LastRead -1 FirstWrite 6}
		add17_120147_out {Type O LastRead -1 FirstWrite 6}
		add17_119146_out {Type O LastRead -1 FirstWrite 6}
		add17_118145_out {Type O LastRead -1 FirstWrite 6}
		add17_117144_out {Type O LastRead -1 FirstWrite 6}
		add17_116143_out {Type O LastRead -1 FirstWrite 6}
		add17_115142_out {Type O LastRead -1 FirstWrite 6}
		add17_114141_out {Type O LastRead -1 FirstWrite 6}
		add17_113140_out {Type O LastRead -1 FirstWrite 6}
		add17_112139_out {Type O LastRead -1 FirstWrite 6}
		add17_111138_out {Type O LastRead -1 FirstWrite 6}
		add17_110137_out {Type O LastRead -1 FirstWrite 6}
		add17_109136_out {Type O LastRead -1 FirstWrite 6}
		add17_108135_out {Type O LastRead -1 FirstWrite 6}
		add17_107134_out {Type O LastRead -1 FirstWrite 6}
		add17_106133_out {Type O LastRead -1 FirstWrite 6}
		add17_105132_out {Type O LastRead -1 FirstWrite 6}
		add17_104131_out {Type O LastRead -1 FirstWrite 6}
		add17_103130_out {Type O LastRead -1 FirstWrite 6}
		add17_102129_out {Type O LastRead -1 FirstWrite 6}
		add17_101128_out {Type O LastRead -1 FirstWrite 6}
		add17_100127_out {Type O LastRead -1 FirstWrite 6}
		add17_99126_out {Type O LastRead -1 FirstWrite 6}
		add17_98125_out {Type O LastRead -1 FirstWrite 6}
		add17_97124_out {Type O LastRead -1 FirstWrite 6}
		add17_96123_out {Type O LastRead -1 FirstWrite 6}
		add17_95122_out {Type O LastRead -1 FirstWrite 6}
		add17_94121_out {Type O LastRead -1 FirstWrite 6}
		add17_93120_out {Type O LastRead -1 FirstWrite 6}
		add17_92119_out {Type O LastRead -1 FirstWrite 6}
		add17_91118_out {Type O LastRead -1 FirstWrite 6}
		add17_90117_out {Type O LastRead -1 FirstWrite 6}
		add17_89116_out {Type O LastRead -1 FirstWrite 6}
		add17_88115_out {Type O LastRead -1 FirstWrite 6}
		add17_87114_out {Type O LastRead -1 FirstWrite 6}
		add17_86113_out {Type O LastRead -1 FirstWrite 6}
		add17_85112_out {Type O LastRead -1 FirstWrite 6}
		add17_84111_out {Type O LastRead -1 FirstWrite 6}
		add17_83110_out {Type O LastRead -1 FirstWrite 6}
		add17_82109_out {Type O LastRead -1 FirstWrite 6}
		add17_81108_out {Type O LastRead -1 FirstWrite 6}
		add17_80107_out {Type O LastRead -1 FirstWrite 6}
		add17_79106_out {Type O LastRead -1 FirstWrite 6}
		add17_78105_out {Type O LastRead -1 FirstWrite 6}
		add17_77104_out {Type O LastRead -1 FirstWrite 6}
		add17_76103_out {Type O LastRead -1 FirstWrite 6}
		add17_75102_out {Type O LastRead -1 FirstWrite 6}
		add17_74101_out {Type O LastRead -1 FirstWrite 6}
		add17_73100_out {Type O LastRead -1 FirstWrite 6}
		add17_7299_out {Type O LastRead -1 FirstWrite 6}
		add17_7198_out {Type O LastRead -1 FirstWrite 6}
		add17_7097_out {Type O LastRead -1 FirstWrite 6}
		add17_6996_out {Type O LastRead -1 FirstWrite 6}
		add17_6895_out {Type O LastRead -1 FirstWrite 6}
		add17_6794_out {Type O LastRead -1 FirstWrite 6}
		add17_6693_out {Type O LastRead -1 FirstWrite 6}
		add17_6592_out {Type O LastRead -1 FirstWrite 6}
		add17_6491_out {Type O LastRead -1 FirstWrite 6}
		add17_6390_out {Type O LastRead -1 FirstWrite 6}
		add17_6289_out {Type O LastRead -1 FirstWrite 6}
		add17_6188_out {Type O LastRead -1 FirstWrite 6}
		add17_6087_out {Type O LastRead -1 FirstWrite 6}
		add17_5986_out {Type O LastRead -1 FirstWrite 6}
		add17_5885_out {Type O LastRead -1 FirstWrite 6}
		add17_5784_out {Type O LastRead -1 FirstWrite 6}
		add17_5683_out {Type O LastRead -1 FirstWrite 6}
		add17_5582_out {Type O LastRead -1 FirstWrite 6}
		add17_5481_out {Type O LastRead -1 FirstWrite 6}
		add17_5380_out {Type O LastRead -1 FirstWrite 6}
		add17_5279_out {Type O LastRead -1 FirstWrite 6}
		add17_5178_out {Type O LastRead -1 FirstWrite 6}
		add17_5077_out {Type O LastRead -1 FirstWrite 6}
		add17_4976_out {Type O LastRead -1 FirstWrite 6}
		add17_4875_out {Type O LastRead -1 FirstWrite 6}
		add17_4774_out {Type O LastRead -1 FirstWrite 6}
		add17_4673_out {Type O LastRead -1 FirstWrite 6}
		add17_4572_out {Type O LastRead -1 FirstWrite 6}
		add17_4471_out {Type O LastRead -1 FirstWrite 6}
		add17_4370_out {Type O LastRead -1 FirstWrite 6}
		add17_4269_out {Type O LastRead -1 FirstWrite 6}
		add17_4168_out {Type O LastRead -1 FirstWrite 6}
		add17_4067_out {Type O LastRead -1 FirstWrite 6}
		add17_3966_out {Type O LastRead -1 FirstWrite 6}
		add17_3865_out {Type O LastRead -1 FirstWrite 6}
		add17_3764_out {Type O LastRead -1 FirstWrite 6}
		add17_3663_out {Type O LastRead -1 FirstWrite 6}
		add17_3562_out {Type O LastRead -1 FirstWrite 6}
		add17_3461_out {Type O LastRead -1 FirstWrite 6}
		add17_3360_out {Type O LastRead -1 FirstWrite 6}
		add17_3259_out {Type O LastRead -1 FirstWrite 6}
		add17_3158_out {Type O LastRead -1 FirstWrite 6}
		add17_3057_out {Type O LastRead -1 FirstWrite 6}
		add17_2956_out {Type O LastRead -1 FirstWrite 6}
		add17_2855_out {Type O LastRead -1 FirstWrite 6}
		add17_2754_out {Type O LastRead -1 FirstWrite 6}
		add17_2653_out {Type O LastRead -1 FirstWrite 6}
		add17_2552_out {Type O LastRead -1 FirstWrite 6}
		add17_2451_out {Type O LastRead -1 FirstWrite 6}
		add17_2350_out {Type O LastRead -1 FirstWrite 6}
		add17_2249_out {Type O LastRead -1 FirstWrite 6}
		add17_2148_out {Type O LastRead -1 FirstWrite 6}
		add17_2047_out {Type O LastRead -1 FirstWrite 6}
		add17_1946_out {Type O LastRead -1 FirstWrite 6}
		add17_1845_out {Type O LastRead -1 FirstWrite 6}
		add17_1744_out {Type O LastRead -1 FirstWrite 6}
		add17_1643_out {Type O LastRead -1 FirstWrite 6}
		add17_1542_out {Type O LastRead -1 FirstWrite 6}
		add17_1441_out {Type O LastRead -1 FirstWrite 6}
		add17_1340_out {Type O LastRead -1 FirstWrite 6}
		add17_1239_out {Type O LastRead -1 FirstWrite 6}
		add17_1138_out {Type O LastRead -1 FirstWrite 6}
		add17_1037_out {Type O LastRead -1 FirstWrite 6}
		add17_936_out {Type O LastRead -1 FirstWrite 6}
		add17_835_out {Type O LastRead -1 FirstWrite 6}
		add17_734_out {Type O LastRead -1 FirstWrite 6}
		add17_633_out {Type O LastRead -1 FirstWrite 6}
		add17_532_out {Type O LastRead -1 FirstWrite 6}
		add17_431_out {Type O LastRead -1 FirstWrite 6}
		add17_330_out {Type O LastRead -1 FirstWrite 6}
		add17_229_out {Type O LastRead -1 FirstWrite 6}
		add17_128_out {Type O LastRead -1 FirstWrite 6}
		add177_out {Type O LastRead -1 FirstWrite 6}}
	dense_128u_3136u_Pipeline_activate {
		add177_reload {Type I LastRead 0 FirstWrite -1}
		add17_128_reload {Type I LastRead 0 FirstWrite -1}
		add17_229_reload {Type I LastRead 0 FirstWrite -1}
		add17_330_reload {Type I LastRead 0 FirstWrite -1}
		add17_431_reload {Type I LastRead 0 FirstWrite -1}
		add17_532_reload {Type I LastRead 0 FirstWrite -1}
		add17_633_reload {Type I LastRead 0 FirstWrite -1}
		add17_734_reload {Type I LastRead 0 FirstWrite -1}
		add17_835_reload {Type I LastRead 0 FirstWrite -1}
		add17_936_reload {Type I LastRead 0 FirstWrite -1}
		add17_1037_reload {Type I LastRead 0 FirstWrite -1}
		add17_1138_reload {Type I LastRead 0 FirstWrite -1}
		add17_1239_reload {Type I LastRead 0 FirstWrite -1}
		add17_1340_reload {Type I LastRead 0 FirstWrite -1}
		add17_1441_reload {Type I LastRead 0 FirstWrite -1}
		add17_1542_reload {Type I LastRead 0 FirstWrite -1}
		add17_1643_reload {Type I LastRead 0 FirstWrite -1}
		add17_1744_reload {Type I LastRead 0 FirstWrite -1}
		add17_1845_reload {Type I LastRead 0 FirstWrite -1}
		add17_1946_reload {Type I LastRead 0 FirstWrite -1}
		add17_2047_reload {Type I LastRead 0 FirstWrite -1}
		add17_2148_reload {Type I LastRead 0 FirstWrite -1}
		add17_2249_reload {Type I LastRead 0 FirstWrite -1}
		add17_2350_reload {Type I LastRead 0 FirstWrite -1}
		add17_2451_reload {Type I LastRead 0 FirstWrite -1}
		add17_2552_reload {Type I LastRead 0 FirstWrite -1}
		add17_2653_reload {Type I LastRead 0 FirstWrite -1}
		add17_2754_reload {Type I LastRead 0 FirstWrite -1}
		add17_2855_reload {Type I LastRead 0 FirstWrite -1}
		add17_2956_reload {Type I LastRead 0 FirstWrite -1}
		add17_3057_reload {Type I LastRead 0 FirstWrite -1}
		add17_3158_reload {Type I LastRead 0 FirstWrite -1}
		add17_3259_reload {Type I LastRead 0 FirstWrite -1}
		add17_3360_reload {Type I LastRead 0 FirstWrite -1}
		add17_3461_reload {Type I LastRead 0 FirstWrite -1}
		add17_3562_reload {Type I LastRead 0 FirstWrite -1}
		add17_3663_reload {Type I LastRead 0 FirstWrite -1}
		add17_3764_reload {Type I LastRead 0 FirstWrite -1}
		add17_3865_reload {Type I LastRead 0 FirstWrite -1}
		add17_3966_reload {Type I LastRead 0 FirstWrite -1}
		add17_4067_reload {Type I LastRead 0 FirstWrite -1}
		add17_4168_reload {Type I LastRead 0 FirstWrite -1}
		add17_4269_reload {Type I LastRead 0 FirstWrite -1}
		add17_4370_reload {Type I LastRead 0 FirstWrite -1}
		add17_4471_reload {Type I LastRead 0 FirstWrite -1}
		add17_4572_reload {Type I LastRead 0 FirstWrite -1}
		add17_4673_reload {Type I LastRead 0 FirstWrite -1}
		add17_4774_reload {Type I LastRead 0 FirstWrite -1}
		add17_4875_reload {Type I LastRead 0 FirstWrite -1}
		add17_4976_reload {Type I LastRead 0 FirstWrite -1}
		add17_5077_reload {Type I LastRead 0 FirstWrite -1}
		add17_5178_reload {Type I LastRead 0 FirstWrite -1}
		add17_5279_reload {Type I LastRead 0 FirstWrite -1}
		add17_5380_reload {Type I LastRead 0 FirstWrite -1}
		add17_5481_reload {Type I LastRead 0 FirstWrite -1}
		add17_5582_reload {Type I LastRead 0 FirstWrite -1}
		add17_5683_reload {Type I LastRead 0 FirstWrite -1}
		add17_5784_reload {Type I LastRead 0 FirstWrite -1}
		add17_5885_reload {Type I LastRead 0 FirstWrite -1}
		add17_5986_reload {Type I LastRead 0 FirstWrite -1}
		add17_6087_reload {Type I LastRead 0 FirstWrite -1}
		add17_6188_reload {Type I LastRead 0 FirstWrite -1}
		add17_6289_reload {Type I LastRead 0 FirstWrite -1}
		add17_6390_reload {Type I LastRead 0 FirstWrite -1}
		add17_6491_reload {Type I LastRead 0 FirstWrite -1}
		add17_6592_reload {Type I LastRead 0 FirstWrite -1}
		add17_6693_reload {Type I LastRead 0 FirstWrite -1}
		add17_6794_reload {Type I LastRead 0 FirstWrite -1}
		add17_6895_reload {Type I LastRead 0 FirstWrite -1}
		add17_6996_reload {Type I LastRead 0 FirstWrite -1}
		add17_7097_reload {Type I LastRead 0 FirstWrite -1}
		add17_7198_reload {Type I LastRead 0 FirstWrite -1}
		add17_7299_reload {Type I LastRead 0 FirstWrite -1}
		add17_73100_reload {Type I LastRead 0 FirstWrite -1}
		add17_74101_reload {Type I LastRead 0 FirstWrite -1}
		add17_75102_reload {Type I LastRead 0 FirstWrite -1}
		add17_76103_reload {Type I LastRead 0 FirstWrite -1}
		add17_77104_reload {Type I LastRead 0 FirstWrite -1}
		add17_78105_reload {Type I LastRead 0 FirstWrite -1}
		add17_79106_reload {Type I LastRead 0 FirstWrite -1}
		add17_80107_reload {Type I LastRead 0 FirstWrite -1}
		add17_81108_reload {Type I LastRead 0 FirstWrite -1}
		add17_82109_reload {Type I LastRead 0 FirstWrite -1}
		add17_83110_reload {Type I LastRead 0 FirstWrite -1}
		add17_84111_reload {Type I LastRead 0 FirstWrite -1}
		add17_85112_reload {Type I LastRead 0 FirstWrite -1}
		add17_86113_reload {Type I LastRead 0 FirstWrite -1}
		add17_87114_reload {Type I LastRead 0 FirstWrite -1}
		add17_88115_reload {Type I LastRead 0 FirstWrite -1}
		add17_89116_reload {Type I LastRead 0 FirstWrite -1}
		add17_90117_reload {Type I LastRead 0 FirstWrite -1}
		add17_91118_reload {Type I LastRead 0 FirstWrite -1}
		add17_92119_reload {Type I LastRead 0 FirstWrite -1}
		add17_93120_reload {Type I LastRead 0 FirstWrite -1}
		add17_94121_reload {Type I LastRead 0 FirstWrite -1}
		add17_95122_reload {Type I LastRead 0 FirstWrite -1}
		add17_96123_reload {Type I LastRead 0 FirstWrite -1}
		add17_97124_reload {Type I LastRead 0 FirstWrite -1}
		add17_98125_reload {Type I LastRead 0 FirstWrite -1}
		add17_99126_reload {Type I LastRead 0 FirstWrite -1}
		add17_100127_reload {Type I LastRead 0 FirstWrite -1}
		add17_101128_reload {Type I LastRead 0 FirstWrite -1}
		add17_102129_reload {Type I LastRead 0 FirstWrite -1}
		add17_103130_reload {Type I LastRead 0 FirstWrite -1}
		add17_104131_reload {Type I LastRead 0 FirstWrite -1}
		add17_105132_reload {Type I LastRead 0 FirstWrite -1}
		add17_106133_reload {Type I LastRead 0 FirstWrite -1}
		add17_107134_reload {Type I LastRead 0 FirstWrite -1}
		add17_108135_reload {Type I LastRead 0 FirstWrite -1}
		add17_109136_reload {Type I LastRead 0 FirstWrite -1}
		add17_110137_reload {Type I LastRead 0 FirstWrite -1}
		add17_111138_reload {Type I LastRead 0 FirstWrite -1}
		add17_112139_reload {Type I LastRead 0 FirstWrite -1}
		add17_113140_reload {Type I LastRead 0 FirstWrite -1}
		add17_114141_reload {Type I LastRead 0 FirstWrite -1}
		add17_115142_reload {Type I LastRead 0 FirstWrite -1}
		add17_116143_reload {Type I LastRead 0 FirstWrite -1}
		add17_117144_reload {Type I LastRead 0 FirstWrite -1}
		add17_118145_reload {Type I LastRead 0 FirstWrite -1}
		add17_119146_reload {Type I LastRead 0 FirstWrite -1}
		add17_120147_reload {Type I LastRead 0 FirstWrite -1}
		add17_121148_reload {Type I LastRead 0 FirstWrite -1}
		add17_122149_reload {Type I LastRead 0 FirstWrite -1}
		add17_123150_reload {Type I LastRead 0 FirstWrite -1}
		add17_124151_reload {Type I LastRead 0 FirstWrite -1}
		add17_125152_reload {Type I LastRead 0 FirstWrite -1}
		add17_126153_reload {Type I LastRead 0 FirstWrite -1}
		add17_127154_reload {Type I LastRead 0 FirstWrite -1}
		dense_feature_map_stream128 {Type O LastRead -1 FirstWrite 1}
		dense_activations_stream129 {Type O LastRead -1 FirstWrite 1}
		dense_f_map_out134 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "25362", "Max" : "25362"}
	, {"Name" : "Interval", "Min" : "25362", "Max" : "25362"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	maxp2d_64_feature_map_stream127 { ap_fifo {  { maxp2d_64_feature_map_stream127_dout fifo_port_we 0 32 }  { maxp2d_64_feature_map_stream127_num_data_valid fifo_status_num_data_valid 0 3 }  { maxp2d_64_feature_map_stream127_fifo_cap fifo_update 0 3 }  { maxp2d_64_feature_map_stream127_empty_n fifo_status 0 1 }  { maxp2d_64_feature_map_stream127_read fifo_data 1 1 } } }
	weights_0 { ap_memory {  { weights_0_address0 mem_address 1 16 }  { weights_0_ce0 mem_ce 1 1 }  { weights_0_q0 mem_dout 0 32 }  { weights_0_address1 MemPortADDR2 1 16 }  { weights_0_ce1 MemPortCE2 1 1 }  { weights_0_q1 MemPortDOUT2 0 32 } } }
	weights_1 { ap_memory {  { weights_1_address0 mem_address 1 16 }  { weights_1_ce0 mem_ce 1 1 }  { weights_1_q0 mem_dout 0 32 }  { weights_1_address1 MemPortADDR2 1 16 }  { weights_1_ce1 MemPortCE2 1 1 }  { weights_1_q1 MemPortDOUT2 0 32 } } }
	weights_2 { ap_memory {  { weights_2_address0 mem_address 1 16 }  { weights_2_ce0 mem_ce 1 1 }  { weights_2_q0 mem_dout 0 32 }  { weights_2_address1 MemPortADDR2 1 16 }  { weights_2_ce1 MemPortCE2 1 1 }  { weights_2_q1 MemPortDOUT2 0 32 } } }
	weights_3 { ap_memory {  { weights_3_address0 mem_address 1 16 }  { weights_3_ce0 mem_ce 1 1 }  { weights_3_q0 mem_dout 0 32 }  { weights_3_address1 MemPortADDR2 1 16 }  { weights_3_ce1 MemPortCE2 1 1 }  { weights_3_q1 MemPortDOUT2 0 32 } } }
	weights_4 { ap_memory {  { weights_4_address0 mem_address 1 16 }  { weights_4_ce0 mem_ce 1 1 }  { weights_4_q0 mem_dout 0 32 }  { weights_4_address1 MemPortADDR2 1 16 }  { weights_4_ce1 MemPortCE2 1 1 }  { weights_4_q1 MemPortDOUT2 0 32 } } }
	weights_5 { ap_memory {  { weights_5_address0 mem_address 1 16 }  { weights_5_ce0 mem_ce 1 1 }  { weights_5_q0 mem_dout 0 32 }  { weights_5_address1 MemPortADDR2 1 16 }  { weights_5_ce1 MemPortCE2 1 1 }  { weights_5_q1 MemPortDOUT2 0 32 } } }
	weights_6 { ap_memory {  { weights_6_address0 mem_address 1 16 }  { weights_6_ce0 mem_ce 1 1 }  { weights_6_q0 mem_dout 0 32 }  { weights_6_address1 MemPortADDR2 1 16 }  { weights_6_ce1 MemPortCE2 1 1 }  { weights_6_q1 MemPortDOUT2 0 32 } } }
	weights_7 { ap_memory {  { weights_7_address0 mem_address 1 16 }  { weights_7_ce0 mem_ce 1 1 }  { weights_7_q0 mem_dout 0 32 }  { weights_7_address1 MemPortADDR2 1 16 }  { weights_7_ce1 MemPortCE2 1 1 }  { weights_7_q1 MemPortDOUT2 0 32 } } }
	biases { ap_memory {  { biases_address0 mem_address 1 7 }  { biases_ce0 mem_ce 1 1 }  { biases_q0 mem_dout 0 32 } } }
	dense_feature_map_stream128 { ap_fifo {  { dense_feature_map_stream128_din fifo_port_we 1 32 }  { dense_feature_map_stream128_num_data_valid fifo_status_num_data_valid 0 3 }  { dense_feature_map_stream128_fifo_cap fifo_update 0 3 }  { dense_feature_map_stream128_full_n fifo_status 0 1 }  { dense_feature_map_stream128_write fifo_data 1 1 } } }
	dense_activations_stream129 { ap_fifo {  { dense_activations_stream129_din fifo_port_we 1 1 }  { dense_activations_stream129_num_data_valid fifo_status_num_data_valid 0 8 }  { dense_activations_stream129_fifo_cap fifo_update 0 8 }  { dense_activations_stream129_full_n fifo_status 0 1 }  { dense_activations_stream129_write fifo_data 1 1 } } }
	dense_f_map_out134 { ap_fifo {  { dense_f_map_out134_din fifo_port_we 1 32 }  { dense_f_map_out134_num_data_valid fifo_status_num_data_valid 0 8 }  { dense_f_map_out134_fifo_cap fifo_update 0 8 }  { dense_f_map_out134_full_n fifo_status 0 1 }  { dense_f_map_out134_write fifo_data 1 1 } } }
}
