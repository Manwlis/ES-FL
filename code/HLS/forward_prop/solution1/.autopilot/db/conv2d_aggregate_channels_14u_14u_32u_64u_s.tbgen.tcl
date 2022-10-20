set moduleName conv2d_aggregate_channels_14u_14u_32u_64u_s
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
set C_modelName {conv2d_aggregate_channels<14u, 14u, 32u, 64u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ biases float 32 regular {array 64 { 1 3 } 1 1 }  }
	{ in_channel_map_stream_0 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_1 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_2 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_3 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_4 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_5 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_6 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_7 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_8 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_9 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_10 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_11 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_1213 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_13 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_14 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_15 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_16 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_17 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_18 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_19 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_20 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_21 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_22 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_2325 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_24 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_25 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_26 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_27 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_28 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_29 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_30 int 32 regular {fifo 0 volatile }  }
	{ in_channel_map_stream_31 int 32 regular {fifo 0 volatile }  }
	{ conv2d_64_feature_map_stream125 int 32 regular {fifo 1 volatile }  }
	{ conv2d_64_activations_stream126 int 1 regular {fifo 1 volatile }  }
	{ conv2d_64_f_map_out132 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "biases", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_4", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_5", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_6", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_7", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_8", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_9", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_10", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_11", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_1213", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_13", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_14", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_15", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_16", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_17", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_18", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_19", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_20", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_21", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_22", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_2325", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_24", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_25", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_26", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_27", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_28", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_29", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_30", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_channel_map_stream_31", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv2d_64_feature_map_stream125", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_activations_stream126", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_f_map_out132", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 188
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_channel_map_stream_0_dout sc_in sc_lv 32 signal 1 } 
	{ in_channel_map_stream_0_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ in_channel_map_stream_0_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ in_channel_map_stream_0_empty_n sc_in sc_logic 1 signal 1 } 
	{ in_channel_map_stream_0_read sc_out sc_logic 1 signal 1 } 
	{ in_channel_map_stream_1_dout sc_in sc_lv 32 signal 2 } 
	{ in_channel_map_stream_1_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_1_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ in_channel_map_stream_1_empty_n sc_in sc_logic 1 signal 2 } 
	{ in_channel_map_stream_1_read sc_out sc_logic 1 signal 2 } 
	{ in_channel_map_stream_2_dout sc_in sc_lv 32 signal 3 } 
	{ in_channel_map_stream_2_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ in_channel_map_stream_2_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ in_channel_map_stream_2_empty_n sc_in sc_logic 1 signal 3 } 
	{ in_channel_map_stream_2_read sc_out sc_logic 1 signal 3 } 
	{ in_channel_map_stream_3_dout sc_in sc_lv 32 signal 4 } 
	{ in_channel_map_stream_3_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ in_channel_map_stream_3_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ in_channel_map_stream_3_empty_n sc_in sc_logic 1 signal 4 } 
	{ in_channel_map_stream_3_read sc_out sc_logic 1 signal 4 } 
	{ in_channel_map_stream_4_dout sc_in sc_lv 32 signal 5 } 
	{ in_channel_map_stream_4_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ in_channel_map_stream_4_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ in_channel_map_stream_4_empty_n sc_in sc_logic 1 signal 5 } 
	{ in_channel_map_stream_4_read sc_out sc_logic 1 signal 5 } 
	{ in_channel_map_stream_5_dout sc_in sc_lv 32 signal 6 } 
	{ in_channel_map_stream_5_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ in_channel_map_stream_5_fifo_cap sc_in sc_lv 3 signal 6 } 
	{ in_channel_map_stream_5_empty_n sc_in sc_logic 1 signal 6 } 
	{ in_channel_map_stream_5_read sc_out sc_logic 1 signal 6 } 
	{ in_channel_map_stream_6_dout sc_in sc_lv 32 signal 7 } 
	{ in_channel_map_stream_6_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ in_channel_map_stream_6_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ in_channel_map_stream_6_empty_n sc_in sc_logic 1 signal 7 } 
	{ in_channel_map_stream_6_read sc_out sc_logic 1 signal 7 } 
	{ in_channel_map_stream_7_dout sc_in sc_lv 32 signal 8 } 
	{ in_channel_map_stream_7_num_data_valid sc_in sc_lv 3 signal 8 } 
	{ in_channel_map_stream_7_fifo_cap sc_in sc_lv 3 signal 8 } 
	{ in_channel_map_stream_7_empty_n sc_in sc_logic 1 signal 8 } 
	{ in_channel_map_stream_7_read sc_out sc_logic 1 signal 8 } 
	{ in_channel_map_stream_8_dout sc_in sc_lv 32 signal 9 } 
	{ in_channel_map_stream_8_num_data_valid sc_in sc_lv 3 signal 9 } 
	{ in_channel_map_stream_8_fifo_cap sc_in sc_lv 3 signal 9 } 
	{ in_channel_map_stream_8_empty_n sc_in sc_logic 1 signal 9 } 
	{ in_channel_map_stream_8_read sc_out sc_logic 1 signal 9 } 
	{ in_channel_map_stream_9_dout sc_in sc_lv 32 signal 10 } 
	{ in_channel_map_stream_9_num_data_valid sc_in sc_lv 3 signal 10 } 
	{ in_channel_map_stream_9_fifo_cap sc_in sc_lv 3 signal 10 } 
	{ in_channel_map_stream_9_empty_n sc_in sc_logic 1 signal 10 } 
	{ in_channel_map_stream_9_read sc_out sc_logic 1 signal 10 } 
	{ in_channel_map_stream_10_dout sc_in sc_lv 32 signal 11 } 
	{ in_channel_map_stream_10_num_data_valid sc_in sc_lv 3 signal 11 } 
	{ in_channel_map_stream_10_fifo_cap sc_in sc_lv 3 signal 11 } 
	{ in_channel_map_stream_10_empty_n sc_in sc_logic 1 signal 11 } 
	{ in_channel_map_stream_10_read sc_out sc_logic 1 signal 11 } 
	{ in_channel_map_stream_11_dout sc_in sc_lv 32 signal 12 } 
	{ in_channel_map_stream_11_num_data_valid sc_in sc_lv 3 signal 12 } 
	{ in_channel_map_stream_11_fifo_cap sc_in sc_lv 3 signal 12 } 
	{ in_channel_map_stream_11_empty_n sc_in sc_logic 1 signal 12 } 
	{ in_channel_map_stream_11_read sc_out sc_logic 1 signal 12 } 
	{ in_channel_map_stream_1213_dout sc_in sc_lv 32 signal 13 } 
	{ in_channel_map_stream_1213_num_data_valid sc_in sc_lv 3 signal 13 } 
	{ in_channel_map_stream_1213_fifo_cap sc_in sc_lv 3 signal 13 } 
	{ in_channel_map_stream_1213_empty_n sc_in sc_logic 1 signal 13 } 
	{ in_channel_map_stream_1213_read sc_out sc_logic 1 signal 13 } 
	{ in_channel_map_stream_13_dout sc_in sc_lv 32 signal 14 } 
	{ in_channel_map_stream_13_num_data_valid sc_in sc_lv 3 signal 14 } 
	{ in_channel_map_stream_13_fifo_cap sc_in sc_lv 3 signal 14 } 
	{ in_channel_map_stream_13_empty_n sc_in sc_logic 1 signal 14 } 
	{ in_channel_map_stream_13_read sc_out sc_logic 1 signal 14 } 
	{ in_channel_map_stream_14_dout sc_in sc_lv 32 signal 15 } 
	{ in_channel_map_stream_14_num_data_valid sc_in sc_lv 3 signal 15 } 
	{ in_channel_map_stream_14_fifo_cap sc_in sc_lv 3 signal 15 } 
	{ in_channel_map_stream_14_empty_n sc_in sc_logic 1 signal 15 } 
	{ in_channel_map_stream_14_read sc_out sc_logic 1 signal 15 } 
	{ in_channel_map_stream_15_dout sc_in sc_lv 32 signal 16 } 
	{ in_channel_map_stream_15_num_data_valid sc_in sc_lv 3 signal 16 } 
	{ in_channel_map_stream_15_fifo_cap sc_in sc_lv 3 signal 16 } 
	{ in_channel_map_stream_15_empty_n sc_in sc_logic 1 signal 16 } 
	{ in_channel_map_stream_15_read sc_out sc_logic 1 signal 16 } 
	{ in_channel_map_stream_16_dout sc_in sc_lv 32 signal 17 } 
	{ in_channel_map_stream_16_num_data_valid sc_in sc_lv 3 signal 17 } 
	{ in_channel_map_stream_16_fifo_cap sc_in sc_lv 3 signal 17 } 
	{ in_channel_map_stream_16_empty_n sc_in sc_logic 1 signal 17 } 
	{ in_channel_map_stream_16_read sc_out sc_logic 1 signal 17 } 
	{ in_channel_map_stream_17_dout sc_in sc_lv 32 signal 18 } 
	{ in_channel_map_stream_17_num_data_valid sc_in sc_lv 3 signal 18 } 
	{ in_channel_map_stream_17_fifo_cap sc_in sc_lv 3 signal 18 } 
	{ in_channel_map_stream_17_empty_n sc_in sc_logic 1 signal 18 } 
	{ in_channel_map_stream_17_read sc_out sc_logic 1 signal 18 } 
	{ in_channel_map_stream_18_dout sc_in sc_lv 32 signal 19 } 
	{ in_channel_map_stream_18_num_data_valid sc_in sc_lv 3 signal 19 } 
	{ in_channel_map_stream_18_fifo_cap sc_in sc_lv 3 signal 19 } 
	{ in_channel_map_stream_18_empty_n sc_in sc_logic 1 signal 19 } 
	{ in_channel_map_stream_18_read sc_out sc_logic 1 signal 19 } 
	{ in_channel_map_stream_19_dout sc_in sc_lv 32 signal 20 } 
	{ in_channel_map_stream_19_num_data_valid sc_in sc_lv 3 signal 20 } 
	{ in_channel_map_stream_19_fifo_cap sc_in sc_lv 3 signal 20 } 
	{ in_channel_map_stream_19_empty_n sc_in sc_logic 1 signal 20 } 
	{ in_channel_map_stream_19_read sc_out sc_logic 1 signal 20 } 
	{ in_channel_map_stream_20_dout sc_in sc_lv 32 signal 21 } 
	{ in_channel_map_stream_20_num_data_valid sc_in sc_lv 3 signal 21 } 
	{ in_channel_map_stream_20_fifo_cap sc_in sc_lv 3 signal 21 } 
	{ in_channel_map_stream_20_empty_n sc_in sc_logic 1 signal 21 } 
	{ in_channel_map_stream_20_read sc_out sc_logic 1 signal 21 } 
	{ in_channel_map_stream_21_dout sc_in sc_lv 32 signal 22 } 
	{ in_channel_map_stream_21_num_data_valid sc_in sc_lv 3 signal 22 } 
	{ in_channel_map_stream_21_fifo_cap sc_in sc_lv 3 signal 22 } 
	{ in_channel_map_stream_21_empty_n sc_in sc_logic 1 signal 22 } 
	{ in_channel_map_stream_21_read sc_out sc_logic 1 signal 22 } 
	{ in_channel_map_stream_22_dout sc_in sc_lv 32 signal 23 } 
	{ in_channel_map_stream_22_num_data_valid sc_in sc_lv 3 signal 23 } 
	{ in_channel_map_stream_22_fifo_cap sc_in sc_lv 3 signal 23 } 
	{ in_channel_map_stream_22_empty_n sc_in sc_logic 1 signal 23 } 
	{ in_channel_map_stream_22_read sc_out sc_logic 1 signal 23 } 
	{ in_channel_map_stream_2325_dout sc_in sc_lv 32 signal 24 } 
	{ in_channel_map_stream_2325_num_data_valid sc_in sc_lv 3 signal 24 } 
	{ in_channel_map_stream_2325_fifo_cap sc_in sc_lv 3 signal 24 } 
	{ in_channel_map_stream_2325_empty_n sc_in sc_logic 1 signal 24 } 
	{ in_channel_map_stream_2325_read sc_out sc_logic 1 signal 24 } 
	{ in_channel_map_stream_24_dout sc_in sc_lv 32 signal 25 } 
	{ in_channel_map_stream_24_num_data_valid sc_in sc_lv 3 signal 25 } 
	{ in_channel_map_stream_24_fifo_cap sc_in sc_lv 3 signal 25 } 
	{ in_channel_map_stream_24_empty_n sc_in sc_logic 1 signal 25 } 
	{ in_channel_map_stream_24_read sc_out sc_logic 1 signal 25 } 
	{ in_channel_map_stream_25_dout sc_in sc_lv 32 signal 26 } 
	{ in_channel_map_stream_25_num_data_valid sc_in sc_lv 3 signal 26 } 
	{ in_channel_map_stream_25_fifo_cap sc_in sc_lv 3 signal 26 } 
	{ in_channel_map_stream_25_empty_n sc_in sc_logic 1 signal 26 } 
	{ in_channel_map_stream_25_read sc_out sc_logic 1 signal 26 } 
	{ in_channel_map_stream_26_dout sc_in sc_lv 32 signal 27 } 
	{ in_channel_map_stream_26_num_data_valid sc_in sc_lv 3 signal 27 } 
	{ in_channel_map_stream_26_fifo_cap sc_in sc_lv 3 signal 27 } 
	{ in_channel_map_stream_26_empty_n sc_in sc_logic 1 signal 27 } 
	{ in_channel_map_stream_26_read sc_out sc_logic 1 signal 27 } 
	{ in_channel_map_stream_27_dout sc_in sc_lv 32 signal 28 } 
	{ in_channel_map_stream_27_num_data_valid sc_in sc_lv 3 signal 28 } 
	{ in_channel_map_stream_27_fifo_cap sc_in sc_lv 3 signal 28 } 
	{ in_channel_map_stream_27_empty_n sc_in sc_logic 1 signal 28 } 
	{ in_channel_map_stream_27_read sc_out sc_logic 1 signal 28 } 
	{ in_channel_map_stream_28_dout sc_in sc_lv 32 signal 29 } 
	{ in_channel_map_stream_28_num_data_valid sc_in sc_lv 3 signal 29 } 
	{ in_channel_map_stream_28_fifo_cap sc_in sc_lv 3 signal 29 } 
	{ in_channel_map_stream_28_empty_n sc_in sc_logic 1 signal 29 } 
	{ in_channel_map_stream_28_read sc_out sc_logic 1 signal 29 } 
	{ in_channel_map_stream_29_dout sc_in sc_lv 32 signal 30 } 
	{ in_channel_map_stream_29_num_data_valid sc_in sc_lv 3 signal 30 } 
	{ in_channel_map_stream_29_fifo_cap sc_in sc_lv 3 signal 30 } 
	{ in_channel_map_stream_29_empty_n sc_in sc_logic 1 signal 30 } 
	{ in_channel_map_stream_29_read sc_out sc_logic 1 signal 30 } 
	{ in_channel_map_stream_30_dout sc_in sc_lv 32 signal 31 } 
	{ in_channel_map_stream_30_num_data_valid sc_in sc_lv 3 signal 31 } 
	{ in_channel_map_stream_30_fifo_cap sc_in sc_lv 3 signal 31 } 
	{ in_channel_map_stream_30_empty_n sc_in sc_logic 1 signal 31 } 
	{ in_channel_map_stream_30_read sc_out sc_logic 1 signal 31 } 
	{ in_channel_map_stream_31_dout sc_in sc_lv 32 signal 32 } 
	{ in_channel_map_stream_31_num_data_valid sc_in sc_lv 3 signal 32 } 
	{ in_channel_map_stream_31_fifo_cap sc_in sc_lv 3 signal 32 } 
	{ in_channel_map_stream_31_empty_n sc_in sc_logic 1 signal 32 } 
	{ in_channel_map_stream_31_read sc_out sc_logic 1 signal 32 } 
	{ conv2d_64_feature_map_stream125_din sc_out sc_lv 32 signal 33 } 
	{ conv2d_64_feature_map_stream125_num_data_valid sc_in sc_lv 3 signal 33 } 
	{ conv2d_64_feature_map_stream125_fifo_cap sc_in sc_lv 3 signal 33 } 
	{ conv2d_64_feature_map_stream125_full_n sc_in sc_logic 1 signal 33 } 
	{ conv2d_64_feature_map_stream125_write sc_out sc_logic 1 signal 33 } 
	{ conv2d_64_activations_stream126_din sc_out sc_lv 1 signal 34 } 
	{ conv2d_64_activations_stream126_num_data_valid sc_in sc_lv 15 signal 34 } 
	{ conv2d_64_activations_stream126_fifo_cap sc_in sc_lv 15 signal 34 } 
	{ conv2d_64_activations_stream126_full_n sc_in sc_logic 1 signal 34 } 
	{ conv2d_64_activations_stream126_write sc_out sc_logic 1 signal 34 } 
	{ conv2d_64_f_map_out132_din sc_out sc_lv 32 signal 35 } 
	{ conv2d_64_f_map_out132_num_data_valid sc_in sc_lv 15 signal 35 } 
	{ conv2d_64_f_map_out132_fifo_cap sc_in sc_lv 15 signal 35 } 
	{ conv2d_64_f_map_out132_full_n sc_in sc_logic 1 signal 35 } 
	{ conv2d_64_f_map_out132_write sc_out sc_logic 1 signal 35 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ biases_address0 sc_out sc_lv 6 signal 0 } 
	{ biases_ce0 sc_out sc_logic 1 signal 0 } 
	{ biases_q0 sc_in sc_lv 32 signal 0 } 
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
 	{ "name": "in_channel_map_stream_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_0", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_0", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_0", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_0", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_0", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_1", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_1", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_1", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_1", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_1", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_2", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_2", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_2", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_2", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_2", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_3", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_3", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_3", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_3", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_3", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_4", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_4", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_4", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_4", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_4", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_5", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_5_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_5", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_5_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_5", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_5", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_5", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_6", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_6_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_6", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_6_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_6", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_6", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_6", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_7_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_7", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_7_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_7", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_7_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_7", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_7_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_7", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_7_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_7", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_8_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_8", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_8_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_8", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_8_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_8", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_8_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_8", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_8_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_8", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_9_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_9", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_9_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_9", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_9_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_9", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_9_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_9", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_9_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_9", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_10_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_10", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_10_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_10", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_10_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_10", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_10_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_10", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_10_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_10", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_11_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_11", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_11_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_11", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_11_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_11", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_11_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_11", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_11_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_11", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_1213_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_1213", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_1213_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_1213", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_1213_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_1213", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_1213_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_1213", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_1213_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_1213", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_13_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_13", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_13_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_13", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_13_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_13", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_13_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_13", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_13_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_13", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_14_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_14", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_14_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_14", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_14_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_14", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_14_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_14", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_14_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_14", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_15_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_15", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_15_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_15", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_15_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_15", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_15_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_15", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_15_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_15", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_16_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_16", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_16_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_16", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_16_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_16", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_16_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_16", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_16_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_16", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_17_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_17", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_17_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_17", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_17_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_17", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_17_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_17", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_17_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_17", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_18_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_18", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_18_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_18", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_18_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_18", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_18_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_18", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_18_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_18", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_19_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_19", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_19_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_19", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_19_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_19", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_19_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_19", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_19_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_19", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_20_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_20", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_20_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_20", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_20_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_20", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_20_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_20", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_20_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_20", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_21_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_21", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_21_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_21", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_21_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_21", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_21_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_21", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_21_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_21", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_22_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_22", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_22_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_22", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_22_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_22", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_22_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_22", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_22_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_22", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_2325_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_2325", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_2325_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_2325", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_2325_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_2325", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_2325_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_2325", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_2325_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_2325", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_24_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_24", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_24_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_24", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_24_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_24", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_24_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_24", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_24_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_24", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_25_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_25", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_25_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_25", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_25_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_25", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_25_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_25", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_25_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_25", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_26_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_26", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_26_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_26", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_26_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_26", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_26_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_26", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_26_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_26", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_27_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_27", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_27_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_27", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_27_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_27", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_27_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_27", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_27_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_27", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_28_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_28", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_28_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_28", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_28_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_28", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_28_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_28", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_28_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_28", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_29_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_29", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_29_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_29", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_29_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_29", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_29_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_29", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_29_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_29", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_30_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_30", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_30_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_30", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_30_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_30", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_30_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_30", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_30_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_30", "role": "read" }} , 
 	{ "name": "in_channel_map_stream_31_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_channel_map_stream_31", "role": "dout" }} , 
 	{ "name": "in_channel_map_stream_31_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_31", "role": "num_data_valid" }} , 
 	{ "name": "in_channel_map_stream_31_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_channel_map_stream_31", "role": "fifo_cap" }} , 
 	{ "name": "in_channel_map_stream_31_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_31", "role": "empty_n" }} , 
 	{ "name": "in_channel_map_stream_31_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channel_map_stream_31", "role": "read" }} , 
 	{ "name": "conv2d_64_feature_map_stream125_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_feature_map_stream125", "role": "din" }} , 
 	{ "name": "conv2d_64_feature_map_stream125_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_feature_map_stream125", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_feature_map_stream125_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_feature_map_stream125", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_feature_map_stream125_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_feature_map_stream125", "role": "full_n" }} , 
 	{ "name": "conv2d_64_feature_map_stream125_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_feature_map_stream125", "role": "write" }} , 
 	{ "name": "conv2d_64_activations_stream126_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_activations_stream126", "role": "din" }} , 
 	{ "name": "conv2d_64_activations_stream126_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv2d_64_activations_stream126", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_activations_stream126_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv2d_64_activations_stream126", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_activations_stream126_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_activations_stream126", "role": "full_n" }} , 
 	{ "name": "conv2d_64_activations_stream126_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_activations_stream126", "role": "write" }} , 
 	{ "name": "conv2d_64_f_map_out132_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2d_64_f_map_out132", "role": "din" }} , 
 	{ "name": "conv2d_64_f_map_out132_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv2d_64_f_map_out132", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_f_map_out132_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv2d_64_f_map_out132", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_f_map_out132_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_f_map_out132", "role": "full_n" }} , 
 	{ "name": "conv2d_64_f_map_out132_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_f_map_out132", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "biases_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "biases", "role": "address0" }} , 
 	{ "name": "biases_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "biases", "role": "ce0" }} , 
 	{ "name": "biases_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "biases", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34"],
		"CDFG" : "conv2d_aggregate_channels_14u_14u_32u_64u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12566", "EstimateLatencyMax" : "12566",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "biases", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "in_channel_map_stream_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_10", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_1213", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_1213_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_14", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_15", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_16", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_17", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_18", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_19", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_20", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_20_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_21", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_22", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_2325", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_2325_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_24", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_24_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_25", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_25_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_26", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_26_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_27", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_27_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_28", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_28_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_29", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_29_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_30", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_30_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channel_map_stream_31", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "in_channel_map_stream_31_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_feature_map_stream125", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_feature_map_stream125_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_activations_stream126", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "12544", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_activations_stream126_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_f_map_out132", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "12544", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_f_map_out132_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "inputs_filter", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter21", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter21", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19692", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19693", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19694", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19695", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19696", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19697", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19698", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19699", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19700", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19701", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19702", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19703", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19704", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19705", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19706", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19707", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19708", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19709", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19710", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19711", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19712", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19713", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19714", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19715", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19716", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19717", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19718", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19719", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19720", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19721", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19722", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U19723", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U19724", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_delay_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_aggregate_channels_14u_14u_32u_64u_s {
		biases {Type I LastRead 3 FirstWrite -1}
		in_channel_map_stream_0 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_1 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_2 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_3 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_4 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_5 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_6 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_7 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_8 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_9 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_10 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_11 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_1213 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_13 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_14 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_15 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_16 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_17 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_18 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_19 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_20 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_21 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_22 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_2325 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_24 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_25 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_26 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_27 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_28 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_29 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_30 {Type I LastRead 1 FirstWrite -1}
		in_channel_map_stream_31 {Type I LastRead 1 FirstWrite -1}
		conv2d_64_feature_map_stream125 {Type O LastRead -1 FirstWrite 21}
		conv2d_64_activations_stream126 {Type O LastRead -1 FirstWrite 21}
		conv2d_64_f_map_out132 {Type O LastRead -1 FirstWrite 21}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12566", "Max" : "12566"}
	, {"Name" : "Interval", "Min" : "12566", "Max" : "12566"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	biases { ap_memory {  { biases_address0 mem_address 1 6 }  { biases_ce0 mem_ce 1 1 }  { biases_q0 mem_dout 0 32 } } }
	in_channel_map_stream_0 { ap_fifo {  { in_channel_map_stream_0_dout fifo_port_we 0 32 }  { in_channel_map_stream_0_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_0_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_0_empty_n fifo_status 0 1 }  { in_channel_map_stream_0_read fifo_data 1 1 } } }
	in_channel_map_stream_1 { ap_fifo {  { in_channel_map_stream_1_dout fifo_port_we 0 32 }  { in_channel_map_stream_1_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_1_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_1_empty_n fifo_status 0 1 }  { in_channel_map_stream_1_read fifo_data 1 1 } } }
	in_channel_map_stream_2 { ap_fifo {  { in_channel_map_stream_2_dout fifo_port_we 0 32 }  { in_channel_map_stream_2_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_2_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_2_empty_n fifo_status 0 1 }  { in_channel_map_stream_2_read fifo_data 1 1 } } }
	in_channel_map_stream_3 { ap_fifo {  { in_channel_map_stream_3_dout fifo_port_we 0 32 }  { in_channel_map_stream_3_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_3_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_3_empty_n fifo_status 0 1 }  { in_channel_map_stream_3_read fifo_data 1 1 } } }
	in_channel_map_stream_4 { ap_fifo {  { in_channel_map_stream_4_dout fifo_port_we 0 32 }  { in_channel_map_stream_4_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_4_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_4_empty_n fifo_status 0 1 }  { in_channel_map_stream_4_read fifo_data 1 1 } } }
	in_channel_map_stream_5 { ap_fifo {  { in_channel_map_stream_5_dout fifo_port_we 0 32 }  { in_channel_map_stream_5_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_5_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_5_empty_n fifo_status 0 1 }  { in_channel_map_stream_5_read fifo_data 1 1 } } }
	in_channel_map_stream_6 { ap_fifo {  { in_channel_map_stream_6_dout fifo_port_we 0 32 }  { in_channel_map_stream_6_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_6_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_6_empty_n fifo_status 0 1 }  { in_channel_map_stream_6_read fifo_data 1 1 } } }
	in_channel_map_stream_7 { ap_fifo {  { in_channel_map_stream_7_dout fifo_port_we 0 32 }  { in_channel_map_stream_7_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_7_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_7_empty_n fifo_status 0 1 }  { in_channel_map_stream_7_read fifo_data 1 1 } } }
	in_channel_map_stream_8 { ap_fifo {  { in_channel_map_stream_8_dout fifo_port_we 0 32 }  { in_channel_map_stream_8_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_8_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_8_empty_n fifo_status 0 1 }  { in_channel_map_stream_8_read fifo_data 1 1 } } }
	in_channel_map_stream_9 { ap_fifo {  { in_channel_map_stream_9_dout fifo_port_we 0 32 }  { in_channel_map_stream_9_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_9_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_9_empty_n fifo_status 0 1 }  { in_channel_map_stream_9_read fifo_data 1 1 } } }
	in_channel_map_stream_10 { ap_fifo {  { in_channel_map_stream_10_dout fifo_port_we 0 32 }  { in_channel_map_stream_10_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_10_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_10_empty_n fifo_status 0 1 }  { in_channel_map_stream_10_read fifo_data 1 1 } } }
	in_channel_map_stream_11 { ap_fifo {  { in_channel_map_stream_11_dout fifo_port_we 0 32 }  { in_channel_map_stream_11_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_11_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_11_empty_n fifo_status 0 1 }  { in_channel_map_stream_11_read fifo_data 1 1 } } }
	in_channel_map_stream_1213 { ap_fifo {  { in_channel_map_stream_1213_dout fifo_port_we 0 32 }  { in_channel_map_stream_1213_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_1213_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_1213_empty_n fifo_status 0 1 }  { in_channel_map_stream_1213_read fifo_data 1 1 } } }
	in_channel_map_stream_13 { ap_fifo {  { in_channel_map_stream_13_dout fifo_port_we 0 32 }  { in_channel_map_stream_13_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_13_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_13_empty_n fifo_status 0 1 }  { in_channel_map_stream_13_read fifo_data 1 1 } } }
	in_channel_map_stream_14 { ap_fifo {  { in_channel_map_stream_14_dout fifo_port_we 0 32 }  { in_channel_map_stream_14_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_14_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_14_empty_n fifo_status 0 1 }  { in_channel_map_stream_14_read fifo_data 1 1 } } }
	in_channel_map_stream_15 { ap_fifo {  { in_channel_map_stream_15_dout fifo_port_we 0 32 }  { in_channel_map_stream_15_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_15_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_15_empty_n fifo_status 0 1 }  { in_channel_map_stream_15_read fifo_data 1 1 } } }
	in_channel_map_stream_16 { ap_fifo {  { in_channel_map_stream_16_dout fifo_port_we 0 32 }  { in_channel_map_stream_16_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_16_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_16_empty_n fifo_status 0 1 }  { in_channel_map_stream_16_read fifo_data 1 1 } } }
	in_channel_map_stream_17 { ap_fifo {  { in_channel_map_stream_17_dout fifo_port_we 0 32 }  { in_channel_map_stream_17_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_17_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_17_empty_n fifo_status 0 1 }  { in_channel_map_stream_17_read fifo_data 1 1 } } }
	in_channel_map_stream_18 { ap_fifo {  { in_channel_map_stream_18_dout fifo_port_we 0 32 }  { in_channel_map_stream_18_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_18_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_18_empty_n fifo_status 0 1 }  { in_channel_map_stream_18_read fifo_data 1 1 } } }
	in_channel_map_stream_19 { ap_fifo {  { in_channel_map_stream_19_dout fifo_port_we 0 32 }  { in_channel_map_stream_19_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_19_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_19_empty_n fifo_status 0 1 }  { in_channel_map_stream_19_read fifo_data 1 1 } } }
	in_channel_map_stream_20 { ap_fifo {  { in_channel_map_stream_20_dout fifo_port_we 0 32 }  { in_channel_map_stream_20_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_20_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_20_empty_n fifo_status 0 1 }  { in_channel_map_stream_20_read fifo_data 1 1 } } }
	in_channel_map_stream_21 { ap_fifo {  { in_channel_map_stream_21_dout fifo_port_we 0 32 }  { in_channel_map_stream_21_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_21_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_21_empty_n fifo_status 0 1 }  { in_channel_map_stream_21_read fifo_data 1 1 } } }
	in_channel_map_stream_22 { ap_fifo {  { in_channel_map_stream_22_dout fifo_port_we 0 32 }  { in_channel_map_stream_22_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_22_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_22_empty_n fifo_status 0 1 }  { in_channel_map_stream_22_read fifo_data 1 1 } } }
	in_channel_map_stream_2325 { ap_fifo {  { in_channel_map_stream_2325_dout fifo_port_we 0 32 }  { in_channel_map_stream_2325_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_2325_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_2325_empty_n fifo_status 0 1 }  { in_channel_map_stream_2325_read fifo_data 1 1 } } }
	in_channel_map_stream_24 { ap_fifo {  { in_channel_map_stream_24_dout fifo_port_we 0 32 }  { in_channel_map_stream_24_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_24_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_24_empty_n fifo_status 0 1 }  { in_channel_map_stream_24_read fifo_data 1 1 } } }
	in_channel_map_stream_25 { ap_fifo {  { in_channel_map_stream_25_dout fifo_port_we 0 32 }  { in_channel_map_stream_25_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_25_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_25_empty_n fifo_status 0 1 }  { in_channel_map_stream_25_read fifo_data 1 1 } } }
	in_channel_map_stream_26 { ap_fifo {  { in_channel_map_stream_26_dout fifo_port_we 0 32 }  { in_channel_map_stream_26_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_26_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_26_empty_n fifo_status 0 1 }  { in_channel_map_stream_26_read fifo_data 1 1 } } }
	in_channel_map_stream_27 { ap_fifo {  { in_channel_map_stream_27_dout fifo_port_we 0 32 }  { in_channel_map_stream_27_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_27_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_27_empty_n fifo_status 0 1 }  { in_channel_map_stream_27_read fifo_data 1 1 } } }
	in_channel_map_stream_28 { ap_fifo {  { in_channel_map_stream_28_dout fifo_port_we 0 32 }  { in_channel_map_stream_28_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_28_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_28_empty_n fifo_status 0 1 }  { in_channel_map_stream_28_read fifo_data 1 1 } } }
	in_channel_map_stream_29 { ap_fifo {  { in_channel_map_stream_29_dout fifo_port_we 0 32 }  { in_channel_map_stream_29_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_29_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_29_empty_n fifo_status 0 1 }  { in_channel_map_stream_29_read fifo_data 1 1 } } }
	in_channel_map_stream_30 { ap_fifo {  { in_channel_map_stream_30_dout fifo_port_we 0 32 }  { in_channel_map_stream_30_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_30_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_30_empty_n fifo_status 0 1 }  { in_channel_map_stream_30_read fifo_data 1 1 } } }
	in_channel_map_stream_31 { ap_fifo {  { in_channel_map_stream_31_dout fifo_port_we 0 32 }  { in_channel_map_stream_31_num_data_valid fifo_status_num_data_valid 0 3 }  { in_channel_map_stream_31_fifo_cap fifo_update 0 3 }  { in_channel_map_stream_31_empty_n fifo_status 0 1 }  { in_channel_map_stream_31_read fifo_data 1 1 } } }
	conv2d_64_feature_map_stream125 { ap_fifo {  { conv2d_64_feature_map_stream125_din fifo_port_we 1 32 }  { conv2d_64_feature_map_stream125_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_feature_map_stream125_fifo_cap fifo_update 0 3 }  { conv2d_64_feature_map_stream125_full_n fifo_status 0 1 }  { conv2d_64_feature_map_stream125_write fifo_data 1 1 } } }
	conv2d_64_activations_stream126 { ap_fifo {  { conv2d_64_activations_stream126_din fifo_port_we 1 1 }  { conv2d_64_activations_stream126_num_data_valid fifo_status_num_data_valid 0 15 }  { conv2d_64_activations_stream126_fifo_cap fifo_update 0 15 }  { conv2d_64_activations_stream126_full_n fifo_status 0 1 }  { conv2d_64_activations_stream126_write fifo_data 1 1 } } }
	conv2d_64_f_map_out132 { ap_fifo {  { conv2d_64_f_map_out132_din fifo_port_we 1 32 }  { conv2d_64_f_map_out132_num_data_valid fifo_status_num_data_valid 0 15 }  { conv2d_64_f_map_out132_fifo_cap fifo_update 0 15 }  { conv2d_64_f_map_out132_full_n fifo_status 0 1 }  { conv2d_64_f_map_out132_write fifo_data 1 1 } } }
}
