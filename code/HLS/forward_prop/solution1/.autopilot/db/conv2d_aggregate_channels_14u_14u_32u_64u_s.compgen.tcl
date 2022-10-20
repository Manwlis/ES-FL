# This script segment is generated automatically by AutoPilot

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
    id 19725 \
    name biases \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename biases \
    op interface \
    ports { biases_address0 { O 6 vector } biases_ce0 { O 1 bit } biases_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'biases'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19726 \
    name in_channel_map_stream_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_0 \
    op interface \
    ports { in_channel_map_stream_0_dout { I 32 vector } in_channel_map_stream_0_num_data_valid { I 3 vector } in_channel_map_stream_0_fifo_cap { I 3 vector } in_channel_map_stream_0_empty_n { I 1 bit } in_channel_map_stream_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19727 \
    name in_channel_map_stream_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_1 \
    op interface \
    ports { in_channel_map_stream_1_dout { I 32 vector } in_channel_map_stream_1_num_data_valid { I 3 vector } in_channel_map_stream_1_fifo_cap { I 3 vector } in_channel_map_stream_1_empty_n { I 1 bit } in_channel_map_stream_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19728 \
    name in_channel_map_stream_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_2 \
    op interface \
    ports { in_channel_map_stream_2_dout { I 32 vector } in_channel_map_stream_2_num_data_valid { I 3 vector } in_channel_map_stream_2_fifo_cap { I 3 vector } in_channel_map_stream_2_empty_n { I 1 bit } in_channel_map_stream_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19729 \
    name in_channel_map_stream_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_3 \
    op interface \
    ports { in_channel_map_stream_3_dout { I 32 vector } in_channel_map_stream_3_num_data_valid { I 3 vector } in_channel_map_stream_3_fifo_cap { I 3 vector } in_channel_map_stream_3_empty_n { I 1 bit } in_channel_map_stream_3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19730 \
    name in_channel_map_stream_4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_4 \
    op interface \
    ports { in_channel_map_stream_4_dout { I 32 vector } in_channel_map_stream_4_num_data_valid { I 3 vector } in_channel_map_stream_4_fifo_cap { I 3 vector } in_channel_map_stream_4_empty_n { I 1 bit } in_channel_map_stream_4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19731 \
    name in_channel_map_stream_5 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_5 \
    op interface \
    ports { in_channel_map_stream_5_dout { I 32 vector } in_channel_map_stream_5_num_data_valid { I 3 vector } in_channel_map_stream_5_fifo_cap { I 3 vector } in_channel_map_stream_5_empty_n { I 1 bit } in_channel_map_stream_5_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19732 \
    name in_channel_map_stream_6 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_6 \
    op interface \
    ports { in_channel_map_stream_6_dout { I 32 vector } in_channel_map_stream_6_num_data_valid { I 3 vector } in_channel_map_stream_6_fifo_cap { I 3 vector } in_channel_map_stream_6_empty_n { I 1 bit } in_channel_map_stream_6_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19733 \
    name in_channel_map_stream_7 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_7 \
    op interface \
    ports { in_channel_map_stream_7_dout { I 32 vector } in_channel_map_stream_7_num_data_valid { I 3 vector } in_channel_map_stream_7_fifo_cap { I 3 vector } in_channel_map_stream_7_empty_n { I 1 bit } in_channel_map_stream_7_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19734 \
    name in_channel_map_stream_8 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_8 \
    op interface \
    ports { in_channel_map_stream_8_dout { I 32 vector } in_channel_map_stream_8_num_data_valid { I 3 vector } in_channel_map_stream_8_fifo_cap { I 3 vector } in_channel_map_stream_8_empty_n { I 1 bit } in_channel_map_stream_8_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19735 \
    name in_channel_map_stream_9 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_9 \
    op interface \
    ports { in_channel_map_stream_9_dout { I 32 vector } in_channel_map_stream_9_num_data_valid { I 3 vector } in_channel_map_stream_9_fifo_cap { I 3 vector } in_channel_map_stream_9_empty_n { I 1 bit } in_channel_map_stream_9_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19736 \
    name in_channel_map_stream_10 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_10 \
    op interface \
    ports { in_channel_map_stream_10_dout { I 32 vector } in_channel_map_stream_10_num_data_valid { I 3 vector } in_channel_map_stream_10_fifo_cap { I 3 vector } in_channel_map_stream_10_empty_n { I 1 bit } in_channel_map_stream_10_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19737 \
    name in_channel_map_stream_11 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_11 \
    op interface \
    ports { in_channel_map_stream_11_dout { I 32 vector } in_channel_map_stream_11_num_data_valid { I 3 vector } in_channel_map_stream_11_fifo_cap { I 3 vector } in_channel_map_stream_11_empty_n { I 1 bit } in_channel_map_stream_11_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19738 \
    name in_channel_map_stream_1213 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_1213 \
    op interface \
    ports { in_channel_map_stream_1213_dout { I 32 vector } in_channel_map_stream_1213_num_data_valid { I 3 vector } in_channel_map_stream_1213_fifo_cap { I 3 vector } in_channel_map_stream_1213_empty_n { I 1 bit } in_channel_map_stream_1213_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19739 \
    name in_channel_map_stream_13 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_13 \
    op interface \
    ports { in_channel_map_stream_13_dout { I 32 vector } in_channel_map_stream_13_num_data_valid { I 3 vector } in_channel_map_stream_13_fifo_cap { I 3 vector } in_channel_map_stream_13_empty_n { I 1 bit } in_channel_map_stream_13_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19740 \
    name in_channel_map_stream_14 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_14 \
    op interface \
    ports { in_channel_map_stream_14_dout { I 32 vector } in_channel_map_stream_14_num_data_valid { I 3 vector } in_channel_map_stream_14_fifo_cap { I 3 vector } in_channel_map_stream_14_empty_n { I 1 bit } in_channel_map_stream_14_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19741 \
    name in_channel_map_stream_15 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_15 \
    op interface \
    ports { in_channel_map_stream_15_dout { I 32 vector } in_channel_map_stream_15_num_data_valid { I 3 vector } in_channel_map_stream_15_fifo_cap { I 3 vector } in_channel_map_stream_15_empty_n { I 1 bit } in_channel_map_stream_15_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19742 \
    name in_channel_map_stream_16 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_16 \
    op interface \
    ports { in_channel_map_stream_16_dout { I 32 vector } in_channel_map_stream_16_num_data_valid { I 3 vector } in_channel_map_stream_16_fifo_cap { I 3 vector } in_channel_map_stream_16_empty_n { I 1 bit } in_channel_map_stream_16_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19743 \
    name in_channel_map_stream_17 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_17 \
    op interface \
    ports { in_channel_map_stream_17_dout { I 32 vector } in_channel_map_stream_17_num_data_valid { I 3 vector } in_channel_map_stream_17_fifo_cap { I 3 vector } in_channel_map_stream_17_empty_n { I 1 bit } in_channel_map_stream_17_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19744 \
    name in_channel_map_stream_18 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_18 \
    op interface \
    ports { in_channel_map_stream_18_dout { I 32 vector } in_channel_map_stream_18_num_data_valid { I 3 vector } in_channel_map_stream_18_fifo_cap { I 3 vector } in_channel_map_stream_18_empty_n { I 1 bit } in_channel_map_stream_18_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19745 \
    name in_channel_map_stream_19 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_19 \
    op interface \
    ports { in_channel_map_stream_19_dout { I 32 vector } in_channel_map_stream_19_num_data_valid { I 3 vector } in_channel_map_stream_19_fifo_cap { I 3 vector } in_channel_map_stream_19_empty_n { I 1 bit } in_channel_map_stream_19_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19746 \
    name in_channel_map_stream_20 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_20 \
    op interface \
    ports { in_channel_map_stream_20_dout { I 32 vector } in_channel_map_stream_20_num_data_valid { I 3 vector } in_channel_map_stream_20_fifo_cap { I 3 vector } in_channel_map_stream_20_empty_n { I 1 bit } in_channel_map_stream_20_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19747 \
    name in_channel_map_stream_21 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_21 \
    op interface \
    ports { in_channel_map_stream_21_dout { I 32 vector } in_channel_map_stream_21_num_data_valid { I 3 vector } in_channel_map_stream_21_fifo_cap { I 3 vector } in_channel_map_stream_21_empty_n { I 1 bit } in_channel_map_stream_21_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19748 \
    name in_channel_map_stream_22 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_22 \
    op interface \
    ports { in_channel_map_stream_22_dout { I 32 vector } in_channel_map_stream_22_num_data_valid { I 3 vector } in_channel_map_stream_22_fifo_cap { I 3 vector } in_channel_map_stream_22_empty_n { I 1 bit } in_channel_map_stream_22_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19749 \
    name in_channel_map_stream_2325 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_2325 \
    op interface \
    ports { in_channel_map_stream_2325_dout { I 32 vector } in_channel_map_stream_2325_num_data_valid { I 3 vector } in_channel_map_stream_2325_fifo_cap { I 3 vector } in_channel_map_stream_2325_empty_n { I 1 bit } in_channel_map_stream_2325_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19750 \
    name in_channel_map_stream_24 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_24 \
    op interface \
    ports { in_channel_map_stream_24_dout { I 32 vector } in_channel_map_stream_24_num_data_valid { I 3 vector } in_channel_map_stream_24_fifo_cap { I 3 vector } in_channel_map_stream_24_empty_n { I 1 bit } in_channel_map_stream_24_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19751 \
    name in_channel_map_stream_25 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_25 \
    op interface \
    ports { in_channel_map_stream_25_dout { I 32 vector } in_channel_map_stream_25_num_data_valid { I 3 vector } in_channel_map_stream_25_fifo_cap { I 3 vector } in_channel_map_stream_25_empty_n { I 1 bit } in_channel_map_stream_25_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19752 \
    name in_channel_map_stream_26 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_26 \
    op interface \
    ports { in_channel_map_stream_26_dout { I 32 vector } in_channel_map_stream_26_num_data_valid { I 3 vector } in_channel_map_stream_26_fifo_cap { I 3 vector } in_channel_map_stream_26_empty_n { I 1 bit } in_channel_map_stream_26_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19753 \
    name in_channel_map_stream_27 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_27 \
    op interface \
    ports { in_channel_map_stream_27_dout { I 32 vector } in_channel_map_stream_27_num_data_valid { I 3 vector } in_channel_map_stream_27_fifo_cap { I 3 vector } in_channel_map_stream_27_empty_n { I 1 bit } in_channel_map_stream_27_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19754 \
    name in_channel_map_stream_28 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_28 \
    op interface \
    ports { in_channel_map_stream_28_dout { I 32 vector } in_channel_map_stream_28_num_data_valid { I 3 vector } in_channel_map_stream_28_fifo_cap { I 3 vector } in_channel_map_stream_28_empty_n { I 1 bit } in_channel_map_stream_28_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19755 \
    name in_channel_map_stream_29 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_29 \
    op interface \
    ports { in_channel_map_stream_29_dout { I 32 vector } in_channel_map_stream_29_num_data_valid { I 3 vector } in_channel_map_stream_29_fifo_cap { I 3 vector } in_channel_map_stream_29_empty_n { I 1 bit } in_channel_map_stream_29_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19756 \
    name in_channel_map_stream_30 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_30 \
    op interface \
    ports { in_channel_map_stream_30_dout { I 32 vector } in_channel_map_stream_30_num_data_valid { I 3 vector } in_channel_map_stream_30_fifo_cap { I 3 vector } in_channel_map_stream_30_empty_n { I 1 bit } in_channel_map_stream_30_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19757 \
    name in_channel_map_stream_31 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_31 \
    op interface \
    ports { in_channel_map_stream_31_dout { I 32 vector } in_channel_map_stream_31_num_data_valid { I 3 vector } in_channel_map_stream_31_fifo_cap { I 3 vector } in_channel_map_stream_31_empty_n { I 1 bit } in_channel_map_stream_31_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19758 \
    name conv2d_64_feature_map_stream125 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_feature_map_stream125 \
    op interface \
    ports { conv2d_64_feature_map_stream125_din { O 32 vector } conv2d_64_feature_map_stream125_num_data_valid { I 3 vector } conv2d_64_feature_map_stream125_fifo_cap { I 3 vector } conv2d_64_feature_map_stream125_full_n { I 1 bit } conv2d_64_feature_map_stream125_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19759 \
    name conv2d_64_activations_stream126 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_activations_stream126 \
    op interface \
    ports { conv2d_64_activations_stream126_din { O 1 vector } conv2d_64_activations_stream126_num_data_valid { I 15 vector } conv2d_64_activations_stream126_fifo_cap { I 15 vector } conv2d_64_activations_stream126_full_n { I 1 bit } conv2d_64_activations_stream126_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19760 \
    name conv2d_64_f_map_out132 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_f_map_out132 \
    op interface \
    ports { conv2d_64_f_map_out132_din { O 32 vector } conv2d_64_f_map_out132_num_data_valid { I 15 vector } conv2d_64_f_map_out132_fifo_cap { I 15 vector } conv2d_64_f_map_out132_full_n { I 1 bit } conv2d_64_f_map_out132_write { O 1 bit } } \
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
set InstName accel_flow_control_loop_delay_pipe_U
set CompName accel_flow_control_loop_delay_pipe
set name flow_control_loop_delay_pipe
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


