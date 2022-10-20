# This script segment is generated automatically by AutoPilot

set name accel_faddfsub_32ns_32ns_32_3_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 2 ALLOW_PRAGMA 1
}


set name accel_flog_32ns_32ns_32_6_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {flog} IMPL {fulldsp} LATENCY 5 ALLOW_PRAGMA 1
}


set name accel_fexp_32ns_32ns_32_5_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fexp} IMPL {fulldsp} LATENCY 4 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 20445 \
    name weights_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_0 \
    op interface \
    ports { weights_0_address0 { O 9 vector } weights_0_ce0 { O 1 bit } weights_0_q0 { I 32 vector } weights_0_address1 { O 9 vector } weights_0_ce1 { O 1 bit } weights_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 20446 \
    name weights_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_1 \
    op interface \
    ports { weights_1_address0 { O 9 vector } weights_1_ce0 { O 1 bit } weights_1_q0 { I 32 vector } weights_1_address1 { O 9 vector } weights_1_ce1 { O 1 bit } weights_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 20447 \
    name weights_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_2 \
    op interface \
    ports { weights_2_address0 { O 9 vector } weights_2_ce0 { O 1 bit } weights_2_q0 { I 32 vector } weights_2_address1 { O 9 vector } weights_2_ce1 { O 1 bit } weights_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 20448 \
    name biases \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename biases \
    op interface \
    ports { biases_address0 { O 4 vector } biases_ce0 { O 1 bit } biases_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'biases'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20444 \
    name dense_feature_map_stream128 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dense_feature_map_stream128 \
    op interface \
    ports { dense_feature_map_stream128_dout { I 32 vector } dense_feature_map_stream128_num_data_valid { I 3 vector } dense_feature_map_stream128_fifo_cap { I 3 vector } dense_feature_map_stream128_empty_n { I 1 bit } dense_feature_map_stream128_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20449 \
    name softmax_f_map_out135 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_softmax_f_map_out135 \
    op interface \
    ports { softmax_f_map_out135_din { O 32 vector } softmax_f_map_out135_num_data_valid { I 5 vector } softmax_f_map_out135_fifo_cap { I 5 vector } softmax_f_map_out135_full_n { I 1 bit } softmax_f_map_out135_write { O 1 bit } } \
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


