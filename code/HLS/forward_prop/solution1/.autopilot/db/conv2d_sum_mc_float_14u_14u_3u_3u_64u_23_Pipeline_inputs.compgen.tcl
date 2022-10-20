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
    id 14327 \
    name conv2d_64_padded_window_stream_23 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_23 \
    op interface \
    ports { conv2d_64_padded_window_stream_23_dout { I 288 vector } conv2d_64_padded_window_stream_23_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_23_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_23_empty_n { I 1 bit } conv2d_64_padded_window_stream_23_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14328 \
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
    id 14329 \
    name weights_load_8626 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8626 \
    op interface \
    ports { weights_load_8626 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14330 \
    name weights_load_8627 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8627 \
    op interface \
    ports { weights_load_8627 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14331 \
    name weights_load_8628 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8628 \
    op interface \
    ports { weights_load_8628 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14332 \
    name weights_load_8629 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8629 \
    op interface \
    ports { weights_load_8629 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14333 \
    name weights_load_8630 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8630 \
    op interface \
    ports { weights_load_8630 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14334 \
    name weights_load_8631 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8631 \
    op interface \
    ports { weights_load_8631 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14335 \
    name weights_load_8632 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8632 \
    op interface \
    ports { weights_load_8632 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14336 \
    name weights_load_8633 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8633 \
    op interface \
    ports { weights_load_8633 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14337 \
    name in_channel_map_stream_23 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_23 \
    op interface \
    ports { in_channel_map_stream_23_din { O 32 vector } in_channel_map_stream_23_num_data_valid { I 3 vector } in_channel_map_stream_23_fifo_cap { I 3 vector } in_channel_map_stream_23_full_n { I 1 bit } in_channel_map_stream_23_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14338 \
    name weights_load_8634 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8634 \
    op interface \
    ports { weights_load_8634 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14339 \
    name weights_load_8635 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8635 \
    op interface \
    ports { weights_load_8635 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14340 \
    name weights_load_8636 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8636 \
    op interface \
    ports { weights_load_8636 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14341 \
    name weights_load_8637 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8637 \
    op interface \
    ports { weights_load_8637 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14342 \
    name weights_load_8638 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8638 \
    op interface \
    ports { weights_load_8638 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14343 \
    name weights_load_8639 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8639 \
    op interface \
    ports { weights_load_8639 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14344 \
    name weights_load_8640 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8640 \
    op interface \
    ports { weights_load_8640 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14345 \
    name weights_load_8641 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8641 \
    op interface \
    ports { weights_load_8641 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14346 \
    name weights_load_8642 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8642 \
    op interface \
    ports { weights_load_8642 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14347 \
    name weights_load_8643 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8643 \
    op interface \
    ports { weights_load_8643 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14348 \
    name weights_load_8644 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8644 \
    op interface \
    ports { weights_load_8644 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14349 \
    name weights_load_8645 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8645 \
    op interface \
    ports { weights_load_8645 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14350 \
    name weights_load_8646 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8646 \
    op interface \
    ports { weights_load_8646 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14351 \
    name weights_load_8647 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8647 \
    op interface \
    ports { weights_load_8647 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14352 \
    name weights_load_8648 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8648 \
    op interface \
    ports { weights_load_8648 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14353 \
    name weights_load_8649 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8649 \
    op interface \
    ports { weights_load_8649 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14354 \
    name weights_load_8650 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8650 \
    op interface \
    ports { weights_load_8650 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14355 \
    name weights_load_8651 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8651 \
    op interface \
    ports { weights_load_8651 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14356 \
    name weights_load_8652 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8652 \
    op interface \
    ports { weights_load_8652 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14357 \
    name weights_load_8653 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8653 \
    op interface \
    ports { weights_load_8653 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14358 \
    name weights_load_8654 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8654 \
    op interface \
    ports { weights_load_8654 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14359 \
    name weights_load_8655 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8655 \
    op interface \
    ports { weights_load_8655 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14360 \
    name weights_load_8656 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8656 \
    op interface \
    ports { weights_load_8656 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14361 \
    name weights_load_8657 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8657 \
    op interface \
    ports { weights_load_8657 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14362 \
    name weights_load_8658 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8658 \
    op interface \
    ports { weights_load_8658 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14363 \
    name weights_load_8659 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8659 \
    op interface \
    ports { weights_load_8659 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14364 \
    name weights_load_8660 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8660 \
    op interface \
    ports { weights_load_8660 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14365 \
    name weights_load_8661 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8661 \
    op interface \
    ports { weights_load_8661 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14366 \
    name weights_load_8662 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8662 \
    op interface \
    ports { weights_load_8662 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14367 \
    name weights_load_8663 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8663 \
    op interface \
    ports { weights_load_8663 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14368 \
    name weights_load_8664 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8664 \
    op interface \
    ports { weights_load_8664 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14369 \
    name weights_load_8665 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8665 \
    op interface \
    ports { weights_load_8665 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14370 \
    name weights_load_8666 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8666 \
    op interface \
    ports { weights_load_8666 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14371 \
    name weights_load_8667 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8667 \
    op interface \
    ports { weights_load_8667 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14372 \
    name weights_load_8668 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8668 \
    op interface \
    ports { weights_load_8668 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14373 \
    name weights_load_8669 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8669 \
    op interface \
    ports { weights_load_8669 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14374 \
    name weights_load_8670 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8670 \
    op interface \
    ports { weights_load_8670 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14375 \
    name weights_load_8671 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8671 \
    op interface \
    ports { weights_load_8671 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14376 \
    name weights_load_8672 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8672 \
    op interface \
    ports { weights_load_8672 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14377 \
    name weights_load_8673 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8673 \
    op interface \
    ports { weights_load_8673 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14378 \
    name weights_load_8674 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8674 \
    op interface \
    ports { weights_load_8674 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14379 \
    name weights_load_8675 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8675 \
    op interface \
    ports { weights_load_8675 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14380 \
    name weights_load_8676 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8676 \
    op interface \
    ports { weights_load_8676 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14381 \
    name weights_load_8677 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8677 \
    op interface \
    ports { weights_load_8677 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14382 \
    name weights_load_8678 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8678 \
    op interface \
    ports { weights_load_8678 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14383 \
    name weights_load_8679 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8679 \
    op interface \
    ports { weights_load_8679 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14384 \
    name weights_load_8680 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8680 \
    op interface \
    ports { weights_load_8680 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14385 \
    name weights_load_8681 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8681 \
    op interface \
    ports { weights_load_8681 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14386 \
    name weights_load_8682 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8682 \
    op interface \
    ports { weights_load_8682 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14387 \
    name weights_load_8683 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8683 \
    op interface \
    ports { weights_load_8683 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14388 \
    name weights_load_8684 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8684 \
    op interface \
    ports { weights_load_8684 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14389 \
    name weights_load_8685 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8685 \
    op interface \
    ports { weights_load_8685 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14390 \
    name weights_load_8686 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8686 \
    op interface \
    ports { weights_load_8686 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14391 \
    name weights_load_8687 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8687 \
    op interface \
    ports { weights_load_8687 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14392 \
    name weights_load_8688 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8688 \
    op interface \
    ports { weights_load_8688 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14393 \
    name weights_load_8689 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8689 \
    op interface \
    ports { weights_load_8689 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14394 \
    name weights_load_8690 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8690 \
    op interface \
    ports { weights_load_8690 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14395 \
    name weights_load_8691 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8691 \
    op interface \
    ports { weights_load_8691 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14396 \
    name weights_load_8692 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8692 \
    op interface \
    ports { weights_load_8692 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14397 \
    name weights_load_8693 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8693 \
    op interface \
    ports { weights_load_8693 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14398 \
    name weights_load_8694 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8694 \
    op interface \
    ports { weights_load_8694 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14399 \
    name weights_load_8695 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8695 \
    op interface \
    ports { weights_load_8695 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14400 \
    name weights_load_8696 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8696 \
    op interface \
    ports { weights_load_8696 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14401 \
    name weights_load_8697 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8697 \
    op interface \
    ports { weights_load_8697 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14402 \
    name weights_load_8698 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8698 \
    op interface \
    ports { weights_load_8698 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14403 \
    name weights_load_8699 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8699 \
    op interface \
    ports { weights_load_8699 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14404 \
    name weights_load_8700 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8700 \
    op interface \
    ports { weights_load_8700 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14405 \
    name weights_load_8701 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8701 \
    op interface \
    ports { weights_load_8701 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14406 \
    name weights_load_8702 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8702 \
    op interface \
    ports { weights_load_8702 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14407 \
    name weights_load_8703 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8703 \
    op interface \
    ports { weights_load_8703 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14408 \
    name weights_load_8704 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8704 \
    op interface \
    ports { weights_load_8704 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14409 \
    name weights_load_8705 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8705 \
    op interface \
    ports { weights_load_8705 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14410 \
    name weights_load_8706 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8706 \
    op interface \
    ports { weights_load_8706 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14411 \
    name weights_load_8707 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8707 \
    op interface \
    ports { weights_load_8707 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14412 \
    name weights_load_8708 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8708 \
    op interface \
    ports { weights_load_8708 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14413 \
    name weights_load_8709 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8709 \
    op interface \
    ports { weights_load_8709 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14414 \
    name weights_load_8710 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8710 \
    op interface \
    ports { weights_load_8710 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14415 \
    name weights_load_8711 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8711 \
    op interface \
    ports { weights_load_8711 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14416 \
    name weights_load_8712 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8712 \
    op interface \
    ports { weights_load_8712 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14417 \
    name weights_load_8713 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8713 \
    op interface \
    ports { weights_load_8713 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14418 \
    name weights_load_8714 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8714 \
    op interface \
    ports { weights_load_8714 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14419 \
    name weights_load_8715 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8715 \
    op interface \
    ports { weights_load_8715 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14420 \
    name weights_load_8716 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8716 \
    op interface \
    ports { weights_load_8716 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14421 \
    name weights_load_8717 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8717 \
    op interface \
    ports { weights_load_8717 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14422 \
    name weights_load_8718 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8718 \
    op interface \
    ports { weights_load_8718 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14423 \
    name weights_load_8719 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8719 \
    op interface \
    ports { weights_load_8719 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14424 \
    name weights_load_8720 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8720 \
    op interface \
    ports { weights_load_8720 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14425 \
    name weights_load_8721 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8721 \
    op interface \
    ports { weights_load_8721 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14426 \
    name weights_load_8722 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8722 \
    op interface \
    ports { weights_load_8722 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14427 \
    name weights_load_8723 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8723 \
    op interface \
    ports { weights_load_8723 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14428 \
    name weights_load_8724 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8724 \
    op interface \
    ports { weights_load_8724 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14429 \
    name weights_load_8725 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8725 \
    op interface \
    ports { weights_load_8725 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14430 \
    name weights_load_8726 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8726 \
    op interface \
    ports { weights_load_8726 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14431 \
    name weights_load_8727 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8727 \
    op interface \
    ports { weights_load_8727 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14432 \
    name weights_load_8728 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8728 \
    op interface \
    ports { weights_load_8728 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14433 \
    name weights_load_8729 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8729 \
    op interface \
    ports { weights_load_8729 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14434 \
    name weights_load_8730 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8730 \
    op interface \
    ports { weights_load_8730 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14435 \
    name weights_load_8731 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8731 \
    op interface \
    ports { weights_load_8731 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14436 \
    name weights_load_8732 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8732 \
    op interface \
    ports { weights_load_8732 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14437 \
    name weights_load_8733 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8733 \
    op interface \
    ports { weights_load_8733 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14438 \
    name weights_load_8734 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8734 \
    op interface \
    ports { weights_load_8734 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14439 \
    name weights_load_8735 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8735 \
    op interface \
    ports { weights_load_8735 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14440 \
    name weights_load_8736 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8736 \
    op interface \
    ports { weights_load_8736 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14441 \
    name weights_load_8737 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8737 \
    op interface \
    ports { weights_load_8737 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14442 \
    name weights_load_8738 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8738 \
    op interface \
    ports { weights_load_8738 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14443 \
    name weights_load_8739 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8739 \
    op interface \
    ports { weights_load_8739 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14444 \
    name weights_load_8740 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8740 \
    op interface \
    ports { weights_load_8740 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14445 \
    name weights_load_8741 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8741 \
    op interface \
    ports { weights_load_8741 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14446 \
    name weights_load_8742 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8742 \
    op interface \
    ports { weights_load_8742 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14447 \
    name weights_load_8743 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8743 \
    op interface \
    ports { weights_load_8743 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14448 \
    name weights_load_8744 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8744 \
    op interface \
    ports { weights_load_8744 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14449 \
    name weights_load_8745 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8745 \
    op interface \
    ports { weights_load_8745 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14450 \
    name weights_load_8746 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8746 \
    op interface \
    ports { weights_load_8746 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14451 \
    name weights_load_8747 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8747 \
    op interface \
    ports { weights_load_8747 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14452 \
    name weights_load_8748 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8748 \
    op interface \
    ports { weights_load_8748 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14453 \
    name weights_load_8749 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8749 \
    op interface \
    ports { weights_load_8749 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14454 \
    name weights_load_8750 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8750 \
    op interface \
    ports { weights_load_8750 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14455 \
    name weights_load_8751 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8751 \
    op interface \
    ports { weights_load_8751 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14456 \
    name weights_load_8752 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8752 \
    op interface \
    ports { weights_load_8752 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14457 \
    name weights_load_8753 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8753 \
    op interface \
    ports { weights_load_8753 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14458 \
    name weights_load_8754 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8754 \
    op interface \
    ports { weights_load_8754 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14459 \
    name weights_load_8755 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8755 \
    op interface \
    ports { weights_load_8755 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14460 \
    name weights_load_8756 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8756 \
    op interface \
    ports { weights_load_8756 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14461 \
    name weights_load_8757 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8757 \
    op interface \
    ports { weights_load_8757 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14462 \
    name weights_load_8758 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8758 \
    op interface \
    ports { weights_load_8758 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14463 \
    name weights_load_8759 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8759 \
    op interface \
    ports { weights_load_8759 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14464 \
    name weights_load_8760 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8760 \
    op interface \
    ports { weights_load_8760 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14465 \
    name weights_load_8761 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8761 \
    op interface \
    ports { weights_load_8761 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14466 \
    name weights_load_8762 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8762 \
    op interface \
    ports { weights_load_8762 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14467 \
    name weights_load_8763 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8763 \
    op interface \
    ports { weights_load_8763 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14468 \
    name weights_load_8764 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8764 \
    op interface \
    ports { weights_load_8764 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14469 \
    name weights_load_8765 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8765 \
    op interface \
    ports { weights_load_8765 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14470 \
    name weights_load_8766 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8766 \
    op interface \
    ports { weights_load_8766 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14471 \
    name weights_load_8767 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8767 \
    op interface \
    ports { weights_load_8767 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14472 \
    name weights_load_8768 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8768 \
    op interface \
    ports { weights_load_8768 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14473 \
    name weights_load_8769 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8769 \
    op interface \
    ports { weights_load_8769 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14474 \
    name weights_load_8770 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8770 \
    op interface \
    ports { weights_load_8770 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14475 \
    name weights_load_8771 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8771 \
    op interface \
    ports { weights_load_8771 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14476 \
    name weights_load_8772 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8772 \
    op interface \
    ports { weights_load_8772 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14477 \
    name weights_load_8773 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8773 \
    op interface \
    ports { weights_load_8773 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14478 \
    name weights_load_8774 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8774 \
    op interface \
    ports { weights_load_8774 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14479 \
    name weights_load_8775 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8775 \
    op interface \
    ports { weights_load_8775 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14480 \
    name weights_load_8776 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8776 \
    op interface \
    ports { weights_load_8776 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14481 \
    name weights_load_8777 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8777 \
    op interface \
    ports { weights_load_8777 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14482 \
    name weights_load_8778 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8778 \
    op interface \
    ports { weights_load_8778 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14483 \
    name weights_load_8779 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8779 \
    op interface \
    ports { weights_load_8779 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14484 \
    name weights_load_8780 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8780 \
    op interface \
    ports { weights_load_8780 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14485 \
    name weights_load_8781 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8781 \
    op interface \
    ports { weights_load_8781 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14486 \
    name weights_load_8782 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8782 \
    op interface \
    ports { weights_load_8782 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14487 \
    name weights_load_8783 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8783 \
    op interface \
    ports { weights_load_8783 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14488 \
    name weights_load_8784 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8784 \
    op interface \
    ports { weights_load_8784 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14489 \
    name weights_load_8785 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8785 \
    op interface \
    ports { weights_load_8785 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14490 \
    name weights_load_8786 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8786 \
    op interface \
    ports { weights_load_8786 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14491 \
    name weights_load_8787 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8787 \
    op interface \
    ports { weights_load_8787 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14492 \
    name weights_load_8788 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8788 \
    op interface \
    ports { weights_load_8788 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14493 \
    name weights_load_8789 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8789 \
    op interface \
    ports { weights_load_8789 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14494 \
    name weights_load_8790 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8790 \
    op interface \
    ports { weights_load_8790 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14495 \
    name weights_load_8791 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8791 \
    op interface \
    ports { weights_load_8791 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14496 \
    name weights_load_8792 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8792 \
    op interface \
    ports { weights_load_8792 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14497 \
    name weights_load_8793 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8793 \
    op interface \
    ports { weights_load_8793 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14498 \
    name weights_load_8794 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8794 \
    op interface \
    ports { weights_load_8794 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14499 \
    name weights_load_8795 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8795 \
    op interface \
    ports { weights_load_8795 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14500 \
    name weights_load_8796 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8796 \
    op interface \
    ports { weights_load_8796 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14501 \
    name weights_load_8797 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8797 \
    op interface \
    ports { weights_load_8797 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14502 \
    name weights_load_8798 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8798 \
    op interface \
    ports { weights_load_8798 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14503 \
    name weights_load_8799 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8799 \
    op interface \
    ports { weights_load_8799 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14504 \
    name weights_load_8800 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8800 \
    op interface \
    ports { weights_load_8800 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14505 \
    name weights_load_8801 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8801 \
    op interface \
    ports { weights_load_8801 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14506 \
    name weights_load_8802 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8802 \
    op interface \
    ports { weights_load_8802 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14507 \
    name weights_load_8803 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8803 \
    op interface \
    ports { weights_load_8803 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14508 \
    name weights_load_8804 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8804 \
    op interface \
    ports { weights_load_8804 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14509 \
    name weights_load_8805 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8805 \
    op interface \
    ports { weights_load_8805 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14510 \
    name weights_load_8806 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8806 \
    op interface \
    ports { weights_load_8806 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14511 \
    name weights_load_8807 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8807 \
    op interface \
    ports { weights_load_8807 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14512 \
    name weights_load_8808 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8808 \
    op interface \
    ports { weights_load_8808 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14513 \
    name weights_load_8809 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8809 \
    op interface \
    ports { weights_load_8809 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14514 \
    name weights_load_8810 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8810 \
    op interface \
    ports { weights_load_8810 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14515 \
    name weights_load_8811 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8811 \
    op interface \
    ports { weights_load_8811 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14516 \
    name weights_load_8812 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8812 \
    op interface \
    ports { weights_load_8812 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14517 \
    name weights_load_8813 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8813 \
    op interface \
    ports { weights_load_8813 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14518 \
    name weights_load_8814 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8814 \
    op interface \
    ports { weights_load_8814 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14519 \
    name weights_load_8815 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8815 \
    op interface \
    ports { weights_load_8815 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14520 \
    name weights_load_8816 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8816 \
    op interface \
    ports { weights_load_8816 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14521 \
    name weights_load_8817 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8817 \
    op interface \
    ports { weights_load_8817 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14522 \
    name weights_load_8818 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8818 \
    op interface \
    ports { weights_load_8818 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14523 \
    name weights_load_8819 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8819 \
    op interface \
    ports { weights_load_8819 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14524 \
    name weights_load_8820 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8820 \
    op interface \
    ports { weights_load_8820 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14525 \
    name weights_load_8821 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8821 \
    op interface \
    ports { weights_load_8821 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14526 \
    name weights_load_8822 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8822 \
    op interface \
    ports { weights_load_8822 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14527 \
    name weights_load_8823 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8823 \
    op interface \
    ports { weights_load_8823 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14528 \
    name weights_load_8824 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8824 \
    op interface \
    ports { weights_load_8824 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14529 \
    name weights_load_8825 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8825 \
    op interface \
    ports { weights_load_8825 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14530 \
    name weights_load_8826 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8826 \
    op interface \
    ports { weights_load_8826 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14531 \
    name weights_load_8827 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8827 \
    op interface \
    ports { weights_load_8827 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14532 \
    name weights_load_8828 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8828 \
    op interface \
    ports { weights_load_8828 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14533 \
    name weights_load_8829 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8829 \
    op interface \
    ports { weights_load_8829 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14534 \
    name weights_load_8830 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8830 \
    op interface \
    ports { weights_load_8830 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14535 \
    name weights_load_8831 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8831 \
    op interface \
    ports { weights_load_8831 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14536 \
    name weights_load_8832 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8832 \
    op interface \
    ports { weights_load_8832 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14537 \
    name weights_load_8833 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8833 \
    op interface \
    ports { weights_load_8833 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14538 \
    name weights_load_8834 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8834 \
    op interface \
    ports { weights_load_8834 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14539 \
    name weights_load_8835 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8835 \
    op interface \
    ports { weights_load_8835 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14540 \
    name weights_load_8836 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8836 \
    op interface \
    ports { weights_load_8836 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14541 \
    name weights_load_8837 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8837 \
    op interface \
    ports { weights_load_8837 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14542 \
    name weights_load_8838 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8838 \
    op interface \
    ports { weights_load_8838 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14543 \
    name weights_load_8839 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8839 \
    op interface \
    ports { weights_load_8839 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14544 \
    name weights_load_8840 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8840 \
    op interface \
    ports { weights_load_8840 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14545 \
    name weights_load_8841 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8841 \
    op interface \
    ports { weights_load_8841 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14546 \
    name weights_load_8842 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8842 \
    op interface \
    ports { weights_load_8842 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14547 \
    name weights_load_8843 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8843 \
    op interface \
    ports { weights_load_8843 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14548 \
    name weights_load_8844 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8844 \
    op interface \
    ports { weights_load_8844 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14549 \
    name weights_load_8845 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8845 \
    op interface \
    ports { weights_load_8845 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14550 \
    name weights_load_8846 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8846 \
    op interface \
    ports { weights_load_8846 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14551 \
    name weights_load_8847 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8847 \
    op interface \
    ports { weights_load_8847 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14552 \
    name weights_load_8848 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8848 \
    op interface \
    ports { weights_load_8848 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14553 \
    name weights_load_8849 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8849 \
    op interface \
    ports { weights_load_8849 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14554 \
    name weights_load_8850 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8850 \
    op interface \
    ports { weights_load_8850 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14555 \
    name weights_load_8851 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8851 \
    op interface \
    ports { weights_load_8851 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14556 \
    name weights_load_8852 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8852 \
    op interface \
    ports { weights_load_8852 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14557 \
    name weights_load_8853 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8853 \
    op interface \
    ports { weights_load_8853 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14558 \
    name weights_load_8854 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8854 \
    op interface \
    ports { weights_load_8854 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14559 \
    name weights_load_8855 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8855 \
    op interface \
    ports { weights_load_8855 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14560 \
    name weights_load_8856 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8856 \
    op interface \
    ports { weights_load_8856 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14561 \
    name weights_load_8857 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8857 \
    op interface \
    ports { weights_load_8857 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14562 \
    name weights_load_8858 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8858 \
    op interface \
    ports { weights_load_8858 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14563 \
    name weights_load_8859 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8859 \
    op interface \
    ports { weights_load_8859 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14564 \
    name weights_load_8860 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8860 \
    op interface \
    ports { weights_load_8860 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14565 \
    name weights_load_8861 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8861 \
    op interface \
    ports { weights_load_8861 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14566 \
    name weights_load_8862 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8862 \
    op interface \
    ports { weights_load_8862 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14567 \
    name weights_load_8863 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8863 \
    op interface \
    ports { weights_load_8863 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14568 \
    name weights_load_8864 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8864 \
    op interface \
    ports { weights_load_8864 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14569 \
    name weights_load_8865 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8865 \
    op interface \
    ports { weights_load_8865 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14570 \
    name weights_load_8866 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8866 \
    op interface \
    ports { weights_load_8866 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14571 \
    name weights_load_8867 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8867 \
    op interface \
    ports { weights_load_8867 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14572 \
    name weights_load_8868 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8868 \
    op interface \
    ports { weights_load_8868 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14573 \
    name weights_load_8869 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8869 \
    op interface \
    ports { weights_load_8869 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14574 \
    name weights_load_8870 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8870 \
    op interface \
    ports { weights_load_8870 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14575 \
    name weights_load_8871 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8871 \
    op interface \
    ports { weights_load_8871 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14576 \
    name weights_load_8872 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8872 \
    op interface \
    ports { weights_load_8872 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14577 \
    name weights_load_8873 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8873 \
    op interface \
    ports { weights_load_8873 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14578 \
    name weights_load_8874 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8874 \
    op interface \
    ports { weights_load_8874 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14579 \
    name weights_load_8875 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8875 \
    op interface \
    ports { weights_load_8875 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14580 \
    name weights_load_8876 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8876 \
    op interface \
    ports { weights_load_8876 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14581 \
    name weights_load_8877 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8877 \
    op interface \
    ports { weights_load_8877 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14582 \
    name weights_load_8878 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8878 \
    op interface \
    ports { weights_load_8878 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14583 \
    name weights_load_8879 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8879 \
    op interface \
    ports { weights_load_8879 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14584 \
    name weights_load_8880 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8880 \
    op interface \
    ports { weights_load_8880 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14585 \
    name weights_load_8881 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8881 \
    op interface \
    ports { weights_load_8881 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14586 \
    name weights_load_8882 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8882 \
    op interface \
    ports { weights_load_8882 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14587 \
    name weights_load_8883 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8883 \
    op interface \
    ports { weights_load_8883 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14588 \
    name weights_load_8884 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8884 \
    op interface \
    ports { weights_load_8884 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14589 \
    name weights_load_8885 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8885 \
    op interface \
    ports { weights_load_8885 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14590 \
    name weights_load_8886 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8886 \
    op interface \
    ports { weights_load_8886 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14591 \
    name weights_load_8887 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8887 \
    op interface \
    ports { weights_load_8887 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14592 \
    name weights_load_8888 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8888 \
    op interface \
    ports { weights_load_8888 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14593 \
    name weights_load_8889 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8889 \
    op interface \
    ports { weights_load_8889 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14594 \
    name weights_load_8890 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8890 \
    op interface \
    ports { weights_load_8890 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14595 \
    name weights_load_8891 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8891 \
    op interface \
    ports { weights_load_8891 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14596 \
    name weights_load_8892 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8892 \
    op interface \
    ports { weights_load_8892 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14597 \
    name weights_load_8893 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8893 \
    op interface \
    ports { weights_load_8893 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14598 \
    name weights_load_8894 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8894 \
    op interface \
    ports { weights_load_8894 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14599 \
    name weights_load_8895 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8895 \
    op interface \
    ports { weights_load_8895 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14600 \
    name weights_load_8896 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8896 \
    op interface \
    ports { weights_load_8896 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14601 \
    name weights_load_8897 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8897 \
    op interface \
    ports { weights_load_8897 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14602 \
    name weights_load_8898 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8898 \
    op interface \
    ports { weights_load_8898 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14603 \
    name weights_load_8899 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8899 \
    op interface \
    ports { weights_load_8899 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14604 \
    name weights_load_8900 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8900 \
    op interface \
    ports { weights_load_8900 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14605 \
    name weights_load_8901 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8901 \
    op interface \
    ports { weights_load_8901 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14606 \
    name weights_load_8902 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8902 \
    op interface \
    ports { weights_load_8902 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14607 \
    name weights_load_8903 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8903 \
    op interface \
    ports { weights_load_8903 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14608 \
    name weights_load_8904 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8904 \
    op interface \
    ports { weights_load_8904 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14609 \
    name weights_load_8905 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8905 \
    op interface \
    ports { weights_load_8905 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14610 \
    name weights_load_8906 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8906 \
    op interface \
    ports { weights_load_8906 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14611 \
    name weights_load_8907 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8907 \
    op interface \
    ports { weights_load_8907 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14612 \
    name weights_load_8908 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8908 \
    op interface \
    ports { weights_load_8908 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14613 \
    name weights_load_8909 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8909 \
    op interface \
    ports { weights_load_8909 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14614 \
    name weights_load_8910 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8910 \
    op interface \
    ports { weights_load_8910 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14615 \
    name weights_load_8911 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8911 \
    op interface \
    ports { weights_load_8911 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14616 \
    name weights_load_8912 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8912 \
    op interface \
    ports { weights_load_8912 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14617 \
    name weights_load_8913 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8913 \
    op interface \
    ports { weights_load_8913 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14618 \
    name weights_load_8914 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8914 \
    op interface \
    ports { weights_load_8914 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14619 \
    name weights_load_8915 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8915 \
    op interface \
    ports { weights_load_8915 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14620 \
    name weights_load_8916 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8916 \
    op interface \
    ports { weights_load_8916 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14621 \
    name weights_load_8917 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8917 \
    op interface \
    ports { weights_load_8917 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14622 \
    name weights_load_8918 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8918 \
    op interface \
    ports { weights_load_8918 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14623 \
    name weights_load_8919 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8919 \
    op interface \
    ports { weights_load_8919 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14624 \
    name weights_load_8920 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8920 \
    op interface \
    ports { weights_load_8920 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14625 \
    name weights_load_8921 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8921 \
    op interface \
    ports { weights_load_8921 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14626 \
    name weights_load_8922 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8922 \
    op interface \
    ports { weights_load_8922 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14627 \
    name weights_load_8923 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8923 \
    op interface \
    ports { weights_load_8923 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14628 \
    name weights_load_8924 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8924 \
    op interface \
    ports { weights_load_8924 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14629 \
    name weights_load_8925 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8925 \
    op interface \
    ports { weights_load_8925 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14630 \
    name weights_load_8926 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8926 \
    op interface \
    ports { weights_load_8926 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14631 \
    name weights_load_8927 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8927 \
    op interface \
    ports { weights_load_8927 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14632 \
    name weights_load_8928 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8928 \
    op interface \
    ports { weights_load_8928 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14633 \
    name weights_load_8929 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8929 \
    op interface \
    ports { weights_load_8929 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14634 \
    name weights_load_8930 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8930 \
    op interface \
    ports { weights_load_8930 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14635 \
    name weights_load_8931 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8931 \
    op interface \
    ports { weights_load_8931 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14636 \
    name weights_load_8932 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8932 \
    op interface \
    ports { weights_load_8932 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14637 \
    name weights_load_8933 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8933 \
    op interface \
    ports { weights_load_8933 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14638 \
    name weights_load_8934 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8934 \
    op interface \
    ports { weights_load_8934 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14639 \
    name weights_load_8935 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8935 \
    op interface \
    ports { weights_load_8935 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14640 \
    name weights_load_8936 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8936 \
    op interface \
    ports { weights_load_8936 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14641 \
    name weights_load_8937 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8937 \
    op interface \
    ports { weights_load_8937 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14642 \
    name weights_load_8938 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8938 \
    op interface \
    ports { weights_load_8938 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14643 \
    name weights_load_8939 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8939 \
    op interface \
    ports { weights_load_8939 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14644 \
    name weights_load_8940 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8940 \
    op interface \
    ports { weights_load_8940 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14645 \
    name weights_load_8941 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8941 \
    op interface \
    ports { weights_load_8941 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14646 \
    name weights_load_8942 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8942 \
    op interface \
    ports { weights_load_8942 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14647 \
    name weights_load_8943 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8943 \
    op interface \
    ports { weights_load_8943 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14648 \
    name weights_load_8944 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8944 \
    op interface \
    ports { weights_load_8944 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14649 \
    name weights_load_8945 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8945 \
    op interface \
    ports { weights_load_8945 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14650 \
    name weights_load_8946 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8946 \
    op interface \
    ports { weights_load_8946 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14651 \
    name weights_load_8947 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8947 \
    op interface \
    ports { weights_load_8947 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14652 \
    name weights_load_8948 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8948 \
    op interface \
    ports { weights_load_8948 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14653 \
    name weights_load_8949 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8949 \
    op interface \
    ports { weights_load_8949 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14654 \
    name weights_load_8950 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8950 \
    op interface \
    ports { weights_load_8950 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14655 \
    name weights_load_8951 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8951 \
    op interface \
    ports { weights_load_8951 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14656 \
    name weights_load_8952 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8952 \
    op interface \
    ports { weights_load_8952 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14657 \
    name weights_load_8953 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8953 \
    op interface \
    ports { weights_load_8953 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14658 \
    name weights_load_8954 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8954 \
    op interface \
    ports { weights_load_8954 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14659 \
    name weights_load_8955 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8955 \
    op interface \
    ports { weights_load_8955 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14660 \
    name weights_load_8956 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8956 \
    op interface \
    ports { weights_load_8956 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14661 \
    name weights_load_8957 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8957 \
    op interface \
    ports { weights_load_8957 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14662 \
    name weights_load_8958 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8958 \
    op interface \
    ports { weights_load_8958 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14663 \
    name weights_load_8959 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8959 \
    op interface \
    ports { weights_load_8959 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14664 \
    name weights_load_8960 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8960 \
    op interface \
    ports { weights_load_8960 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14665 \
    name weights_load_8961 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8961 \
    op interface \
    ports { weights_load_8961 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14666 \
    name weights_load_8962 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8962 \
    op interface \
    ports { weights_load_8962 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14667 \
    name weights_load_8963 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8963 \
    op interface \
    ports { weights_load_8963 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14668 \
    name weights_load_8964 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8964 \
    op interface \
    ports { weights_load_8964 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14669 \
    name weights_load_8965 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8965 \
    op interface \
    ports { weights_load_8965 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14670 \
    name weights_load_8966 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8966 \
    op interface \
    ports { weights_load_8966 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14671 \
    name weights_load_8967 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8967 \
    op interface \
    ports { weights_load_8967 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14672 \
    name weights_load_8968 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8968 \
    op interface \
    ports { weights_load_8968 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14673 \
    name weights_load_8969 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8969 \
    op interface \
    ports { weights_load_8969 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14674 \
    name weights_load_8970 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8970 \
    op interface \
    ports { weights_load_8970 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14675 \
    name weights_load_8971 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8971 \
    op interface \
    ports { weights_load_8971 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14676 \
    name weights_load_8972 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8972 \
    op interface \
    ports { weights_load_8972 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14677 \
    name weights_load_8973 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8973 \
    op interface \
    ports { weights_load_8973 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14678 \
    name weights_load_8974 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8974 \
    op interface \
    ports { weights_load_8974 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14679 \
    name weights_load_8975 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8975 \
    op interface \
    ports { weights_load_8975 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14680 \
    name weights_load_8976 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8976 \
    op interface \
    ports { weights_load_8976 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14681 \
    name weights_load_8977 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8977 \
    op interface \
    ports { weights_load_8977 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14682 \
    name weights_load_8978 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8978 \
    op interface \
    ports { weights_load_8978 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14683 \
    name weights_load_8979 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8979 \
    op interface \
    ports { weights_load_8979 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14684 \
    name weights_load_8980 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8980 \
    op interface \
    ports { weights_load_8980 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14685 \
    name weights_load_8981 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8981 \
    op interface \
    ports { weights_load_8981 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14686 \
    name weights_load_8982 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8982 \
    op interface \
    ports { weights_load_8982 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14687 \
    name weights_load_8983 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8983 \
    op interface \
    ports { weights_load_8983 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14688 \
    name weights_load_8984 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8984 \
    op interface \
    ports { weights_load_8984 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14689 \
    name weights_load_8985 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8985 \
    op interface \
    ports { weights_load_8985 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14690 \
    name weights_load_8986 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8986 \
    op interface \
    ports { weights_load_8986 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14691 \
    name weights_load_8987 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8987 \
    op interface \
    ports { weights_load_8987 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14692 \
    name weights_load_8988 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8988 \
    op interface \
    ports { weights_load_8988 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14693 \
    name weights_load_8989 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8989 \
    op interface \
    ports { weights_load_8989 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14694 \
    name weights_load_8990 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8990 \
    op interface \
    ports { weights_load_8990 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14695 \
    name weights_load_8991 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8991 \
    op interface \
    ports { weights_load_8991 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14696 \
    name weights_load_8992 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8992 \
    op interface \
    ports { weights_load_8992 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14697 \
    name weights_load_8993 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8993 \
    op interface \
    ports { weights_load_8993 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14698 \
    name weights_load_8994 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8994 \
    op interface \
    ports { weights_load_8994 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14699 \
    name weights_load_8995 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8995 \
    op interface \
    ports { weights_load_8995 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14700 \
    name weights_load_8996 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8996 \
    op interface \
    ports { weights_load_8996 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14701 \
    name weights_load_8997 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8997 \
    op interface \
    ports { weights_load_8997 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14702 \
    name weights_load_8998 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8998 \
    op interface \
    ports { weights_load_8998 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14703 \
    name weights_load_8999 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_8999 \
    op interface \
    ports { weights_load_8999 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14704 \
    name weights_load_9000 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9000 \
    op interface \
    ports { weights_load_9000 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14705 \
    name weights_load_9001 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9001 \
    op interface \
    ports { weights_load_9001 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14706 \
    name weights_load_9002 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9002 \
    op interface \
    ports { weights_load_9002 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14707 \
    name weights_load_9003 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9003 \
    op interface \
    ports { weights_load_9003 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14708 \
    name weights_load_9004 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9004 \
    op interface \
    ports { weights_load_9004 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14709 \
    name weights_load_9005 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9005 \
    op interface \
    ports { weights_load_9005 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14710 \
    name weights_load_9006 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9006 \
    op interface \
    ports { weights_load_9006 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14711 \
    name weights_load_9007 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9007 \
    op interface \
    ports { weights_load_9007 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14712 \
    name weights_load_9008 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9008 \
    op interface \
    ports { weights_load_9008 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14713 \
    name weights_load_9009 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9009 \
    op interface \
    ports { weights_load_9009 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14714 \
    name weights_load_9010 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9010 \
    op interface \
    ports { weights_load_9010 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14715 \
    name weights_load_9011 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9011 \
    op interface \
    ports { weights_load_9011 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14716 \
    name weights_load_9012 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9012 \
    op interface \
    ports { weights_load_9012 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14717 \
    name weights_load_9013 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9013 \
    op interface \
    ports { weights_load_9013 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14718 \
    name weights_load_9014 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9014 \
    op interface \
    ports { weights_load_9014 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14719 \
    name weights_load_9015 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9015 \
    op interface \
    ports { weights_load_9015 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14720 \
    name weights_load_9016 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9016 \
    op interface \
    ports { weights_load_9016 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14721 \
    name weights_load_9017 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9017 \
    op interface \
    ports { weights_load_9017 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14722 \
    name weights_load_9018 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9018 \
    op interface \
    ports { weights_load_9018 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14723 \
    name weights_load_9019 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9019 \
    op interface \
    ports { weights_load_9019 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14724 \
    name weights_load_9020 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9020 \
    op interface \
    ports { weights_load_9020 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14725 \
    name weights_load_9021 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9021 \
    op interface \
    ports { weights_load_9021 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14726 \
    name weights_load_9022 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9022 \
    op interface \
    ports { weights_load_9022 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14727 \
    name weights_load_9023 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9023 \
    op interface \
    ports { weights_load_9023 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14728 \
    name weights_load_9024 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9024 \
    op interface \
    ports { weights_load_9024 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14729 \
    name weights_load_9025 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9025 \
    op interface \
    ports { weights_load_9025 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14730 \
    name weights_load_9026 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9026 \
    op interface \
    ports { weights_load_9026 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14731 \
    name weights_load_9027 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9027 \
    op interface \
    ports { weights_load_9027 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14732 \
    name weights_load_9028 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9028 \
    op interface \
    ports { weights_load_9028 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14733 \
    name weights_load_9029 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9029 \
    op interface \
    ports { weights_load_9029 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14734 \
    name weights_load_9030 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9030 \
    op interface \
    ports { weights_load_9030 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14735 \
    name weights_load_9031 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9031 \
    op interface \
    ports { weights_load_9031 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14736 \
    name weights_load_9032 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9032 \
    op interface \
    ports { weights_load_9032 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14737 \
    name weights_load_9033 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9033 \
    op interface \
    ports { weights_load_9033 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14738 \
    name weights_load_9034 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9034 \
    op interface \
    ports { weights_load_9034 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14739 \
    name weights_load_9035 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9035 \
    op interface \
    ports { weights_load_9035 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14740 \
    name weights_load_9036 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9036 \
    op interface \
    ports { weights_load_9036 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14741 \
    name weights_load_9037 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9037 \
    op interface \
    ports { weights_load_9037 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14742 \
    name weights_load_9038 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9038 \
    op interface \
    ports { weights_load_9038 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14743 \
    name weights_load_9039 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9039 \
    op interface \
    ports { weights_load_9039 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14744 \
    name weights_load_9040 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9040 \
    op interface \
    ports { weights_load_9040 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14745 \
    name weights_load_9041 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9041 \
    op interface \
    ports { weights_load_9041 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14746 \
    name weights_load_9042 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9042 \
    op interface \
    ports { weights_load_9042 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14747 \
    name weights_load_9043 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9043 \
    op interface \
    ports { weights_load_9043 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14748 \
    name weights_load_9044 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9044 \
    op interface \
    ports { weights_load_9044 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14749 \
    name weights_load_9045 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9045 \
    op interface \
    ports { weights_load_9045 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14750 \
    name weights_load_9046 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9046 \
    op interface \
    ports { weights_load_9046 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14751 \
    name weights_load_9047 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9047 \
    op interface \
    ports { weights_load_9047 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14752 \
    name weights_load_9048 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9048 \
    op interface \
    ports { weights_load_9048 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14753 \
    name weights_load_9049 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9049 \
    op interface \
    ports { weights_load_9049 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14754 \
    name weights_load_9050 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9050 \
    op interface \
    ports { weights_load_9050 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14755 \
    name weights_load_9051 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9051 \
    op interface \
    ports { weights_load_9051 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14756 \
    name weights_load_9052 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9052 \
    op interface \
    ports { weights_load_9052 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14757 \
    name weights_load_9053 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9053 \
    op interface \
    ports { weights_load_9053 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14758 \
    name weights_load_9054 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9054 \
    op interface \
    ports { weights_load_9054 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14759 \
    name weights_load_9055 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9055 \
    op interface \
    ports { weights_load_9055 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14760 \
    name weights_load_9056 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9056 \
    op interface \
    ports { weights_load_9056 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14761 \
    name weights_load_9057 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9057 \
    op interface \
    ports { weights_load_9057 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14762 \
    name weights_load_9058 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9058 \
    op interface \
    ports { weights_load_9058 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14763 \
    name weights_load_9059 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9059 \
    op interface \
    ports { weights_load_9059 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14764 \
    name weights_load_9060 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9060 \
    op interface \
    ports { weights_load_9060 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14765 \
    name weights_load_9061 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9061 \
    op interface \
    ports { weights_load_9061 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14766 \
    name weights_load_9062 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9062 \
    op interface \
    ports { weights_load_9062 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14767 \
    name weights_load_9063 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9063 \
    op interface \
    ports { weights_load_9063 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14768 \
    name weights_load_9064 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9064 \
    op interface \
    ports { weights_load_9064 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14769 \
    name weights_load_9065 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9065 \
    op interface \
    ports { weights_load_9065 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14770 \
    name weights_load_9066 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9066 \
    op interface \
    ports { weights_load_9066 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14771 \
    name weights_load_9067 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9067 \
    op interface \
    ports { weights_load_9067 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14772 \
    name weights_load_9068 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9068 \
    op interface \
    ports { weights_load_9068 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14773 \
    name weights_load_9069 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9069 \
    op interface \
    ports { weights_load_9069 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14774 \
    name weights_load_9070 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9070 \
    op interface \
    ports { weights_load_9070 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14775 \
    name weights_load_9071 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9071 \
    op interface \
    ports { weights_load_9071 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14776 \
    name weights_load_9072 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9072 \
    op interface \
    ports { weights_load_9072 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14777 \
    name weights_load_9073 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9073 \
    op interface \
    ports { weights_load_9073 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14778 \
    name weights_load_9074 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9074 \
    op interface \
    ports { weights_load_9074 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14779 \
    name weights_load_9075 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9075 \
    op interface \
    ports { weights_load_9075 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14780 \
    name weights_load_9076 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9076 \
    op interface \
    ports { weights_load_9076 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14781 \
    name weights_load_9077 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9077 \
    op interface \
    ports { weights_load_9077 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14782 \
    name weights_load_9078 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9078 \
    op interface \
    ports { weights_load_9078 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14783 \
    name weights_load_9079 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9079 \
    op interface \
    ports { weights_load_9079 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14784 \
    name weights_load_9080 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9080 \
    op interface \
    ports { weights_load_9080 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14785 \
    name weights_load_9081 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9081 \
    op interface \
    ports { weights_load_9081 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14786 \
    name weights_load_9082 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9082 \
    op interface \
    ports { weights_load_9082 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14787 \
    name weights_load_9083 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9083 \
    op interface \
    ports { weights_load_9083 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14788 \
    name weights_load_9084 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9084 \
    op interface \
    ports { weights_load_9084 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14789 \
    name weights_load_9085 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9085 \
    op interface \
    ports { weights_load_9085 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14790 \
    name weights_load_9086 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9086 \
    op interface \
    ports { weights_load_9086 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14791 \
    name weights_load_9087 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9087 \
    op interface \
    ports { weights_load_9087 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14792 \
    name weights_load_9088 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9088 \
    op interface \
    ports { weights_load_9088 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14793 \
    name weights_load_9089 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9089 \
    op interface \
    ports { weights_load_9089 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14794 \
    name weights_load_9090 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9090 \
    op interface \
    ports { weights_load_9090 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14795 \
    name weights_load_9091 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9091 \
    op interface \
    ports { weights_load_9091 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14796 \
    name weights_load_9092 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9092 \
    op interface \
    ports { weights_load_9092 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14797 \
    name weights_load_9093 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9093 \
    op interface \
    ports { weights_load_9093 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14798 \
    name weights_load_9094 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9094 \
    op interface \
    ports { weights_load_9094 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14799 \
    name weights_load_9095 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9095 \
    op interface \
    ports { weights_load_9095 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14800 \
    name weights_load_9096 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9096 \
    op interface \
    ports { weights_load_9096 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14801 \
    name weights_load_9097 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9097 \
    op interface \
    ports { weights_load_9097 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14802 \
    name weights_load_9098 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9098 \
    op interface \
    ports { weights_load_9098 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14803 \
    name weights_load_9099 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9099 \
    op interface \
    ports { weights_load_9099 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14804 \
    name weights_load_9100 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9100 \
    op interface \
    ports { weights_load_9100 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14805 \
    name weights_load_9101 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9101 \
    op interface \
    ports { weights_load_9101 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14806 \
    name weights_load_9102 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9102 \
    op interface \
    ports { weights_load_9102 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14807 \
    name weights_load_9103 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9103 \
    op interface \
    ports { weights_load_9103 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14808 \
    name weights_load_9104 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9104 \
    op interface \
    ports { weights_load_9104 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14809 \
    name weights_load_9105 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9105 \
    op interface \
    ports { weights_load_9105 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14810 \
    name weights_load_9106 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9106 \
    op interface \
    ports { weights_load_9106 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14811 \
    name weights_load_9107 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9107 \
    op interface \
    ports { weights_load_9107 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14812 \
    name weights_load_9108 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9108 \
    op interface \
    ports { weights_load_9108 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14813 \
    name weights_load_9109 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9109 \
    op interface \
    ports { weights_load_9109 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14814 \
    name weights_load_9110 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9110 \
    op interface \
    ports { weights_load_9110 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14815 \
    name weights_load_9111 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9111 \
    op interface \
    ports { weights_load_9111 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14816 \
    name weights_load_9112 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9112 \
    op interface \
    ports { weights_load_9112 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14817 \
    name weights_load_9113 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9113 \
    op interface \
    ports { weights_load_9113 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14818 \
    name weights_load_9114 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9114 \
    op interface \
    ports { weights_load_9114 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14819 \
    name weights_load_9115 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9115 \
    op interface \
    ports { weights_load_9115 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14820 \
    name weights_load_9116 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9116 \
    op interface \
    ports { weights_load_9116 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14821 \
    name weights_load_9117 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9117 \
    op interface \
    ports { weights_load_9117 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14822 \
    name weights_load_9118 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9118 \
    op interface \
    ports { weights_load_9118 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14823 \
    name weights_load_9119 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9119 \
    op interface \
    ports { weights_load_9119 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14824 \
    name weights_load_9120 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9120 \
    op interface \
    ports { weights_load_9120 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14825 \
    name weights_load_9121 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9121 \
    op interface \
    ports { weights_load_9121 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14826 \
    name weights_load_9122 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9122 \
    op interface \
    ports { weights_load_9122 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14827 \
    name weights_load_9123 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9123 \
    op interface \
    ports { weights_load_9123 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14828 \
    name weights_load_9124 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9124 \
    op interface \
    ports { weights_load_9124 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14829 \
    name weights_load_9125 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9125 \
    op interface \
    ports { weights_load_9125 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14830 \
    name weights_load_9126 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9126 \
    op interface \
    ports { weights_load_9126 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14831 \
    name weights_load_9127 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9127 \
    op interface \
    ports { weights_load_9127 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14832 \
    name weights_load_9128 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9128 \
    op interface \
    ports { weights_load_9128 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14833 \
    name weights_load_9129 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9129 \
    op interface \
    ports { weights_load_9129 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14834 \
    name weights_load_9130 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9130 \
    op interface \
    ports { weights_load_9130 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14835 \
    name weights_load_9131 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9131 \
    op interface \
    ports { weights_load_9131 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14836 \
    name weights_load_9132 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9132 \
    op interface \
    ports { weights_load_9132 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14837 \
    name weights_load_9133 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9133 \
    op interface \
    ports { weights_load_9133 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14838 \
    name weights_load_9134 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9134 \
    op interface \
    ports { weights_load_9134 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14839 \
    name weights_load_9135 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9135 \
    op interface \
    ports { weights_load_9135 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14840 \
    name weights_load_9136 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9136 \
    op interface \
    ports { weights_load_9136 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14841 \
    name weights_load_9137 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9137 \
    op interface \
    ports { weights_load_9137 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14842 \
    name weights_load_9138 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9138 \
    op interface \
    ports { weights_load_9138 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14843 \
    name weights_load_9139 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9139 \
    op interface \
    ports { weights_load_9139 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14844 \
    name weights_load_9140 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9140 \
    op interface \
    ports { weights_load_9140 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14845 \
    name weights_load_9141 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9141 \
    op interface \
    ports { weights_load_9141 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14846 \
    name weights_load_9142 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9142 \
    op interface \
    ports { weights_load_9142 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14847 \
    name weights_load_9143 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9143 \
    op interface \
    ports { weights_load_9143 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14848 \
    name weights_load_9144 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9144 \
    op interface \
    ports { weights_load_9144 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14849 \
    name weights_load_9145 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9145 \
    op interface \
    ports { weights_load_9145 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14850 \
    name weights_load_9146 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9146 \
    op interface \
    ports { weights_load_9146 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14851 \
    name weights_load_9147 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9147 \
    op interface \
    ports { weights_load_9147 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14852 \
    name weights_load_9148 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9148 \
    op interface \
    ports { weights_load_9148 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14853 \
    name weights_load_9149 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9149 \
    op interface \
    ports { weights_load_9149 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14854 \
    name weights_load_9150 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9150 \
    op interface \
    ports { weights_load_9150 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14855 \
    name weights_load_9151 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9151 \
    op interface \
    ports { weights_load_9151 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14856 \
    name weights_load_9152 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9152 \
    op interface \
    ports { weights_load_9152 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14857 \
    name weights_load_9153 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9153 \
    op interface \
    ports { weights_load_9153 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14858 \
    name weights_load_9154 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9154 \
    op interface \
    ports { weights_load_9154 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14859 \
    name weights_load_9155 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9155 \
    op interface \
    ports { weights_load_9155 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14860 \
    name weights_load_9156 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9156 \
    op interface \
    ports { weights_load_9156 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14861 \
    name weights_load_9157 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9157 \
    op interface \
    ports { weights_load_9157 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14862 \
    name weights_load_9158 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9158 \
    op interface \
    ports { weights_load_9158 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14863 \
    name weights_load_9159 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9159 \
    op interface \
    ports { weights_load_9159 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14864 \
    name weights_load_9160 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9160 \
    op interface \
    ports { weights_load_9160 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14865 \
    name weights_load_9161 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9161 \
    op interface \
    ports { weights_load_9161 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14866 \
    name weights_load_9162 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9162 \
    op interface \
    ports { weights_load_9162 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14867 \
    name weights_load_9163 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9163 \
    op interface \
    ports { weights_load_9163 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14868 \
    name weights_load_9164 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9164 \
    op interface \
    ports { weights_load_9164 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14869 \
    name weights_load_9165 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9165 \
    op interface \
    ports { weights_load_9165 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14870 \
    name weights_load_9166 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9166 \
    op interface \
    ports { weights_load_9166 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14871 \
    name weights_load_9167 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9167 \
    op interface \
    ports { weights_load_9167 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14872 \
    name weights_load_9168 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9168 \
    op interface \
    ports { weights_load_9168 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14873 \
    name weights_load_9169 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9169 \
    op interface \
    ports { weights_load_9169 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14874 \
    name weights_load_9170 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9170 \
    op interface \
    ports { weights_load_9170 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14875 \
    name weights_load_9171 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9171 \
    op interface \
    ports { weights_load_9171 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14876 \
    name weights_load_9172 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9172 \
    op interface \
    ports { weights_load_9172 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14877 \
    name weights_load_9173 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9173 \
    op interface \
    ports { weights_load_9173 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14878 \
    name weights_load_9174 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9174 \
    op interface \
    ports { weights_load_9174 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14879 \
    name weights_load_9175 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9175 \
    op interface \
    ports { weights_load_9175 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14880 \
    name weights_load_9176 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9176 \
    op interface \
    ports { weights_load_9176 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14881 \
    name weights_load_9177 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9177 \
    op interface \
    ports { weights_load_9177 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14882 \
    name weights_load_9178 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9178 \
    op interface \
    ports { weights_load_9178 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14883 \
    name weights_load_9179 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9179 \
    op interface \
    ports { weights_load_9179 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14884 \
    name weights_load_9180 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9180 \
    op interface \
    ports { weights_load_9180 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14885 \
    name weights_load_9181 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9181 \
    op interface \
    ports { weights_load_9181 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14886 \
    name weights_load_9182 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9182 \
    op interface \
    ports { weights_load_9182 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14887 \
    name weights_load_9183 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9183 \
    op interface \
    ports { weights_load_9183 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14888 \
    name weights_load_9184 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9184 \
    op interface \
    ports { weights_load_9184 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14889 \
    name weights_load_9185 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9185 \
    op interface \
    ports { weights_load_9185 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14890 \
    name weights_load_9186 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9186 \
    op interface \
    ports { weights_load_9186 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14891 \
    name weights_load_9187 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9187 \
    op interface \
    ports { weights_load_9187 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14892 \
    name weights_load_9188 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9188 \
    op interface \
    ports { weights_load_9188 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14893 \
    name weights_load_9189 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9189 \
    op interface \
    ports { weights_load_9189 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14894 \
    name weights_load_9190 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9190 \
    op interface \
    ports { weights_load_9190 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14895 \
    name weights_load_9191 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9191 \
    op interface \
    ports { weights_load_9191 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14896 \
    name weights_load_9192 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9192 \
    op interface \
    ports { weights_load_9192 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14897 \
    name weights_load_9193 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9193 \
    op interface \
    ports { weights_load_9193 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14898 \
    name weights_load_9194 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9194 \
    op interface \
    ports { weights_load_9194 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14899 \
    name weights_load_9195 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9195 \
    op interface \
    ports { weights_load_9195 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14900 \
    name weights_load_9196 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9196 \
    op interface \
    ports { weights_load_9196 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14901 \
    name weights_load_9197 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9197 \
    op interface \
    ports { weights_load_9197 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14902 \
    name weights_load_9198 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9198 \
    op interface \
    ports { weights_load_9198 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14903 \
    name weights_load_9199 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9199 \
    op interface \
    ports { weights_load_9199 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14904 \
    name weights_load_9200 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_9200 \
    op interface \
    ports { weights_load_9200 { I 32 vector } } \
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


