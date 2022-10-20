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
    id 25 \
    name softmax_f_map_stream14 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_softmax_f_map_stream14 \
    op interface \
    ports { softmax_f_map_stream14_dout { I 32 vector } softmax_f_map_stream14_num_data_valid { I 2 vector } softmax_f_map_stream14_fifo_cap { I 2 vector } softmax_f_map_stream14_empty_n { I 1 bit } softmax_f_map_stream14_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name label_r \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_label_r \
    op interface \
    ports { label_r_dout { I 32 vector } label_r_num_data_valid { I 3 vector } label_r_fifo_cap { I 3 vector } label_r_empty_n { I 1 bit } label_r_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name softmax_output_error_stream15 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_softmax_output_error_stream15 \
    op interface \
    ports { softmax_output_error_stream15_din { O 32 vector } softmax_output_error_stream15_num_data_valid { I 4 vector } softmax_output_error_stream15_fifo_cap { I 4 vector } softmax_output_error_stream15_full_n { I 1 bit } softmax_output_error_stream15_write { O 1 bit } } \
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


