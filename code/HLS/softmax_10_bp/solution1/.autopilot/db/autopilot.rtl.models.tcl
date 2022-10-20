set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME accel_entry_proc}
  {SRCNAME {save_variables_locally<10u, 128u>_Pipeline_save_weights_L} MODELNAME save_variables_locally_10u_128u_Pipeline_save_weights_L RTLNAME accel_save_variables_locally_10u_128u_Pipeline_save_weights_L
    SUBMODULES {
      {MODELNAME accel_flow_control_loop_pipe_sequential_init RTLNAME accel_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME accel_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME {save_variables_locally<10u, 128u>_Pipeline_stream_input} MODELNAME save_variables_locally_10u_128u_Pipeline_stream_input RTLNAME accel_save_variables_locally_10u_128u_Pipeline_stream_input}
  {SRCNAME {save_variables_locally<10u, 128u>} MODELNAME save_variables_locally_10u_128u_s RTLNAME accel_save_variables_locally_10u_128u_s}
  {SRCNAME sparce_categorical_cross_entropy<10u>_Pipeline_output_error MODELNAME sparce_categorical_cross_entropy_10u_Pipeline_output_error RTLNAME accel_sparce_categorical_cross_entropy_10u_Pipeline_output_error
    SUBMODULES {
      {MODELNAME accel_fsub_32ns_32ns_32_4_full_dsp_1 RTLNAME accel_fsub_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME accel_uitofp_32ns_32_4_no_dsp_1 RTLNAME accel_uitofp_32ns_32_4_no_dsp_1 BINDTYPE op TYPE uitofp IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME sparce_categorical_cross_entropy<10u> MODELNAME sparce_categorical_cross_entropy_10u_s RTLNAME accel_sparce_categorical_cross_entropy_10u_s}
  {SRCNAME {softmax_error_propagation<10u, 128u>_Pipeline_store_output_error} MODELNAME softmax_error_propagation_10u_128u_Pipeline_store_output_error RTLNAME accel_softmax_error_propagation_10u_128u_Pipeline_store_output_error}
  {SRCNAME {softmax_error_propagation<10u, 128u>_Pipeline_input} MODELNAME softmax_error_propagation_10u_128u_Pipeline_input RTLNAME accel_softmax_error_propagation_10u_128u_Pipeline_input
    SUBMODULES {
      {MODELNAME accel_fadd_32ns_32ns_32_4_full_dsp_1 RTLNAME accel_fadd_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME accel_fmul_32ns_32ns_32_3_max_dsp_1 RTLNAME accel_fmul_32ns_32ns_32_3_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {softmax_error_propagation<10u, 128u>} MODELNAME softmax_error_propagation_10u_128u_s RTLNAME accel_softmax_error_propagation_10u_128u_s
    SUBMODULES {
      {MODELNAME accel_softmax_error_propagation_10u_128u_s_output_error_RAM_AUTO_1R1W RTLNAME accel_softmax_error_propagation_10u_128u_s_output_error_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {write_mem<float, 128u>_Pipeline_write_out_mem} MODELNAME write_mem_float_128u_Pipeline_write_out_mem RTLNAME accel_write_mem_float_128u_Pipeline_write_out_mem}
  {SRCNAME {write_mem<float, 128u>} MODELNAME write_mem_float_128u_s RTLNAME accel_write_mem_float_128u_s}
  {SRCNAME accel MODELNAME accel RTLNAME accel IS_TOP 1
    SUBMODULES {
      {MODELNAME accel_softmax_weights_RAM_AUTO_1R1W_memcore RTLNAME accel_softmax_weights_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME accel_softmax_weights_RAM_AUTO_1R1W RTLNAME accel_softmax_weights_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2}
      {MODELNAME accel_fifo_w32_d3_S RTLNAME accel_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_fifo_w64_d5_S RTLNAME accel_fifo_w64_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_fifo_w32_d2_S RTLNAME accel_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_fifo_w32_d6_S RTLNAME accel_fifo_w32_d6_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_sparce_categorical_cross_entropy_10u_U0 RTLNAME accel_start_for_sparce_categorical_cross_entropy_10u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_start_for_write_mem_float_128u_U0 RTLNAME accel_start_for_write_mem_float_128u_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME accel_gmem_m_axi RTLNAME accel_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME accel_control_s_axi RTLNAME accel_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
