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
    id 18513 \
    name conv2d_64_padded_window_stream_30 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_30 \
    op interface \
    ports { conv2d_64_padded_window_stream_30_dout { I 288 vector } conv2d_64_padded_window_stream_30_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_30_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_30_empty_n { I 1 bit } conv2d_64_padded_window_stream_30_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18514 \
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
    id 18515 \
    name weights_load_4026 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4026 \
    op interface \
    ports { weights_load_4026 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18516 \
    name weights_load_4027 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4027 \
    op interface \
    ports { weights_load_4027 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18517 \
    name weights_load_4028 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4028 \
    op interface \
    ports { weights_load_4028 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18518 \
    name weights_load_4029 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4029 \
    op interface \
    ports { weights_load_4029 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18519 \
    name weights_load_4030 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4030 \
    op interface \
    ports { weights_load_4030 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18520 \
    name weights_load_4031 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4031 \
    op interface \
    ports { weights_load_4031 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18521 \
    name weights_load_4032 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4032 \
    op interface \
    ports { weights_load_4032 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18522 \
    name weights_load_4033 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4033 \
    op interface \
    ports { weights_load_4033 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18523 \
    name in_channel_map_stream_30 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_30 \
    op interface \
    ports { in_channel_map_stream_30_din { O 32 vector } in_channel_map_stream_30_num_data_valid { I 3 vector } in_channel_map_stream_30_fifo_cap { I 3 vector } in_channel_map_stream_30_full_n { I 1 bit } in_channel_map_stream_30_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18524 \
    name weights_load_4034 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4034 \
    op interface \
    ports { weights_load_4034 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18525 \
    name weights_load_4035 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4035 \
    op interface \
    ports { weights_load_4035 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18526 \
    name weights_load_4036 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4036 \
    op interface \
    ports { weights_load_4036 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18527 \
    name weights_load_4037 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4037 \
    op interface \
    ports { weights_load_4037 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18528 \
    name weights_load_4038 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4038 \
    op interface \
    ports { weights_load_4038 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18529 \
    name weights_load_4039 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4039 \
    op interface \
    ports { weights_load_4039 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18530 \
    name weights_load_4040 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4040 \
    op interface \
    ports { weights_load_4040 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18531 \
    name weights_load_4041 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4041 \
    op interface \
    ports { weights_load_4041 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18532 \
    name weights_load_4042 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4042 \
    op interface \
    ports { weights_load_4042 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18533 \
    name weights_load_4043 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4043 \
    op interface \
    ports { weights_load_4043 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18534 \
    name weights_load_4044 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4044 \
    op interface \
    ports { weights_load_4044 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18535 \
    name weights_load_4045 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4045 \
    op interface \
    ports { weights_load_4045 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18536 \
    name weights_load_4046 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4046 \
    op interface \
    ports { weights_load_4046 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18537 \
    name weights_load_4047 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4047 \
    op interface \
    ports { weights_load_4047 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18538 \
    name weights_load_4048 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4048 \
    op interface \
    ports { weights_load_4048 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18539 \
    name weights_load_4049 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4049 \
    op interface \
    ports { weights_load_4049 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18540 \
    name weights_load_4050 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4050 \
    op interface \
    ports { weights_load_4050 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18541 \
    name weights_load_4051 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4051 \
    op interface \
    ports { weights_load_4051 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18542 \
    name weights_load_4052 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4052 \
    op interface \
    ports { weights_load_4052 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18543 \
    name weights_load_4053 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4053 \
    op interface \
    ports { weights_load_4053 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18544 \
    name weights_load_4054 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4054 \
    op interface \
    ports { weights_load_4054 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18545 \
    name weights_load_4055 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4055 \
    op interface \
    ports { weights_load_4055 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18546 \
    name weights_load_4056 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4056 \
    op interface \
    ports { weights_load_4056 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18547 \
    name weights_load_4057 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4057 \
    op interface \
    ports { weights_load_4057 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18548 \
    name weights_load_4058 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4058 \
    op interface \
    ports { weights_load_4058 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18549 \
    name weights_load_4059 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4059 \
    op interface \
    ports { weights_load_4059 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18550 \
    name weights_load_4060 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4060 \
    op interface \
    ports { weights_load_4060 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18551 \
    name weights_load_4061 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4061 \
    op interface \
    ports { weights_load_4061 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18552 \
    name weights_load_4062 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4062 \
    op interface \
    ports { weights_load_4062 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18553 \
    name weights_load_4063 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4063 \
    op interface \
    ports { weights_load_4063 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18554 \
    name weights_load_4064 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4064 \
    op interface \
    ports { weights_load_4064 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18555 \
    name weights_load_4065 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4065 \
    op interface \
    ports { weights_load_4065 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18556 \
    name weights_load_4066 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4066 \
    op interface \
    ports { weights_load_4066 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18557 \
    name weights_load_4067 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4067 \
    op interface \
    ports { weights_load_4067 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18558 \
    name weights_load_4068 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4068 \
    op interface \
    ports { weights_load_4068 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18559 \
    name weights_load_4069 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4069 \
    op interface \
    ports { weights_load_4069 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18560 \
    name weights_load_4070 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4070 \
    op interface \
    ports { weights_load_4070 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18561 \
    name weights_load_4071 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4071 \
    op interface \
    ports { weights_load_4071 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18562 \
    name weights_load_4072 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4072 \
    op interface \
    ports { weights_load_4072 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18563 \
    name weights_load_4073 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4073 \
    op interface \
    ports { weights_load_4073 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18564 \
    name weights_load_4074 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4074 \
    op interface \
    ports { weights_load_4074 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18565 \
    name weights_load_4075 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4075 \
    op interface \
    ports { weights_load_4075 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18566 \
    name weights_load_4076 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4076 \
    op interface \
    ports { weights_load_4076 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18567 \
    name weights_load_4077 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4077 \
    op interface \
    ports { weights_load_4077 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18568 \
    name weights_load_4078 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4078 \
    op interface \
    ports { weights_load_4078 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18569 \
    name weights_load_4079 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4079 \
    op interface \
    ports { weights_load_4079 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18570 \
    name weights_load_4080 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4080 \
    op interface \
    ports { weights_load_4080 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18571 \
    name weights_load_4081 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4081 \
    op interface \
    ports { weights_load_4081 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18572 \
    name weights_load_4082 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4082 \
    op interface \
    ports { weights_load_4082 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18573 \
    name weights_load_4083 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4083 \
    op interface \
    ports { weights_load_4083 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18574 \
    name weights_load_4084 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4084 \
    op interface \
    ports { weights_load_4084 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18575 \
    name weights_load_4085 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4085 \
    op interface \
    ports { weights_load_4085 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18576 \
    name weights_load_4086 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4086 \
    op interface \
    ports { weights_load_4086 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18577 \
    name weights_load_4087 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4087 \
    op interface \
    ports { weights_load_4087 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18578 \
    name weights_load_4088 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4088 \
    op interface \
    ports { weights_load_4088 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18579 \
    name weights_load_4089 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4089 \
    op interface \
    ports { weights_load_4089 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18580 \
    name weights_load_4090 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4090 \
    op interface \
    ports { weights_load_4090 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18581 \
    name weights_load_4091 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4091 \
    op interface \
    ports { weights_load_4091 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18582 \
    name weights_load_4092 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4092 \
    op interface \
    ports { weights_load_4092 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18583 \
    name weights_load_4093 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4093 \
    op interface \
    ports { weights_load_4093 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18584 \
    name weights_load_4094 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4094 \
    op interface \
    ports { weights_load_4094 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18585 \
    name weights_load_4095 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4095 \
    op interface \
    ports { weights_load_4095 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18586 \
    name weights_load_4096 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4096 \
    op interface \
    ports { weights_load_4096 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18587 \
    name weights_load_4097 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4097 \
    op interface \
    ports { weights_load_4097 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18588 \
    name weights_load_4098 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4098 \
    op interface \
    ports { weights_load_4098 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18589 \
    name weights_load_4099 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4099 \
    op interface \
    ports { weights_load_4099 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18590 \
    name weights_load_4100 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4100 \
    op interface \
    ports { weights_load_4100 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18591 \
    name weights_load_4101 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4101 \
    op interface \
    ports { weights_load_4101 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18592 \
    name weights_load_4102 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4102 \
    op interface \
    ports { weights_load_4102 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18593 \
    name weights_load_4103 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4103 \
    op interface \
    ports { weights_load_4103 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18594 \
    name weights_load_4104 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4104 \
    op interface \
    ports { weights_load_4104 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18595 \
    name weights_load_4105 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4105 \
    op interface \
    ports { weights_load_4105 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18596 \
    name weights_load_4106 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4106 \
    op interface \
    ports { weights_load_4106 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18597 \
    name weights_load_4107 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4107 \
    op interface \
    ports { weights_load_4107 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18598 \
    name weights_load_4108 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4108 \
    op interface \
    ports { weights_load_4108 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18599 \
    name weights_load_4109 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4109 \
    op interface \
    ports { weights_load_4109 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18600 \
    name weights_load_4110 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4110 \
    op interface \
    ports { weights_load_4110 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18601 \
    name weights_load_4111 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4111 \
    op interface \
    ports { weights_load_4111 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18602 \
    name weights_load_4112 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4112 \
    op interface \
    ports { weights_load_4112 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18603 \
    name weights_load_4113 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4113 \
    op interface \
    ports { weights_load_4113 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18604 \
    name weights_load_4114 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4114 \
    op interface \
    ports { weights_load_4114 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18605 \
    name weights_load_4115 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4115 \
    op interface \
    ports { weights_load_4115 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18606 \
    name weights_load_4116 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4116 \
    op interface \
    ports { weights_load_4116 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18607 \
    name weights_load_4117 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4117 \
    op interface \
    ports { weights_load_4117 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18608 \
    name weights_load_4118 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4118 \
    op interface \
    ports { weights_load_4118 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18609 \
    name weights_load_4119 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4119 \
    op interface \
    ports { weights_load_4119 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18610 \
    name weights_load_4120 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4120 \
    op interface \
    ports { weights_load_4120 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18611 \
    name weights_load_4121 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4121 \
    op interface \
    ports { weights_load_4121 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18612 \
    name weights_load_4122 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4122 \
    op interface \
    ports { weights_load_4122 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18613 \
    name weights_load_4123 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4123 \
    op interface \
    ports { weights_load_4123 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18614 \
    name weights_load_4124 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4124 \
    op interface \
    ports { weights_load_4124 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18615 \
    name weights_load_4125 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4125 \
    op interface \
    ports { weights_load_4125 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18616 \
    name weights_load_4126 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4126 \
    op interface \
    ports { weights_load_4126 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18617 \
    name weights_load_4127 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4127 \
    op interface \
    ports { weights_load_4127 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18618 \
    name weights_load_4128 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4128 \
    op interface \
    ports { weights_load_4128 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18619 \
    name weights_load_4129 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4129 \
    op interface \
    ports { weights_load_4129 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18620 \
    name weights_load_4130 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4130 \
    op interface \
    ports { weights_load_4130 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18621 \
    name weights_load_4131 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4131 \
    op interface \
    ports { weights_load_4131 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18622 \
    name weights_load_4132 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4132 \
    op interface \
    ports { weights_load_4132 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18623 \
    name weights_load_4133 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4133 \
    op interface \
    ports { weights_load_4133 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18624 \
    name weights_load_4134 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4134 \
    op interface \
    ports { weights_load_4134 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18625 \
    name weights_load_4135 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4135 \
    op interface \
    ports { weights_load_4135 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18626 \
    name weights_load_4136 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4136 \
    op interface \
    ports { weights_load_4136 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18627 \
    name weights_load_4137 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4137 \
    op interface \
    ports { weights_load_4137 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18628 \
    name weights_load_4138 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4138 \
    op interface \
    ports { weights_load_4138 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18629 \
    name weights_load_4139 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4139 \
    op interface \
    ports { weights_load_4139 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18630 \
    name weights_load_4140 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4140 \
    op interface \
    ports { weights_load_4140 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18631 \
    name weights_load_4141 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4141 \
    op interface \
    ports { weights_load_4141 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18632 \
    name weights_load_4142 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4142 \
    op interface \
    ports { weights_load_4142 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18633 \
    name weights_load_4143 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4143 \
    op interface \
    ports { weights_load_4143 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18634 \
    name weights_load_4144 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4144 \
    op interface \
    ports { weights_load_4144 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18635 \
    name weights_load_4145 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4145 \
    op interface \
    ports { weights_load_4145 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18636 \
    name weights_load_4146 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4146 \
    op interface \
    ports { weights_load_4146 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18637 \
    name weights_load_4147 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4147 \
    op interface \
    ports { weights_load_4147 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18638 \
    name weights_load_4148 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4148 \
    op interface \
    ports { weights_load_4148 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18639 \
    name weights_load_4149 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4149 \
    op interface \
    ports { weights_load_4149 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18640 \
    name weights_load_4150 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4150 \
    op interface \
    ports { weights_load_4150 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18641 \
    name weights_load_4151 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4151 \
    op interface \
    ports { weights_load_4151 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18642 \
    name weights_load_4152 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4152 \
    op interface \
    ports { weights_load_4152 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18643 \
    name weights_load_4153 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4153 \
    op interface \
    ports { weights_load_4153 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18644 \
    name weights_load_4154 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4154 \
    op interface \
    ports { weights_load_4154 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18645 \
    name weights_load_4155 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4155 \
    op interface \
    ports { weights_load_4155 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18646 \
    name weights_load_4156 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4156 \
    op interface \
    ports { weights_load_4156 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18647 \
    name weights_load_4157 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4157 \
    op interface \
    ports { weights_load_4157 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18648 \
    name weights_load_4158 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4158 \
    op interface \
    ports { weights_load_4158 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18649 \
    name weights_load_4159 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4159 \
    op interface \
    ports { weights_load_4159 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18650 \
    name weights_load_4160 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4160 \
    op interface \
    ports { weights_load_4160 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18651 \
    name weights_load_4161 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4161 \
    op interface \
    ports { weights_load_4161 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18652 \
    name weights_load_4162 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4162 \
    op interface \
    ports { weights_load_4162 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18653 \
    name weights_load_4163 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4163 \
    op interface \
    ports { weights_load_4163 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18654 \
    name weights_load_4164 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4164 \
    op interface \
    ports { weights_load_4164 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18655 \
    name weights_load_4165 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4165 \
    op interface \
    ports { weights_load_4165 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18656 \
    name weights_load_4166 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4166 \
    op interface \
    ports { weights_load_4166 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18657 \
    name weights_load_4167 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4167 \
    op interface \
    ports { weights_load_4167 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18658 \
    name weights_load_4168 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4168 \
    op interface \
    ports { weights_load_4168 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18659 \
    name weights_load_4169 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4169 \
    op interface \
    ports { weights_load_4169 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18660 \
    name weights_load_4170 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4170 \
    op interface \
    ports { weights_load_4170 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18661 \
    name weights_load_4171 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4171 \
    op interface \
    ports { weights_load_4171 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18662 \
    name weights_load_4172 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4172 \
    op interface \
    ports { weights_load_4172 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18663 \
    name weights_load_4173 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4173 \
    op interface \
    ports { weights_load_4173 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18664 \
    name weights_load_4174 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4174 \
    op interface \
    ports { weights_load_4174 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18665 \
    name weights_load_4175 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4175 \
    op interface \
    ports { weights_load_4175 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18666 \
    name weights_load_4176 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4176 \
    op interface \
    ports { weights_load_4176 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18667 \
    name weights_load_4177 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4177 \
    op interface \
    ports { weights_load_4177 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18668 \
    name weights_load_4178 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4178 \
    op interface \
    ports { weights_load_4178 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18669 \
    name weights_load_4179 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4179 \
    op interface \
    ports { weights_load_4179 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18670 \
    name weights_load_4180 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4180 \
    op interface \
    ports { weights_load_4180 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18671 \
    name weights_load_4181 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4181 \
    op interface \
    ports { weights_load_4181 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18672 \
    name weights_load_4182 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4182 \
    op interface \
    ports { weights_load_4182 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18673 \
    name weights_load_4183 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4183 \
    op interface \
    ports { weights_load_4183 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18674 \
    name weights_load_4184 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4184 \
    op interface \
    ports { weights_load_4184 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18675 \
    name weights_load_4185 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4185 \
    op interface \
    ports { weights_load_4185 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18676 \
    name weights_load_4186 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4186 \
    op interface \
    ports { weights_load_4186 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18677 \
    name weights_load_4187 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4187 \
    op interface \
    ports { weights_load_4187 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18678 \
    name weights_load_4188 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4188 \
    op interface \
    ports { weights_load_4188 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18679 \
    name weights_load_4189 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4189 \
    op interface \
    ports { weights_load_4189 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18680 \
    name weights_load_4190 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4190 \
    op interface \
    ports { weights_load_4190 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18681 \
    name weights_load_4191 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4191 \
    op interface \
    ports { weights_load_4191 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18682 \
    name weights_load_4192 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4192 \
    op interface \
    ports { weights_load_4192 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18683 \
    name weights_load_4193 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4193 \
    op interface \
    ports { weights_load_4193 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18684 \
    name weights_load_4194 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4194 \
    op interface \
    ports { weights_load_4194 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18685 \
    name weights_load_4195 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4195 \
    op interface \
    ports { weights_load_4195 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18686 \
    name weights_load_4196 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4196 \
    op interface \
    ports { weights_load_4196 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18687 \
    name weights_load_4197 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4197 \
    op interface \
    ports { weights_load_4197 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18688 \
    name weights_load_4198 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4198 \
    op interface \
    ports { weights_load_4198 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18689 \
    name weights_load_4199 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4199 \
    op interface \
    ports { weights_load_4199 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18690 \
    name weights_load_4200 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4200 \
    op interface \
    ports { weights_load_4200 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18691 \
    name weights_load_4201 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4201 \
    op interface \
    ports { weights_load_4201 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18692 \
    name weights_load_4202 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4202 \
    op interface \
    ports { weights_load_4202 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18693 \
    name weights_load_4203 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4203 \
    op interface \
    ports { weights_load_4203 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18694 \
    name weights_load_4204 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4204 \
    op interface \
    ports { weights_load_4204 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18695 \
    name weights_load_4205 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4205 \
    op interface \
    ports { weights_load_4205 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18696 \
    name weights_load_4206 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4206 \
    op interface \
    ports { weights_load_4206 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18697 \
    name weights_load_4207 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4207 \
    op interface \
    ports { weights_load_4207 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18698 \
    name weights_load_4208 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4208 \
    op interface \
    ports { weights_load_4208 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18699 \
    name weights_load_4209 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4209 \
    op interface \
    ports { weights_load_4209 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18700 \
    name weights_load_4210 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4210 \
    op interface \
    ports { weights_load_4210 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18701 \
    name weights_load_4211 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4211 \
    op interface \
    ports { weights_load_4211 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18702 \
    name weights_load_4212 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4212 \
    op interface \
    ports { weights_load_4212 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18703 \
    name weights_load_4213 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4213 \
    op interface \
    ports { weights_load_4213 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18704 \
    name weights_load_4214 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4214 \
    op interface \
    ports { weights_load_4214 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18705 \
    name weights_load_4215 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4215 \
    op interface \
    ports { weights_load_4215 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18706 \
    name weights_load_4216 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4216 \
    op interface \
    ports { weights_load_4216 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18707 \
    name weights_load_4217 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4217 \
    op interface \
    ports { weights_load_4217 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18708 \
    name weights_load_4218 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4218 \
    op interface \
    ports { weights_load_4218 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18709 \
    name weights_load_4219 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4219 \
    op interface \
    ports { weights_load_4219 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18710 \
    name weights_load_4220 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4220 \
    op interface \
    ports { weights_load_4220 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18711 \
    name weights_load_4221 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4221 \
    op interface \
    ports { weights_load_4221 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18712 \
    name weights_load_4222 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4222 \
    op interface \
    ports { weights_load_4222 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18713 \
    name weights_load_4223 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4223 \
    op interface \
    ports { weights_load_4223 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18714 \
    name weights_load_4224 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4224 \
    op interface \
    ports { weights_load_4224 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18715 \
    name weights_load_4225 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4225 \
    op interface \
    ports { weights_load_4225 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18716 \
    name weights_load_4226 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4226 \
    op interface \
    ports { weights_load_4226 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18717 \
    name weights_load_4227 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4227 \
    op interface \
    ports { weights_load_4227 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18718 \
    name weights_load_4228 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4228 \
    op interface \
    ports { weights_load_4228 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18719 \
    name weights_load_4229 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4229 \
    op interface \
    ports { weights_load_4229 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18720 \
    name weights_load_4230 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4230 \
    op interface \
    ports { weights_load_4230 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18721 \
    name weights_load_4231 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4231 \
    op interface \
    ports { weights_load_4231 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18722 \
    name weights_load_4232 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4232 \
    op interface \
    ports { weights_load_4232 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18723 \
    name weights_load_4233 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4233 \
    op interface \
    ports { weights_load_4233 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18724 \
    name weights_load_4234 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4234 \
    op interface \
    ports { weights_load_4234 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18725 \
    name weights_load_4235 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4235 \
    op interface \
    ports { weights_load_4235 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18726 \
    name weights_load_4236 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4236 \
    op interface \
    ports { weights_load_4236 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18727 \
    name weights_load_4237 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4237 \
    op interface \
    ports { weights_load_4237 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18728 \
    name weights_load_4238 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4238 \
    op interface \
    ports { weights_load_4238 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18729 \
    name weights_load_4239 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4239 \
    op interface \
    ports { weights_load_4239 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18730 \
    name weights_load_4240 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4240 \
    op interface \
    ports { weights_load_4240 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18731 \
    name weights_load_4241 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4241 \
    op interface \
    ports { weights_load_4241 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18732 \
    name weights_load_4242 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4242 \
    op interface \
    ports { weights_load_4242 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18733 \
    name weights_load_4243 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4243 \
    op interface \
    ports { weights_load_4243 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18734 \
    name weights_load_4244 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4244 \
    op interface \
    ports { weights_load_4244 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18735 \
    name weights_load_4245 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4245 \
    op interface \
    ports { weights_load_4245 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18736 \
    name weights_load_4246 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4246 \
    op interface \
    ports { weights_load_4246 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18737 \
    name weights_load_4247 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4247 \
    op interface \
    ports { weights_load_4247 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18738 \
    name weights_load_4248 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4248 \
    op interface \
    ports { weights_load_4248 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18739 \
    name weights_load_4249 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4249 \
    op interface \
    ports { weights_load_4249 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18740 \
    name weights_load_4250 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4250 \
    op interface \
    ports { weights_load_4250 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18741 \
    name weights_load_4251 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4251 \
    op interface \
    ports { weights_load_4251 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18742 \
    name weights_load_4252 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4252 \
    op interface \
    ports { weights_load_4252 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18743 \
    name weights_load_4253 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4253 \
    op interface \
    ports { weights_load_4253 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18744 \
    name weights_load_4254 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4254 \
    op interface \
    ports { weights_load_4254 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18745 \
    name weights_load_4255 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4255 \
    op interface \
    ports { weights_load_4255 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18746 \
    name weights_load_4256 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4256 \
    op interface \
    ports { weights_load_4256 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18747 \
    name weights_load_4257 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4257 \
    op interface \
    ports { weights_load_4257 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18748 \
    name weights_load_4258 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4258 \
    op interface \
    ports { weights_load_4258 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18749 \
    name weights_load_4259 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4259 \
    op interface \
    ports { weights_load_4259 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18750 \
    name weights_load_4260 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4260 \
    op interface \
    ports { weights_load_4260 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18751 \
    name weights_load_4261 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4261 \
    op interface \
    ports { weights_load_4261 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18752 \
    name weights_load_4262 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4262 \
    op interface \
    ports { weights_load_4262 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18753 \
    name weights_load_4263 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4263 \
    op interface \
    ports { weights_load_4263 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18754 \
    name weights_load_4264 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4264 \
    op interface \
    ports { weights_load_4264 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18755 \
    name weights_load_4265 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4265 \
    op interface \
    ports { weights_load_4265 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18756 \
    name weights_load_4266 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4266 \
    op interface \
    ports { weights_load_4266 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18757 \
    name weights_load_4267 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4267 \
    op interface \
    ports { weights_load_4267 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18758 \
    name weights_load_4268 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4268 \
    op interface \
    ports { weights_load_4268 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18759 \
    name weights_load_4269 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4269 \
    op interface \
    ports { weights_load_4269 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18760 \
    name weights_load_4270 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4270 \
    op interface \
    ports { weights_load_4270 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18761 \
    name weights_load_4271 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4271 \
    op interface \
    ports { weights_load_4271 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18762 \
    name weights_load_4272 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4272 \
    op interface \
    ports { weights_load_4272 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18763 \
    name weights_load_4273 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4273 \
    op interface \
    ports { weights_load_4273 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18764 \
    name weights_load_4274 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4274 \
    op interface \
    ports { weights_load_4274 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18765 \
    name weights_load_4275 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4275 \
    op interface \
    ports { weights_load_4275 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18766 \
    name weights_load_4276 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4276 \
    op interface \
    ports { weights_load_4276 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18767 \
    name weights_load_4277 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4277 \
    op interface \
    ports { weights_load_4277 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18768 \
    name weights_load_4278 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4278 \
    op interface \
    ports { weights_load_4278 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18769 \
    name weights_load_4279 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4279 \
    op interface \
    ports { weights_load_4279 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18770 \
    name weights_load_4280 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4280 \
    op interface \
    ports { weights_load_4280 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18771 \
    name weights_load_4281 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4281 \
    op interface \
    ports { weights_load_4281 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18772 \
    name weights_load_4282 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4282 \
    op interface \
    ports { weights_load_4282 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18773 \
    name weights_load_4283 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4283 \
    op interface \
    ports { weights_load_4283 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18774 \
    name weights_load_4284 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4284 \
    op interface \
    ports { weights_load_4284 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18775 \
    name weights_load_4285 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4285 \
    op interface \
    ports { weights_load_4285 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18776 \
    name weights_load_4286 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4286 \
    op interface \
    ports { weights_load_4286 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18777 \
    name weights_load_4287 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4287 \
    op interface \
    ports { weights_load_4287 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18778 \
    name weights_load_4288 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4288 \
    op interface \
    ports { weights_load_4288 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18779 \
    name weights_load_4289 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4289 \
    op interface \
    ports { weights_load_4289 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18780 \
    name weights_load_4290 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4290 \
    op interface \
    ports { weights_load_4290 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18781 \
    name weights_load_4291 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4291 \
    op interface \
    ports { weights_load_4291 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18782 \
    name weights_load_4292 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4292 \
    op interface \
    ports { weights_load_4292 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18783 \
    name weights_load_4293 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4293 \
    op interface \
    ports { weights_load_4293 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18784 \
    name weights_load_4294 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4294 \
    op interface \
    ports { weights_load_4294 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18785 \
    name weights_load_4295 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4295 \
    op interface \
    ports { weights_load_4295 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18786 \
    name weights_load_4296 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4296 \
    op interface \
    ports { weights_load_4296 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18787 \
    name weights_load_4297 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4297 \
    op interface \
    ports { weights_load_4297 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18788 \
    name weights_load_4298 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4298 \
    op interface \
    ports { weights_load_4298 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18789 \
    name weights_load_4299 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4299 \
    op interface \
    ports { weights_load_4299 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18790 \
    name weights_load_4300 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4300 \
    op interface \
    ports { weights_load_4300 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18791 \
    name weights_load_4301 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4301 \
    op interface \
    ports { weights_load_4301 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18792 \
    name weights_load_4302 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4302 \
    op interface \
    ports { weights_load_4302 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18793 \
    name weights_load_4303 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4303 \
    op interface \
    ports { weights_load_4303 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18794 \
    name weights_load_4304 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4304 \
    op interface \
    ports { weights_load_4304 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18795 \
    name weights_load_4305 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4305 \
    op interface \
    ports { weights_load_4305 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18796 \
    name weights_load_4306 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4306 \
    op interface \
    ports { weights_load_4306 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18797 \
    name weights_load_4307 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4307 \
    op interface \
    ports { weights_load_4307 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18798 \
    name weights_load_4308 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4308 \
    op interface \
    ports { weights_load_4308 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18799 \
    name weights_load_4309 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4309 \
    op interface \
    ports { weights_load_4309 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18800 \
    name weights_load_4310 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4310 \
    op interface \
    ports { weights_load_4310 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18801 \
    name weights_load_4311 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4311 \
    op interface \
    ports { weights_load_4311 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18802 \
    name weights_load_4312 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4312 \
    op interface \
    ports { weights_load_4312 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18803 \
    name weights_load_4313 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4313 \
    op interface \
    ports { weights_load_4313 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18804 \
    name weights_load_4314 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4314 \
    op interface \
    ports { weights_load_4314 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18805 \
    name weights_load_4315 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4315 \
    op interface \
    ports { weights_load_4315 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18806 \
    name weights_load_4316 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4316 \
    op interface \
    ports { weights_load_4316 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18807 \
    name weights_load_4317 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4317 \
    op interface \
    ports { weights_load_4317 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18808 \
    name weights_load_4318 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4318 \
    op interface \
    ports { weights_load_4318 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18809 \
    name weights_load_4319 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4319 \
    op interface \
    ports { weights_load_4319 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18810 \
    name weights_load_4320 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4320 \
    op interface \
    ports { weights_load_4320 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18811 \
    name weights_load_4321 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4321 \
    op interface \
    ports { weights_load_4321 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18812 \
    name weights_load_4322 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4322 \
    op interface \
    ports { weights_load_4322 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18813 \
    name weights_load_4323 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4323 \
    op interface \
    ports { weights_load_4323 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18814 \
    name weights_load_4324 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4324 \
    op interface \
    ports { weights_load_4324 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18815 \
    name weights_load_4325 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4325 \
    op interface \
    ports { weights_load_4325 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18816 \
    name weights_load_4326 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4326 \
    op interface \
    ports { weights_load_4326 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18817 \
    name weights_load_4327 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4327 \
    op interface \
    ports { weights_load_4327 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18818 \
    name weights_load_4328 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4328 \
    op interface \
    ports { weights_load_4328 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18819 \
    name weights_load_4329 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4329 \
    op interface \
    ports { weights_load_4329 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18820 \
    name weights_load_4330 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4330 \
    op interface \
    ports { weights_load_4330 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18821 \
    name weights_load_4331 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4331 \
    op interface \
    ports { weights_load_4331 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18822 \
    name weights_load_4332 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4332 \
    op interface \
    ports { weights_load_4332 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18823 \
    name weights_load_4333 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4333 \
    op interface \
    ports { weights_load_4333 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18824 \
    name weights_load_4334 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4334 \
    op interface \
    ports { weights_load_4334 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18825 \
    name weights_load_4335 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4335 \
    op interface \
    ports { weights_load_4335 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18826 \
    name weights_load_4336 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4336 \
    op interface \
    ports { weights_load_4336 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18827 \
    name weights_load_4337 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4337 \
    op interface \
    ports { weights_load_4337 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18828 \
    name weights_load_4338 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4338 \
    op interface \
    ports { weights_load_4338 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18829 \
    name weights_load_4339 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4339 \
    op interface \
    ports { weights_load_4339 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18830 \
    name weights_load_4340 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4340 \
    op interface \
    ports { weights_load_4340 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18831 \
    name weights_load_4341 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4341 \
    op interface \
    ports { weights_load_4341 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18832 \
    name weights_load_4342 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4342 \
    op interface \
    ports { weights_load_4342 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18833 \
    name weights_load_4343 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4343 \
    op interface \
    ports { weights_load_4343 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18834 \
    name weights_load_4344 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4344 \
    op interface \
    ports { weights_load_4344 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18835 \
    name weights_load_4345 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4345 \
    op interface \
    ports { weights_load_4345 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18836 \
    name weights_load_4346 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4346 \
    op interface \
    ports { weights_load_4346 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18837 \
    name weights_load_4347 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4347 \
    op interface \
    ports { weights_load_4347 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18838 \
    name weights_load_4348 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4348 \
    op interface \
    ports { weights_load_4348 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18839 \
    name weights_load_4349 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4349 \
    op interface \
    ports { weights_load_4349 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18840 \
    name weights_load_4350 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4350 \
    op interface \
    ports { weights_load_4350 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18841 \
    name weights_load_4351 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4351 \
    op interface \
    ports { weights_load_4351 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18842 \
    name weights_load_4352 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4352 \
    op interface \
    ports { weights_load_4352 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18843 \
    name weights_load_4353 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4353 \
    op interface \
    ports { weights_load_4353 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18844 \
    name weights_load_4354 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4354 \
    op interface \
    ports { weights_load_4354 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18845 \
    name weights_load_4355 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4355 \
    op interface \
    ports { weights_load_4355 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18846 \
    name weights_load_4356 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4356 \
    op interface \
    ports { weights_load_4356 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18847 \
    name weights_load_4357 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4357 \
    op interface \
    ports { weights_load_4357 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18848 \
    name weights_load_4358 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4358 \
    op interface \
    ports { weights_load_4358 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18849 \
    name weights_load_4359 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4359 \
    op interface \
    ports { weights_load_4359 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18850 \
    name weights_load_4360 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4360 \
    op interface \
    ports { weights_load_4360 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18851 \
    name weights_load_4361 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4361 \
    op interface \
    ports { weights_load_4361 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18852 \
    name weights_load_4362 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4362 \
    op interface \
    ports { weights_load_4362 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18853 \
    name weights_load_4363 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4363 \
    op interface \
    ports { weights_load_4363 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18854 \
    name weights_load_4364 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4364 \
    op interface \
    ports { weights_load_4364 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18855 \
    name weights_load_4365 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4365 \
    op interface \
    ports { weights_load_4365 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18856 \
    name weights_load_4366 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4366 \
    op interface \
    ports { weights_load_4366 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18857 \
    name weights_load_4367 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4367 \
    op interface \
    ports { weights_load_4367 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18858 \
    name weights_load_4368 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4368 \
    op interface \
    ports { weights_load_4368 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18859 \
    name weights_load_4369 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4369 \
    op interface \
    ports { weights_load_4369 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18860 \
    name weights_load_4370 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4370 \
    op interface \
    ports { weights_load_4370 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18861 \
    name weights_load_4371 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4371 \
    op interface \
    ports { weights_load_4371 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18862 \
    name weights_load_4372 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4372 \
    op interface \
    ports { weights_load_4372 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18863 \
    name weights_load_4373 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4373 \
    op interface \
    ports { weights_load_4373 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18864 \
    name weights_load_4374 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4374 \
    op interface \
    ports { weights_load_4374 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18865 \
    name weights_load_4375 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4375 \
    op interface \
    ports { weights_load_4375 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18866 \
    name weights_load_4376 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4376 \
    op interface \
    ports { weights_load_4376 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18867 \
    name weights_load_4377 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4377 \
    op interface \
    ports { weights_load_4377 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18868 \
    name weights_load_4378 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4378 \
    op interface \
    ports { weights_load_4378 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18869 \
    name weights_load_4379 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4379 \
    op interface \
    ports { weights_load_4379 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18870 \
    name weights_load_4380 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4380 \
    op interface \
    ports { weights_load_4380 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18871 \
    name weights_load_4381 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4381 \
    op interface \
    ports { weights_load_4381 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18872 \
    name weights_load_4382 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4382 \
    op interface \
    ports { weights_load_4382 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18873 \
    name weights_load_4383 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4383 \
    op interface \
    ports { weights_load_4383 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18874 \
    name weights_load_4384 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4384 \
    op interface \
    ports { weights_load_4384 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18875 \
    name weights_load_4385 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4385 \
    op interface \
    ports { weights_load_4385 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18876 \
    name weights_load_4386 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4386 \
    op interface \
    ports { weights_load_4386 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18877 \
    name weights_load_4387 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4387 \
    op interface \
    ports { weights_load_4387 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18878 \
    name weights_load_4388 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4388 \
    op interface \
    ports { weights_load_4388 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18879 \
    name weights_load_4389 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4389 \
    op interface \
    ports { weights_load_4389 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18880 \
    name weights_load_4390 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4390 \
    op interface \
    ports { weights_load_4390 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18881 \
    name weights_load_4391 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4391 \
    op interface \
    ports { weights_load_4391 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18882 \
    name weights_load_4392 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4392 \
    op interface \
    ports { weights_load_4392 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18883 \
    name weights_load_4393 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4393 \
    op interface \
    ports { weights_load_4393 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18884 \
    name weights_load_4394 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4394 \
    op interface \
    ports { weights_load_4394 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18885 \
    name weights_load_4395 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4395 \
    op interface \
    ports { weights_load_4395 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18886 \
    name weights_load_4396 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4396 \
    op interface \
    ports { weights_load_4396 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18887 \
    name weights_load_4397 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4397 \
    op interface \
    ports { weights_load_4397 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18888 \
    name weights_load_4398 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4398 \
    op interface \
    ports { weights_load_4398 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18889 \
    name weights_load_4399 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4399 \
    op interface \
    ports { weights_load_4399 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18890 \
    name weights_load_4400 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4400 \
    op interface \
    ports { weights_load_4400 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18891 \
    name weights_load_4401 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4401 \
    op interface \
    ports { weights_load_4401 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18892 \
    name weights_load_4402 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4402 \
    op interface \
    ports { weights_load_4402 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18893 \
    name weights_load_4403 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4403 \
    op interface \
    ports { weights_load_4403 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18894 \
    name weights_load_4404 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4404 \
    op interface \
    ports { weights_load_4404 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18895 \
    name weights_load_4405 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4405 \
    op interface \
    ports { weights_load_4405 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18896 \
    name weights_load_4406 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4406 \
    op interface \
    ports { weights_load_4406 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18897 \
    name weights_load_4407 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4407 \
    op interface \
    ports { weights_load_4407 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18898 \
    name weights_load_4408 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4408 \
    op interface \
    ports { weights_load_4408 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18899 \
    name weights_load_4409 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4409 \
    op interface \
    ports { weights_load_4409 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18900 \
    name weights_load_4410 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4410 \
    op interface \
    ports { weights_load_4410 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18901 \
    name weights_load_4411 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4411 \
    op interface \
    ports { weights_load_4411 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18902 \
    name weights_load_4412 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4412 \
    op interface \
    ports { weights_load_4412 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18903 \
    name weights_load_4413 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4413 \
    op interface \
    ports { weights_load_4413 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18904 \
    name weights_load_4414 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4414 \
    op interface \
    ports { weights_load_4414 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18905 \
    name weights_load_4415 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4415 \
    op interface \
    ports { weights_load_4415 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18906 \
    name weights_load_4416 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4416 \
    op interface \
    ports { weights_load_4416 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18907 \
    name weights_load_4417 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4417 \
    op interface \
    ports { weights_load_4417 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18908 \
    name weights_load_4418 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4418 \
    op interface \
    ports { weights_load_4418 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18909 \
    name weights_load_4419 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4419 \
    op interface \
    ports { weights_load_4419 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18910 \
    name weights_load_4420 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4420 \
    op interface \
    ports { weights_load_4420 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18911 \
    name weights_load_4421 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4421 \
    op interface \
    ports { weights_load_4421 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18912 \
    name weights_load_4422 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4422 \
    op interface \
    ports { weights_load_4422 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18913 \
    name weights_load_4423 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4423 \
    op interface \
    ports { weights_load_4423 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18914 \
    name weights_load_4424 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4424 \
    op interface \
    ports { weights_load_4424 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18915 \
    name weights_load_4425 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4425 \
    op interface \
    ports { weights_load_4425 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18916 \
    name weights_load_4426 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4426 \
    op interface \
    ports { weights_load_4426 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18917 \
    name weights_load_4427 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4427 \
    op interface \
    ports { weights_load_4427 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18918 \
    name weights_load_4428 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4428 \
    op interface \
    ports { weights_load_4428 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18919 \
    name weights_load_4429 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4429 \
    op interface \
    ports { weights_load_4429 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18920 \
    name weights_load_4430 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4430 \
    op interface \
    ports { weights_load_4430 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18921 \
    name weights_load_4431 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4431 \
    op interface \
    ports { weights_load_4431 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18922 \
    name weights_load_4432 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4432 \
    op interface \
    ports { weights_load_4432 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18923 \
    name weights_load_4433 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4433 \
    op interface \
    ports { weights_load_4433 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18924 \
    name weights_load_4434 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4434 \
    op interface \
    ports { weights_load_4434 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18925 \
    name weights_load_4435 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4435 \
    op interface \
    ports { weights_load_4435 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18926 \
    name weights_load_4436 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4436 \
    op interface \
    ports { weights_load_4436 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18927 \
    name weights_load_4437 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4437 \
    op interface \
    ports { weights_load_4437 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18928 \
    name weights_load_4438 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4438 \
    op interface \
    ports { weights_load_4438 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18929 \
    name weights_load_4439 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4439 \
    op interface \
    ports { weights_load_4439 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18930 \
    name weights_load_4440 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4440 \
    op interface \
    ports { weights_load_4440 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18931 \
    name weights_load_4441 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4441 \
    op interface \
    ports { weights_load_4441 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18932 \
    name weights_load_4442 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4442 \
    op interface \
    ports { weights_load_4442 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18933 \
    name weights_load_4443 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4443 \
    op interface \
    ports { weights_load_4443 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18934 \
    name weights_load_4444 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4444 \
    op interface \
    ports { weights_load_4444 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18935 \
    name weights_load_4445 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4445 \
    op interface \
    ports { weights_load_4445 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18936 \
    name weights_load_4446 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4446 \
    op interface \
    ports { weights_load_4446 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18937 \
    name weights_load_4447 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4447 \
    op interface \
    ports { weights_load_4447 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18938 \
    name weights_load_4448 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4448 \
    op interface \
    ports { weights_load_4448 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18939 \
    name weights_load_4449 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4449 \
    op interface \
    ports { weights_load_4449 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18940 \
    name weights_load_4450 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4450 \
    op interface \
    ports { weights_load_4450 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18941 \
    name weights_load_4451 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4451 \
    op interface \
    ports { weights_load_4451 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18942 \
    name weights_load_4452 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4452 \
    op interface \
    ports { weights_load_4452 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18943 \
    name weights_load_4453 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4453 \
    op interface \
    ports { weights_load_4453 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18944 \
    name weights_load_4454 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4454 \
    op interface \
    ports { weights_load_4454 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18945 \
    name weights_load_4455 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4455 \
    op interface \
    ports { weights_load_4455 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18946 \
    name weights_load_4456 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4456 \
    op interface \
    ports { weights_load_4456 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18947 \
    name weights_load_4457 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4457 \
    op interface \
    ports { weights_load_4457 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18948 \
    name weights_load_4458 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4458 \
    op interface \
    ports { weights_load_4458 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18949 \
    name weights_load_4459 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4459 \
    op interface \
    ports { weights_load_4459 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18950 \
    name weights_load_4460 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4460 \
    op interface \
    ports { weights_load_4460 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18951 \
    name weights_load_4461 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4461 \
    op interface \
    ports { weights_load_4461 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18952 \
    name weights_load_4462 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4462 \
    op interface \
    ports { weights_load_4462 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18953 \
    name weights_load_4463 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4463 \
    op interface \
    ports { weights_load_4463 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18954 \
    name weights_load_4464 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4464 \
    op interface \
    ports { weights_load_4464 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18955 \
    name weights_load_4465 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4465 \
    op interface \
    ports { weights_load_4465 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18956 \
    name weights_load_4466 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4466 \
    op interface \
    ports { weights_load_4466 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18957 \
    name weights_load_4467 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4467 \
    op interface \
    ports { weights_load_4467 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18958 \
    name weights_load_4468 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4468 \
    op interface \
    ports { weights_load_4468 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18959 \
    name weights_load_4469 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4469 \
    op interface \
    ports { weights_load_4469 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18960 \
    name weights_load_4470 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4470 \
    op interface \
    ports { weights_load_4470 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18961 \
    name weights_load_4471 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4471 \
    op interface \
    ports { weights_load_4471 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18962 \
    name weights_load_4472 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4472 \
    op interface \
    ports { weights_load_4472 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18963 \
    name weights_load_4473 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4473 \
    op interface \
    ports { weights_load_4473 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18964 \
    name weights_load_4474 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4474 \
    op interface \
    ports { weights_load_4474 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18965 \
    name weights_load_4475 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4475 \
    op interface \
    ports { weights_load_4475 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18966 \
    name weights_load_4476 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4476 \
    op interface \
    ports { weights_load_4476 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18967 \
    name weights_load_4477 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4477 \
    op interface \
    ports { weights_load_4477 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18968 \
    name weights_load_4478 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4478 \
    op interface \
    ports { weights_load_4478 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18969 \
    name weights_load_4479 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4479 \
    op interface \
    ports { weights_load_4479 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18970 \
    name weights_load_4480 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4480 \
    op interface \
    ports { weights_load_4480 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18971 \
    name weights_load_4481 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4481 \
    op interface \
    ports { weights_load_4481 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18972 \
    name weights_load_4482 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4482 \
    op interface \
    ports { weights_load_4482 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18973 \
    name weights_load_4483 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4483 \
    op interface \
    ports { weights_load_4483 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18974 \
    name weights_load_4484 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4484 \
    op interface \
    ports { weights_load_4484 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18975 \
    name weights_load_4485 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4485 \
    op interface \
    ports { weights_load_4485 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18976 \
    name weights_load_4486 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4486 \
    op interface \
    ports { weights_load_4486 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18977 \
    name weights_load_4487 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4487 \
    op interface \
    ports { weights_load_4487 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18978 \
    name weights_load_4488 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4488 \
    op interface \
    ports { weights_load_4488 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18979 \
    name weights_load_4489 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4489 \
    op interface \
    ports { weights_load_4489 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18980 \
    name weights_load_4490 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4490 \
    op interface \
    ports { weights_load_4490 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18981 \
    name weights_load_4491 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4491 \
    op interface \
    ports { weights_load_4491 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18982 \
    name weights_load_4492 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4492 \
    op interface \
    ports { weights_load_4492 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18983 \
    name weights_load_4493 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4493 \
    op interface \
    ports { weights_load_4493 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18984 \
    name weights_load_4494 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4494 \
    op interface \
    ports { weights_load_4494 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18985 \
    name weights_load_4495 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4495 \
    op interface \
    ports { weights_load_4495 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18986 \
    name weights_load_4496 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4496 \
    op interface \
    ports { weights_load_4496 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18987 \
    name weights_load_4497 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4497 \
    op interface \
    ports { weights_load_4497 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18988 \
    name weights_load_4498 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4498 \
    op interface \
    ports { weights_load_4498 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18989 \
    name weights_load_4499 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4499 \
    op interface \
    ports { weights_load_4499 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18990 \
    name weights_load_4500 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4500 \
    op interface \
    ports { weights_load_4500 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18991 \
    name weights_load_4501 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4501 \
    op interface \
    ports { weights_load_4501 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18992 \
    name weights_load_4502 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4502 \
    op interface \
    ports { weights_load_4502 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18993 \
    name weights_load_4503 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4503 \
    op interface \
    ports { weights_load_4503 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18994 \
    name weights_load_4504 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4504 \
    op interface \
    ports { weights_load_4504 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18995 \
    name weights_load_4505 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4505 \
    op interface \
    ports { weights_load_4505 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18996 \
    name weights_load_4506 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4506 \
    op interface \
    ports { weights_load_4506 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18997 \
    name weights_load_4507 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4507 \
    op interface \
    ports { weights_load_4507 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18998 \
    name weights_load_4508 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4508 \
    op interface \
    ports { weights_load_4508 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18999 \
    name weights_load_4509 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4509 \
    op interface \
    ports { weights_load_4509 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19000 \
    name weights_load_4510 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4510 \
    op interface \
    ports { weights_load_4510 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19001 \
    name weights_load_4511 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4511 \
    op interface \
    ports { weights_load_4511 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19002 \
    name weights_load_4512 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4512 \
    op interface \
    ports { weights_load_4512 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19003 \
    name weights_load_4513 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4513 \
    op interface \
    ports { weights_load_4513 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19004 \
    name weights_load_4514 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4514 \
    op interface \
    ports { weights_load_4514 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19005 \
    name weights_load_4515 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4515 \
    op interface \
    ports { weights_load_4515 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19006 \
    name weights_load_4516 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4516 \
    op interface \
    ports { weights_load_4516 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19007 \
    name weights_load_4517 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4517 \
    op interface \
    ports { weights_load_4517 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19008 \
    name weights_load_4518 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4518 \
    op interface \
    ports { weights_load_4518 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19009 \
    name weights_load_4519 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4519 \
    op interface \
    ports { weights_load_4519 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19010 \
    name weights_load_4520 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4520 \
    op interface \
    ports { weights_load_4520 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19011 \
    name weights_load_4521 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4521 \
    op interface \
    ports { weights_load_4521 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19012 \
    name weights_load_4522 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4522 \
    op interface \
    ports { weights_load_4522 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19013 \
    name weights_load_4523 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4523 \
    op interface \
    ports { weights_load_4523 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19014 \
    name weights_load_4524 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4524 \
    op interface \
    ports { weights_load_4524 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19015 \
    name weights_load_4525 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4525 \
    op interface \
    ports { weights_load_4525 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19016 \
    name weights_load_4526 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4526 \
    op interface \
    ports { weights_load_4526 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19017 \
    name weights_load_4527 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4527 \
    op interface \
    ports { weights_load_4527 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19018 \
    name weights_load_4528 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4528 \
    op interface \
    ports { weights_load_4528 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19019 \
    name weights_load_4529 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4529 \
    op interface \
    ports { weights_load_4529 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19020 \
    name weights_load_4530 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4530 \
    op interface \
    ports { weights_load_4530 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19021 \
    name weights_load_4531 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4531 \
    op interface \
    ports { weights_load_4531 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19022 \
    name weights_load_4532 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4532 \
    op interface \
    ports { weights_load_4532 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19023 \
    name weights_load_4533 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4533 \
    op interface \
    ports { weights_load_4533 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19024 \
    name weights_load_4534 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4534 \
    op interface \
    ports { weights_load_4534 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19025 \
    name weights_load_4535 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4535 \
    op interface \
    ports { weights_load_4535 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19026 \
    name weights_load_4536 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4536 \
    op interface \
    ports { weights_load_4536 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19027 \
    name weights_load_4537 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4537 \
    op interface \
    ports { weights_load_4537 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19028 \
    name weights_load_4538 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4538 \
    op interface \
    ports { weights_load_4538 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19029 \
    name weights_load_4539 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4539 \
    op interface \
    ports { weights_load_4539 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19030 \
    name weights_load_4540 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4540 \
    op interface \
    ports { weights_load_4540 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19031 \
    name weights_load_4541 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4541 \
    op interface \
    ports { weights_load_4541 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19032 \
    name weights_load_4542 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4542 \
    op interface \
    ports { weights_load_4542 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19033 \
    name weights_load_4543 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4543 \
    op interface \
    ports { weights_load_4543 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19034 \
    name weights_load_4544 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4544 \
    op interface \
    ports { weights_load_4544 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19035 \
    name weights_load_4545 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4545 \
    op interface \
    ports { weights_load_4545 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19036 \
    name weights_load_4546 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4546 \
    op interface \
    ports { weights_load_4546 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19037 \
    name weights_load_4547 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4547 \
    op interface \
    ports { weights_load_4547 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19038 \
    name weights_load_4548 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4548 \
    op interface \
    ports { weights_load_4548 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19039 \
    name weights_load_4549 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4549 \
    op interface \
    ports { weights_load_4549 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19040 \
    name weights_load_4550 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4550 \
    op interface \
    ports { weights_load_4550 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19041 \
    name weights_load_4551 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4551 \
    op interface \
    ports { weights_load_4551 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19042 \
    name weights_load_4552 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4552 \
    op interface \
    ports { weights_load_4552 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19043 \
    name weights_load_4553 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4553 \
    op interface \
    ports { weights_load_4553 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19044 \
    name weights_load_4554 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4554 \
    op interface \
    ports { weights_load_4554 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19045 \
    name weights_load_4555 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4555 \
    op interface \
    ports { weights_load_4555 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19046 \
    name weights_load_4556 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4556 \
    op interface \
    ports { weights_load_4556 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19047 \
    name weights_load_4557 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4557 \
    op interface \
    ports { weights_load_4557 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19048 \
    name weights_load_4558 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4558 \
    op interface \
    ports { weights_load_4558 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19049 \
    name weights_load_4559 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4559 \
    op interface \
    ports { weights_load_4559 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19050 \
    name weights_load_4560 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4560 \
    op interface \
    ports { weights_load_4560 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19051 \
    name weights_load_4561 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4561 \
    op interface \
    ports { weights_load_4561 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19052 \
    name weights_load_4562 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4562 \
    op interface \
    ports { weights_load_4562 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19053 \
    name weights_load_4563 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4563 \
    op interface \
    ports { weights_load_4563 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19054 \
    name weights_load_4564 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4564 \
    op interface \
    ports { weights_load_4564 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19055 \
    name weights_load_4565 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4565 \
    op interface \
    ports { weights_load_4565 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19056 \
    name weights_load_4566 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4566 \
    op interface \
    ports { weights_load_4566 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19057 \
    name weights_load_4567 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4567 \
    op interface \
    ports { weights_load_4567 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19058 \
    name weights_load_4568 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4568 \
    op interface \
    ports { weights_load_4568 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19059 \
    name weights_load_4569 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4569 \
    op interface \
    ports { weights_load_4569 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19060 \
    name weights_load_4570 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4570 \
    op interface \
    ports { weights_load_4570 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19061 \
    name weights_load_4571 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4571 \
    op interface \
    ports { weights_load_4571 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19062 \
    name weights_load_4572 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4572 \
    op interface \
    ports { weights_load_4572 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19063 \
    name weights_load_4573 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4573 \
    op interface \
    ports { weights_load_4573 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19064 \
    name weights_load_4574 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4574 \
    op interface \
    ports { weights_load_4574 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19065 \
    name weights_load_4575 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4575 \
    op interface \
    ports { weights_load_4575 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19066 \
    name weights_load_4576 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4576 \
    op interface \
    ports { weights_load_4576 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19067 \
    name weights_load_4577 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4577 \
    op interface \
    ports { weights_load_4577 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19068 \
    name weights_load_4578 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4578 \
    op interface \
    ports { weights_load_4578 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19069 \
    name weights_load_4579 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4579 \
    op interface \
    ports { weights_load_4579 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19070 \
    name weights_load_4580 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4580 \
    op interface \
    ports { weights_load_4580 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19071 \
    name weights_load_4581 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4581 \
    op interface \
    ports { weights_load_4581 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19072 \
    name weights_load_4582 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4582 \
    op interface \
    ports { weights_load_4582 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19073 \
    name weights_load_4583 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4583 \
    op interface \
    ports { weights_load_4583 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19074 \
    name weights_load_4584 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4584 \
    op interface \
    ports { weights_load_4584 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19075 \
    name weights_load_4585 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4585 \
    op interface \
    ports { weights_load_4585 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19076 \
    name weights_load_4586 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4586 \
    op interface \
    ports { weights_load_4586 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19077 \
    name weights_load_4587 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4587 \
    op interface \
    ports { weights_load_4587 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19078 \
    name weights_load_4588 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4588 \
    op interface \
    ports { weights_load_4588 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19079 \
    name weights_load_4589 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4589 \
    op interface \
    ports { weights_load_4589 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19080 \
    name weights_load_4590 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4590 \
    op interface \
    ports { weights_load_4590 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19081 \
    name weights_load_4591 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4591 \
    op interface \
    ports { weights_load_4591 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19082 \
    name weights_load_4592 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4592 \
    op interface \
    ports { weights_load_4592 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19083 \
    name weights_load_4593 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4593 \
    op interface \
    ports { weights_load_4593 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19084 \
    name weights_load_4594 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4594 \
    op interface \
    ports { weights_load_4594 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19085 \
    name weights_load_4595 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4595 \
    op interface \
    ports { weights_load_4595 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19086 \
    name weights_load_4596 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4596 \
    op interface \
    ports { weights_load_4596 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19087 \
    name weights_load_4597 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4597 \
    op interface \
    ports { weights_load_4597 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19088 \
    name weights_load_4598 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4598 \
    op interface \
    ports { weights_load_4598 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19089 \
    name weights_load_4599 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4599 \
    op interface \
    ports { weights_load_4599 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19090 \
    name weights_load_4600 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_4600 \
    op interface \
    ports { weights_load_4600 { I 32 vector } } \
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


