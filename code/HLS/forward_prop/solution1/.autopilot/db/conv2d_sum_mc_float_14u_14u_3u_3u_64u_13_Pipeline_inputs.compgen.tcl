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
    id 8347 \
    name conv2d_64_padded_window_stream_13 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_13 \
    op interface \
    ports { conv2d_64_padded_window_stream_13_dout { I 288 vector } conv2d_64_padded_window_stream_13_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_13_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_13_empty_n { I 1 bit } conv2d_64_padded_window_stream_13_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8348 \
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
    id 8349 \
    name weights_load_14951 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14951 \
    op interface \
    ports { weights_load_14951 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8350 \
    name weights_load_14952 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14952 \
    op interface \
    ports { weights_load_14952 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8351 \
    name weights_load_14953 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14953 \
    op interface \
    ports { weights_load_14953 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8352 \
    name weights_load_14954 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14954 \
    op interface \
    ports { weights_load_14954 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8353 \
    name weights_load_14955 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14955 \
    op interface \
    ports { weights_load_14955 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8354 \
    name weights_load_14956 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14956 \
    op interface \
    ports { weights_load_14956 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8355 \
    name weights_load_14957 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14957 \
    op interface \
    ports { weights_load_14957 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8356 \
    name weights_load_14958 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14958 \
    op interface \
    ports { weights_load_14958 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8357 \
    name in_channel_map_stream_13 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_13 \
    op interface \
    ports { in_channel_map_stream_13_din { O 32 vector } in_channel_map_stream_13_num_data_valid { I 3 vector } in_channel_map_stream_13_fifo_cap { I 3 vector } in_channel_map_stream_13_full_n { I 1 bit } in_channel_map_stream_13_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8358 \
    name weights_load_14959 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14959 \
    op interface \
    ports { weights_load_14959 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8359 \
    name weights_load_14960 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14960 \
    op interface \
    ports { weights_load_14960 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8360 \
    name weights_load_14961 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14961 \
    op interface \
    ports { weights_load_14961 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8361 \
    name weights_load_14962 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14962 \
    op interface \
    ports { weights_load_14962 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8362 \
    name weights_load_14963 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14963 \
    op interface \
    ports { weights_load_14963 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8363 \
    name weights_load_14964 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14964 \
    op interface \
    ports { weights_load_14964 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8364 \
    name weights_load_14965 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14965 \
    op interface \
    ports { weights_load_14965 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8365 \
    name weights_load_14966 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14966 \
    op interface \
    ports { weights_load_14966 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8366 \
    name weights_load_14967 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14967 \
    op interface \
    ports { weights_load_14967 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8367 \
    name weights_load_14968 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14968 \
    op interface \
    ports { weights_load_14968 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8368 \
    name weights_load_14969 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14969 \
    op interface \
    ports { weights_load_14969 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8369 \
    name weights_load_14970 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14970 \
    op interface \
    ports { weights_load_14970 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8370 \
    name weights_load_14971 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14971 \
    op interface \
    ports { weights_load_14971 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8371 \
    name weights_load_14972 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14972 \
    op interface \
    ports { weights_load_14972 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8372 \
    name weights_load_14973 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14973 \
    op interface \
    ports { weights_load_14973 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8373 \
    name weights_load_14974 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14974 \
    op interface \
    ports { weights_load_14974 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8374 \
    name weights_load_14975 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14975 \
    op interface \
    ports { weights_load_14975 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8375 \
    name weights_load_14976 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14976 \
    op interface \
    ports { weights_load_14976 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8376 \
    name weights_load_14977 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14977 \
    op interface \
    ports { weights_load_14977 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8377 \
    name weights_load_14978 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14978 \
    op interface \
    ports { weights_load_14978 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8378 \
    name weights_load_14979 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14979 \
    op interface \
    ports { weights_load_14979 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8379 \
    name weights_load_14980 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14980 \
    op interface \
    ports { weights_load_14980 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8380 \
    name weights_load_14981 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14981 \
    op interface \
    ports { weights_load_14981 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8381 \
    name weights_load_14982 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14982 \
    op interface \
    ports { weights_load_14982 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8382 \
    name weights_load_14983 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14983 \
    op interface \
    ports { weights_load_14983 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8383 \
    name weights_load_14984 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14984 \
    op interface \
    ports { weights_load_14984 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8384 \
    name weights_load_14985 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14985 \
    op interface \
    ports { weights_load_14985 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8385 \
    name weights_load_14986 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14986 \
    op interface \
    ports { weights_load_14986 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8386 \
    name weights_load_14987 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14987 \
    op interface \
    ports { weights_load_14987 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8387 \
    name weights_load_14988 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14988 \
    op interface \
    ports { weights_load_14988 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8388 \
    name weights_load_14989 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14989 \
    op interface \
    ports { weights_load_14989 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8389 \
    name weights_load_14990 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14990 \
    op interface \
    ports { weights_load_14990 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8390 \
    name weights_load_14991 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14991 \
    op interface \
    ports { weights_load_14991 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8391 \
    name weights_load_14992 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14992 \
    op interface \
    ports { weights_load_14992 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8392 \
    name weights_load_14993 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14993 \
    op interface \
    ports { weights_load_14993 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8393 \
    name weights_load_14994 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14994 \
    op interface \
    ports { weights_load_14994 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8394 \
    name weights_load_14995 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14995 \
    op interface \
    ports { weights_load_14995 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8395 \
    name weights_load_14996 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14996 \
    op interface \
    ports { weights_load_14996 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8396 \
    name weights_load_14997 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14997 \
    op interface \
    ports { weights_load_14997 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8397 \
    name weights_load_14998 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14998 \
    op interface \
    ports { weights_load_14998 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8398 \
    name weights_load_14999 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_14999 \
    op interface \
    ports { weights_load_14999 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8399 \
    name weights_load_15000 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15000 \
    op interface \
    ports { weights_load_15000 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8400 \
    name weights_load_15001 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15001 \
    op interface \
    ports { weights_load_15001 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8401 \
    name weights_load_15002 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15002 \
    op interface \
    ports { weights_load_15002 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8402 \
    name weights_load_15003 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15003 \
    op interface \
    ports { weights_load_15003 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8403 \
    name weights_load_15004 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15004 \
    op interface \
    ports { weights_load_15004 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8404 \
    name weights_load_15005 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15005 \
    op interface \
    ports { weights_load_15005 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8405 \
    name weights_load_15006 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15006 \
    op interface \
    ports { weights_load_15006 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8406 \
    name weights_load_15007 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15007 \
    op interface \
    ports { weights_load_15007 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8407 \
    name weights_load_15008 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15008 \
    op interface \
    ports { weights_load_15008 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8408 \
    name weights_load_15009 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15009 \
    op interface \
    ports { weights_load_15009 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8409 \
    name weights_load_15010 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15010 \
    op interface \
    ports { weights_load_15010 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8410 \
    name weights_load_15011 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15011 \
    op interface \
    ports { weights_load_15011 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8411 \
    name weights_load_15012 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15012 \
    op interface \
    ports { weights_load_15012 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8412 \
    name weights_load_15013 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15013 \
    op interface \
    ports { weights_load_15013 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8413 \
    name weights_load_15014 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15014 \
    op interface \
    ports { weights_load_15014 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8414 \
    name weights_load_15015 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15015 \
    op interface \
    ports { weights_load_15015 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8415 \
    name weights_load_15016 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15016 \
    op interface \
    ports { weights_load_15016 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8416 \
    name weights_load_15017 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15017 \
    op interface \
    ports { weights_load_15017 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8417 \
    name weights_load_15018 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15018 \
    op interface \
    ports { weights_load_15018 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8418 \
    name weights_load_15019 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15019 \
    op interface \
    ports { weights_load_15019 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8419 \
    name weights_load_15020 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15020 \
    op interface \
    ports { weights_load_15020 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8420 \
    name weights_load_15021 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15021 \
    op interface \
    ports { weights_load_15021 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8421 \
    name weights_load_15022 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15022 \
    op interface \
    ports { weights_load_15022 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8422 \
    name weights_load_15023 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15023 \
    op interface \
    ports { weights_load_15023 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8423 \
    name weights_load_15024 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15024 \
    op interface \
    ports { weights_load_15024 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8424 \
    name weights_load_15025 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15025 \
    op interface \
    ports { weights_load_15025 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8425 \
    name weights_load_15026 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15026 \
    op interface \
    ports { weights_load_15026 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8426 \
    name weights_load_15027 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15027 \
    op interface \
    ports { weights_load_15027 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8427 \
    name weights_load_15028 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15028 \
    op interface \
    ports { weights_load_15028 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8428 \
    name weights_load_15029 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15029 \
    op interface \
    ports { weights_load_15029 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8429 \
    name weights_load_15030 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15030 \
    op interface \
    ports { weights_load_15030 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8430 \
    name weights_load_15031 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15031 \
    op interface \
    ports { weights_load_15031 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8431 \
    name weights_load_15032 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15032 \
    op interface \
    ports { weights_load_15032 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8432 \
    name weights_load_15033 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15033 \
    op interface \
    ports { weights_load_15033 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8433 \
    name weights_load_15034 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15034 \
    op interface \
    ports { weights_load_15034 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8434 \
    name weights_load_15035 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15035 \
    op interface \
    ports { weights_load_15035 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8435 \
    name weights_load_15036 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15036 \
    op interface \
    ports { weights_load_15036 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8436 \
    name weights_load_15037 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15037 \
    op interface \
    ports { weights_load_15037 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8437 \
    name weights_load_15038 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15038 \
    op interface \
    ports { weights_load_15038 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8438 \
    name weights_load_15039 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15039 \
    op interface \
    ports { weights_load_15039 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8439 \
    name weights_load_15040 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15040 \
    op interface \
    ports { weights_load_15040 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8440 \
    name weights_load_15041 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15041 \
    op interface \
    ports { weights_load_15041 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8441 \
    name weights_load_15042 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15042 \
    op interface \
    ports { weights_load_15042 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8442 \
    name weights_load_15043 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15043 \
    op interface \
    ports { weights_load_15043 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8443 \
    name weights_load_15044 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15044 \
    op interface \
    ports { weights_load_15044 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8444 \
    name weights_load_15045 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15045 \
    op interface \
    ports { weights_load_15045 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8445 \
    name weights_load_15046 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15046 \
    op interface \
    ports { weights_load_15046 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8446 \
    name weights_load_15047 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15047 \
    op interface \
    ports { weights_load_15047 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8447 \
    name weights_load_15048 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15048 \
    op interface \
    ports { weights_load_15048 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8448 \
    name weights_load_15049 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15049 \
    op interface \
    ports { weights_load_15049 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8449 \
    name weights_load_15050 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15050 \
    op interface \
    ports { weights_load_15050 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8450 \
    name weights_load_15051 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15051 \
    op interface \
    ports { weights_load_15051 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8451 \
    name weights_load_15052 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15052 \
    op interface \
    ports { weights_load_15052 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8452 \
    name weights_load_15053 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15053 \
    op interface \
    ports { weights_load_15053 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8453 \
    name weights_load_15054 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15054 \
    op interface \
    ports { weights_load_15054 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8454 \
    name weights_load_15055 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15055 \
    op interface \
    ports { weights_load_15055 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8455 \
    name weights_load_15056 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15056 \
    op interface \
    ports { weights_load_15056 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8456 \
    name weights_load_15057 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15057 \
    op interface \
    ports { weights_load_15057 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8457 \
    name weights_load_15058 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15058 \
    op interface \
    ports { weights_load_15058 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8458 \
    name weights_load_15059 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15059 \
    op interface \
    ports { weights_load_15059 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8459 \
    name weights_load_15060 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15060 \
    op interface \
    ports { weights_load_15060 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8460 \
    name weights_load_15061 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15061 \
    op interface \
    ports { weights_load_15061 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8461 \
    name weights_load_15062 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15062 \
    op interface \
    ports { weights_load_15062 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8462 \
    name weights_load_15063 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15063 \
    op interface \
    ports { weights_load_15063 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8463 \
    name weights_load_15064 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15064 \
    op interface \
    ports { weights_load_15064 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8464 \
    name weights_load_15065 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15065 \
    op interface \
    ports { weights_load_15065 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8465 \
    name weights_load_15066 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15066 \
    op interface \
    ports { weights_load_15066 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8466 \
    name weights_load_15067 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15067 \
    op interface \
    ports { weights_load_15067 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8467 \
    name weights_load_15068 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15068 \
    op interface \
    ports { weights_load_15068 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8468 \
    name weights_load_15069 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15069 \
    op interface \
    ports { weights_load_15069 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8469 \
    name weights_load_15070 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15070 \
    op interface \
    ports { weights_load_15070 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8470 \
    name weights_load_15071 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15071 \
    op interface \
    ports { weights_load_15071 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8471 \
    name weights_load_15072 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15072 \
    op interface \
    ports { weights_load_15072 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8472 \
    name weights_load_15073 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15073 \
    op interface \
    ports { weights_load_15073 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8473 \
    name weights_load_15074 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15074 \
    op interface \
    ports { weights_load_15074 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8474 \
    name weights_load_15075 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15075 \
    op interface \
    ports { weights_load_15075 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8475 \
    name weights_load_15076 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15076 \
    op interface \
    ports { weights_load_15076 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8476 \
    name weights_load_15077 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15077 \
    op interface \
    ports { weights_load_15077 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8477 \
    name weights_load_15078 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15078 \
    op interface \
    ports { weights_load_15078 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8478 \
    name weights_load_15079 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15079 \
    op interface \
    ports { weights_load_15079 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8479 \
    name weights_load_15080 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15080 \
    op interface \
    ports { weights_load_15080 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8480 \
    name weights_load_15081 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15081 \
    op interface \
    ports { weights_load_15081 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8481 \
    name weights_load_15082 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15082 \
    op interface \
    ports { weights_load_15082 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8482 \
    name weights_load_15083 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15083 \
    op interface \
    ports { weights_load_15083 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8483 \
    name weights_load_15084 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15084 \
    op interface \
    ports { weights_load_15084 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8484 \
    name weights_load_15085 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15085 \
    op interface \
    ports { weights_load_15085 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8485 \
    name weights_load_15086 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15086 \
    op interface \
    ports { weights_load_15086 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8486 \
    name weights_load_15087 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15087 \
    op interface \
    ports { weights_load_15087 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8487 \
    name weights_load_15088 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15088 \
    op interface \
    ports { weights_load_15088 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8488 \
    name weights_load_15089 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15089 \
    op interface \
    ports { weights_load_15089 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8489 \
    name weights_load_15090 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15090 \
    op interface \
    ports { weights_load_15090 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8490 \
    name weights_load_15091 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15091 \
    op interface \
    ports { weights_load_15091 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8491 \
    name weights_load_15092 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15092 \
    op interface \
    ports { weights_load_15092 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8492 \
    name weights_load_15093 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15093 \
    op interface \
    ports { weights_load_15093 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8493 \
    name weights_load_15094 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15094 \
    op interface \
    ports { weights_load_15094 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8494 \
    name weights_load_15095 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15095 \
    op interface \
    ports { weights_load_15095 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8495 \
    name weights_load_15096 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15096 \
    op interface \
    ports { weights_load_15096 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8496 \
    name weights_load_15097 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15097 \
    op interface \
    ports { weights_load_15097 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8497 \
    name weights_load_15098 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15098 \
    op interface \
    ports { weights_load_15098 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8498 \
    name weights_load_15099 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15099 \
    op interface \
    ports { weights_load_15099 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8499 \
    name weights_load_15100 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15100 \
    op interface \
    ports { weights_load_15100 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8500 \
    name weights_load_15101 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15101 \
    op interface \
    ports { weights_load_15101 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8501 \
    name weights_load_15102 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15102 \
    op interface \
    ports { weights_load_15102 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8502 \
    name weights_load_15103 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15103 \
    op interface \
    ports { weights_load_15103 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8503 \
    name weights_load_15104 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15104 \
    op interface \
    ports { weights_load_15104 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8504 \
    name weights_load_15105 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15105 \
    op interface \
    ports { weights_load_15105 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8505 \
    name weights_load_15106 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15106 \
    op interface \
    ports { weights_load_15106 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8506 \
    name weights_load_15107 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15107 \
    op interface \
    ports { weights_load_15107 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8507 \
    name weights_load_15108 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15108 \
    op interface \
    ports { weights_load_15108 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8508 \
    name weights_load_15109 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15109 \
    op interface \
    ports { weights_load_15109 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8509 \
    name weights_load_15110 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15110 \
    op interface \
    ports { weights_load_15110 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8510 \
    name weights_load_15111 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15111 \
    op interface \
    ports { weights_load_15111 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8511 \
    name weights_load_15112 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15112 \
    op interface \
    ports { weights_load_15112 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8512 \
    name weights_load_15113 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15113 \
    op interface \
    ports { weights_load_15113 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8513 \
    name weights_load_15114 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15114 \
    op interface \
    ports { weights_load_15114 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8514 \
    name weights_load_15115 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15115 \
    op interface \
    ports { weights_load_15115 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8515 \
    name weights_load_15116 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15116 \
    op interface \
    ports { weights_load_15116 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8516 \
    name weights_load_15117 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15117 \
    op interface \
    ports { weights_load_15117 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8517 \
    name weights_load_15118 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15118 \
    op interface \
    ports { weights_load_15118 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8518 \
    name weights_load_15119 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15119 \
    op interface \
    ports { weights_load_15119 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8519 \
    name weights_load_15120 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15120 \
    op interface \
    ports { weights_load_15120 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8520 \
    name weights_load_15121 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15121 \
    op interface \
    ports { weights_load_15121 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8521 \
    name weights_load_15122 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15122 \
    op interface \
    ports { weights_load_15122 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8522 \
    name weights_load_15123 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15123 \
    op interface \
    ports { weights_load_15123 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8523 \
    name weights_load_15124 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15124 \
    op interface \
    ports { weights_load_15124 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8524 \
    name weights_load_15125 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15125 \
    op interface \
    ports { weights_load_15125 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8525 \
    name weights_load_15126 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15126 \
    op interface \
    ports { weights_load_15126 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8526 \
    name weights_load_15127 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15127 \
    op interface \
    ports { weights_load_15127 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8527 \
    name weights_load_15128 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15128 \
    op interface \
    ports { weights_load_15128 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8528 \
    name weights_load_15129 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15129 \
    op interface \
    ports { weights_load_15129 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8529 \
    name weights_load_15130 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15130 \
    op interface \
    ports { weights_load_15130 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8530 \
    name weights_load_15131 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15131 \
    op interface \
    ports { weights_load_15131 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8531 \
    name weights_load_15132 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15132 \
    op interface \
    ports { weights_load_15132 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8532 \
    name weights_load_15133 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15133 \
    op interface \
    ports { weights_load_15133 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8533 \
    name weights_load_15134 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15134 \
    op interface \
    ports { weights_load_15134 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8534 \
    name weights_load_15135 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15135 \
    op interface \
    ports { weights_load_15135 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8535 \
    name weights_load_15136 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15136 \
    op interface \
    ports { weights_load_15136 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8536 \
    name weights_load_15137 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15137 \
    op interface \
    ports { weights_load_15137 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8537 \
    name weights_load_15138 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15138 \
    op interface \
    ports { weights_load_15138 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8538 \
    name weights_load_15139 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15139 \
    op interface \
    ports { weights_load_15139 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8539 \
    name weights_load_15140 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15140 \
    op interface \
    ports { weights_load_15140 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8540 \
    name weights_load_15141 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15141 \
    op interface \
    ports { weights_load_15141 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8541 \
    name weights_load_15142 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15142 \
    op interface \
    ports { weights_load_15142 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8542 \
    name weights_load_15143 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15143 \
    op interface \
    ports { weights_load_15143 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8543 \
    name weights_load_15144 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15144 \
    op interface \
    ports { weights_load_15144 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8544 \
    name weights_load_15145 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15145 \
    op interface \
    ports { weights_load_15145 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8545 \
    name weights_load_15146 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15146 \
    op interface \
    ports { weights_load_15146 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8546 \
    name weights_load_15147 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15147 \
    op interface \
    ports { weights_load_15147 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8547 \
    name weights_load_15148 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15148 \
    op interface \
    ports { weights_load_15148 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8548 \
    name weights_load_15149 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15149 \
    op interface \
    ports { weights_load_15149 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8549 \
    name weights_load_15150 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15150 \
    op interface \
    ports { weights_load_15150 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8550 \
    name weights_load_15151 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15151 \
    op interface \
    ports { weights_load_15151 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8551 \
    name weights_load_15152 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15152 \
    op interface \
    ports { weights_load_15152 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8552 \
    name weights_load_15153 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15153 \
    op interface \
    ports { weights_load_15153 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8553 \
    name weights_load_15154 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15154 \
    op interface \
    ports { weights_load_15154 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8554 \
    name weights_load_15155 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15155 \
    op interface \
    ports { weights_load_15155 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8555 \
    name weights_load_15156 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15156 \
    op interface \
    ports { weights_load_15156 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8556 \
    name weights_load_15157 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15157 \
    op interface \
    ports { weights_load_15157 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8557 \
    name weights_load_15158 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15158 \
    op interface \
    ports { weights_load_15158 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8558 \
    name weights_load_15159 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15159 \
    op interface \
    ports { weights_load_15159 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8559 \
    name weights_load_15160 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15160 \
    op interface \
    ports { weights_load_15160 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8560 \
    name weights_load_15161 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15161 \
    op interface \
    ports { weights_load_15161 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8561 \
    name weights_load_15162 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15162 \
    op interface \
    ports { weights_load_15162 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8562 \
    name weights_load_15163 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15163 \
    op interface \
    ports { weights_load_15163 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8563 \
    name weights_load_15164 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15164 \
    op interface \
    ports { weights_load_15164 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8564 \
    name weights_load_15165 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15165 \
    op interface \
    ports { weights_load_15165 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8565 \
    name weights_load_15166 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15166 \
    op interface \
    ports { weights_load_15166 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8566 \
    name weights_load_15167 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15167 \
    op interface \
    ports { weights_load_15167 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8567 \
    name weights_load_15168 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15168 \
    op interface \
    ports { weights_load_15168 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8568 \
    name weights_load_15169 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15169 \
    op interface \
    ports { weights_load_15169 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8569 \
    name weights_load_15170 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15170 \
    op interface \
    ports { weights_load_15170 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8570 \
    name weights_load_15171 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15171 \
    op interface \
    ports { weights_load_15171 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8571 \
    name weights_load_15172 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15172 \
    op interface \
    ports { weights_load_15172 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8572 \
    name weights_load_15173 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15173 \
    op interface \
    ports { weights_load_15173 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8573 \
    name weights_load_15174 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15174 \
    op interface \
    ports { weights_load_15174 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8574 \
    name weights_load_15175 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15175 \
    op interface \
    ports { weights_load_15175 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8575 \
    name weights_load_15176 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15176 \
    op interface \
    ports { weights_load_15176 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8576 \
    name weights_load_15177 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15177 \
    op interface \
    ports { weights_load_15177 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8577 \
    name weights_load_15178 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15178 \
    op interface \
    ports { weights_load_15178 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8578 \
    name weights_load_15179 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15179 \
    op interface \
    ports { weights_load_15179 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8579 \
    name weights_load_15180 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15180 \
    op interface \
    ports { weights_load_15180 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8580 \
    name weights_load_15181 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15181 \
    op interface \
    ports { weights_load_15181 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8581 \
    name weights_load_15182 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15182 \
    op interface \
    ports { weights_load_15182 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8582 \
    name weights_load_15183 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15183 \
    op interface \
    ports { weights_load_15183 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8583 \
    name weights_load_15184 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15184 \
    op interface \
    ports { weights_load_15184 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8584 \
    name weights_load_15185 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15185 \
    op interface \
    ports { weights_load_15185 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8585 \
    name weights_load_15186 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15186 \
    op interface \
    ports { weights_load_15186 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8586 \
    name weights_load_15187 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15187 \
    op interface \
    ports { weights_load_15187 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8587 \
    name weights_load_15188 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15188 \
    op interface \
    ports { weights_load_15188 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8588 \
    name weights_load_15189 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15189 \
    op interface \
    ports { weights_load_15189 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8589 \
    name weights_load_15190 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15190 \
    op interface \
    ports { weights_load_15190 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8590 \
    name weights_load_15191 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15191 \
    op interface \
    ports { weights_load_15191 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8591 \
    name weights_load_15192 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15192 \
    op interface \
    ports { weights_load_15192 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8592 \
    name weights_load_15193 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15193 \
    op interface \
    ports { weights_load_15193 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8593 \
    name weights_load_15194 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15194 \
    op interface \
    ports { weights_load_15194 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8594 \
    name weights_load_15195 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15195 \
    op interface \
    ports { weights_load_15195 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8595 \
    name weights_load_15196 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15196 \
    op interface \
    ports { weights_load_15196 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8596 \
    name weights_load_15197 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15197 \
    op interface \
    ports { weights_load_15197 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8597 \
    name weights_load_15198 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15198 \
    op interface \
    ports { weights_load_15198 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8598 \
    name weights_load_15199 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15199 \
    op interface \
    ports { weights_load_15199 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8599 \
    name weights_load_15200 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15200 \
    op interface \
    ports { weights_load_15200 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8600 \
    name weights_load_15201 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15201 \
    op interface \
    ports { weights_load_15201 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8601 \
    name weights_load_15202 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15202 \
    op interface \
    ports { weights_load_15202 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8602 \
    name weights_load_15203 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15203 \
    op interface \
    ports { weights_load_15203 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8603 \
    name weights_load_15204 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15204 \
    op interface \
    ports { weights_load_15204 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8604 \
    name weights_load_15205 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15205 \
    op interface \
    ports { weights_load_15205 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8605 \
    name weights_load_15206 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15206 \
    op interface \
    ports { weights_load_15206 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8606 \
    name weights_load_15207 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15207 \
    op interface \
    ports { weights_load_15207 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8607 \
    name weights_load_15208 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15208 \
    op interface \
    ports { weights_load_15208 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8608 \
    name weights_load_15209 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15209 \
    op interface \
    ports { weights_load_15209 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8609 \
    name weights_load_15210 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15210 \
    op interface \
    ports { weights_load_15210 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8610 \
    name weights_load_15211 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15211 \
    op interface \
    ports { weights_load_15211 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8611 \
    name weights_load_15212 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15212 \
    op interface \
    ports { weights_load_15212 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8612 \
    name weights_load_15213 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15213 \
    op interface \
    ports { weights_load_15213 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8613 \
    name weights_load_15214 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15214 \
    op interface \
    ports { weights_load_15214 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8614 \
    name weights_load_15215 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15215 \
    op interface \
    ports { weights_load_15215 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8615 \
    name weights_load_15216 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15216 \
    op interface \
    ports { weights_load_15216 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8616 \
    name weights_load_15217 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15217 \
    op interface \
    ports { weights_load_15217 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8617 \
    name weights_load_15218 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15218 \
    op interface \
    ports { weights_load_15218 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8618 \
    name weights_load_15219 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15219 \
    op interface \
    ports { weights_load_15219 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8619 \
    name weights_load_15220 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15220 \
    op interface \
    ports { weights_load_15220 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8620 \
    name weights_load_15221 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15221 \
    op interface \
    ports { weights_load_15221 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8621 \
    name weights_load_15222 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15222 \
    op interface \
    ports { weights_load_15222 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8622 \
    name weights_load_15223 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15223 \
    op interface \
    ports { weights_load_15223 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8623 \
    name weights_load_15224 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15224 \
    op interface \
    ports { weights_load_15224 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8624 \
    name weights_load_15225 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15225 \
    op interface \
    ports { weights_load_15225 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8625 \
    name weights_load_15226 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15226 \
    op interface \
    ports { weights_load_15226 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8626 \
    name weights_load_15227 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15227 \
    op interface \
    ports { weights_load_15227 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8627 \
    name weights_load_15228 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15228 \
    op interface \
    ports { weights_load_15228 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8628 \
    name weights_load_15229 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15229 \
    op interface \
    ports { weights_load_15229 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8629 \
    name weights_load_15230 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15230 \
    op interface \
    ports { weights_load_15230 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8630 \
    name weights_load_15231 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15231 \
    op interface \
    ports { weights_load_15231 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8631 \
    name weights_load_15232 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15232 \
    op interface \
    ports { weights_load_15232 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8632 \
    name weights_load_15233 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15233 \
    op interface \
    ports { weights_load_15233 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8633 \
    name weights_load_15234 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15234 \
    op interface \
    ports { weights_load_15234 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8634 \
    name weights_load_15235 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15235 \
    op interface \
    ports { weights_load_15235 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8635 \
    name weights_load_15236 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15236 \
    op interface \
    ports { weights_load_15236 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8636 \
    name weights_load_15237 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15237 \
    op interface \
    ports { weights_load_15237 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8637 \
    name weights_load_15238 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15238 \
    op interface \
    ports { weights_load_15238 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8638 \
    name weights_load_15239 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15239 \
    op interface \
    ports { weights_load_15239 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8639 \
    name weights_load_15240 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15240 \
    op interface \
    ports { weights_load_15240 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8640 \
    name weights_load_15241 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15241 \
    op interface \
    ports { weights_load_15241 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8641 \
    name weights_load_15242 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15242 \
    op interface \
    ports { weights_load_15242 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8642 \
    name weights_load_15243 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15243 \
    op interface \
    ports { weights_load_15243 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8643 \
    name weights_load_15244 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15244 \
    op interface \
    ports { weights_load_15244 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8644 \
    name weights_load_15245 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15245 \
    op interface \
    ports { weights_load_15245 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8645 \
    name weights_load_15246 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15246 \
    op interface \
    ports { weights_load_15246 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8646 \
    name weights_load_15247 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15247 \
    op interface \
    ports { weights_load_15247 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8647 \
    name weights_load_15248 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15248 \
    op interface \
    ports { weights_load_15248 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8648 \
    name weights_load_15249 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15249 \
    op interface \
    ports { weights_load_15249 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8649 \
    name weights_load_15250 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15250 \
    op interface \
    ports { weights_load_15250 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8650 \
    name weights_load_15251 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15251 \
    op interface \
    ports { weights_load_15251 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8651 \
    name weights_load_15252 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15252 \
    op interface \
    ports { weights_load_15252 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8652 \
    name weights_load_15253 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15253 \
    op interface \
    ports { weights_load_15253 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8653 \
    name weights_load_15254 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15254 \
    op interface \
    ports { weights_load_15254 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8654 \
    name weights_load_15255 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15255 \
    op interface \
    ports { weights_load_15255 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8655 \
    name weights_load_15256 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15256 \
    op interface \
    ports { weights_load_15256 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8656 \
    name weights_load_15257 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15257 \
    op interface \
    ports { weights_load_15257 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8657 \
    name weights_load_15258 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15258 \
    op interface \
    ports { weights_load_15258 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8658 \
    name weights_load_15259 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15259 \
    op interface \
    ports { weights_load_15259 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8659 \
    name weights_load_15260 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15260 \
    op interface \
    ports { weights_load_15260 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8660 \
    name weights_load_15261 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15261 \
    op interface \
    ports { weights_load_15261 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8661 \
    name weights_load_15262 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15262 \
    op interface \
    ports { weights_load_15262 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8662 \
    name weights_load_15263 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15263 \
    op interface \
    ports { weights_load_15263 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8663 \
    name weights_load_15264 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15264 \
    op interface \
    ports { weights_load_15264 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8664 \
    name weights_load_15265 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15265 \
    op interface \
    ports { weights_load_15265 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8665 \
    name weights_load_15266 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15266 \
    op interface \
    ports { weights_load_15266 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8666 \
    name weights_load_15267 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15267 \
    op interface \
    ports { weights_load_15267 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8667 \
    name weights_load_15268 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15268 \
    op interface \
    ports { weights_load_15268 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8668 \
    name weights_load_15269 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15269 \
    op interface \
    ports { weights_load_15269 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8669 \
    name weights_load_15270 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15270 \
    op interface \
    ports { weights_load_15270 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8670 \
    name weights_load_15271 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15271 \
    op interface \
    ports { weights_load_15271 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8671 \
    name weights_load_15272 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15272 \
    op interface \
    ports { weights_load_15272 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8672 \
    name weights_load_15273 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15273 \
    op interface \
    ports { weights_load_15273 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8673 \
    name weights_load_15274 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15274 \
    op interface \
    ports { weights_load_15274 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8674 \
    name weights_load_15275 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15275 \
    op interface \
    ports { weights_load_15275 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8675 \
    name weights_load_15276 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15276 \
    op interface \
    ports { weights_load_15276 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8676 \
    name weights_load_15277 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15277 \
    op interface \
    ports { weights_load_15277 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8677 \
    name weights_load_15278 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15278 \
    op interface \
    ports { weights_load_15278 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8678 \
    name weights_load_15279 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15279 \
    op interface \
    ports { weights_load_15279 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8679 \
    name weights_load_15280 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15280 \
    op interface \
    ports { weights_load_15280 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8680 \
    name weights_load_15281 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15281 \
    op interface \
    ports { weights_load_15281 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8681 \
    name weights_load_15282 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15282 \
    op interface \
    ports { weights_load_15282 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8682 \
    name weights_load_15283 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15283 \
    op interface \
    ports { weights_load_15283 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8683 \
    name weights_load_15284 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15284 \
    op interface \
    ports { weights_load_15284 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8684 \
    name weights_load_15285 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15285 \
    op interface \
    ports { weights_load_15285 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8685 \
    name weights_load_15286 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15286 \
    op interface \
    ports { weights_load_15286 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8686 \
    name weights_load_15287 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15287 \
    op interface \
    ports { weights_load_15287 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8687 \
    name weights_load_15288 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15288 \
    op interface \
    ports { weights_load_15288 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8688 \
    name weights_load_15289 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15289 \
    op interface \
    ports { weights_load_15289 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8689 \
    name weights_load_15290 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15290 \
    op interface \
    ports { weights_load_15290 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8690 \
    name weights_load_15291 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15291 \
    op interface \
    ports { weights_load_15291 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8691 \
    name weights_load_15292 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15292 \
    op interface \
    ports { weights_load_15292 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8692 \
    name weights_load_15293 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15293 \
    op interface \
    ports { weights_load_15293 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8693 \
    name weights_load_15294 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15294 \
    op interface \
    ports { weights_load_15294 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8694 \
    name weights_load_15295 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15295 \
    op interface \
    ports { weights_load_15295 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8695 \
    name weights_load_15296 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15296 \
    op interface \
    ports { weights_load_15296 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8696 \
    name weights_load_15297 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15297 \
    op interface \
    ports { weights_load_15297 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8697 \
    name weights_load_15298 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15298 \
    op interface \
    ports { weights_load_15298 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8698 \
    name weights_load_15299 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15299 \
    op interface \
    ports { weights_load_15299 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8699 \
    name weights_load_15300 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15300 \
    op interface \
    ports { weights_load_15300 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8700 \
    name weights_load_15301 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15301 \
    op interface \
    ports { weights_load_15301 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8701 \
    name weights_load_15302 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15302 \
    op interface \
    ports { weights_load_15302 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8702 \
    name weights_load_15303 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15303 \
    op interface \
    ports { weights_load_15303 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8703 \
    name weights_load_15304 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15304 \
    op interface \
    ports { weights_load_15304 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8704 \
    name weights_load_15305 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15305 \
    op interface \
    ports { weights_load_15305 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8705 \
    name weights_load_15306 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15306 \
    op interface \
    ports { weights_load_15306 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8706 \
    name weights_load_15307 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15307 \
    op interface \
    ports { weights_load_15307 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8707 \
    name weights_load_15308 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15308 \
    op interface \
    ports { weights_load_15308 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8708 \
    name weights_load_15309 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15309 \
    op interface \
    ports { weights_load_15309 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8709 \
    name weights_load_15310 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15310 \
    op interface \
    ports { weights_load_15310 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8710 \
    name weights_load_15311 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15311 \
    op interface \
    ports { weights_load_15311 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8711 \
    name weights_load_15312 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15312 \
    op interface \
    ports { weights_load_15312 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8712 \
    name weights_load_15313 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15313 \
    op interface \
    ports { weights_load_15313 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8713 \
    name weights_load_15314 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15314 \
    op interface \
    ports { weights_load_15314 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8714 \
    name weights_load_15315 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15315 \
    op interface \
    ports { weights_load_15315 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8715 \
    name weights_load_15316 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15316 \
    op interface \
    ports { weights_load_15316 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8716 \
    name weights_load_15317 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15317 \
    op interface \
    ports { weights_load_15317 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8717 \
    name weights_load_15318 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15318 \
    op interface \
    ports { weights_load_15318 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8718 \
    name weights_load_15319 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15319 \
    op interface \
    ports { weights_load_15319 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8719 \
    name weights_load_15320 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15320 \
    op interface \
    ports { weights_load_15320 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8720 \
    name weights_load_15321 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15321 \
    op interface \
    ports { weights_load_15321 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8721 \
    name weights_load_15322 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15322 \
    op interface \
    ports { weights_load_15322 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8722 \
    name weights_load_15323 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15323 \
    op interface \
    ports { weights_load_15323 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8723 \
    name weights_load_15324 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15324 \
    op interface \
    ports { weights_load_15324 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8724 \
    name weights_load_15325 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15325 \
    op interface \
    ports { weights_load_15325 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8725 \
    name weights_load_15326 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15326 \
    op interface \
    ports { weights_load_15326 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8726 \
    name weights_load_15327 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15327 \
    op interface \
    ports { weights_load_15327 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8727 \
    name weights_load_15328 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15328 \
    op interface \
    ports { weights_load_15328 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8728 \
    name weights_load_15329 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15329 \
    op interface \
    ports { weights_load_15329 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8729 \
    name weights_load_15330 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15330 \
    op interface \
    ports { weights_load_15330 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8730 \
    name weights_load_15331 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15331 \
    op interface \
    ports { weights_load_15331 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8731 \
    name weights_load_15332 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15332 \
    op interface \
    ports { weights_load_15332 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8732 \
    name weights_load_15333 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15333 \
    op interface \
    ports { weights_load_15333 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8733 \
    name weights_load_15334 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15334 \
    op interface \
    ports { weights_load_15334 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8734 \
    name weights_load_15335 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15335 \
    op interface \
    ports { weights_load_15335 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8735 \
    name weights_load_15336 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15336 \
    op interface \
    ports { weights_load_15336 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8736 \
    name weights_load_15337 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15337 \
    op interface \
    ports { weights_load_15337 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8737 \
    name weights_load_15338 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15338 \
    op interface \
    ports { weights_load_15338 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8738 \
    name weights_load_15339 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15339 \
    op interface \
    ports { weights_load_15339 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8739 \
    name weights_load_15340 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15340 \
    op interface \
    ports { weights_load_15340 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8740 \
    name weights_load_15341 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15341 \
    op interface \
    ports { weights_load_15341 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8741 \
    name weights_load_15342 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15342 \
    op interface \
    ports { weights_load_15342 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8742 \
    name weights_load_15343 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15343 \
    op interface \
    ports { weights_load_15343 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8743 \
    name weights_load_15344 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15344 \
    op interface \
    ports { weights_load_15344 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8744 \
    name weights_load_15345 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15345 \
    op interface \
    ports { weights_load_15345 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8745 \
    name weights_load_15346 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15346 \
    op interface \
    ports { weights_load_15346 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8746 \
    name weights_load_15347 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15347 \
    op interface \
    ports { weights_load_15347 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8747 \
    name weights_load_15348 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15348 \
    op interface \
    ports { weights_load_15348 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8748 \
    name weights_load_15349 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15349 \
    op interface \
    ports { weights_load_15349 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8749 \
    name weights_load_15350 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15350 \
    op interface \
    ports { weights_load_15350 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8750 \
    name weights_load_15351 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15351 \
    op interface \
    ports { weights_load_15351 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8751 \
    name weights_load_15352 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15352 \
    op interface \
    ports { weights_load_15352 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8752 \
    name weights_load_15353 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15353 \
    op interface \
    ports { weights_load_15353 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8753 \
    name weights_load_15354 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15354 \
    op interface \
    ports { weights_load_15354 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8754 \
    name weights_load_15355 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15355 \
    op interface \
    ports { weights_load_15355 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8755 \
    name weights_load_15356 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15356 \
    op interface \
    ports { weights_load_15356 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8756 \
    name weights_load_15357 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15357 \
    op interface \
    ports { weights_load_15357 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8757 \
    name weights_load_15358 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15358 \
    op interface \
    ports { weights_load_15358 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8758 \
    name weights_load_15359 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15359 \
    op interface \
    ports { weights_load_15359 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8759 \
    name weights_load_15360 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15360 \
    op interface \
    ports { weights_load_15360 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8760 \
    name weights_load_15361 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15361 \
    op interface \
    ports { weights_load_15361 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8761 \
    name weights_load_15362 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15362 \
    op interface \
    ports { weights_load_15362 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8762 \
    name weights_load_15363 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15363 \
    op interface \
    ports { weights_load_15363 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8763 \
    name weights_load_15364 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15364 \
    op interface \
    ports { weights_load_15364 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8764 \
    name weights_load_15365 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15365 \
    op interface \
    ports { weights_load_15365 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8765 \
    name weights_load_15366 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15366 \
    op interface \
    ports { weights_load_15366 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8766 \
    name weights_load_15367 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15367 \
    op interface \
    ports { weights_load_15367 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8767 \
    name weights_load_15368 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15368 \
    op interface \
    ports { weights_load_15368 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8768 \
    name weights_load_15369 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15369 \
    op interface \
    ports { weights_load_15369 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8769 \
    name weights_load_15370 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15370 \
    op interface \
    ports { weights_load_15370 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8770 \
    name weights_load_15371 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15371 \
    op interface \
    ports { weights_load_15371 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8771 \
    name weights_load_15372 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15372 \
    op interface \
    ports { weights_load_15372 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8772 \
    name weights_load_15373 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15373 \
    op interface \
    ports { weights_load_15373 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8773 \
    name weights_load_15374 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15374 \
    op interface \
    ports { weights_load_15374 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8774 \
    name weights_load_15375 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15375 \
    op interface \
    ports { weights_load_15375 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8775 \
    name weights_load_15376 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15376 \
    op interface \
    ports { weights_load_15376 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8776 \
    name weights_load_15377 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15377 \
    op interface \
    ports { weights_load_15377 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8777 \
    name weights_load_15378 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15378 \
    op interface \
    ports { weights_load_15378 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8778 \
    name weights_load_15379 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15379 \
    op interface \
    ports { weights_load_15379 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8779 \
    name weights_load_15380 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15380 \
    op interface \
    ports { weights_load_15380 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8780 \
    name weights_load_15381 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15381 \
    op interface \
    ports { weights_load_15381 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8781 \
    name weights_load_15382 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15382 \
    op interface \
    ports { weights_load_15382 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8782 \
    name weights_load_15383 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15383 \
    op interface \
    ports { weights_load_15383 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8783 \
    name weights_load_15384 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15384 \
    op interface \
    ports { weights_load_15384 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8784 \
    name weights_load_15385 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15385 \
    op interface \
    ports { weights_load_15385 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8785 \
    name weights_load_15386 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15386 \
    op interface \
    ports { weights_load_15386 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8786 \
    name weights_load_15387 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15387 \
    op interface \
    ports { weights_load_15387 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8787 \
    name weights_load_15388 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15388 \
    op interface \
    ports { weights_load_15388 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8788 \
    name weights_load_15389 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15389 \
    op interface \
    ports { weights_load_15389 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8789 \
    name weights_load_15390 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15390 \
    op interface \
    ports { weights_load_15390 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8790 \
    name weights_load_15391 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15391 \
    op interface \
    ports { weights_load_15391 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8791 \
    name weights_load_15392 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15392 \
    op interface \
    ports { weights_load_15392 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8792 \
    name weights_load_15393 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15393 \
    op interface \
    ports { weights_load_15393 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8793 \
    name weights_load_15394 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15394 \
    op interface \
    ports { weights_load_15394 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8794 \
    name weights_load_15395 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15395 \
    op interface \
    ports { weights_load_15395 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8795 \
    name weights_load_15396 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15396 \
    op interface \
    ports { weights_load_15396 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8796 \
    name weights_load_15397 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15397 \
    op interface \
    ports { weights_load_15397 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8797 \
    name weights_load_15398 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15398 \
    op interface \
    ports { weights_load_15398 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8798 \
    name weights_load_15399 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15399 \
    op interface \
    ports { weights_load_15399 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8799 \
    name weights_load_15400 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15400 \
    op interface \
    ports { weights_load_15400 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8800 \
    name weights_load_15401 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15401 \
    op interface \
    ports { weights_load_15401 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8801 \
    name weights_load_15402 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15402 \
    op interface \
    ports { weights_load_15402 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8802 \
    name weights_load_15403 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15403 \
    op interface \
    ports { weights_load_15403 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8803 \
    name weights_load_15404 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15404 \
    op interface \
    ports { weights_load_15404 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8804 \
    name weights_load_15405 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15405 \
    op interface \
    ports { weights_load_15405 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8805 \
    name weights_load_15406 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15406 \
    op interface \
    ports { weights_load_15406 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8806 \
    name weights_load_15407 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15407 \
    op interface \
    ports { weights_load_15407 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8807 \
    name weights_load_15408 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15408 \
    op interface \
    ports { weights_load_15408 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8808 \
    name weights_load_15409 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15409 \
    op interface \
    ports { weights_load_15409 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8809 \
    name weights_load_15410 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15410 \
    op interface \
    ports { weights_load_15410 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8810 \
    name weights_load_15411 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15411 \
    op interface \
    ports { weights_load_15411 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8811 \
    name weights_load_15412 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15412 \
    op interface \
    ports { weights_load_15412 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8812 \
    name weights_load_15413 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15413 \
    op interface \
    ports { weights_load_15413 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8813 \
    name weights_load_15414 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15414 \
    op interface \
    ports { weights_load_15414 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8814 \
    name weights_load_15415 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15415 \
    op interface \
    ports { weights_load_15415 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8815 \
    name weights_load_15416 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15416 \
    op interface \
    ports { weights_load_15416 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8816 \
    name weights_load_15417 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15417 \
    op interface \
    ports { weights_load_15417 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8817 \
    name weights_load_15418 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15418 \
    op interface \
    ports { weights_load_15418 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8818 \
    name weights_load_15419 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15419 \
    op interface \
    ports { weights_load_15419 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8819 \
    name weights_load_15420 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15420 \
    op interface \
    ports { weights_load_15420 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8820 \
    name weights_load_15421 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15421 \
    op interface \
    ports { weights_load_15421 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8821 \
    name weights_load_15422 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15422 \
    op interface \
    ports { weights_load_15422 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8822 \
    name weights_load_15423 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15423 \
    op interface \
    ports { weights_load_15423 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8823 \
    name weights_load_15424 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15424 \
    op interface \
    ports { weights_load_15424 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8824 \
    name weights_load_15425 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15425 \
    op interface \
    ports { weights_load_15425 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8825 \
    name weights_load_15426 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15426 \
    op interface \
    ports { weights_load_15426 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8826 \
    name weights_load_15427 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15427 \
    op interface \
    ports { weights_load_15427 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8827 \
    name weights_load_15428 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15428 \
    op interface \
    ports { weights_load_15428 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8828 \
    name weights_load_15429 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15429 \
    op interface \
    ports { weights_load_15429 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8829 \
    name weights_load_15430 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15430 \
    op interface \
    ports { weights_load_15430 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8830 \
    name weights_load_15431 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15431 \
    op interface \
    ports { weights_load_15431 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8831 \
    name weights_load_15432 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15432 \
    op interface \
    ports { weights_load_15432 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8832 \
    name weights_load_15433 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15433 \
    op interface \
    ports { weights_load_15433 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8833 \
    name weights_load_15434 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15434 \
    op interface \
    ports { weights_load_15434 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8834 \
    name weights_load_15435 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15435 \
    op interface \
    ports { weights_load_15435 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8835 \
    name weights_load_15436 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15436 \
    op interface \
    ports { weights_load_15436 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8836 \
    name weights_load_15437 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15437 \
    op interface \
    ports { weights_load_15437 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8837 \
    name weights_load_15438 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15438 \
    op interface \
    ports { weights_load_15438 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8838 \
    name weights_load_15439 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15439 \
    op interface \
    ports { weights_load_15439 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8839 \
    name weights_load_15440 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15440 \
    op interface \
    ports { weights_load_15440 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8840 \
    name weights_load_15441 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15441 \
    op interface \
    ports { weights_load_15441 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8841 \
    name weights_load_15442 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15442 \
    op interface \
    ports { weights_load_15442 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8842 \
    name weights_load_15443 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15443 \
    op interface \
    ports { weights_load_15443 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8843 \
    name weights_load_15444 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15444 \
    op interface \
    ports { weights_load_15444 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8844 \
    name weights_load_15445 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15445 \
    op interface \
    ports { weights_load_15445 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8845 \
    name weights_load_15446 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15446 \
    op interface \
    ports { weights_load_15446 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8846 \
    name weights_load_15447 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15447 \
    op interface \
    ports { weights_load_15447 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8847 \
    name weights_load_15448 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15448 \
    op interface \
    ports { weights_load_15448 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8848 \
    name weights_load_15449 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15449 \
    op interface \
    ports { weights_load_15449 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8849 \
    name weights_load_15450 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15450 \
    op interface \
    ports { weights_load_15450 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8850 \
    name weights_load_15451 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15451 \
    op interface \
    ports { weights_load_15451 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8851 \
    name weights_load_15452 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15452 \
    op interface \
    ports { weights_load_15452 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8852 \
    name weights_load_15453 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15453 \
    op interface \
    ports { weights_load_15453 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8853 \
    name weights_load_15454 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15454 \
    op interface \
    ports { weights_load_15454 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8854 \
    name weights_load_15455 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15455 \
    op interface \
    ports { weights_load_15455 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8855 \
    name weights_load_15456 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15456 \
    op interface \
    ports { weights_load_15456 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8856 \
    name weights_load_15457 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15457 \
    op interface \
    ports { weights_load_15457 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8857 \
    name weights_load_15458 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15458 \
    op interface \
    ports { weights_load_15458 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8858 \
    name weights_load_15459 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15459 \
    op interface \
    ports { weights_load_15459 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8859 \
    name weights_load_15460 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15460 \
    op interface \
    ports { weights_load_15460 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8860 \
    name weights_load_15461 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15461 \
    op interface \
    ports { weights_load_15461 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8861 \
    name weights_load_15462 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15462 \
    op interface \
    ports { weights_load_15462 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8862 \
    name weights_load_15463 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15463 \
    op interface \
    ports { weights_load_15463 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8863 \
    name weights_load_15464 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15464 \
    op interface \
    ports { weights_load_15464 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8864 \
    name weights_load_15465 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15465 \
    op interface \
    ports { weights_load_15465 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8865 \
    name weights_load_15466 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15466 \
    op interface \
    ports { weights_load_15466 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8866 \
    name weights_load_15467 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15467 \
    op interface \
    ports { weights_load_15467 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8867 \
    name weights_load_15468 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15468 \
    op interface \
    ports { weights_load_15468 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8868 \
    name weights_load_15469 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15469 \
    op interface \
    ports { weights_load_15469 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8869 \
    name weights_load_15470 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15470 \
    op interface \
    ports { weights_load_15470 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8870 \
    name weights_load_15471 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15471 \
    op interface \
    ports { weights_load_15471 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8871 \
    name weights_load_15472 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15472 \
    op interface \
    ports { weights_load_15472 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8872 \
    name weights_load_15473 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15473 \
    op interface \
    ports { weights_load_15473 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8873 \
    name weights_load_15474 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15474 \
    op interface \
    ports { weights_load_15474 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8874 \
    name weights_load_15475 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15475 \
    op interface \
    ports { weights_load_15475 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8875 \
    name weights_load_15476 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15476 \
    op interface \
    ports { weights_load_15476 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8876 \
    name weights_load_15477 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15477 \
    op interface \
    ports { weights_load_15477 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8877 \
    name weights_load_15478 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15478 \
    op interface \
    ports { weights_load_15478 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8878 \
    name weights_load_15479 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15479 \
    op interface \
    ports { weights_load_15479 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8879 \
    name weights_load_15480 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15480 \
    op interface \
    ports { weights_load_15480 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8880 \
    name weights_load_15481 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15481 \
    op interface \
    ports { weights_load_15481 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8881 \
    name weights_load_15482 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15482 \
    op interface \
    ports { weights_load_15482 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8882 \
    name weights_load_15483 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15483 \
    op interface \
    ports { weights_load_15483 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8883 \
    name weights_load_15484 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15484 \
    op interface \
    ports { weights_load_15484 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8884 \
    name weights_load_15485 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15485 \
    op interface \
    ports { weights_load_15485 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8885 \
    name weights_load_15486 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15486 \
    op interface \
    ports { weights_load_15486 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8886 \
    name weights_load_15487 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15487 \
    op interface \
    ports { weights_load_15487 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8887 \
    name weights_load_15488 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15488 \
    op interface \
    ports { weights_load_15488 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8888 \
    name weights_load_15489 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15489 \
    op interface \
    ports { weights_load_15489 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8889 \
    name weights_load_15490 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15490 \
    op interface \
    ports { weights_load_15490 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8890 \
    name weights_load_15491 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15491 \
    op interface \
    ports { weights_load_15491 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8891 \
    name weights_load_15492 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15492 \
    op interface \
    ports { weights_load_15492 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8892 \
    name weights_load_15493 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15493 \
    op interface \
    ports { weights_load_15493 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8893 \
    name weights_load_15494 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15494 \
    op interface \
    ports { weights_load_15494 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8894 \
    name weights_load_15495 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15495 \
    op interface \
    ports { weights_load_15495 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8895 \
    name weights_load_15496 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15496 \
    op interface \
    ports { weights_load_15496 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8896 \
    name weights_load_15497 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15497 \
    op interface \
    ports { weights_load_15497 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8897 \
    name weights_load_15498 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15498 \
    op interface \
    ports { weights_load_15498 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8898 \
    name weights_load_15499 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15499 \
    op interface \
    ports { weights_load_15499 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8899 \
    name weights_load_15500 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15500 \
    op interface \
    ports { weights_load_15500 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8900 \
    name weights_load_15501 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15501 \
    op interface \
    ports { weights_load_15501 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8901 \
    name weights_load_15502 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15502 \
    op interface \
    ports { weights_load_15502 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8902 \
    name weights_load_15503 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15503 \
    op interface \
    ports { weights_load_15503 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8903 \
    name weights_load_15504 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15504 \
    op interface \
    ports { weights_load_15504 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8904 \
    name weights_load_15505 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15505 \
    op interface \
    ports { weights_load_15505 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8905 \
    name weights_load_15506 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15506 \
    op interface \
    ports { weights_load_15506 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8906 \
    name weights_load_15507 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15507 \
    op interface \
    ports { weights_load_15507 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8907 \
    name weights_load_15508 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15508 \
    op interface \
    ports { weights_load_15508 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8908 \
    name weights_load_15509 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15509 \
    op interface \
    ports { weights_load_15509 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8909 \
    name weights_load_15510 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15510 \
    op interface \
    ports { weights_load_15510 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8910 \
    name weights_load_15511 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15511 \
    op interface \
    ports { weights_load_15511 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8911 \
    name weights_load_15512 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15512 \
    op interface \
    ports { weights_load_15512 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8912 \
    name weights_load_15513 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15513 \
    op interface \
    ports { weights_load_15513 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8913 \
    name weights_load_15514 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15514 \
    op interface \
    ports { weights_load_15514 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8914 \
    name weights_load_15515 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15515 \
    op interface \
    ports { weights_load_15515 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8915 \
    name weights_load_15516 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15516 \
    op interface \
    ports { weights_load_15516 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8916 \
    name weights_load_15517 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15517 \
    op interface \
    ports { weights_load_15517 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8917 \
    name weights_load_15518 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15518 \
    op interface \
    ports { weights_load_15518 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8918 \
    name weights_load_15519 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15519 \
    op interface \
    ports { weights_load_15519 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8919 \
    name weights_load_15520 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15520 \
    op interface \
    ports { weights_load_15520 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8920 \
    name weights_load_15521 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15521 \
    op interface \
    ports { weights_load_15521 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8921 \
    name weights_load_15522 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15522 \
    op interface \
    ports { weights_load_15522 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8922 \
    name weights_load_15523 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15523 \
    op interface \
    ports { weights_load_15523 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8923 \
    name weights_load_15524 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15524 \
    op interface \
    ports { weights_load_15524 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8924 \
    name weights_load_15525 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_15525 \
    op interface \
    ports { weights_load_15525 { I 32 vector } } \
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


