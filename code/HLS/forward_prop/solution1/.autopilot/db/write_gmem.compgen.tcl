# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20474 \
    name conv2d_32_f_map_out130 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_32_f_map_out130 \
    op interface \
    ports { conv2d_32_f_map_out130_dout { I 32 vector } conv2d_32_f_map_out130_num_data_valid { I 16 vector } conv2d_32_f_map_out130_fifo_cap { I 16 vector } conv2d_32_f_map_out130_empty_n { I 1 bit } conv2d_32_f_map_out130_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20475 \
    name maxp2d_32_f_map_out131 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_maxp2d_32_f_map_out131 \
    op interface \
    ports { maxp2d_32_f_map_out131_dout { I 32 vector } maxp2d_32_f_map_out131_num_data_valid { I 14 vector } maxp2d_32_f_map_out131_fifo_cap { I 14 vector } maxp2d_32_f_map_out131_empty_n { I 1 bit } maxp2d_32_f_map_out131_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20476 \
    name conv2d_64_f_map_out132 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_f_map_out132 \
    op interface \
    ports { conv2d_64_f_map_out132_dout { I 32 vector } conv2d_64_f_map_out132_num_data_valid { I 15 vector } conv2d_64_f_map_out132_fifo_cap { I 15 vector } conv2d_64_f_map_out132_empty_n { I 1 bit } conv2d_64_f_map_out132_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20477 \
    name maxp2d_64_f_map_out133 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_maxp2d_64_f_map_out133 \
    op interface \
    ports { maxp2d_64_f_map_out133_dout { I 32 vector } maxp2d_64_f_map_out133_num_data_valid { I 13 vector } maxp2d_64_f_map_out133_fifo_cap { I 13 vector } maxp2d_64_f_map_out133_empty_n { I 1 bit } maxp2d_64_f_map_out133_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20478 \
    name dense_f_map_out134 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_f_map_out134 \
    op interface \
    ports { dense_f_map_out134_dout { I 32 vector } dense_f_map_out134_num_data_valid { I 8 vector } dense_f_map_out134_fifo_cap { I 8 vector } dense_f_map_out134_empty_n { I 1 bit } dense_f_map_out134_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20479 \
    name softmax_f_map_out135 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_softmax_f_map_out135 \
    op interface \
    ports { softmax_f_map_out135_dout { I 32 vector } softmax_f_map_out135_num_data_valid { I 5 vector } softmax_f_map_out135_fifo_cap { I 5 vector } softmax_f_map_out135_empty_n { I 1 bit } softmax_f_map_out135_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20480 \
    name gmem \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem \
    op interface \
    ports { m_axi_gmem_AWVALID { O 1 bit } m_axi_gmem_AWREADY { I 1 bit } m_axi_gmem_AWADDR { O 64 vector } m_axi_gmem_AWID { O 1 vector } m_axi_gmem_AWLEN { O 32 vector } m_axi_gmem_AWSIZE { O 3 vector } m_axi_gmem_AWBURST { O 2 vector } m_axi_gmem_AWLOCK { O 2 vector } m_axi_gmem_AWCACHE { O 4 vector } m_axi_gmem_AWPROT { O 3 vector } m_axi_gmem_AWQOS { O 4 vector } m_axi_gmem_AWREGION { O 4 vector } m_axi_gmem_AWUSER { O 1 vector } m_axi_gmem_WVALID { O 1 bit } m_axi_gmem_WREADY { I 1 bit } m_axi_gmem_WDATA { O 512 vector } m_axi_gmem_WSTRB { O 64 vector } m_axi_gmem_WLAST { O 1 bit } m_axi_gmem_WID { O 1 vector } m_axi_gmem_WUSER { O 1 vector } m_axi_gmem_ARVALID { O 1 bit } m_axi_gmem_ARREADY { I 1 bit } m_axi_gmem_ARADDR { O 64 vector } m_axi_gmem_ARID { O 1 vector } m_axi_gmem_ARLEN { O 32 vector } m_axi_gmem_ARSIZE { O 3 vector } m_axi_gmem_ARBURST { O 2 vector } m_axi_gmem_ARLOCK { O 2 vector } m_axi_gmem_ARCACHE { O 4 vector } m_axi_gmem_ARPROT { O 3 vector } m_axi_gmem_ARQOS { O 4 vector } m_axi_gmem_ARREGION { O 4 vector } m_axi_gmem_ARUSER { O 1 vector } m_axi_gmem_RVALID { I 1 bit } m_axi_gmem_RREADY { O 1 bit } m_axi_gmem_RDATA { I 512 vector } m_axi_gmem_RLAST { I 1 bit } m_axi_gmem_RID { I 1 vector } m_axi_gmem_RFIFONUM { I 9 vector } m_axi_gmem_RUSER { I 1 vector } m_axi_gmem_RRESP { I 2 vector } m_axi_gmem_BVALID { I 1 bit } m_axi_gmem_BREADY { O 1 bit } m_axi_gmem_BRESP { I 2 vector } m_axi_gmem_BID { I 1 vector } m_axi_gmem_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20481 \
    name gmem_conv2d_32_feature_map \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_conv2d_32_feature_map \
    op interface \
    ports { gmem_conv2d_32_feature_map_dout { I 64 vector } gmem_conv2d_32_feature_map_num_data_valid { I 5 vector } gmem_conv2d_32_feature_map_fifo_cap { I 5 vector } gmem_conv2d_32_feature_map_empty_n { I 1 bit } gmem_conv2d_32_feature_map_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20482 \
    name gmem_maxp2d_32_feature_map \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_maxp2d_32_feature_map \
    op interface \
    ports { gmem_maxp2d_32_feature_map_dout { I 64 vector } gmem_maxp2d_32_feature_map_num_data_valid { I 5 vector } gmem_maxp2d_32_feature_map_fifo_cap { I 5 vector } gmem_maxp2d_32_feature_map_empty_n { I 1 bit } gmem_maxp2d_32_feature_map_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20483 \
    name gmem_conv2d_64_feature_map \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_conv2d_64_feature_map \
    op interface \
    ports { gmem_conv2d_64_feature_map_dout { I 64 vector } gmem_conv2d_64_feature_map_num_data_valid { I 5 vector } gmem_conv2d_64_feature_map_fifo_cap { I 5 vector } gmem_conv2d_64_feature_map_empty_n { I 1 bit } gmem_conv2d_64_feature_map_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20484 \
    name gmem_maxp2d_64_feature_map \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_maxp2d_64_feature_map \
    op interface \
    ports { gmem_maxp2d_64_feature_map_dout { I 64 vector } gmem_maxp2d_64_feature_map_num_data_valid { I 5 vector } gmem_maxp2d_64_feature_map_fifo_cap { I 5 vector } gmem_maxp2d_64_feature_map_empty_n { I 1 bit } gmem_maxp2d_64_feature_map_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20485 \
    name gmem_dense_feature_map \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_dense_feature_map \
    op interface \
    ports { gmem_dense_feature_map_dout { I 64 vector } gmem_dense_feature_map_num_data_valid { I 5 vector } gmem_dense_feature_map_fifo_cap { I 5 vector } gmem_dense_feature_map_empty_n { I 1 bit } gmem_dense_feature_map_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20486 \
    name gmem_softmax_feature_map \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_softmax_feature_map \
    op interface \
    ports { gmem_softmax_feature_map_dout { I 64 vector } gmem_softmax_feature_map_num_data_valid { I 5 vector } gmem_softmax_feature_map_fifo_cap { I 5 vector } gmem_softmax_feature_map_empty_n { I 1 bit } gmem_softmax_feature_map_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20487 \
    name conv2d_32_activations_stream123 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_32_activations_stream123 \
    op interface \
    ports { conv2d_32_activations_stream123_dout { I 1 vector } conv2d_32_activations_stream123_num_data_valid { I 16 vector } conv2d_32_activations_stream123_fifo_cap { I 16 vector } conv2d_32_activations_stream123_empty_n { I 1 bit } conv2d_32_activations_stream123_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20488 \
    name maxp2d_32_activations_window_stream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_maxp2d_32_activations_window_stream \
    op interface \
    ports { maxp2d_32_activations_window_stream_dout { I 4 vector } maxp2d_32_activations_window_stream_num_data_valid { I 14 vector } maxp2d_32_activations_window_stream_fifo_cap { I 14 vector } maxp2d_32_activations_window_stream_empty_n { I 1 bit } maxp2d_32_activations_window_stream_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20489 \
    name conv2d_64_activations_stream126 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_activations_stream126 \
    op interface \
    ports { conv2d_64_activations_stream126_dout { I 1 vector } conv2d_64_activations_stream126_num_data_valid { I 15 vector } conv2d_64_activations_stream126_fifo_cap { I 15 vector } conv2d_64_activations_stream126_empty_n { I 1 bit } conv2d_64_activations_stream126_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20490 \
    name maxp2d_64_activations_window_stream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_maxp2d_64_activations_window_stream \
    op interface \
    ports { maxp2d_64_activations_window_stream_dout { I 4 vector } maxp2d_64_activations_window_stream_num_data_valid { I 13 vector } maxp2d_64_activations_window_stream_fifo_cap { I 13 vector } maxp2d_64_activations_window_stream_empty_n { I 1 bit } maxp2d_64_activations_window_stream_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20491 \
    name dense_activations_stream129 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_activations_stream129 \
    op interface \
    ports { dense_activations_stream129_dout { I 1 vector } dense_activations_stream129_num_data_valid { I 8 vector } dense_activations_stream129_fifo_cap { I 8 vector } dense_activations_stream129_empty_n { I 1 bit } dense_activations_stream129_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


