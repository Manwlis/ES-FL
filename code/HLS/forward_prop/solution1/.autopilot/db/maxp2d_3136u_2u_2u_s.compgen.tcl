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
    id 19771 \
    name maxp2d_64_window_stream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_maxp2d_64_window_stream \
    op interface \
    ports { maxp2d_64_window_stream_dout { I 128 vector } maxp2d_64_window_stream_num_data_valid { I 3 vector } maxp2d_64_window_stream_fifo_cap { I 3 vector } maxp2d_64_window_stream_empty_n { I 1 bit } maxp2d_64_window_stream_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19772 \
    name maxp2d_64_feature_map_stream127 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_maxp2d_64_feature_map_stream127 \
    op interface \
    ports { maxp2d_64_feature_map_stream127_din { O 32 vector } maxp2d_64_feature_map_stream127_num_data_valid { I 3 vector } maxp2d_64_feature_map_stream127_fifo_cap { I 3 vector } maxp2d_64_feature_map_stream127_full_n { I 1 bit } maxp2d_64_feature_map_stream127_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19773 \
    name maxp2d_64_activations_window_stream \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_maxp2d_64_activations_window_stream \
    op interface \
    ports { maxp2d_64_activations_window_stream_din { O 4 vector } maxp2d_64_activations_window_stream_num_data_valid { I 13 vector } maxp2d_64_activations_window_stream_fifo_cap { I 13 vector } maxp2d_64_activations_window_stream_full_n { I 1 bit } maxp2d_64_activations_window_stream_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19774 \
    name maxp2d_64_f_map_out133 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_maxp2d_64_f_map_out133 \
    op interface \
    ports { maxp2d_64_f_map_out133_din { O 32 vector } maxp2d_64_f_map_out133_num_data_valid { I 13 vector } maxp2d_64_f_map_out133_fifo_cap { I 13 vector } maxp2d_64_f_map_out133_full_n { I 1 bit } maxp2d_64_f_map_out133_write { O 1 bit } } \
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


# flow_control definition:
set InstName accel_flow_control_loop_pipe_U
set CompName accel_flow_control_loop_pipe
set name flow_control_loop_pipe
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix accel_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


