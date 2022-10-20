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
    id 5955 \
    name conv2d_64_padded_window_stream_9 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_9 \
    op interface \
    ports { conv2d_64_padded_window_stream_9_dout { I 288 vector } conv2d_64_padded_window_stream_9_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_9_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_9_empty_n { I 1 bit } conv2d_64_padded_window_stream_9_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5956 \
    name weights_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load \
    op interface \
    ports { weights_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5957 \
    name weights_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1 \
    op interface \
    ports { weights_load_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5958 \
    name weights_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_2 \
    op interface \
    ports { weights_load_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5959 \
    name weights_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_3 \
    op interface \
    ports { weights_load_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5960 \
    name weights_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4 \
    op interface \
    ports { weights_load_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5961 \
    name weights_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_5 \
    op interface \
    ports { weights_load_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5962 \
    name weights_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_6 \
    op interface \
    ports { weights_load_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5963 \
    name weights_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_7 \
    op interface \
    ports { weights_load_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5964 \
    name weights_load_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8 \
    op interface \
    ports { weights_load_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5965 \
    name in_channel_map_stream_9 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_9 \
    op interface \
    ports { in_channel_map_stream_9_din { O 32 vector } in_channel_map_stream_9_num_data_valid { I 3 vector } in_channel_map_stream_9_fifo_cap { I 3 vector } in_channel_map_stream_9_full_n { I 1 bit } in_channel_map_stream_9_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5966 \
    name weights_load_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9 \
    op interface \
    ports { weights_load_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5967 \
    name weights_load_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10 \
    op interface \
    ports { weights_load_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5968 \
    name weights_load_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_11 \
    op interface \
    ports { weights_load_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5969 \
    name weights_load_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_12 \
    op interface \
    ports { weights_load_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5970 \
    name weights_load_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_13 \
    op interface \
    ports { weights_load_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5971 \
    name weights_load_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14 \
    op interface \
    ports { weights_load_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5972 \
    name weights_load_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15 \
    op interface \
    ports { weights_load_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5973 \
    name weights_load_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_16 \
    op interface \
    ports { weights_load_16 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5974 \
    name weights_load_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_17 \
    op interface \
    ports { weights_load_17 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5975 \
    name weights_load_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_18 \
    op interface \
    ports { weights_load_18 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5976 \
    name weights_load_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_19 \
    op interface \
    ports { weights_load_19 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5977 \
    name weights_load_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_20 \
    op interface \
    ports { weights_load_20 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5978 \
    name weights_load_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_21 \
    op interface \
    ports { weights_load_21 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5979 \
    name weights_load_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_22 \
    op interface \
    ports { weights_load_22 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5980 \
    name weights_load_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_23 \
    op interface \
    ports { weights_load_23 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5981 \
    name weights_load_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_24 \
    op interface \
    ports { weights_load_24 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5982 \
    name weights_load_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_25 \
    op interface \
    ports { weights_load_25 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5983 \
    name weights_load_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_26 \
    op interface \
    ports { weights_load_26 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5984 \
    name weights_load_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_27 \
    op interface \
    ports { weights_load_27 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5985 \
    name weights_load_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_28 \
    op interface \
    ports { weights_load_28 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5986 \
    name weights_load_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_29 \
    op interface \
    ports { weights_load_29 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5987 \
    name weights_load_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_30 \
    op interface \
    ports { weights_load_30 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5988 \
    name weights_load_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_31 \
    op interface \
    ports { weights_load_31 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5989 \
    name weights_load_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_32 \
    op interface \
    ports { weights_load_32 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5990 \
    name weights_load_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_33 \
    op interface \
    ports { weights_load_33 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5991 \
    name weights_load_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_34 \
    op interface \
    ports { weights_load_34 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5992 \
    name weights_load_35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_35 \
    op interface \
    ports { weights_load_35 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5993 \
    name weights_load_36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_36 \
    op interface \
    ports { weights_load_36 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5994 \
    name weights_load_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_37 \
    op interface \
    ports { weights_load_37 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5995 \
    name weights_load_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_38 \
    op interface \
    ports { weights_load_38 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5996 \
    name weights_load_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_39 \
    op interface \
    ports { weights_load_39 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5997 \
    name weights_load_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_40 \
    op interface \
    ports { weights_load_40 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5998 \
    name weights_load_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_41 \
    op interface \
    ports { weights_load_41 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5999 \
    name weights_load_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_42 \
    op interface \
    ports { weights_load_42 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6000 \
    name weights_load_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_43 \
    op interface \
    ports { weights_load_43 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6001 \
    name weights_load_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_44 \
    op interface \
    ports { weights_load_44 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6002 \
    name weights_load_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_45 \
    op interface \
    ports { weights_load_45 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6003 \
    name weights_load_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_46 \
    op interface \
    ports { weights_load_46 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6004 \
    name weights_load_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_47 \
    op interface \
    ports { weights_load_47 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6005 \
    name weights_load_48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_48 \
    op interface \
    ports { weights_load_48 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6006 \
    name weights_load_49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_49 \
    op interface \
    ports { weights_load_49 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6007 \
    name weights_load_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_50 \
    op interface \
    ports { weights_load_50 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6008 \
    name weights_load_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_51 \
    op interface \
    ports { weights_load_51 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6009 \
    name weights_load_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_52 \
    op interface \
    ports { weights_load_52 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6010 \
    name weights_load_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_53 \
    op interface \
    ports { weights_load_53 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6011 \
    name weights_load_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_54 \
    op interface \
    ports { weights_load_54 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6012 \
    name weights_load_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_55 \
    op interface \
    ports { weights_load_55 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6013 \
    name weights_load_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_56 \
    op interface \
    ports { weights_load_56 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6014 \
    name weights_load_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_57 \
    op interface \
    ports { weights_load_57 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6015 \
    name weights_load_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_58 \
    op interface \
    ports { weights_load_58 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6016 \
    name weights_load_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_59 \
    op interface \
    ports { weights_load_59 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6017 \
    name weights_load_60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_60 \
    op interface \
    ports { weights_load_60 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6018 \
    name weights_load_61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_61 \
    op interface \
    ports { weights_load_61 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6019 \
    name weights_load_62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_62 \
    op interface \
    ports { weights_load_62 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6020 \
    name weights_load_63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_63 \
    op interface \
    ports { weights_load_63 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6021 \
    name weights_load_64 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_64 \
    op interface \
    ports { weights_load_64 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6022 \
    name weights_load_65 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_65 \
    op interface \
    ports { weights_load_65 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6023 \
    name weights_load_66 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_66 \
    op interface \
    ports { weights_load_66 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6024 \
    name weights_load_67 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_67 \
    op interface \
    ports { weights_load_67 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6025 \
    name weights_load_68 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_68 \
    op interface \
    ports { weights_load_68 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6026 \
    name weights_load_69 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_69 \
    op interface \
    ports { weights_load_69 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6027 \
    name weights_load_70 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_70 \
    op interface \
    ports { weights_load_70 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6028 \
    name weights_load_71 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_71 \
    op interface \
    ports { weights_load_71 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6029 \
    name weights_load_72 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_72 \
    op interface \
    ports { weights_load_72 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6030 \
    name weights_load_73 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_73 \
    op interface \
    ports { weights_load_73 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6031 \
    name weights_load_74 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_74 \
    op interface \
    ports { weights_load_74 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6032 \
    name weights_load_75 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_75 \
    op interface \
    ports { weights_load_75 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6033 \
    name weights_load_76 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_76 \
    op interface \
    ports { weights_load_76 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6034 \
    name weights_load_77 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_77 \
    op interface \
    ports { weights_load_77 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6035 \
    name weights_load_78 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_78 \
    op interface \
    ports { weights_load_78 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6036 \
    name weights_load_79 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_79 \
    op interface \
    ports { weights_load_79 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6037 \
    name weights_load_80 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_80 \
    op interface \
    ports { weights_load_80 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6038 \
    name weights_load_81 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_81 \
    op interface \
    ports { weights_load_81 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6039 \
    name weights_load_82 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_82 \
    op interface \
    ports { weights_load_82 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6040 \
    name weights_load_83 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_83 \
    op interface \
    ports { weights_load_83 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6041 \
    name weights_load_84 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_84 \
    op interface \
    ports { weights_load_84 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6042 \
    name weights_load_85 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_85 \
    op interface \
    ports { weights_load_85 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6043 \
    name weights_load_86 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_86 \
    op interface \
    ports { weights_load_86 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6044 \
    name weights_load_87 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_87 \
    op interface \
    ports { weights_load_87 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6045 \
    name weights_load_88 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_88 \
    op interface \
    ports { weights_load_88 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6046 \
    name weights_load_89 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_89 \
    op interface \
    ports { weights_load_89 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6047 \
    name weights_load_90 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_90 \
    op interface \
    ports { weights_load_90 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6048 \
    name weights_load_91 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_91 \
    op interface \
    ports { weights_load_91 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6049 \
    name weights_load_92 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_92 \
    op interface \
    ports { weights_load_92 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6050 \
    name weights_load_93 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_93 \
    op interface \
    ports { weights_load_93 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6051 \
    name weights_load_94 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_94 \
    op interface \
    ports { weights_load_94 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6052 \
    name weights_load_95 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_95 \
    op interface \
    ports { weights_load_95 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6053 \
    name weights_load_96 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_96 \
    op interface \
    ports { weights_load_96 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6054 \
    name weights_load_97 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_97 \
    op interface \
    ports { weights_load_97 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6055 \
    name weights_load_98 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_98 \
    op interface \
    ports { weights_load_98 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6056 \
    name weights_load_99 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_99 \
    op interface \
    ports { weights_load_99 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6057 \
    name weights_load_100 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_100 \
    op interface \
    ports { weights_load_100 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6058 \
    name weights_load_101 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_101 \
    op interface \
    ports { weights_load_101 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6059 \
    name weights_load_102 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_102 \
    op interface \
    ports { weights_load_102 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6060 \
    name weights_load_103 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_103 \
    op interface \
    ports { weights_load_103 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6061 \
    name weights_load_104 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_104 \
    op interface \
    ports { weights_load_104 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6062 \
    name weights_load_105 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_105 \
    op interface \
    ports { weights_load_105 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6063 \
    name weights_load_106 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_106 \
    op interface \
    ports { weights_load_106 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6064 \
    name weights_load_107 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_107 \
    op interface \
    ports { weights_load_107 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6065 \
    name weights_load_108 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_108 \
    op interface \
    ports { weights_load_108 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6066 \
    name weights_load_109 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_109 \
    op interface \
    ports { weights_load_109 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6067 \
    name weights_load_110 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_110 \
    op interface \
    ports { weights_load_110 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6068 \
    name weights_load_111 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_111 \
    op interface \
    ports { weights_load_111 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6069 \
    name weights_load_112 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_112 \
    op interface \
    ports { weights_load_112 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6070 \
    name weights_load_113 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_113 \
    op interface \
    ports { weights_load_113 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6071 \
    name weights_load_114 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_114 \
    op interface \
    ports { weights_load_114 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6072 \
    name weights_load_115 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_115 \
    op interface \
    ports { weights_load_115 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6073 \
    name weights_load_116 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_116 \
    op interface \
    ports { weights_load_116 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6074 \
    name weights_load_117 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_117 \
    op interface \
    ports { weights_load_117 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6075 \
    name weights_load_118 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_118 \
    op interface \
    ports { weights_load_118 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6076 \
    name weights_load_119 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_119 \
    op interface \
    ports { weights_load_119 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6077 \
    name weights_load_120 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_120 \
    op interface \
    ports { weights_load_120 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6078 \
    name weights_load_121 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_121 \
    op interface \
    ports { weights_load_121 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6079 \
    name weights_load_122 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_122 \
    op interface \
    ports { weights_load_122 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6080 \
    name weights_load_123 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_123 \
    op interface \
    ports { weights_load_123 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6081 \
    name weights_load_124 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_124 \
    op interface \
    ports { weights_load_124 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6082 \
    name weights_load_125 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_125 \
    op interface \
    ports { weights_load_125 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6083 \
    name weights_load_126 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_126 \
    op interface \
    ports { weights_load_126 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6084 \
    name weights_load_127 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_127 \
    op interface \
    ports { weights_load_127 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6085 \
    name weights_load_128 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_128 \
    op interface \
    ports { weights_load_128 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6086 \
    name weights_load_129 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_129 \
    op interface \
    ports { weights_load_129 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6087 \
    name weights_load_130 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_130 \
    op interface \
    ports { weights_load_130 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6088 \
    name weights_load_131 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_131 \
    op interface \
    ports { weights_load_131 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6089 \
    name weights_load_132 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_132 \
    op interface \
    ports { weights_load_132 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6090 \
    name weights_load_133 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_133 \
    op interface \
    ports { weights_load_133 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6091 \
    name weights_load_134 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_134 \
    op interface \
    ports { weights_load_134 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6092 \
    name weights_load_135 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_135 \
    op interface \
    ports { weights_load_135 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6093 \
    name weights_load_136 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_136 \
    op interface \
    ports { weights_load_136 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6094 \
    name weights_load_137 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_137 \
    op interface \
    ports { weights_load_137 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6095 \
    name weights_load_138 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_138 \
    op interface \
    ports { weights_load_138 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6096 \
    name weights_load_139 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_139 \
    op interface \
    ports { weights_load_139 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6097 \
    name weights_load_140 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_140 \
    op interface \
    ports { weights_load_140 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6098 \
    name weights_load_141 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_141 \
    op interface \
    ports { weights_load_141 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6099 \
    name weights_load_142 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_142 \
    op interface \
    ports { weights_load_142 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6100 \
    name weights_load_143 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_143 \
    op interface \
    ports { weights_load_143 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6101 \
    name weights_load_144 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_144 \
    op interface \
    ports { weights_load_144 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6102 \
    name weights_load_145 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_145 \
    op interface \
    ports { weights_load_145 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6103 \
    name weights_load_146 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_146 \
    op interface \
    ports { weights_load_146 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6104 \
    name weights_load_147 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_147 \
    op interface \
    ports { weights_load_147 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6105 \
    name weights_load_148 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_148 \
    op interface \
    ports { weights_load_148 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6106 \
    name weights_load_149 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_149 \
    op interface \
    ports { weights_load_149 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6107 \
    name weights_load_150 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_150 \
    op interface \
    ports { weights_load_150 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6108 \
    name weights_load_151 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_151 \
    op interface \
    ports { weights_load_151 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6109 \
    name weights_load_152 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_152 \
    op interface \
    ports { weights_load_152 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6110 \
    name weights_load_153 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_153 \
    op interface \
    ports { weights_load_153 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6111 \
    name weights_load_154 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_154 \
    op interface \
    ports { weights_load_154 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6112 \
    name weights_load_155 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_155 \
    op interface \
    ports { weights_load_155 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6113 \
    name weights_load_156 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_156 \
    op interface \
    ports { weights_load_156 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6114 \
    name weights_load_157 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_157 \
    op interface \
    ports { weights_load_157 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6115 \
    name weights_load_158 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_158 \
    op interface \
    ports { weights_load_158 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6116 \
    name weights_load_159 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_159 \
    op interface \
    ports { weights_load_159 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6117 \
    name weights_load_160 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_160 \
    op interface \
    ports { weights_load_160 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6118 \
    name weights_load_161 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_161 \
    op interface \
    ports { weights_load_161 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6119 \
    name weights_load_162 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_162 \
    op interface \
    ports { weights_load_162 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6120 \
    name weights_load_163 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_163 \
    op interface \
    ports { weights_load_163 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6121 \
    name weights_load_164 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_164 \
    op interface \
    ports { weights_load_164 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6122 \
    name weights_load_165 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_165 \
    op interface \
    ports { weights_load_165 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6123 \
    name weights_load_166 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_166 \
    op interface \
    ports { weights_load_166 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6124 \
    name weights_load_167 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_167 \
    op interface \
    ports { weights_load_167 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6125 \
    name weights_load_168 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_168 \
    op interface \
    ports { weights_load_168 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6126 \
    name weights_load_169 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_169 \
    op interface \
    ports { weights_load_169 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6127 \
    name weights_load_170 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_170 \
    op interface \
    ports { weights_load_170 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6128 \
    name weights_load_171 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_171 \
    op interface \
    ports { weights_load_171 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6129 \
    name weights_load_172 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_172 \
    op interface \
    ports { weights_load_172 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6130 \
    name weights_load_173 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_173 \
    op interface \
    ports { weights_load_173 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6131 \
    name weights_load_174 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_174 \
    op interface \
    ports { weights_load_174 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6132 \
    name weights_load_175 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_175 \
    op interface \
    ports { weights_load_175 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6133 \
    name weights_load_176 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_176 \
    op interface \
    ports { weights_load_176 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6134 \
    name weights_load_177 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_177 \
    op interface \
    ports { weights_load_177 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6135 \
    name weights_load_178 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_178 \
    op interface \
    ports { weights_load_178 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6136 \
    name weights_load_179 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_179 \
    op interface \
    ports { weights_load_179 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6137 \
    name weights_load_180 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_180 \
    op interface \
    ports { weights_load_180 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6138 \
    name weights_load_181 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_181 \
    op interface \
    ports { weights_load_181 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6139 \
    name weights_load_182 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_182 \
    op interface \
    ports { weights_load_182 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6140 \
    name weights_load_183 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_183 \
    op interface \
    ports { weights_load_183 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6141 \
    name weights_load_184 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_184 \
    op interface \
    ports { weights_load_184 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6142 \
    name weights_load_185 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_185 \
    op interface \
    ports { weights_load_185 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6143 \
    name weights_load_186 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_186 \
    op interface \
    ports { weights_load_186 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6144 \
    name weights_load_187 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_187 \
    op interface \
    ports { weights_load_187 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6145 \
    name weights_load_188 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_188 \
    op interface \
    ports { weights_load_188 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6146 \
    name weights_load_189 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_189 \
    op interface \
    ports { weights_load_189 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6147 \
    name weights_load_190 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_190 \
    op interface \
    ports { weights_load_190 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6148 \
    name weights_load_191 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_191 \
    op interface \
    ports { weights_load_191 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6149 \
    name weights_load_192 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_192 \
    op interface \
    ports { weights_load_192 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6150 \
    name weights_load_193 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_193 \
    op interface \
    ports { weights_load_193 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6151 \
    name weights_load_194 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_194 \
    op interface \
    ports { weights_load_194 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6152 \
    name weights_load_195 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_195 \
    op interface \
    ports { weights_load_195 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6153 \
    name weights_load_196 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_196 \
    op interface \
    ports { weights_load_196 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6154 \
    name weights_load_197 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_197 \
    op interface \
    ports { weights_load_197 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6155 \
    name weights_load_198 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_198 \
    op interface \
    ports { weights_load_198 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6156 \
    name weights_load_199 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_199 \
    op interface \
    ports { weights_load_199 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6157 \
    name weights_load_200 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_200 \
    op interface \
    ports { weights_load_200 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6158 \
    name weights_load_201 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_201 \
    op interface \
    ports { weights_load_201 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6159 \
    name weights_load_202 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_202 \
    op interface \
    ports { weights_load_202 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6160 \
    name weights_load_203 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_203 \
    op interface \
    ports { weights_load_203 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6161 \
    name weights_load_204 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_204 \
    op interface \
    ports { weights_load_204 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6162 \
    name weights_load_205 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_205 \
    op interface \
    ports { weights_load_205 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6163 \
    name weights_load_206 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_206 \
    op interface \
    ports { weights_load_206 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6164 \
    name weights_load_207 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_207 \
    op interface \
    ports { weights_load_207 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6165 \
    name weights_load_208 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_208 \
    op interface \
    ports { weights_load_208 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6166 \
    name weights_load_209 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_209 \
    op interface \
    ports { weights_load_209 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6167 \
    name weights_load_210 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_210 \
    op interface \
    ports { weights_load_210 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6168 \
    name weights_load_211 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_211 \
    op interface \
    ports { weights_load_211 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6169 \
    name weights_load_212 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_212 \
    op interface \
    ports { weights_load_212 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6170 \
    name weights_load_213 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_213 \
    op interface \
    ports { weights_load_213 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6171 \
    name weights_load_214 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_214 \
    op interface \
    ports { weights_load_214 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6172 \
    name weights_load_215 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_215 \
    op interface \
    ports { weights_load_215 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6173 \
    name weights_load_216 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_216 \
    op interface \
    ports { weights_load_216 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6174 \
    name weights_load_217 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_217 \
    op interface \
    ports { weights_load_217 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6175 \
    name weights_load_218 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_218 \
    op interface \
    ports { weights_load_218 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6176 \
    name weights_load_219 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_219 \
    op interface \
    ports { weights_load_219 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6177 \
    name weights_load_220 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_220 \
    op interface \
    ports { weights_load_220 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6178 \
    name weights_load_221 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_221 \
    op interface \
    ports { weights_load_221 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6179 \
    name weights_load_222 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_222 \
    op interface \
    ports { weights_load_222 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6180 \
    name weights_load_223 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_223 \
    op interface \
    ports { weights_load_223 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6181 \
    name weights_load_224 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_224 \
    op interface \
    ports { weights_load_224 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6182 \
    name weights_load_225 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_225 \
    op interface \
    ports { weights_load_225 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6183 \
    name weights_load_226 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_226 \
    op interface \
    ports { weights_load_226 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6184 \
    name weights_load_227 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_227 \
    op interface \
    ports { weights_load_227 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6185 \
    name weights_load_228 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_228 \
    op interface \
    ports { weights_load_228 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6186 \
    name weights_load_229 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_229 \
    op interface \
    ports { weights_load_229 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6187 \
    name weights_load_230 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_230 \
    op interface \
    ports { weights_load_230 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6188 \
    name weights_load_231 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_231 \
    op interface \
    ports { weights_load_231 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6189 \
    name weights_load_232 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_232 \
    op interface \
    ports { weights_load_232 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6190 \
    name weights_load_233 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_233 \
    op interface \
    ports { weights_load_233 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6191 \
    name weights_load_234 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_234 \
    op interface \
    ports { weights_load_234 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6192 \
    name weights_load_235 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_235 \
    op interface \
    ports { weights_load_235 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6193 \
    name weights_load_236 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_236 \
    op interface \
    ports { weights_load_236 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6194 \
    name weights_load_237 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_237 \
    op interface \
    ports { weights_load_237 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6195 \
    name weights_load_238 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_238 \
    op interface \
    ports { weights_load_238 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6196 \
    name weights_load_239 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_239 \
    op interface \
    ports { weights_load_239 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6197 \
    name weights_load_240 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_240 \
    op interface \
    ports { weights_load_240 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6198 \
    name weights_load_241 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_241 \
    op interface \
    ports { weights_load_241 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6199 \
    name weights_load_242 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_242 \
    op interface \
    ports { weights_load_242 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6200 \
    name weights_load_243 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_243 \
    op interface \
    ports { weights_load_243 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6201 \
    name weights_load_244 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_244 \
    op interface \
    ports { weights_load_244 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6202 \
    name weights_load_245 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_245 \
    op interface \
    ports { weights_load_245 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6203 \
    name weights_load_246 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_246 \
    op interface \
    ports { weights_load_246 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6204 \
    name weights_load_247 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_247 \
    op interface \
    ports { weights_load_247 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6205 \
    name weights_load_248 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_248 \
    op interface \
    ports { weights_load_248 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6206 \
    name weights_load_249 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_249 \
    op interface \
    ports { weights_load_249 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6207 \
    name weights_load_250 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_250 \
    op interface \
    ports { weights_load_250 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6208 \
    name weights_load_251 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_251 \
    op interface \
    ports { weights_load_251 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6209 \
    name weights_load_252 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_252 \
    op interface \
    ports { weights_load_252 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6210 \
    name weights_load_253 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_253 \
    op interface \
    ports { weights_load_253 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6211 \
    name weights_load_254 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_254 \
    op interface \
    ports { weights_load_254 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6212 \
    name weights_load_255 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_255 \
    op interface \
    ports { weights_load_255 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6213 \
    name weights_load_256 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_256 \
    op interface \
    ports { weights_load_256 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6214 \
    name weights_load_257 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_257 \
    op interface \
    ports { weights_load_257 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6215 \
    name weights_load_258 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_258 \
    op interface \
    ports { weights_load_258 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6216 \
    name weights_load_259 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_259 \
    op interface \
    ports { weights_load_259 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6217 \
    name weights_load_260 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_260 \
    op interface \
    ports { weights_load_260 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6218 \
    name weights_load_261 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_261 \
    op interface \
    ports { weights_load_261 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6219 \
    name weights_load_262 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_262 \
    op interface \
    ports { weights_load_262 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6220 \
    name weights_load_263 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_263 \
    op interface \
    ports { weights_load_263 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6221 \
    name weights_load_264 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_264 \
    op interface \
    ports { weights_load_264 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6222 \
    name weights_load_265 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_265 \
    op interface \
    ports { weights_load_265 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6223 \
    name weights_load_266 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_266 \
    op interface \
    ports { weights_load_266 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6224 \
    name weights_load_267 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_267 \
    op interface \
    ports { weights_load_267 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6225 \
    name weights_load_268 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_268 \
    op interface \
    ports { weights_load_268 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6226 \
    name weights_load_269 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_269 \
    op interface \
    ports { weights_load_269 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6227 \
    name weights_load_270 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_270 \
    op interface \
    ports { weights_load_270 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6228 \
    name weights_load_271 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_271 \
    op interface \
    ports { weights_load_271 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6229 \
    name weights_load_272 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_272 \
    op interface \
    ports { weights_load_272 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6230 \
    name weights_load_273 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_273 \
    op interface \
    ports { weights_load_273 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6231 \
    name weights_load_274 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_274 \
    op interface \
    ports { weights_load_274 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6232 \
    name weights_load_275 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_275 \
    op interface \
    ports { weights_load_275 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6233 \
    name weights_load_276 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_276 \
    op interface \
    ports { weights_load_276 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6234 \
    name weights_load_277 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_277 \
    op interface \
    ports { weights_load_277 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6235 \
    name weights_load_278 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_278 \
    op interface \
    ports { weights_load_278 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6236 \
    name weights_load_279 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_279 \
    op interface \
    ports { weights_load_279 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6237 \
    name weights_load_280 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_280 \
    op interface \
    ports { weights_load_280 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6238 \
    name weights_load_281 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_281 \
    op interface \
    ports { weights_load_281 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6239 \
    name weights_load_282 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_282 \
    op interface \
    ports { weights_load_282 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6240 \
    name weights_load_283 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_283 \
    op interface \
    ports { weights_load_283 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6241 \
    name weights_load_284 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_284 \
    op interface \
    ports { weights_load_284 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6242 \
    name weights_load_285 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_285 \
    op interface \
    ports { weights_load_285 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6243 \
    name weights_load_286 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_286 \
    op interface \
    ports { weights_load_286 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6244 \
    name weights_load_287 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_287 \
    op interface \
    ports { weights_load_287 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6245 \
    name weights_load_288 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_288 \
    op interface \
    ports { weights_load_288 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6246 \
    name weights_load_289 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_289 \
    op interface \
    ports { weights_load_289 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6247 \
    name weights_load_290 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_290 \
    op interface \
    ports { weights_load_290 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6248 \
    name weights_load_291 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_291 \
    op interface \
    ports { weights_load_291 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6249 \
    name weights_load_292 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_292 \
    op interface \
    ports { weights_load_292 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6250 \
    name weights_load_293 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_293 \
    op interface \
    ports { weights_load_293 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6251 \
    name weights_load_294 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_294 \
    op interface \
    ports { weights_load_294 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6252 \
    name weights_load_295 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_295 \
    op interface \
    ports { weights_load_295 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6253 \
    name weights_load_296 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_296 \
    op interface \
    ports { weights_load_296 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6254 \
    name weights_load_297 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_297 \
    op interface \
    ports { weights_load_297 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6255 \
    name weights_load_298 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_298 \
    op interface \
    ports { weights_load_298 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6256 \
    name weights_load_299 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_299 \
    op interface \
    ports { weights_load_299 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6257 \
    name weights_load_300 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_300 \
    op interface \
    ports { weights_load_300 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6258 \
    name weights_load_301 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_301 \
    op interface \
    ports { weights_load_301 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6259 \
    name weights_load_302 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_302 \
    op interface \
    ports { weights_load_302 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6260 \
    name weights_load_303 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_303 \
    op interface \
    ports { weights_load_303 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6261 \
    name weights_load_304 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_304 \
    op interface \
    ports { weights_load_304 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6262 \
    name weights_load_305 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_305 \
    op interface \
    ports { weights_load_305 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6263 \
    name weights_load_306 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_306 \
    op interface \
    ports { weights_load_306 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6264 \
    name weights_load_307 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_307 \
    op interface \
    ports { weights_load_307 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6265 \
    name weights_load_308 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_308 \
    op interface \
    ports { weights_load_308 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6266 \
    name weights_load_309 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_309 \
    op interface \
    ports { weights_load_309 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6267 \
    name weights_load_310 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_310 \
    op interface \
    ports { weights_load_310 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6268 \
    name weights_load_311 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_311 \
    op interface \
    ports { weights_load_311 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6269 \
    name weights_load_312 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_312 \
    op interface \
    ports { weights_load_312 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6270 \
    name weights_load_313 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_313 \
    op interface \
    ports { weights_load_313 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6271 \
    name weights_load_314 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_314 \
    op interface \
    ports { weights_load_314 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6272 \
    name weights_load_315 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_315 \
    op interface \
    ports { weights_load_315 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6273 \
    name weights_load_316 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_316 \
    op interface \
    ports { weights_load_316 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6274 \
    name weights_load_317 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_317 \
    op interface \
    ports { weights_load_317 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6275 \
    name weights_load_318 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_318 \
    op interface \
    ports { weights_load_318 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6276 \
    name weights_load_319 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_319 \
    op interface \
    ports { weights_load_319 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6277 \
    name weights_load_320 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_320 \
    op interface \
    ports { weights_load_320 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6278 \
    name weights_load_321 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_321 \
    op interface \
    ports { weights_load_321 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6279 \
    name weights_load_322 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_322 \
    op interface \
    ports { weights_load_322 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6280 \
    name weights_load_323 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_323 \
    op interface \
    ports { weights_load_323 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6281 \
    name weights_load_324 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_324 \
    op interface \
    ports { weights_load_324 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6282 \
    name weights_load_325 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_325 \
    op interface \
    ports { weights_load_325 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6283 \
    name weights_load_326 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_326 \
    op interface \
    ports { weights_load_326 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6284 \
    name weights_load_327 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_327 \
    op interface \
    ports { weights_load_327 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6285 \
    name weights_load_328 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_328 \
    op interface \
    ports { weights_load_328 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6286 \
    name weights_load_329 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_329 \
    op interface \
    ports { weights_load_329 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6287 \
    name weights_load_330 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_330 \
    op interface \
    ports { weights_load_330 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6288 \
    name weights_load_331 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_331 \
    op interface \
    ports { weights_load_331 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6289 \
    name weights_load_332 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_332 \
    op interface \
    ports { weights_load_332 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6290 \
    name weights_load_333 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_333 \
    op interface \
    ports { weights_load_333 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6291 \
    name weights_load_334 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_334 \
    op interface \
    ports { weights_load_334 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6292 \
    name weights_load_335 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_335 \
    op interface \
    ports { weights_load_335 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6293 \
    name weights_load_336 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_336 \
    op interface \
    ports { weights_load_336 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6294 \
    name weights_load_337 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_337 \
    op interface \
    ports { weights_load_337 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6295 \
    name weights_load_338 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_338 \
    op interface \
    ports { weights_load_338 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6296 \
    name weights_load_339 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_339 \
    op interface \
    ports { weights_load_339 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6297 \
    name weights_load_340 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_340 \
    op interface \
    ports { weights_load_340 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6298 \
    name weights_load_341 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_341 \
    op interface \
    ports { weights_load_341 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6299 \
    name weights_load_342 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_342 \
    op interface \
    ports { weights_load_342 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6300 \
    name weights_load_343 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_343 \
    op interface \
    ports { weights_load_343 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6301 \
    name weights_load_344 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_344 \
    op interface \
    ports { weights_load_344 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6302 \
    name weights_load_345 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_345 \
    op interface \
    ports { weights_load_345 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6303 \
    name weights_load_346 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_346 \
    op interface \
    ports { weights_load_346 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6304 \
    name weights_load_347 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_347 \
    op interface \
    ports { weights_load_347 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6305 \
    name weights_load_348 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_348 \
    op interface \
    ports { weights_load_348 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6306 \
    name weights_load_349 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_349 \
    op interface \
    ports { weights_load_349 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6307 \
    name weights_load_350 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_350 \
    op interface \
    ports { weights_load_350 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6308 \
    name weights_load_351 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_351 \
    op interface \
    ports { weights_load_351 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6309 \
    name weights_load_352 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_352 \
    op interface \
    ports { weights_load_352 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6310 \
    name weights_load_353 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_353 \
    op interface \
    ports { weights_load_353 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6311 \
    name weights_load_354 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_354 \
    op interface \
    ports { weights_load_354 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6312 \
    name weights_load_355 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_355 \
    op interface \
    ports { weights_load_355 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6313 \
    name weights_load_356 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_356 \
    op interface \
    ports { weights_load_356 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6314 \
    name weights_load_357 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_357 \
    op interface \
    ports { weights_load_357 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6315 \
    name weights_load_358 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_358 \
    op interface \
    ports { weights_load_358 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6316 \
    name weights_load_359 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_359 \
    op interface \
    ports { weights_load_359 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6317 \
    name weights_load_360 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_360 \
    op interface \
    ports { weights_load_360 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6318 \
    name weights_load_361 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_361 \
    op interface \
    ports { weights_load_361 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6319 \
    name weights_load_362 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_362 \
    op interface \
    ports { weights_load_362 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6320 \
    name weights_load_363 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_363 \
    op interface \
    ports { weights_load_363 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6321 \
    name weights_load_364 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_364 \
    op interface \
    ports { weights_load_364 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6322 \
    name weights_load_365 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_365 \
    op interface \
    ports { weights_load_365 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6323 \
    name weights_load_366 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_366 \
    op interface \
    ports { weights_load_366 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6324 \
    name weights_load_367 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_367 \
    op interface \
    ports { weights_load_367 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6325 \
    name weights_load_368 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_368 \
    op interface \
    ports { weights_load_368 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6326 \
    name weights_load_369 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_369 \
    op interface \
    ports { weights_load_369 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6327 \
    name weights_load_370 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_370 \
    op interface \
    ports { weights_load_370 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6328 \
    name weights_load_371 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_371 \
    op interface \
    ports { weights_load_371 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6329 \
    name weights_load_372 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_372 \
    op interface \
    ports { weights_load_372 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6330 \
    name weights_load_373 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_373 \
    op interface \
    ports { weights_load_373 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6331 \
    name weights_load_374 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_374 \
    op interface \
    ports { weights_load_374 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6332 \
    name weights_load_375 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_375 \
    op interface \
    ports { weights_load_375 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6333 \
    name weights_load_376 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_376 \
    op interface \
    ports { weights_load_376 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6334 \
    name weights_load_377 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_377 \
    op interface \
    ports { weights_load_377 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6335 \
    name weights_load_378 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_378 \
    op interface \
    ports { weights_load_378 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6336 \
    name weights_load_379 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_379 \
    op interface \
    ports { weights_load_379 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6337 \
    name weights_load_380 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_380 \
    op interface \
    ports { weights_load_380 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6338 \
    name weights_load_381 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_381 \
    op interface \
    ports { weights_load_381 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6339 \
    name weights_load_382 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_382 \
    op interface \
    ports { weights_load_382 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6340 \
    name weights_load_383 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_383 \
    op interface \
    ports { weights_load_383 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6341 \
    name weights_load_384 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_384 \
    op interface \
    ports { weights_load_384 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6342 \
    name weights_load_385 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_385 \
    op interface \
    ports { weights_load_385 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6343 \
    name weights_load_386 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_386 \
    op interface \
    ports { weights_load_386 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6344 \
    name weights_load_387 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_387 \
    op interface \
    ports { weights_load_387 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6345 \
    name weights_load_388 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_388 \
    op interface \
    ports { weights_load_388 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6346 \
    name weights_load_389 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_389 \
    op interface \
    ports { weights_load_389 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6347 \
    name weights_load_390 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_390 \
    op interface \
    ports { weights_load_390 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6348 \
    name weights_load_391 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_391 \
    op interface \
    ports { weights_load_391 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6349 \
    name weights_load_392 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_392 \
    op interface \
    ports { weights_load_392 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6350 \
    name weights_load_393 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_393 \
    op interface \
    ports { weights_load_393 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6351 \
    name weights_load_394 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_394 \
    op interface \
    ports { weights_load_394 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6352 \
    name weights_load_395 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_395 \
    op interface \
    ports { weights_load_395 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6353 \
    name weights_load_396 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_396 \
    op interface \
    ports { weights_load_396 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6354 \
    name weights_load_397 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_397 \
    op interface \
    ports { weights_load_397 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6355 \
    name weights_load_398 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_398 \
    op interface \
    ports { weights_load_398 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6356 \
    name weights_load_399 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_399 \
    op interface \
    ports { weights_load_399 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6357 \
    name weights_load_400 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_400 \
    op interface \
    ports { weights_load_400 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6358 \
    name weights_load_401 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_401 \
    op interface \
    ports { weights_load_401 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6359 \
    name weights_load_402 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_402 \
    op interface \
    ports { weights_load_402 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6360 \
    name weights_load_403 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_403 \
    op interface \
    ports { weights_load_403 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6361 \
    name weights_load_404 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_404 \
    op interface \
    ports { weights_load_404 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6362 \
    name weights_load_405 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_405 \
    op interface \
    ports { weights_load_405 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6363 \
    name weights_load_406 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_406 \
    op interface \
    ports { weights_load_406 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6364 \
    name weights_load_407 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_407 \
    op interface \
    ports { weights_load_407 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6365 \
    name weights_load_408 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_408 \
    op interface \
    ports { weights_load_408 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6366 \
    name weights_load_409 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_409 \
    op interface \
    ports { weights_load_409 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6367 \
    name weights_load_410 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_410 \
    op interface \
    ports { weights_load_410 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6368 \
    name weights_load_411 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_411 \
    op interface \
    ports { weights_load_411 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6369 \
    name weights_load_412 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_412 \
    op interface \
    ports { weights_load_412 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6370 \
    name weights_load_413 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_413 \
    op interface \
    ports { weights_load_413 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6371 \
    name weights_load_414 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_414 \
    op interface \
    ports { weights_load_414 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6372 \
    name weights_load_415 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_415 \
    op interface \
    ports { weights_load_415 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6373 \
    name weights_load_416 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_416 \
    op interface \
    ports { weights_load_416 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6374 \
    name weights_load_417 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_417 \
    op interface \
    ports { weights_load_417 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6375 \
    name weights_load_418 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_418 \
    op interface \
    ports { weights_load_418 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6376 \
    name weights_load_419 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_419 \
    op interface \
    ports { weights_load_419 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6377 \
    name weights_load_420 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_420 \
    op interface \
    ports { weights_load_420 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6378 \
    name weights_load_421 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_421 \
    op interface \
    ports { weights_load_421 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6379 \
    name weights_load_422 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_422 \
    op interface \
    ports { weights_load_422 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6380 \
    name weights_load_423 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_423 \
    op interface \
    ports { weights_load_423 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6381 \
    name weights_load_424 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_424 \
    op interface \
    ports { weights_load_424 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6382 \
    name weights_load_425 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_425 \
    op interface \
    ports { weights_load_425 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6383 \
    name weights_load_426 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_426 \
    op interface \
    ports { weights_load_426 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6384 \
    name weights_load_427 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_427 \
    op interface \
    ports { weights_load_427 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6385 \
    name weights_load_428 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_428 \
    op interface \
    ports { weights_load_428 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6386 \
    name weights_load_429 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_429 \
    op interface \
    ports { weights_load_429 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6387 \
    name weights_load_430 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_430 \
    op interface \
    ports { weights_load_430 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6388 \
    name weights_load_431 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_431 \
    op interface \
    ports { weights_load_431 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6389 \
    name weights_load_432 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_432 \
    op interface \
    ports { weights_load_432 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6390 \
    name weights_load_433 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_433 \
    op interface \
    ports { weights_load_433 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6391 \
    name weights_load_434 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_434 \
    op interface \
    ports { weights_load_434 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6392 \
    name weights_load_435 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_435 \
    op interface \
    ports { weights_load_435 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6393 \
    name weights_load_436 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_436 \
    op interface \
    ports { weights_load_436 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6394 \
    name weights_load_437 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_437 \
    op interface \
    ports { weights_load_437 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6395 \
    name weights_load_438 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_438 \
    op interface \
    ports { weights_load_438 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6396 \
    name weights_load_439 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_439 \
    op interface \
    ports { weights_load_439 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6397 \
    name weights_load_440 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_440 \
    op interface \
    ports { weights_load_440 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6398 \
    name weights_load_441 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_441 \
    op interface \
    ports { weights_load_441 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6399 \
    name weights_load_442 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_442 \
    op interface \
    ports { weights_load_442 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6400 \
    name weights_load_443 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_443 \
    op interface \
    ports { weights_load_443 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6401 \
    name weights_load_444 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_444 \
    op interface \
    ports { weights_load_444 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6402 \
    name weights_load_445 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_445 \
    op interface \
    ports { weights_load_445 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6403 \
    name weights_load_446 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_446 \
    op interface \
    ports { weights_load_446 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6404 \
    name weights_load_447 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_447 \
    op interface \
    ports { weights_load_447 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6405 \
    name weights_load_448 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_448 \
    op interface \
    ports { weights_load_448 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6406 \
    name weights_load_449 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_449 \
    op interface \
    ports { weights_load_449 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6407 \
    name weights_load_450 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_450 \
    op interface \
    ports { weights_load_450 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6408 \
    name weights_load_451 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_451 \
    op interface \
    ports { weights_load_451 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6409 \
    name weights_load_452 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_452 \
    op interface \
    ports { weights_load_452 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6410 \
    name weights_load_453 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_453 \
    op interface \
    ports { weights_load_453 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6411 \
    name weights_load_454 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_454 \
    op interface \
    ports { weights_load_454 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6412 \
    name weights_load_455 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_455 \
    op interface \
    ports { weights_load_455 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6413 \
    name weights_load_456 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_456 \
    op interface \
    ports { weights_load_456 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6414 \
    name weights_load_457 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_457 \
    op interface \
    ports { weights_load_457 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6415 \
    name weights_load_458 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_458 \
    op interface \
    ports { weights_load_458 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6416 \
    name weights_load_459 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_459 \
    op interface \
    ports { weights_load_459 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6417 \
    name weights_load_460 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_460 \
    op interface \
    ports { weights_load_460 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6418 \
    name weights_load_461 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_461 \
    op interface \
    ports { weights_load_461 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6419 \
    name weights_load_462 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_462 \
    op interface \
    ports { weights_load_462 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6420 \
    name weights_load_463 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_463 \
    op interface \
    ports { weights_load_463 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6421 \
    name weights_load_464 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_464 \
    op interface \
    ports { weights_load_464 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6422 \
    name weights_load_465 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_465 \
    op interface \
    ports { weights_load_465 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6423 \
    name weights_load_466 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_466 \
    op interface \
    ports { weights_load_466 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6424 \
    name weights_load_467 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_467 \
    op interface \
    ports { weights_load_467 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6425 \
    name weights_load_468 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_468 \
    op interface \
    ports { weights_load_468 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6426 \
    name weights_load_469 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_469 \
    op interface \
    ports { weights_load_469 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6427 \
    name weights_load_470 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_470 \
    op interface \
    ports { weights_load_470 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6428 \
    name weights_load_471 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_471 \
    op interface \
    ports { weights_load_471 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6429 \
    name weights_load_472 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_472 \
    op interface \
    ports { weights_load_472 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6430 \
    name weights_load_473 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_473 \
    op interface \
    ports { weights_load_473 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6431 \
    name weights_load_474 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_474 \
    op interface \
    ports { weights_load_474 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6432 \
    name weights_load_475 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_475 \
    op interface \
    ports { weights_load_475 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6433 \
    name weights_load_476 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_476 \
    op interface \
    ports { weights_load_476 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6434 \
    name weights_load_477 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_477 \
    op interface \
    ports { weights_load_477 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6435 \
    name weights_load_478 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_478 \
    op interface \
    ports { weights_load_478 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6436 \
    name weights_load_479 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_479 \
    op interface \
    ports { weights_load_479 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6437 \
    name weights_load_480 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_480 \
    op interface \
    ports { weights_load_480 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6438 \
    name weights_load_481 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_481 \
    op interface \
    ports { weights_load_481 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6439 \
    name weights_load_482 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_482 \
    op interface \
    ports { weights_load_482 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6440 \
    name weights_load_483 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_483 \
    op interface \
    ports { weights_load_483 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6441 \
    name weights_load_484 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_484 \
    op interface \
    ports { weights_load_484 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6442 \
    name weights_load_485 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_485 \
    op interface \
    ports { weights_load_485 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6443 \
    name weights_load_486 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_486 \
    op interface \
    ports { weights_load_486 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6444 \
    name weights_load_487 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_487 \
    op interface \
    ports { weights_load_487 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6445 \
    name weights_load_488 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_488 \
    op interface \
    ports { weights_load_488 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6446 \
    name weights_load_489 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_489 \
    op interface \
    ports { weights_load_489 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6447 \
    name weights_load_490 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_490 \
    op interface \
    ports { weights_load_490 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6448 \
    name weights_load_491 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_491 \
    op interface \
    ports { weights_load_491 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6449 \
    name weights_load_492 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_492 \
    op interface \
    ports { weights_load_492 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6450 \
    name weights_load_493 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_493 \
    op interface \
    ports { weights_load_493 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6451 \
    name weights_load_494 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_494 \
    op interface \
    ports { weights_load_494 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6452 \
    name weights_load_495 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_495 \
    op interface \
    ports { weights_load_495 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6453 \
    name weights_load_496 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_496 \
    op interface \
    ports { weights_load_496 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6454 \
    name weights_load_497 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_497 \
    op interface \
    ports { weights_load_497 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6455 \
    name weights_load_498 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_498 \
    op interface \
    ports { weights_load_498 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6456 \
    name weights_load_499 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_499 \
    op interface \
    ports { weights_load_499 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6457 \
    name weights_load_500 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_500 \
    op interface \
    ports { weights_load_500 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6458 \
    name weights_load_501 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_501 \
    op interface \
    ports { weights_load_501 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6459 \
    name weights_load_502 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_502 \
    op interface \
    ports { weights_load_502 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6460 \
    name weights_load_503 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_503 \
    op interface \
    ports { weights_load_503 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6461 \
    name weights_load_504 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_504 \
    op interface \
    ports { weights_load_504 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6462 \
    name weights_load_505 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_505 \
    op interface \
    ports { weights_load_505 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6463 \
    name weights_load_506 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_506 \
    op interface \
    ports { weights_load_506 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6464 \
    name weights_load_507 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_507 \
    op interface \
    ports { weights_load_507 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6465 \
    name weights_load_508 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_508 \
    op interface \
    ports { weights_load_508 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6466 \
    name weights_load_509 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_509 \
    op interface \
    ports { weights_load_509 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6467 \
    name weights_load_510 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_510 \
    op interface \
    ports { weights_load_510 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6468 \
    name weights_load_511 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_511 \
    op interface \
    ports { weights_load_511 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6469 \
    name weights_load_512 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_512 \
    op interface \
    ports { weights_load_512 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6470 \
    name weights_load_513 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_513 \
    op interface \
    ports { weights_load_513 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6471 \
    name weights_load_514 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_514 \
    op interface \
    ports { weights_load_514 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6472 \
    name weights_load_515 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_515 \
    op interface \
    ports { weights_load_515 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6473 \
    name weights_load_516 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_516 \
    op interface \
    ports { weights_load_516 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6474 \
    name weights_load_517 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_517 \
    op interface \
    ports { weights_load_517 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6475 \
    name weights_load_518 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_518 \
    op interface \
    ports { weights_load_518 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6476 \
    name weights_load_519 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_519 \
    op interface \
    ports { weights_load_519 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6477 \
    name weights_load_520 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_520 \
    op interface \
    ports { weights_load_520 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6478 \
    name weights_load_521 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_521 \
    op interface \
    ports { weights_load_521 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6479 \
    name weights_load_522 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_522 \
    op interface \
    ports { weights_load_522 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6480 \
    name weights_load_523 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_523 \
    op interface \
    ports { weights_load_523 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6481 \
    name weights_load_524 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_524 \
    op interface \
    ports { weights_load_524 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6482 \
    name weights_load_525 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_525 \
    op interface \
    ports { weights_load_525 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6483 \
    name weights_load_526 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_526 \
    op interface \
    ports { weights_load_526 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6484 \
    name weights_load_527 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_527 \
    op interface \
    ports { weights_load_527 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6485 \
    name weights_load_528 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_528 \
    op interface \
    ports { weights_load_528 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6486 \
    name weights_load_529 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_529 \
    op interface \
    ports { weights_load_529 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6487 \
    name weights_load_530 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_530 \
    op interface \
    ports { weights_load_530 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6488 \
    name weights_load_531 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_531 \
    op interface \
    ports { weights_load_531 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6489 \
    name weights_load_532 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_532 \
    op interface \
    ports { weights_load_532 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6490 \
    name weights_load_533 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_533 \
    op interface \
    ports { weights_load_533 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6491 \
    name weights_load_534 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_534 \
    op interface \
    ports { weights_load_534 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6492 \
    name weights_load_535 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_535 \
    op interface \
    ports { weights_load_535 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6493 \
    name weights_load_536 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_536 \
    op interface \
    ports { weights_load_536 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6494 \
    name weights_load_537 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_537 \
    op interface \
    ports { weights_load_537 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6495 \
    name weights_load_538 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_538 \
    op interface \
    ports { weights_load_538 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6496 \
    name weights_load_539 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_539 \
    op interface \
    ports { weights_load_539 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6497 \
    name weights_load_540 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_540 \
    op interface \
    ports { weights_load_540 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6498 \
    name weights_load_541 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_541 \
    op interface \
    ports { weights_load_541 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6499 \
    name weights_load_542 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_542 \
    op interface \
    ports { weights_load_542 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6500 \
    name weights_load_543 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_543 \
    op interface \
    ports { weights_load_543 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6501 \
    name weights_load_544 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_544 \
    op interface \
    ports { weights_load_544 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6502 \
    name weights_load_545 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_545 \
    op interface \
    ports { weights_load_545 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6503 \
    name weights_load_546 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_546 \
    op interface \
    ports { weights_load_546 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6504 \
    name weights_load_547 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_547 \
    op interface \
    ports { weights_load_547 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6505 \
    name weights_load_548 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_548 \
    op interface \
    ports { weights_load_548 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6506 \
    name weights_load_549 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_549 \
    op interface \
    ports { weights_load_549 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6507 \
    name weights_load_550 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_550 \
    op interface \
    ports { weights_load_550 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6508 \
    name weights_load_551 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_551 \
    op interface \
    ports { weights_load_551 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6509 \
    name weights_load_552 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_552 \
    op interface \
    ports { weights_load_552 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6510 \
    name weights_load_553 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_553 \
    op interface \
    ports { weights_load_553 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6511 \
    name weights_load_554 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_554 \
    op interface \
    ports { weights_load_554 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6512 \
    name weights_load_555 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_555 \
    op interface \
    ports { weights_load_555 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6513 \
    name weights_load_556 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_556 \
    op interface \
    ports { weights_load_556 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6514 \
    name weights_load_557 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_557 \
    op interface \
    ports { weights_load_557 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6515 \
    name weights_load_558 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_558 \
    op interface \
    ports { weights_load_558 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6516 \
    name weights_load_559 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_559 \
    op interface \
    ports { weights_load_559 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6517 \
    name weights_load_560 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_560 \
    op interface \
    ports { weights_load_560 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6518 \
    name weights_load_561 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_561 \
    op interface \
    ports { weights_load_561 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6519 \
    name weights_load_562 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_562 \
    op interface \
    ports { weights_load_562 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6520 \
    name weights_load_563 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_563 \
    op interface \
    ports { weights_load_563 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6521 \
    name weights_load_564 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_564 \
    op interface \
    ports { weights_load_564 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6522 \
    name weights_load_565 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_565 \
    op interface \
    ports { weights_load_565 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6523 \
    name weights_load_566 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_566 \
    op interface \
    ports { weights_load_566 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6524 \
    name weights_load_567 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_567 \
    op interface \
    ports { weights_load_567 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6525 \
    name weights_load_568 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_568 \
    op interface \
    ports { weights_load_568 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6526 \
    name weights_load_569 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_569 \
    op interface \
    ports { weights_load_569 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6527 \
    name weights_load_570 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_570 \
    op interface \
    ports { weights_load_570 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6528 \
    name weights_load_571 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_571 \
    op interface \
    ports { weights_load_571 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6529 \
    name weights_load_572 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_572 \
    op interface \
    ports { weights_load_572 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6530 \
    name weights_load_573 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_573 \
    op interface \
    ports { weights_load_573 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6531 \
    name weights_load_574 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_574 \
    op interface \
    ports { weights_load_574 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6532 \
    name weights_load_575 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_575 \
    op interface \
    ports { weights_load_575 { I 32 vector } } \
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


