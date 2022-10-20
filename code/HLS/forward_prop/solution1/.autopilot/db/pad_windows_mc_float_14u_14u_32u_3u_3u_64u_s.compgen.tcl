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
    id 523 \
    name conv2d_64_window_stream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_window_stream \
    op interface \
    ports { conv2d_64_window_stream_dout { I 288 vector } conv2d_64_window_stream_num_data_valid { I 3 vector } conv2d_64_window_stream_fifo_cap { I 3 vector } conv2d_64_window_stream_empty_n { I 1 bit } conv2d_64_window_stream_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 524 \
    name conv2d_64_padded_window_stream_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_0 \
    op interface \
    ports { conv2d_64_padded_window_stream_0_din { O 288 vector } conv2d_64_padded_window_stream_0_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_0_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_0_full_n { I 1 bit } conv2d_64_padded_window_stream_0_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 525 \
    name conv2d_64_padded_window_stream_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_1 \
    op interface \
    ports { conv2d_64_padded_window_stream_1_din { O 288 vector } conv2d_64_padded_window_stream_1_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_1_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_1_full_n { I 1 bit } conv2d_64_padded_window_stream_1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 526 \
    name conv2d_64_padded_window_stream_2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_2 \
    op interface \
    ports { conv2d_64_padded_window_stream_2_din { O 288 vector } conv2d_64_padded_window_stream_2_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_2_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_2_full_n { I 1 bit } conv2d_64_padded_window_stream_2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 527 \
    name conv2d_64_padded_window_stream_3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_3 \
    op interface \
    ports { conv2d_64_padded_window_stream_3_din { O 288 vector } conv2d_64_padded_window_stream_3_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_3_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_3_full_n { I 1 bit } conv2d_64_padded_window_stream_3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 528 \
    name conv2d_64_padded_window_stream_4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_4 \
    op interface \
    ports { conv2d_64_padded_window_stream_4_din { O 288 vector } conv2d_64_padded_window_stream_4_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_4_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_4_full_n { I 1 bit } conv2d_64_padded_window_stream_4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 529 \
    name conv2d_64_padded_window_stream_5 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_5 \
    op interface \
    ports { conv2d_64_padded_window_stream_5_din { O 288 vector } conv2d_64_padded_window_stream_5_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_5_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_5_full_n { I 1 bit } conv2d_64_padded_window_stream_5_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 530 \
    name conv2d_64_padded_window_stream_6 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_6 \
    op interface \
    ports { conv2d_64_padded_window_stream_6_din { O 288 vector } conv2d_64_padded_window_stream_6_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_6_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_6_full_n { I 1 bit } conv2d_64_padded_window_stream_6_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 531 \
    name conv2d_64_padded_window_stream_7 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_7 \
    op interface \
    ports { conv2d_64_padded_window_stream_7_din { O 288 vector } conv2d_64_padded_window_stream_7_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_7_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_7_full_n { I 1 bit } conv2d_64_padded_window_stream_7_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 532 \
    name conv2d_64_padded_window_stream_8 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_8 \
    op interface \
    ports { conv2d_64_padded_window_stream_8_din { O 288 vector } conv2d_64_padded_window_stream_8_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_8_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_8_full_n { I 1 bit } conv2d_64_padded_window_stream_8_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 533 \
    name conv2d_64_padded_window_stream_9 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_9 \
    op interface \
    ports { conv2d_64_padded_window_stream_9_din { O 288 vector } conv2d_64_padded_window_stream_9_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_9_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_9_full_n { I 1 bit } conv2d_64_padded_window_stream_9_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 534 \
    name conv2d_64_padded_window_stream_10 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_10 \
    op interface \
    ports { conv2d_64_padded_window_stream_10_din { O 288 vector } conv2d_64_padded_window_stream_10_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_10_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_10_full_n { I 1 bit } conv2d_64_padded_window_stream_10_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 535 \
    name conv2d_64_padded_window_stream_11 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_11 \
    op interface \
    ports { conv2d_64_padded_window_stream_11_din { O 288 vector } conv2d_64_padded_window_stream_11_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_11_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_11_full_n { I 1 bit } conv2d_64_padded_window_stream_11_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 536 \
    name conv2d_64_padded_window_stream_12 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_12 \
    op interface \
    ports { conv2d_64_padded_window_stream_12_din { O 288 vector } conv2d_64_padded_window_stream_12_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_12_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_12_full_n { I 1 bit } conv2d_64_padded_window_stream_12_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 537 \
    name conv2d_64_padded_window_stream_13 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_13 \
    op interface \
    ports { conv2d_64_padded_window_stream_13_din { O 288 vector } conv2d_64_padded_window_stream_13_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_13_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_13_full_n { I 1 bit } conv2d_64_padded_window_stream_13_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 538 \
    name conv2d_64_padded_window_stream_14 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_14 \
    op interface \
    ports { conv2d_64_padded_window_stream_14_din { O 288 vector } conv2d_64_padded_window_stream_14_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_14_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_14_full_n { I 1 bit } conv2d_64_padded_window_stream_14_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 539 \
    name conv2d_64_padded_window_stream_15 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_15 \
    op interface \
    ports { conv2d_64_padded_window_stream_15_din { O 288 vector } conv2d_64_padded_window_stream_15_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_15_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_15_full_n { I 1 bit } conv2d_64_padded_window_stream_15_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 540 \
    name conv2d_64_padded_window_stream_16 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_16 \
    op interface \
    ports { conv2d_64_padded_window_stream_16_din { O 288 vector } conv2d_64_padded_window_stream_16_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_16_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_16_full_n { I 1 bit } conv2d_64_padded_window_stream_16_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 541 \
    name conv2d_64_padded_window_stream_17 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_17 \
    op interface \
    ports { conv2d_64_padded_window_stream_17_din { O 288 vector } conv2d_64_padded_window_stream_17_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_17_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_17_full_n { I 1 bit } conv2d_64_padded_window_stream_17_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 542 \
    name conv2d_64_padded_window_stream_18 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_18 \
    op interface \
    ports { conv2d_64_padded_window_stream_18_din { O 288 vector } conv2d_64_padded_window_stream_18_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_18_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_18_full_n { I 1 bit } conv2d_64_padded_window_stream_18_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 543 \
    name conv2d_64_padded_window_stream_19 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_19 \
    op interface \
    ports { conv2d_64_padded_window_stream_19_din { O 288 vector } conv2d_64_padded_window_stream_19_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_19_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_19_full_n { I 1 bit } conv2d_64_padded_window_stream_19_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 544 \
    name conv2d_64_padded_window_stream_20 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_20 \
    op interface \
    ports { conv2d_64_padded_window_stream_20_din { O 288 vector } conv2d_64_padded_window_stream_20_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_20_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_20_full_n { I 1 bit } conv2d_64_padded_window_stream_20_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 545 \
    name conv2d_64_padded_window_stream_21 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_21 \
    op interface \
    ports { conv2d_64_padded_window_stream_21_din { O 288 vector } conv2d_64_padded_window_stream_21_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_21_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_21_full_n { I 1 bit } conv2d_64_padded_window_stream_21_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 546 \
    name conv2d_64_padded_window_stream_22 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_22 \
    op interface \
    ports { conv2d_64_padded_window_stream_22_din { O 288 vector } conv2d_64_padded_window_stream_22_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_22_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_22_full_n { I 1 bit } conv2d_64_padded_window_stream_22_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 547 \
    name conv2d_64_padded_window_stream_23 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_23 \
    op interface \
    ports { conv2d_64_padded_window_stream_23_din { O 288 vector } conv2d_64_padded_window_stream_23_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_23_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_23_full_n { I 1 bit } conv2d_64_padded_window_stream_23_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 548 \
    name conv2d_64_padded_window_stream_24 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_24 \
    op interface \
    ports { conv2d_64_padded_window_stream_24_din { O 288 vector } conv2d_64_padded_window_stream_24_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_24_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_24_full_n { I 1 bit } conv2d_64_padded_window_stream_24_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 549 \
    name conv2d_64_padded_window_stream_25 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_25 \
    op interface \
    ports { conv2d_64_padded_window_stream_25_din { O 288 vector } conv2d_64_padded_window_stream_25_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_25_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_25_full_n { I 1 bit } conv2d_64_padded_window_stream_25_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 550 \
    name conv2d_64_padded_window_stream_26 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_26 \
    op interface \
    ports { conv2d_64_padded_window_stream_26_din { O 288 vector } conv2d_64_padded_window_stream_26_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_26_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_26_full_n { I 1 bit } conv2d_64_padded_window_stream_26_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 551 \
    name conv2d_64_padded_window_stream_27 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_27 \
    op interface \
    ports { conv2d_64_padded_window_stream_27_din { O 288 vector } conv2d_64_padded_window_stream_27_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_27_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_27_full_n { I 1 bit } conv2d_64_padded_window_stream_27_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 552 \
    name conv2d_64_padded_window_stream_28 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_28 \
    op interface \
    ports { conv2d_64_padded_window_stream_28_din { O 288 vector } conv2d_64_padded_window_stream_28_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_28_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_28_full_n { I 1 bit } conv2d_64_padded_window_stream_28_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 553 \
    name conv2d_64_padded_window_stream_29 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_29 \
    op interface \
    ports { conv2d_64_padded_window_stream_29_din { O 288 vector } conv2d_64_padded_window_stream_29_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_29_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_29_full_n { I 1 bit } conv2d_64_padded_window_stream_29_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 554 \
    name conv2d_64_padded_window_stream_30 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_30 \
    op interface \
    ports { conv2d_64_padded_window_stream_30_din { O 288 vector } conv2d_64_padded_window_stream_30_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_30_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_30_full_n { I 1 bit } conv2d_64_padded_window_stream_30_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 555 \
    name conv2d_64_padded_window_stream_31 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_31 \
    op interface \
    ports { conv2d_64_padded_window_stream_31_din { O 288 vector } conv2d_64_padded_window_stream_31_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_31_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_31_full_n { I 1 bit } conv2d_64_padded_window_stream_31_write { O 1 bit } } \
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


