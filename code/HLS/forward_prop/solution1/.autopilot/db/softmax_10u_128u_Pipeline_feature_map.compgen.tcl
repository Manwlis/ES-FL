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
    id 20425 \
    name add1827_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add1827_reload \
    op interface \
    ports { add1827_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20426 \
    name add18_129_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add18_129_reload \
    op interface \
    ports { add18_129_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20427 \
    name add18_231_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add18_231_reload \
    op interface \
    ports { add18_231_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20428 \
    name add18_333_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add18_333_reload \
    op interface \
    ports { add18_333_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20429 \
    name add18_435_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add18_435_reload \
    op interface \
    ports { add18_435_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20430 \
    name add18_537_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add18_537_reload \
    op interface \
    ports { add18_537_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20431 \
    name add18_639_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add18_639_reload \
    op interface \
    ports { add18_639_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20432 \
    name add18_741_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add18_741_reload \
    op interface \
    ports { add18_741_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20433 \
    name add18_843_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add18_843_reload \
    op interface \
    ports { add18_843_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20434 \
    name add18_945_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add18_945_reload \
    op interface \
    ports { add18_945_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20435 \
    name constant_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_constant_r \
    op interface \
    ports { constant_r { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20436 \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
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
set InstName accel_flow_control_loop_pipe_sequential_init_U
set CompName accel_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
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


