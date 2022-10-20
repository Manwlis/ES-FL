set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME accel_entry_proc}
  {SRCNAME save_variables_locally_Pipeline_VITIS_LOOP_22_1 MODELNAME save_variables_locally_Pipeline_VITIS_LOOP_22_1 RTLNAME accel_save_variables_locally_Pipeline_VITIS_LOOP_22_1
    SUBMODULES {
      {MODELNAME accel_flow_control_loop_pipe_sequential_init RTLNAME accel_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME accel_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME save_variables_locally_Pipeline_VITIS_LOOP_25_2 MODELNAME save_variables_locally_Pipeline_VITIS_LOOP_25_2 RTLNAME accel_save_variables_locally_Pipeline_VITIS_LOOP_25_2}
  {SRCNAME save_variables_locally_Pipeline_VITIS_LOOP_28_3_VITIS_LOOP_29_4 MODELNAME save_variables_locally_Pipeline_VITIS_LOOP_28_3_VITIS_LOOP_29_4 RTLNAME accel_save_variables_locally_Pipeline_VITIS_LOOP_28_3_VITIS_LOOP_29_4}
  {SRCNAME save_variables_locally_Pipeline_VITIS_LOOP_32_5 MODELNAME save_variables_locally_Pipeline_VITIS_LOOP_32_5 RTLNAME accel_save_variables_locally_Pipeline_VITIS_LOOP_32_5}
  {SRCNAME save_variables_locally_Pipeline_VITIS_LOOP_35_6 MODELNAME save_variables_locally_Pipeline_VITIS_LOOP_35_6 RTLNAME accel_save_variables_locally_Pipeline_VITIS_LOOP_35_6}
  {SRCNAME save_variables_locally_Pipeline_VITIS_LOOP_38_7 MODELNAME save_variables_locally_Pipeline_VITIS_LOOP_38_7 RTLNAME accel_save_variables_locally_Pipeline_VITIS_LOOP_38_7}
  {SRCNAME save_variables_locally_Pipeline_VITIS_LOOP_41_8 MODELNAME save_variables_locally_Pipeline_VITIS_LOOP_41_8 RTLNAME accel_save_variables_locally_Pipeline_VITIS_LOOP_41_8}
  {SRCNAME save_variables_locally_Pipeline_VITIS_LOOP_44_9 MODELNAME save_variables_locally_Pipeline_VITIS_LOOP_44_9 RTLNAME accel_save_variables_locally_Pipeline_VITIS_LOOP_44_9}
  {SRCNAME save_variables_locally MODELNAME save_variables_locally RTLNAME accel_save_variables_locally}
  {SRCNAME {create_window_stream_conv2d_1c<float, 28u, 28u, 3u, 3u>} MODELNAME create_window_stream_conv2d_1c_float_28u_28u_3u_3u_s RTLNAME accel_create_window_stream_conv2d_1c_float_28u_28u_3u_3u_s
    SUBMODULES {
      {MODELNAME accel_mux_2832_32_1_1 RTLNAME accel_mux_2832_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME accel_regslice_both RTLNAME accel_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME accel_regslice_both_U}
      {MODELNAME accel_flow_control_loop_pipe RTLNAME accel_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME accel_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME {pad_windows_1c<float, 28u, 28u, 3u, 3u, 32u>} MODELNAME pad_windows_1c_float_28u_28u_3u_3u_32u_s RTLNAME accel_pad_windows_1c_float_28u_28u_3u_3u_32u_s}
  {SRCNAME {conv2d_sum_1c<float, 28u, 28u, 3u, 3u, 32u>_Pipeline_inputs} MODELNAME conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs RTLNAME accel_conv2d_sum_1c_float_28u_28u_3u_3u_32u_Pipeline_inputs
    SUBMODULES {
      {MODELNAME accel_fadd_32ns_32ns_32_3_full_dsp_1 RTLNAME accel_fadd_32ns_32ns_32_3_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME accel_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME accel_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {conv2d_sum_1c<float, 28u, 28u, 3u, 3u, 32u>} MODELNAME conv2d_sum_1c_float_28u_28u_3u_3u_32u_s RTLNAME accel_conv2d_sum_1c_float_28u_28u_3u_3u_32u_s}
  {SRCNAME {conv2d_activate_1c<28u, 28u, 3u, 3u, 32u>} MODELNAME conv2d_activate_1c_28u_28u_3u_3u_32u_s RTLNAME accel_conv2d_activate_1c_28u_28u_3u_3u_32u_s
    SUBMODULES {
      {MODELNAME accel_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME accel_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {create_window_stream_maxp2d<28u, 28u, 32u, 2u, 2u>} MODELNAME create_window_stream_maxp2d_28u_28u_32u_2u_2u_s RTLNAME accel_create_window_stream_maxp2d_28u_28u_32u_2u_2u_s
    SUBMODULES {
      {MODELNAME accel_create_window_stream_maxp2d_28u_28u_32u_2u_2u_s_line_buffer_RAM_1WNR_AUTO_1R1W RTLNAME accel_create_window_stream_maxp2d_28u_28u_32u_2u_2u_s_line_buffer_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {maxp2d<6272u, 2u, 2u>} MODELNAME maxp2d_6272u_2u_2u_s RTLNAME accel_maxp2d_6272u_2u_2u_s}
  {SRCNAME {create_window_stream_conv2d_mc<float, 14u, 14u, 32u, 3u, 3u>} MODELNAME create_window_stream_conv2d_mc_float_14u_14u_32u_3u_3u_s RTLNAME accel_create_window_stream_conv2d_mc_float_14u_14u_32u_3u_3u_s
    SUBMODULES {
      {MODELNAME accel_mux_1432_32_1_1 RTLNAME accel_mux_1432_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME accel_create_window_stream_conv2d_mc_float_14u_14u_32u_3u_3u_s_line_buffer_0_RAM_AUbkb RTLNAME accel_create_window_stream_conv2d_mc_float_14u_14u_32u_3u_3u_s_line_buffer_0_RAM_AUbkb BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {pad_windows_mc<float, 14u, 14u, 32u, 3u, 3u, 64u>} MODELNAME pad_windows_mc_float_14u_14u_32u_3u_3u_64u_s RTLNAME accel_pad_windows_mc_float_14u_14u_32u_3u_3u_64u_s}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_s RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_s}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.1_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_1_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_1_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.1} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_1 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_1}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.2_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_2_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_2_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.2} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_2 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_2}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.3_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_3_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_3_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.3} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_3 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_3}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.4_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_4_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_4_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.4} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_4 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_4}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.5_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_5_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_5_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.5} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_5 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_5}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.6_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_6_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_6_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.6} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_6 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_6}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.7_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_7_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_7_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.7} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_7 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_7}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.8_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_8_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_8_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.8} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_8 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_8}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.9_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_9_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_9_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.9} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_9 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_9}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.10_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_10_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_10_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.10} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_10 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_10}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.11_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_11_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_11_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.11} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_11 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_11}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.12_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_12_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_12_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.12} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_12 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_12}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.13_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_13_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_13_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.13} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_13 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_13}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.14_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_14_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_14_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.14} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_14 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_14}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.15_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_15_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_15_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.15} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_15 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_15}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.16_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_16_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_16_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.16} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_16 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_16}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.17_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_17_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_17_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.17} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_17 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_17}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.18_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_18_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_18_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.18} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_18 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_18}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.19_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_19_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_19_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.19} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_19 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_19}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.20_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_20_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_20_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.20} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_20 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_20}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.21_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_21_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_21_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.21} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_21 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_21}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.22_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_22_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_22_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.22} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_22 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_22}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.23_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_23_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_23_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.23} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_23 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_23}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.24_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_24_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_24_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.24} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_24 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_24}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.25_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_25_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_25_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.25} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_25 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_25}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.26_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_26_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_26_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.26} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_26 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_26}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.27_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_27_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_27_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.27} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_27 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_27}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.28_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_28_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_28_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.28} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_28 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_28}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.29_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_29_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_29_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.29} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_29 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_29}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.30_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_30_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_30_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.30} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_30 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_30}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.31_Pipeline_inputs} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_Pipeline_inputs RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_Pipeline_inputs}
  {SRCNAME {conv2d_sum_mc<float, 14u, 14u, 3u, 3u, 64u>.31} MODELNAME conv2d_sum_mc_float_14u_14u_3u_3u_64u_31 RTLNAME accel_conv2d_sum_mc_float_14u_14u_3u_3u_64u_31}
  {SRCNAME {conv2d_aggregate_channels<14u, 14u, 32u, 64u>} MODELNAME conv2d_aggregate_channels_14u_14u_32u_64u_s RTLNAME accel_conv2d_aggregate_channels_14u_14u_32u_64u_s
    SUBMODULES {
      {MODELNAME accel_flow_control_loop_delay_pipe RTLNAME accel_flow_control_loop_delay_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME accel_flow_control_loop_delay_pipe_U}
    }
  }
  {SRCNAME {create_window_stream_maxp2d<14u, 14u, 64u, 2u, 2u>} MODELNAME create_window_stream_maxp2d_14u_14u_64u_2u_2u_s RTLNAME accel_create_window_stream_maxp2d_14u_14u_64u_2u_2u_s}
  {SRCNAME {maxp2d<3136u, 2u, 2u>} MODELNAME maxp2d_3136u_2u_2u_s RTLNAME accel_maxp2d_3136u_2u_2u_s}
  {SRCNAME {dense<128u, 3136u>_Pipeline_init_sums} MODELNAME dense_128u_3136u_Pipeline_init_sums RTLNAME accel_dense_128u_3136u_Pipeline_init_sums}
  {SRCNAME {dense<128u, 3136u>_Pipeline_inputs} MODELNAME dense_128u_3136u_Pipeline_inputs RTLNAME accel_dense_128u_3136u_Pipeline_inputs}
  {SRCNAME {dense<128u, 3136u>_Pipeline_activate} MODELNAME dense_128u_3136u_Pipeline_activate RTLNAME accel_dense_128u_3136u_Pipeline_activate
    SUBMODULES {
      {MODELNAME accel_mux_1288_32_1_1 RTLNAME accel_mux_1288_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {dense<128u, 3136u>} MODELNAME dense_128u_3136u_s RTLNAME accel_dense_128u_3136u_s}
  {SRCNAME {softmax<10u, 128u>_Pipeline_VITIS_LOOP_463_1} MODELNAME softmax_10u_128u_Pipeline_VITIS_LOOP_463_1 RTLNAME accel_softmax_10u_128u_Pipeline_VITIS_LOOP_463_1}
  {SRCNAME {softmax<10u, 128u>_Pipeline_calc_sums_and_max} MODELNAME softmax_10u_128u_Pipeline_calc_sums_and_max RTLNAME accel_softmax_10u_128u_Pipeline_calc_sums_and_max
    SUBMODULES {
      {MODELNAME accel_mux_311_32_1_1 RTLNAME accel_mux_311_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME accel_urem_11ns_3ns_11_15_1 RTLNAME accel_urem_11ns_3ns_11_15_1 BINDTYPE op TYPE urem IMPL auto LATENCY 14 ALLOW_PRAGMA 1}
      {MODELNAME accel_mul_mul_11ns_12ns_23_4_1 RTLNAME accel_mul_mul_11ns_12ns_23_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {softmax<10u, 128u>_Pipeline_calc_exp_sum} MODELNAME softmax_10u_128u_Pipeline_calc_exp_sum RTLNAME accel_softmax_10u_128u_Pipeline_calc_exp_sum
    SUBMODULES {
      {MODELNAME accel_mux_104_32_1_1 RTLNAME accel_mux_104_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {softmax<10u, 128u>_Pipeline_feature_map} MODELNAME softmax_10u_128u_Pipeline_feature_map RTLNAME accel_softmax_10u_128u_Pipeline_feature_map}
  {SRCNAME {softmax<10u, 128u>} MODELNAME softmax_10u_128u_s RTLNAME accel_softmax_10u_128u_s
    SUBMODULES {
      {MODELNAME accel_faddfsub_32ns_32ns_32_3_full_dsp_1 RTLNAME accel_faddfsub_32ns_32ns_32_3_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME accel_flog_32ns_32ns_32_6_full_dsp_1 RTLNAME accel_flog_32ns_32ns_32_6_full_dsp_1 BINDTYPE op TYPE flog IMPL fulldsp LATENCY 5 ALLOW_PRAGMA 1}
      {MODELNAME accel_fexp_32ns_32ns_32_5_full_dsp_1 RTLNAME accel_fexp_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fexp IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME write_gmem_Pipeline_VITIS_LOOP_518_1 MODELNAME write_gmem_Pipeline_VITIS_LOOP_518_1 RTLNAME accel_write_gmem_Pipeline_VITIS_LOOP_518_1}
  {SRCNAME write_gmem_Pipeline_VITIS_LOOP_521_2 MODELNAME write_gmem_Pipeline_VITIS_LOOP_521_2 RTLNAME accel_write_gmem_Pipeline_VITIS_LOOP_521_2}
  {SRCNAME write_gmem_Pipeline_VITIS_LOOP_524_3 MODELNAME write_gmem_Pipeline_VITIS_LOOP_524_3 RTLNAME accel_write_gmem_Pipeline_VITIS_LOOP_524_3}
  {SRCNAME write_gmem_Pipeline_VITIS_LOOP_527_4 MODELNAME write_gmem_Pipeline_VITIS_LOOP_527_4 RTLNAME accel_write_gmem_Pipeline_VITIS_LOOP_527_4}
  {SRCNAME write_gmem_Pipeline_VITIS_LOOP_530_5 MODELNAME write_gmem_Pipeline_VITIS_LOOP_530_5 RTLNAME accel_write_gmem_Pipeline_VITIS_LOOP_530_5}
  {SRCNAME write_gmem_Pipeline_VITIS_LOOP_533_6 MODELNAME write_gmem_Pipeline_VITIS_LOOP_533_6 RTLNAME accel_write_gmem_Pipeline_VITIS_LOOP_533_6}
  {SRCNAME write_gmem_Pipeline_VITIS_LOOP_537_7 MODELNAME write_gmem_Pipeline_VITIS_LOOP_537_7 RTLNAME accel_write_gmem_Pipeline_VITIS_LOOP_537_7}
  {SRCNAME write_gmem_Pipeline_VITIS_LOOP_540_8 MODELNAME write_gmem_Pipeline_VITIS_LOOP_540_8 RTLNAME accel_write_gmem_Pipeline_VITIS_LOOP_540_8}
  {SRCNAME write_gmem_Pipeline_VITIS_LOOP_543_9 MODELNAME write_gmem_Pipeline_VITIS_LOOP_543_9 RTLNAME accel_write_gmem_Pipeline_VITIS_LOOP_543_9}
  {SRCNAME write_gmem_Pipeline_VITIS_LOOP_546_10 MODELNAME write_gmem_Pipeline_VITIS_LOOP_546_10 RTLNAME accel_write_gmem_Pipeline_VITIS_LOOP_546_10}
  {SRCNAME write_gmem_Pipeline_VITIS_LOOP_549_11 MODELNAME write_gmem_Pipeline_VITIS_LOOP_549_11 RTLNAME accel_write_gmem_Pipeline_VITIS_LOOP_549_11}
  {SRCNAME write_gmem MODELNAME write_gmem RTLNAME accel_write_gmem}
  {SRCNAME accel MODELNAME accel RTLNAME accel IS_TOP 1
    SUBMODULES {
      {MODELNAME accel_conv2d_32_weights_RAM_AUTO_1R1W_memcore RTLNAME accel_conv2d_32_weights_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME accel_conv2d_32_weights_RAM_AUTO_1R1W RTLNAME accel_conv2d_32_weights_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2}
      {MODELNAME accel_conv2d_32_biases_RAM_AUTO_1R1W_memcore RTLNAME accel_conv2d_32_biases_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME accel_conv2d_32_biases_RAM_AUTO_1R1W RTLNAME accel_conv2d_32_biases_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2}
      {MODELNAME accel_conv2d_64_weights_RAM_AUTO_1R1W RTLNAME accel_conv2d_64_weights_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME accel_conv2d_64_biases_RAM_AUTO_1R1W_memcore RTLNAME accel_conv2d_64_biases_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME accel_conv2d_64_biases_RAM_AUTO_1R1W RTLNAME accel_conv2d_64_biases_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2}
      {MODELNAME accel_dense_weights_RAM_AUTO_1R1W_memcore RTLNAME accel_dense_weights_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME accel_dense_weights_RAM_AUTO_1R1W RTLNAME accel_dense_weights_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2}
      {MODELNAME accel_dense_biases_RAM_AUTO_1R1W_memcore RTLNAME accel_dense_biases_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME accel_dense_biases_RAM_AUTO_1R1W RTLNAME accel_dense_biases_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2}
      {MODELNAME accel_softmax_weights_RAM_AUTO_1R1W_memcore RTLNAME accel_softmax_weights_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME accel_softmax_weights_RAM_AUTO_1R1W RTLNAME accel_softmax_weights_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2}
      {MODELNAME accel_softmax_biases_RAM_AUTO_1R1W_memcore RTLNAME accel_softmax_biases_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME accel_softmax_biases_RAM_AUTO_1R1W RTLNAME accel_softmax_biases_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2}
      {MODELNAME accel_fifo_w64_d16_S RTLNAME accel_fifo_w64_d16_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_fifo_w288_d3_S RTLNAME accel_fifo_w288_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_fifo_w32_d3_S RTLNAME accel_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_fifo_w1_d25088_A RTLNAME accel_fifo_w1_d25088_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_fifo_w32_d25088_A RTLNAME accel_fifo_w32_d25088_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_fifo_w128_d3_S RTLNAME accel_fifo_w128_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_fifo_w4_d6272_A RTLNAME accel_fifo_w4_d6272_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_fifo_w32_d6272_A RTLNAME accel_fifo_w32_d6272_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_fifo_w1_d12544_A RTLNAME accel_fifo_w1_d12544_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_fifo_w32_d12544_A RTLNAME accel_fifo_w32_d12544_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_fifo_w4_d3136_A RTLNAME accel_fifo_w4_d3136_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_fifo_w32_d3136_A RTLNAME accel_fifo_w32_d3136_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_fifo_w1_d128_S RTLNAME accel_fifo_w1_d128_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_fifo_w32_d128_A RTLNAME accel_fifo_w32_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_fifo_w32_d10_S RTLNAME accel_fifo_w32_d10_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_write_gmem_U0 RTLNAME accel_start_for_write_gmem_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_pad_windows_1c_float_28u_28u_3u_3u_32u_U0 RTLNAME accel_start_for_pad_windows_1c_float_28u_28u_3u_3u_32u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_activate_1c_28u_28u_3u_3u_32u_U0 RTLNAME accel_start_for_conv2d_activate_1c_28u_28u_3u_3u_32u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_create_window_stream_maxp2d_28u_28u_32u_2u_2u_U0 RTLNAME accel_start_for_create_window_stream_maxp2d_28u_28u_32u_2u_2u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_maxp2d_6272u_2u_2u_U0 RTLNAME accel_start_for_maxp2d_6272u_2u_2u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_create_window_stream_conv2d_mc_float_14u_14u_32u_3u_3u_U0 RTLNAME accel_start_for_create_window_stream_conv2d_mc_float_14u_14u_32u_3u_3u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_pad_windows_mc_float_14u_14u_32u_3u_3u_64u_U0 RTLNAME accel_start_for_pad_windows_mc_float_14u_14u_32u_3u_3u_64u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_1_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_1_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_2_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_2_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_3_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_3_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_4_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_4_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_5_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_5_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_6_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_6_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_7_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_7_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_8_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_8_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_9_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_9_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_10_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_10_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_11_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_11_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_12_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_12_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_13_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_13_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_14_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_14_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_15_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_15_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_16_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_16_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_17_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_17_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_18_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_18_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_19_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_19_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_20_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_20_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_21_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_21_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_22_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_22_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_23_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_23_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_24_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_24_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_25_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_25_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_26_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_26_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_27_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_27_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_28_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_28_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_29_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_29_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_30_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_30_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_U0 RTLNAME accel_start_for_conv2d_sum_mc_float_14u_14u_3u_3u_64u_31_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_create_window_stream_maxp2d_14u_14u_64u_2u_2u_U0 RTLNAME accel_start_for_create_window_stream_maxp2d_14u_14u_64u_2u_2u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_maxp2d_3136u_2u_2u_U0 RTLNAME accel_start_for_maxp2d_3136u_2u_2u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_gmem_m_axi RTLNAME accel_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME accel_control_s_axi RTLNAME accel_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
