set moduleName pad_windows_mc_float_14u_14u_32u_3u_3u_64u_s
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
set C_modelName {pad_windows_mc<float, 14u, 14u, 32u, 3u, 3u, 64u>}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv2d_64_window_stream int 288 regular {fifo 0 volatile }  }
	{ conv2d_64_padded_window_stream_0 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_1 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_2 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_3 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_4 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_5 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_6 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_7 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_8 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_9 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_10 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_11 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_12 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_13 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_14 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_15 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_16 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_17 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_18 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_19 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_20 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_21 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_22 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_23 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_24 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_25 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_26 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_27 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_28 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_29 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_30 int 288 regular {fifo 1 volatile }  }
	{ conv2d_64_padded_window_stream_31 int 288 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv2d_64_window_stream", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_0", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_1", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_2", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_3", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_4", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_5", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_6", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_7", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_8", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_9", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_10", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_11", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_12", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_13", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_14", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_15", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_16", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_17", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_18", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_19", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_20", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_21", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_22", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_23", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_24", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_25", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_26", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_27", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_28", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_29", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_30", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv2d_64_padded_window_stream_31", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 175
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ conv2d_64_window_stream_dout sc_in sc_lv 288 signal 0 } 
	{ conv2d_64_window_stream_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_window_stream_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ conv2d_64_window_stream_empty_n sc_in sc_logic 1 signal 0 } 
	{ conv2d_64_window_stream_read sc_out sc_logic 1 signal 0 } 
	{ conv2d_64_padded_window_stream_30_din sc_out sc_lv 288 signal 31 } 
	{ conv2d_64_padded_window_stream_30_num_data_valid sc_in sc_lv 3 signal 31 } 
	{ conv2d_64_padded_window_stream_30_fifo_cap sc_in sc_lv 3 signal 31 } 
	{ conv2d_64_padded_window_stream_30_full_n sc_in sc_logic 1 signal 31 } 
	{ conv2d_64_padded_window_stream_30_write sc_out sc_logic 1 signal 31 } 
	{ conv2d_64_padded_window_stream_29_din sc_out sc_lv 288 signal 30 } 
	{ conv2d_64_padded_window_stream_29_num_data_valid sc_in sc_lv 3 signal 30 } 
	{ conv2d_64_padded_window_stream_29_fifo_cap sc_in sc_lv 3 signal 30 } 
	{ conv2d_64_padded_window_stream_29_full_n sc_in sc_logic 1 signal 30 } 
	{ conv2d_64_padded_window_stream_29_write sc_out sc_logic 1 signal 30 } 
	{ conv2d_64_padded_window_stream_28_din sc_out sc_lv 288 signal 29 } 
	{ conv2d_64_padded_window_stream_28_num_data_valid sc_in sc_lv 3 signal 29 } 
	{ conv2d_64_padded_window_stream_28_fifo_cap sc_in sc_lv 3 signal 29 } 
	{ conv2d_64_padded_window_stream_28_full_n sc_in sc_logic 1 signal 29 } 
	{ conv2d_64_padded_window_stream_28_write sc_out sc_logic 1 signal 29 } 
	{ conv2d_64_padded_window_stream_27_din sc_out sc_lv 288 signal 28 } 
	{ conv2d_64_padded_window_stream_27_num_data_valid sc_in sc_lv 3 signal 28 } 
	{ conv2d_64_padded_window_stream_27_fifo_cap sc_in sc_lv 3 signal 28 } 
	{ conv2d_64_padded_window_stream_27_full_n sc_in sc_logic 1 signal 28 } 
	{ conv2d_64_padded_window_stream_27_write sc_out sc_logic 1 signal 28 } 
	{ conv2d_64_padded_window_stream_26_din sc_out sc_lv 288 signal 27 } 
	{ conv2d_64_padded_window_stream_26_num_data_valid sc_in sc_lv 3 signal 27 } 
	{ conv2d_64_padded_window_stream_26_fifo_cap sc_in sc_lv 3 signal 27 } 
	{ conv2d_64_padded_window_stream_26_full_n sc_in sc_logic 1 signal 27 } 
	{ conv2d_64_padded_window_stream_26_write sc_out sc_logic 1 signal 27 } 
	{ conv2d_64_padded_window_stream_25_din sc_out sc_lv 288 signal 26 } 
	{ conv2d_64_padded_window_stream_25_num_data_valid sc_in sc_lv 3 signal 26 } 
	{ conv2d_64_padded_window_stream_25_fifo_cap sc_in sc_lv 3 signal 26 } 
	{ conv2d_64_padded_window_stream_25_full_n sc_in sc_logic 1 signal 26 } 
	{ conv2d_64_padded_window_stream_25_write sc_out sc_logic 1 signal 26 } 
	{ conv2d_64_padded_window_stream_24_din sc_out sc_lv 288 signal 25 } 
	{ conv2d_64_padded_window_stream_24_num_data_valid sc_in sc_lv 3 signal 25 } 
	{ conv2d_64_padded_window_stream_24_fifo_cap sc_in sc_lv 3 signal 25 } 
	{ conv2d_64_padded_window_stream_24_full_n sc_in sc_logic 1 signal 25 } 
	{ conv2d_64_padded_window_stream_24_write sc_out sc_logic 1 signal 25 } 
	{ conv2d_64_padded_window_stream_23_din sc_out sc_lv 288 signal 24 } 
	{ conv2d_64_padded_window_stream_23_num_data_valid sc_in sc_lv 3 signal 24 } 
	{ conv2d_64_padded_window_stream_23_fifo_cap sc_in sc_lv 3 signal 24 } 
	{ conv2d_64_padded_window_stream_23_full_n sc_in sc_logic 1 signal 24 } 
	{ conv2d_64_padded_window_stream_23_write sc_out sc_logic 1 signal 24 } 
	{ conv2d_64_padded_window_stream_22_din sc_out sc_lv 288 signal 23 } 
	{ conv2d_64_padded_window_stream_22_num_data_valid sc_in sc_lv 3 signal 23 } 
	{ conv2d_64_padded_window_stream_22_fifo_cap sc_in sc_lv 3 signal 23 } 
	{ conv2d_64_padded_window_stream_22_full_n sc_in sc_logic 1 signal 23 } 
	{ conv2d_64_padded_window_stream_22_write sc_out sc_logic 1 signal 23 } 
	{ conv2d_64_padded_window_stream_21_din sc_out sc_lv 288 signal 22 } 
	{ conv2d_64_padded_window_stream_21_num_data_valid sc_in sc_lv 3 signal 22 } 
	{ conv2d_64_padded_window_stream_21_fifo_cap sc_in sc_lv 3 signal 22 } 
	{ conv2d_64_padded_window_stream_21_full_n sc_in sc_logic 1 signal 22 } 
	{ conv2d_64_padded_window_stream_21_write sc_out sc_logic 1 signal 22 } 
	{ conv2d_64_padded_window_stream_20_din sc_out sc_lv 288 signal 21 } 
	{ conv2d_64_padded_window_stream_20_num_data_valid sc_in sc_lv 3 signal 21 } 
	{ conv2d_64_padded_window_stream_20_fifo_cap sc_in sc_lv 3 signal 21 } 
	{ conv2d_64_padded_window_stream_20_full_n sc_in sc_logic 1 signal 21 } 
	{ conv2d_64_padded_window_stream_20_write sc_out sc_logic 1 signal 21 } 
	{ conv2d_64_padded_window_stream_19_din sc_out sc_lv 288 signal 20 } 
	{ conv2d_64_padded_window_stream_19_num_data_valid sc_in sc_lv 3 signal 20 } 
	{ conv2d_64_padded_window_stream_19_fifo_cap sc_in sc_lv 3 signal 20 } 
	{ conv2d_64_padded_window_stream_19_full_n sc_in sc_logic 1 signal 20 } 
	{ conv2d_64_padded_window_stream_19_write sc_out sc_logic 1 signal 20 } 
	{ conv2d_64_padded_window_stream_18_din sc_out sc_lv 288 signal 19 } 
	{ conv2d_64_padded_window_stream_18_num_data_valid sc_in sc_lv 3 signal 19 } 
	{ conv2d_64_padded_window_stream_18_fifo_cap sc_in sc_lv 3 signal 19 } 
	{ conv2d_64_padded_window_stream_18_full_n sc_in sc_logic 1 signal 19 } 
	{ conv2d_64_padded_window_stream_18_write sc_out sc_logic 1 signal 19 } 
	{ conv2d_64_padded_window_stream_17_din sc_out sc_lv 288 signal 18 } 
	{ conv2d_64_padded_window_stream_17_num_data_valid sc_in sc_lv 3 signal 18 } 
	{ conv2d_64_padded_window_stream_17_fifo_cap sc_in sc_lv 3 signal 18 } 
	{ conv2d_64_padded_window_stream_17_full_n sc_in sc_logic 1 signal 18 } 
	{ conv2d_64_padded_window_stream_17_write sc_out sc_logic 1 signal 18 } 
	{ conv2d_64_padded_window_stream_16_din sc_out sc_lv 288 signal 17 } 
	{ conv2d_64_padded_window_stream_16_num_data_valid sc_in sc_lv 3 signal 17 } 
	{ conv2d_64_padded_window_stream_16_fifo_cap sc_in sc_lv 3 signal 17 } 
	{ conv2d_64_padded_window_stream_16_full_n sc_in sc_logic 1 signal 17 } 
	{ conv2d_64_padded_window_stream_16_write sc_out sc_logic 1 signal 17 } 
	{ conv2d_64_padded_window_stream_15_din sc_out sc_lv 288 signal 16 } 
	{ conv2d_64_padded_window_stream_15_num_data_valid sc_in sc_lv 3 signal 16 } 
	{ conv2d_64_padded_window_stream_15_fifo_cap sc_in sc_lv 3 signal 16 } 
	{ conv2d_64_padded_window_stream_15_full_n sc_in sc_logic 1 signal 16 } 
	{ conv2d_64_padded_window_stream_15_write sc_out sc_logic 1 signal 16 } 
	{ conv2d_64_padded_window_stream_14_din sc_out sc_lv 288 signal 15 } 
	{ conv2d_64_padded_window_stream_14_num_data_valid sc_in sc_lv 3 signal 15 } 
	{ conv2d_64_padded_window_stream_14_fifo_cap sc_in sc_lv 3 signal 15 } 
	{ conv2d_64_padded_window_stream_14_full_n sc_in sc_logic 1 signal 15 } 
	{ conv2d_64_padded_window_stream_14_write sc_out sc_logic 1 signal 15 } 
	{ conv2d_64_padded_window_stream_13_din sc_out sc_lv 288 signal 14 } 
	{ conv2d_64_padded_window_stream_13_num_data_valid sc_in sc_lv 3 signal 14 } 
	{ conv2d_64_padded_window_stream_13_fifo_cap sc_in sc_lv 3 signal 14 } 
	{ conv2d_64_padded_window_stream_13_full_n sc_in sc_logic 1 signal 14 } 
	{ conv2d_64_padded_window_stream_13_write sc_out sc_logic 1 signal 14 } 
	{ conv2d_64_padded_window_stream_12_din sc_out sc_lv 288 signal 13 } 
	{ conv2d_64_padded_window_stream_12_num_data_valid sc_in sc_lv 3 signal 13 } 
	{ conv2d_64_padded_window_stream_12_fifo_cap sc_in sc_lv 3 signal 13 } 
	{ conv2d_64_padded_window_stream_12_full_n sc_in sc_logic 1 signal 13 } 
	{ conv2d_64_padded_window_stream_12_write sc_out sc_logic 1 signal 13 } 
	{ conv2d_64_padded_window_stream_11_din sc_out sc_lv 288 signal 12 } 
	{ conv2d_64_padded_window_stream_11_num_data_valid sc_in sc_lv 3 signal 12 } 
	{ conv2d_64_padded_window_stream_11_fifo_cap sc_in sc_lv 3 signal 12 } 
	{ conv2d_64_padded_window_stream_11_full_n sc_in sc_logic 1 signal 12 } 
	{ conv2d_64_padded_window_stream_11_write sc_out sc_logic 1 signal 12 } 
	{ conv2d_64_padded_window_stream_10_din sc_out sc_lv 288 signal 11 } 
	{ conv2d_64_padded_window_stream_10_num_data_valid sc_in sc_lv 3 signal 11 } 
	{ conv2d_64_padded_window_stream_10_fifo_cap sc_in sc_lv 3 signal 11 } 
	{ conv2d_64_padded_window_stream_10_full_n sc_in sc_logic 1 signal 11 } 
	{ conv2d_64_padded_window_stream_10_write sc_out sc_logic 1 signal 11 } 
	{ conv2d_64_padded_window_stream_9_din sc_out sc_lv 288 signal 10 } 
	{ conv2d_64_padded_window_stream_9_num_data_valid sc_in sc_lv 3 signal 10 } 
	{ conv2d_64_padded_window_stream_9_fifo_cap sc_in sc_lv 3 signal 10 } 
	{ conv2d_64_padded_window_stream_9_full_n sc_in sc_logic 1 signal 10 } 
	{ conv2d_64_padded_window_stream_9_write sc_out sc_logic 1 signal 10 } 
	{ conv2d_64_padded_window_stream_8_din sc_out sc_lv 288 signal 9 } 
	{ conv2d_64_padded_window_stream_8_num_data_valid sc_in sc_lv 3 signal 9 } 
	{ conv2d_64_padded_window_stream_8_fifo_cap sc_in sc_lv 3 signal 9 } 
	{ conv2d_64_padded_window_stream_8_full_n sc_in sc_logic 1 signal 9 } 
	{ conv2d_64_padded_window_stream_8_write sc_out sc_logic 1 signal 9 } 
	{ conv2d_64_padded_window_stream_7_din sc_out sc_lv 288 signal 8 } 
	{ conv2d_64_padded_window_stream_7_num_data_valid sc_in sc_lv 3 signal 8 } 
	{ conv2d_64_padded_window_stream_7_fifo_cap sc_in sc_lv 3 signal 8 } 
	{ conv2d_64_padded_window_stream_7_full_n sc_in sc_logic 1 signal 8 } 
	{ conv2d_64_padded_window_stream_7_write sc_out sc_logic 1 signal 8 } 
	{ conv2d_64_padded_window_stream_6_din sc_out sc_lv 288 signal 7 } 
	{ conv2d_64_padded_window_stream_6_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ conv2d_64_padded_window_stream_6_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ conv2d_64_padded_window_stream_6_full_n sc_in sc_logic 1 signal 7 } 
	{ conv2d_64_padded_window_stream_6_write sc_out sc_logic 1 signal 7 } 
	{ conv2d_64_padded_window_stream_5_din sc_out sc_lv 288 signal 6 } 
	{ conv2d_64_padded_window_stream_5_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ conv2d_64_padded_window_stream_5_fifo_cap sc_in sc_lv 3 signal 6 } 
	{ conv2d_64_padded_window_stream_5_full_n sc_in sc_logic 1 signal 6 } 
	{ conv2d_64_padded_window_stream_5_write sc_out sc_logic 1 signal 6 } 
	{ conv2d_64_padded_window_stream_4_din sc_out sc_lv 288 signal 5 } 
	{ conv2d_64_padded_window_stream_4_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ conv2d_64_padded_window_stream_4_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ conv2d_64_padded_window_stream_4_full_n sc_in sc_logic 1 signal 5 } 
	{ conv2d_64_padded_window_stream_4_write sc_out sc_logic 1 signal 5 } 
	{ conv2d_64_padded_window_stream_3_din sc_out sc_lv 288 signal 4 } 
	{ conv2d_64_padded_window_stream_3_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ conv2d_64_padded_window_stream_3_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ conv2d_64_padded_window_stream_3_full_n sc_in sc_logic 1 signal 4 } 
	{ conv2d_64_padded_window_stream_3_write sc_out sc_logic 1 signal 4 } 
	{ conv2d_64_padded_window_stream_2_din sc_out sc_lv 288 signal 3 } 
	{ conv2d_64_padded_window_stream_2_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ conv2d_64_padded_window_stream_2_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ conv2d_64_padded_window_stream_2_full_n sc_in sc_logic 1 signal 3 } 
	{ conv2d_64_padded_window_stream_2_write sc_out sc_logic 1 signal 3 } 
	{ conv2d_64_padded_window_stream_1_din sc_out sc_lv 288 signal 2 } 
	{ conv2d_64_padded_window_stream_1_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ conv2d_64_padded_window_stream_1_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ conv2d_64_padded_window_stream_1_full_n sc_in sc_logic 1 signal 2 } 
	{ conv2d_64_padded_window_stream_1_write sc_out sc_logic 1 signal 2 } 
	{ conv2d_64_padded_window_stream_0_din sc_out sc_lv 288 signal 1 } 
	{ conv2d_64_padded_window_stream_0_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ conv2d_64_padded_window_stream_0_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ conv2d_64_padded_window_stream_0_full_n sc_in sc_logic 1 signal 1 } 
	{ conv2d_64_padded_window_stream_0_write sc_out sc_logic 1 signal 1 } 
	{ conv2d_64_padded_window_stream_31_din sc_out sc_lv 288 signal 32 } 
	{ conv2d_64_padded_window_stream_31_num_data_valid sc_in sc_lv 3 signal 32 } 
	{ conv2d_64_padded_window_stream_31_fifo_cap sc_in sc_lv 3 signal 32 } 
	{ conv2d_64_padded_window_stream_31_full_n sc_in sc_logic 1 signal 32 } 
	{ conv2d_64_padded_window_stream_31_write sc_out sc_logic 1 signal 32 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
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
 	{ "name": "conv2d_64_window_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_window_stream", "role": "dout" }} , 
 	{ "name": "conv2d_64_window_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_window_stream", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_window_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_window_stream", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_window_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_window_stream", "role": "empty_n" }} , 
 	{ "name": "conv2d_64_window_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_window_stream", "role": "read" }} , 
 	{ "name": "conv2d_64_padded_window_stream_30_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_30", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_30_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_30", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_30_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_30", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_30_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_30", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_30_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_30", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_29_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_29", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_29_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_29", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_29_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_29", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_29_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_29", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_29_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_29", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_28_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_28", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_28_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_28", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_28_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_28", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_28_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_28", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_28_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_28", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_27_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_27", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_27_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_27", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_27_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_27", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_27_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_27", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_27_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_27", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_26_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_26", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_26_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_26", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_26_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_26", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_26_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_26", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_26_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_26", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_25_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_25", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_25_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_25", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_25_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_25", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_25_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_25", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_25_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_25", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_24_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_24", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_24_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_24", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_24_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_24", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_24_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_24", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_24_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_24", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_23_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_23", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_23_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_23", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_23_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_23", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_23_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_23", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_23_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_23", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_22_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_22", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_22_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_22", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_22_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_22", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_22_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_22", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_22_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_22", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_21_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_21", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_21_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_21", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_21_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_21", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_21_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_21", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_21_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_21", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_20_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_20", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_20_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_20", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_20_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_20", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_20_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_20", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_20_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_20", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_19_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_19", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_19_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_19", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_19_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_19", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_19_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_19", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_19_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_19", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_18_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_18", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_18_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_18", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_18_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_18", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_18_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_18", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_18_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_18", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_17_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_17", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_17_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_17", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_17_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_17", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_17_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_17", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_17_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_17", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_16_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_16", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_16_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_16", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_16_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_16", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_16_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_16", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_16_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_16", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_15_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_15", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_15_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_15", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_15_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_15", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_15_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_15", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_15_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_15", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_14_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_14", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_14_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_14", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_14_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_14", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_14_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_14", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_14_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_14", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_13_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_13", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_13_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_13", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_13_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_13", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_13_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_13", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_13_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_13", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_12_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_12", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_12_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_12", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_12_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_12", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_12_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_12", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_12_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_12", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_11_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_11", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_11_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_11", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_11_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_11", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_11_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_11", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_11_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_11", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_10_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_10", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_10_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_10", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_10_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_10", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_10_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_10", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_10_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_10", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_9_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_9", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_9_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_9", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_9_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_9", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_9_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_9", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_9_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_9", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_8_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_8", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_8_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_8", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_8_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_8", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_8_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_8", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_8_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_8", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_7_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_7", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_7_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_7", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_7_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_7", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_7_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_7", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_7_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_7", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_6_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_6", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_6_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_6", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_6_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_6", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_6_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_6", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_6_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_6", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_5_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_5", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_5_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_5", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_5_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_5", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_5_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_5", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_5_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_5", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_4", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_4", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_4", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_4", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_4", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_3", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_3", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_3", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_3", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_3", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_2", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_2", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_2", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_2", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_2", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_1", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_1", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_1", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_1", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_1", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_0", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_0", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_0", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_0", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_0", "role": "write" }} , 
 	{ "name": "conv2d_64_padded_window_stream_31_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_31", "role": "din" }} , 
 	{ "name": "conv2d_64_padded_window_stream_31_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_31", "role": "num_data_valid" }} , 
 	{ "name": "conv2d_64_padded_window_stream_31_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_31", "role": "fifo_cap" }} , 
 	{ "name": "conv2d_64_padded_window_stream_31_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_31", "role": "full_n" }} , 
 	{ "name": "conv2d_64_padded_window_stream_31_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2d_64_padded_window_stream_31", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "pad_windows_mc_float_14u_14u_32u_3u_3u_64u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6274", "EstimateLatencyMax" : "6274",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv2d_64_window_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_window_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_13", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_15", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_16", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_18", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_19", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_20", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_20_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_21", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_22", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_23", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_23_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_24", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_24_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_25", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_25_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_26", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_26_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_27", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_27_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_28", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_28_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_29", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_29_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_30", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_30_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv2d_64_padded_window_stream_31", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "conv2d_64_padded_window_stream_31_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "in_y_in_x_in_c", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	pad_windows_mc_float_14u_14u_32u_3u_3u_64u_s {
		conv2d_64_window_stream {Type I LastRead 1 FirstWrite -1}
		conv2d_64_padded_window_stream_0 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_1 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_2 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_3 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_4 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_5 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_6 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_7 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_8 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_9 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_10 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_11 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_12 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_13 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_14 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_15 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_16 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_17 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_18 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_19 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_20 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_21 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_22 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_23 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_24 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_25 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_26 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_27 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_28 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_29 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_30 {Type O LastRead -1 FirstWrite 1}
		conv2d_64_padded_window_stream_31 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6274", "Max" : "6274"}
	, {"Name" : "Interval", "Min" : "6274", "Max" : "6274"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	conv2d_64_window_stream { ap_fifo {  { conv2d_64_window_stream_dout fifo_port_we 0 288 }  { conv2d_64_window_stream_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_window_stream_fifo_cap fifo_update 0 3 }  { conv2d_64_window_stream_empty_n fifo_status 0 1 }  { conv2d_64_window_stream_read fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_0 { ap_fifo {  { conv2d_64_padded_window_stream_0_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_0_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_0_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_0_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_0_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_1 { ap_fifo {  { conv2d_64_padded_window_stream_1_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_1_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_1_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_1_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_1_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_2 { ap_fifo {  { conv2d_64_padded_window_stream_2_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_2_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_2_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_2_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_2_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_3 { ap_fifo {  { conv2d_64_padded_window_stream_3_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_3_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_3_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_3_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_3_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_4 { ap_fifo {  { conv2d_64_padded_window_stream_4_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_4_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_4_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_4_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_4_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_5 { ap_fifo {  { conv2d_64_padded_window_stream_5_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_5_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_5_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_5_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_5_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_6 { ap_fifo {  { conv2d_64_padded_window_stream_6_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_6_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_6_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_6_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_6_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_7 { ap_fifo {  { conv2d_64_padded_window_stream_7_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_7_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_7_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_7_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_7_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_8 { ap_fifo {  { conv2d_64_padded_window_stream_8_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_8_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_8_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_8_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_8_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_9 { ap_fifo {  { conv2d_64_padded_window_stream_9_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_9_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_9_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_9_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_9_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_10 { ap_fifo {  { conv2d_64_padded_window_stream_10_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_10_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_10_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_10_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_10_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_11 { ap_fifo {  { conv2d_64_padded_window_stream_11_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_11_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_11_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_11_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_11_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_12 { ap_fifo {  { conv2d_64_padded_window_stream_12_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_12_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_12_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_12_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_12_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_13 { ap_fifo {  { conv2d_64_padded_window_stream_13_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_13_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_13_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_13_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_13_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_14 { ap_fifo {  { conv2d_64_padded_window_stream_14_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_14_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_14_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_14_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_14_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_15 { ap_fifo {  { conv2d_64_padded_window_stream_15_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_15_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_15_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_15_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_15_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_16 { ap_fifo {  { conv2d_64_padded_window_stream_16_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_16_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_16_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_16_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_16_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_17 { ap_fifo {  { conv2d_64_padded_window_stream_17_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_17_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_17_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_17_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_17_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_18 { ap_fifo {  { conv2d_64_padded_window_stream_18_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_18_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_18_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_18_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_18_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_19 { ap_fifo {  { conv2d_64_padded_window_stream_19_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_19_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_19_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_19_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_19_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_20 { ap_fifo {  { conv2d_64_padded_window_stream_20_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_20_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_20_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_20_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_20_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_21 { ap_fifo {  { conv2d_64_padded_window_stream_21_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_21_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_21_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_21_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_21_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_22 { ap_fifo {  { conv2d_64_padded_window_stream_22_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_22_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_22_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_22_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_22_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_23 { ap_fifo {  { conv2d_64_padded_window_stream_23_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_23_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_23_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_23_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_23_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_24 { ap_fifo {  { conv2d_64_padded_window_stream_24_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_24_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_24_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_24_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_24_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_25 { ap_fifo {  { conv2d_64_padded_window_stream_25_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_25_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_25_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_25_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_25_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_26 { ap_fifo {  { conv2d_64_padded_window_stream_26_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_26_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_26_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_26_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_26_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_27 { ap_fifo {  { conv2d_64_padded_window_stream_27_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_27_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_27_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_27_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_27_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_28 { ap_fifo {  { conv2d_64_padded_window_stream_28_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_28_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_28_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_28_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_28_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_29 { ap_fifo {  { conv2d_64_padded_window_stream_29_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_29_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_29_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_29_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_29_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_30 { ap_fifo {  { conv2d_64_padded_window_stream_30_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_30_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_30_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_30_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_30_write fifo_data 1 1 } } }
	conv2d_64_padded_window_stream_31 { ap_fifo {  { conv2d_64_padded_window_stream_31_din fifo_port_we 1 288 }  { conv2d_64_padded_window_stream_31_num_data_valid fifo_status_num_data_valid 0 3 }  { conv2d_64_padded_window_stream_31_fifo_cap fifo_update 0 3 }  { conv2d_64_padded_window_stream_31_full_n fifo_status 0 1 }  { conv2d_64_padded_window_stream_31_write fifo_data 1 1 } } }
}
