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
    id 12533 \
    name conv2d_64_padded_window_stream_20 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_20 \
    op interface \
    ports { conv2d_64_padded_window_stream_20_dout { I 288 vector } conv2d_64_padded_window_stream_20_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_20_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_20_empty_n { I 1 bit } conv2d_64_padded_window_stream_20_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12534 \
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
    id 12535 \
    name weights_load_10351 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10351 \
    op interface \
    ports { weights_load_10351 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12536 \
    name weights_load_10352 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10352 \
    op interface \
    ports { weights_load_10352 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12537 \
    name weights_load_10353 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10353 \
    op interface \
    ports { weights_load_10353 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12538 \
    name weights_load_10354 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10354 \
    op interface \
    ports { weights_load_10354 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12539 \
    name weights_load_10355 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10355 \
    op interface \
    ports { weights_load_10355 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12540 \
    name weights_load_10356 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10356 \
    op interface \
    ports { weights_load_10356 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12541 \
    name weights_load_10357 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10357 \
    op interface \
    ports { weights_load_10357 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12542 \
    name weights_load_10358 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10358 \
    op interface \
    ports { weights_load_10358 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12543 \
    name in_channel_map_stream_20 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_20 \
    op interface \
    ports { in_channel_map_stream_20_din { O 32 vector } in_channel_map_stream_20_num_data_valid { I 3 vector } in_channel_map_stream_20_fifo_cap { I 3 vector } in_channel_map_stream_20_full_n { I 1 bit } in_channel_map_stream_20_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12544 \
    name weights_load_10359 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10359 \
    op interface \
    ports { weights_load_10359 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12545 \
    name weights_load_10360 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10360 \
    op interface \
    ports { weights_load_10360 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12546 \
    name weights_load_10361 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10361 \
    op interface \
    ports { weights_load_10361 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12547 \
    name weights_load_10362 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10362 \
    op interface \
    ports { weights_load_10362 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12548 \
    name weights_load_10363 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10363 \
    op interface \
    ports { weights_load_10363 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12549 \
    name weights_load_10364 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10364 \
    op interface \
    ports { weights_load_10364 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12550 \
    name weights_load_10365 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10365 \
    op interface \
    ports { weights_load_10365 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12551 \
    name weights_load_10366 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10366 \
    op interface \
    ports { weights_load_10366 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12552 \
    name weights_load_10367 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10367 \
    op interface \
    ports { weights_load_10367 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12553 \
    name weights_load_10368 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10368 \
    op interface \
    ports { weights_load_10368 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12554 \
    name weights_load_10369 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10369 \
    op interface \
    ports { weights_load_10369 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12555 \
    name weights_load_10370 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10370 \
    op interface \
    ports { weights_load_10370 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12556 \
    name weights_load_10371 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10371 \
    op interface \
    ports { weights_load_10371 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12557 \
    name weights_load_10372 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10372 \
    op interface \
    ports { weights_load_10372 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12558 \
    name weights_load_10373 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10373 \
    op interface \
    ports { weights_load_10373 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12559 \
    name weights_load_10374 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10374 \
    op interface \
    ports { weights_load_10374 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12560 \
    name weights_load_10375 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10375 \
    op interface \
    ports { weights_load_10375 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12561 \
    name weights_load_10376 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10376 \
    op interface \
    ports { weights_load_10376 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12562 \
    name weights_load_10377 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10377 \
    op interface \
    ports { weights_load_10377 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12563 \
    name weights_load_10378 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10378 \
    op interface \
    ports { weights_load_10378 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12564 \
    name weights_load_10379 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10379 \
    op interface \
    ports { weights_load_10379 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12565 \
    name weights_load_10380 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10380 \
    op interface \
    ports { weights_load_10380 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12566 \
    name weights_load_10381 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10381 \
    op interface \
    ports { weights_load_10381 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12567 \
    name weights_load_10382 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10382 \
    op interface \
    ports { weights_load_10382 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12568 \
    name weights_load_10383 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10383 \
    op interface \
    ports { weights_load_10383 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12569 \
    name weights_load_10384 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10384 \
    op interface \
    ports { weights_load_10384 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12570 \
    name weights_load_10385 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10385 \
    op interface \
    ports { weights_load_10385 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12571 \
    name weights_load_10386 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10386 \
    op interface \
    ports { weights_load_10386 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12572 \
    name weights_load_10387 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10387 \
    op interface \
    ports { weights_load_10387 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12573 \
    name weights_load_10388 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10388 \
    op interface \
    ports { weights_load_10388 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12574 \
    name weights_load_10389 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10389 \
    op interface \
    ports { weights_load_10389 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12575 \
    name weights_load_10390 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10390 \
    op interface \
    ports { weights_load_10390 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12576 \
    name weights_load_10391 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10391 \
    op interface \
    ports { weights_load_10391 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12577 \
    name weights_load_10392 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10392 \
    op interface \
    ports { weights_load_10392 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12578 \
    name weights_load_10393 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10393 \
    op interface \
    ports { weights_load_10393 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12579 \
    name weights_load_10394 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10394 \
    op interface \
    ports { weights_load_10394 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12580 \
    name weights_load_10395 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10395 \
    op interface \
    ports { weights_load_10395 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12581 \
    name weights_load_10396 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10396 \
    op interface \
    ports { weights_load_10396 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12582 \
    name weights_load_10397 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10397 \
    op interface \
    ports { weights_load_10397 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12583 \
    name weights_load_10398 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10398 \
    op interface \
    ports { weights_load_10398 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12584 \
    name weights_load_10399 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10399 \
    op interface \
    ports { weights_load_10399 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12585 \
    name weights_load_10400 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10400 \
    op interface \
    ports { weights_load_10400 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12586 \
    name weights_load_10401 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10401 \
    op interface \
    ports { weights_load_10401 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12587 \
    name weights_load_10402 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10402 \
    op interface \
    ports { weights_load_10402 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12588 \
    name weights_load_10403 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10403 \
    op interface \
    ports { weights_load_10403 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12589 \
    name weights_load_10404 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10404 \
    op interface \
    ports { weights_load_10404 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12590 \
    name weights_load_10405 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10405 \
    op interface \
    ports { weights_load_10405 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12591 \
    name weights_load_10406 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10406 \
    op interface \
    ports { weights_load_10406 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12592 \
    name weights_load_10407 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10407 \
    op interface \
    ports { weights_load_10407 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12593 \
    name weights_load_10408 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10408 \
    op interface \
    ports { weights_load_10408 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12594 \
    name weights_load_10409 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10409 \
    op interface \
    ports { weights_load_10409 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12595 \
    name weights_load_10410 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10410 \
    op interface \
    ports { weights_load_10410 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12596 \
    name weights_load_10411 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10411 \
    op interface \
    ports { weights_load_10411 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12597 \
    name weights_load_10412 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10412 \
    op interface \
    ports { weights_load_10412 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12598 \
    name weights_load_10413 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10413 \
    op interface \
    ports { weights_load_10413 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12599 \
    name weights_load_10414 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10414 \
    op interface \
    ports { weights_load_10414 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12600 \
    name weights_load_10415 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10415 \
    op interface \
    ports { weights_load_10415 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12601 \
    name weights_load_10416 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10416 \
    op interface \
    ports { weights_load_10416 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12602 \
    name weights_load_10417 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10417 \
    op interface \
    ports { weights_load_10417 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12603 \
    name weights_load_10418 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10418 \
    op interface \
    ports { weights_load_10418 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12604 \
    name weights_load_10419 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10419 \
    op interface \
    ports { weights_load_10419 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12605 \
    name weights_load_10420 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10420 \
    op interface \
    ports { weights_load_10420 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12606 \
    name weights_load_10421 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10421 \
    op interface \
    ports { weights_load_10421 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12607 \
    name weights_load_10422 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10422 \
    op interface \
    ports { weights_load_10422 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12608 \
    name weights_load_10423 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10423 \
    op interface \
    ports { weights_load_10423 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12609 \
    name weights_load_10424 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10424 \
    op interface \
    ports { weights_load_10424 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12610 \
    name weights_load_10425 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10425 \
    op interface \
    ports { weights_load_10425 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12611 \
    name weights_load_10426 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10426 \
    op interface \
    ports { weights_load_10426 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12612 \
    name weights_load_10427 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10427 \
    op interface \
    ports { weights_load_10427 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12613 \
    name weights_load_10428 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10428 \
    op interface \
    ports { weights_load_10428 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12614 \
    name weights_load_10429 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10429 \
    op interface \
    ports { weights_load_10429 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12615 \
    name weights_load_10430 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10430 \
    op interface \
    ports { weights_load_10430 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12616 \
    name weights_load_10431 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10431 \
    op interface \
    ports { weights_load_10431 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12617 \
    name weights_load_10432 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10432 \
    op interface \
    ports { weights_load_10432 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12618 \
    name weights_load_10433 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10433 \
    op interface \
    ports { weights_load_10433 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12619 \
    name weights_load_10434 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10434 \
    op interface \
    ports { weights_load_10434 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12620 \
    name weights_load_10435 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10435 \
    op interface \
    ports { weights_load_10435 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12621 \
    name weights_load_10436 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10436 \
    op interface \
    ports { weights_load_10436 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12622 \
    name weights_load_10437 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10437 \
    op interface \
    ports { weights_load_10437 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12623 \
    name weights_load_10438 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10438 \
    op interface \
    ports { weights_load_10438 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12624 \
    name weights_load_10439 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10439 \
    op interface \
    ports { weights_load_10439 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12625 \
    name weights_load_10440 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10440 \
    op interface \
    ports { weights_load_10440 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12626 \
    name weights_load_10441 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10441 \
    op interface \
    ports { weights_load_10441 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12627 \
    name weights_load_10442 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10442 \
    op interface \
    ports { weights_load_10442 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12628 \
    name weights_load_10443 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10443 \
    op interface \
    ports { weights_load_10443 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12629 \
    name weights_load_10444 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10444 \
    op interface \
    ports { weights_load_10444 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12630 \
    name weights_load_10445 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10445 \
    op interface \
    ports { weights_load_10445 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12631 \
    name weights_load_10446 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10446 \
    op interface \
    ports { weights_load_10446 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12632 \
    name weights_load_10447 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10447 \
    op interface \
    ports { weights_load_10447 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12633 \
    name weights_load_10448 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10448 \
    op interface \
    ports { weights_load_10448 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12634 \
    name weights_load_10449 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10449 \
    op interface \
    ports { weights_load_10449 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12635 \
    name weights_load_10450 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10450 \
    op interface \
    ports { weights_load_10450 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12636 \
    name weights_load_10451 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10451 \
    op interface \
    ports { weights_load_10451 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12637 \
    name weights_load_10452 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10452 \
    op interface \
    ports { weights_load_10452 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12638 \
    name weights_load_10453 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10453 \
    op interface \
    ports { weights_load_10453 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12639 \
    name weights_load_10454 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10454 \
    op interface \
    ports { weights_load_10454 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12640 \
    name weights_load_10455 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10455 \
    op interface \
    ports { weights_load_10455 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12641 \
    name weights_load_10456 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10456 \
    op interface \
    ports { weights_load_10456 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12642 \
    name weights_load_10457 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10457 \
    op interface \
    ports { weights_load_10457 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12643 \
    name weights_load_10458 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10458 \
    op interface \
    ports { weights_load_10458 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12644 \
    name weights_load_10459 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10459 \
    op interface \
    ports { weights_load_10459 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12645 \
    name weights_load_10460 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10460 \
    op interface \
    ports { weights_load_10460 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12646 \
    name weights_load_10461 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10461 \
    op interface \
    ports { weights_load_10461 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12647 \
    name weights_load_10462 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10462 \
    op interface \
    ports { weights_load_10462 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12648 \
    name weights_load_10463 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10463 \
    op interface \
    ports { weights_load_10463 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12649 \
    name weights_load_10464 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10464 \
    op interface \
    ports { weights_load_10464 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12650 \
    name weights_load_10465 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10465 \
    op interface \
    ports { weights_load_10465 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12651 \
    name weights_load_10466 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10466 \
    op interface \
    ports { weights_load_10466 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12652 \
    name weights_load_10467 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10467 \
    op interface \
    ports { weights_load_10467 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12653 \
    name weights_load_10468 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10468 \
    op interface \
    ports { weights_load_10468 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12654 \
    name weights_load_10469 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10469 \
    op interface \
    ports { weights_load_10469 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12655 \
    name weights_load_10470 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10470 \
    op interface \
    ports { weights_load_10470 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12656 \
    name weights_load_10471 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10471 \
    op interface \
    ports { weights_load_10471 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12657 \
    name weights_load_10472 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10472 \
    op interface \
    ports { weights_load_10472 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12658 \
    name weights_load_10473 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10473 \
    op interface \
    ports { weights_load_10473 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12659 \
    name weights_load_10474 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10474 \
    op interface \
    ports { weights_load_10474 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12660 \
    name weights_load_10475 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10475 \
    op interface \
    ports { weights_load_10475 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12661 \
    name weights_load_10476 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10476 \
    op interface \
    ports { weights_load_10476 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12662 \
    name weights_load_10477 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10477 \
    op interface \
    ports { weights_load_10477 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12663 \
    name weights_load_10478 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10478 \
    op interface \
    ports { weights_load_10478 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12664 \
    name weights_load_10479 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10479 \
    op interface \
    ports { weights_load_10479 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12665 \
    name weights_load_10480 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10480 \
    op interface \
    ports { weights_load_10480 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12666 \
    name weights_load_10481 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10481 \
    op interface \
    ports { weights_load_10481 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12667 \
    name weights_load_10482 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10482 \
    op interface \
    ports { weights_load_10482 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12668 \
    name weights_load_10483 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10483 \
    op interface \
    ports { weights_load_10483 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12669 \
    name weights_load_10484 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10484 \
    op interface \
    ports { weights_load_10484 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12670 \
    name weights_load_10485 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10485 \
    op interface \
    ports { weights_load_10485 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12671 \
    name weights_load_10486 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10486 \
    op interface \
    ports { weights_load_10486 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12672 \
    name weights_load_10487 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10487 \
    op interface \
    ports { weights_load_10487 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12673 \
    name weights_load_10488 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10488 \
    op interface \
    ports { weights_load_10488 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12674 \
    name weights_load_10489 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10489 \
    op interface \
    ports { weights_load_10489 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12675 \
    name weights_load_10490 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10490 \
    op interface \
    ports { weights_load_10490 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12676 \
    name weights_load_10491 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10491 \
    op interface \
    ports { weights_load_10491 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12677 \
    name weights_load_10492 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10492 \
    op interface \
    ports { weights_load_10492 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12678 \
    name weights_load_10493 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10493 \
    op interface \
    ports { weights_load_10493 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12679 \
    name weights_load_10494 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10494 \
    op interface \
    ports { weights_load_10494 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12680 \
    name weights_load_10495 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10495 \
    op interface \
    ports { weights_load_10495 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12681 \
    name weights_load_10496 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10496 \
    op interface \
    ports { weights_load_10496 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12682 \
    name weights_load_10497 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10497 \
    op interface \
    ports { weights_load_10497 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12683 \
    name weights_load_10498 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10498 \
    op interface \
    ports { weights_load_10498 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12684 \
    name weights_load_10499 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10499 \
    op interface \
    ports { weights_load_10499 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12685 \
    name weights_load_10500 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10500 \
    op interface \
    ports { weights_load_10500 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12686 \
    name weights_load_10501 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10501 \
    op interface \
    ports { weights_load_10501 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12687 \
    name weights_load_10502 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10502 \
    op interface \
    ports { weights_load_10502 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12688 \
    name weights_load_10503 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10503 \
    op interface \
    ports { weights_load_10503 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12689 \
    name weights_load_10504 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10504 \
    op interface \
    ports { weights_load_10504 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12690 \
    name weights_load_10505 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10505 \
    op interface \
    ports { weights_load_10505 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12691 \
    name weights_load_10506 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10506 \
    op interface \
    ports { weights_load_10506 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12692 \
    name weights_load_10507 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10507 \
    op interface \
    ports { weights_load_10507 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12693 \
    name weights_load_10508 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10508 \
    op interface \
    ports { weights_load_10508 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12694 \
    name weights_load_10509 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10509 \
    op interface \
    ports { weights_load_10509 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12695 \
    name weights_load_10510 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10510 \
    op interface \
    ports { weights_load_10510 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12696 \
    name weights_load_10511 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10511 \
    op interface \
    ports { weights_load_10511 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12697 \
    name weights_load_10512 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10512 \
    op interface \
    ports { weights_load_10512 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12698 \
    name weights_load_10513 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10513 \
    op interface \
    ports { weights_load_10513 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12699 \
    name weights_load_10514 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10514 \
    op interface \
    ports { weights_load_10514 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12700 \
    name weights_load_10515 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10515 \
    op interface \
    ports { weights_load_10515 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12701 \
    name weights_load_10516 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10516 \
    op interface \
    ports { weights_load_10516 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12702 \
    name weights_load_10517 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10517 \
    op interface \
    ports { weights_load_10517 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12703 \
    name weights_load_10518 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10518 \
    op interface \
    ports { weights_load_10518 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12704 \
    name weights_load_10519 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10519 \
    op interface \
    ports { weights_load_10519 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12705 \
    name weights_load_10520 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10520 \
    op interface \
    ports { weights_load_10520 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12706 \
    name weights_load_10521 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10521 \
    op interface \
    ports { weights_load_10521 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12707 \
    name weights_load_10522 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10522 \
    op interface \
    ports { weights_load_10522 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12708 \
    name weights_load_10523 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10523 \
    op interface \
    ports { weights_load_10523 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12709 \
    name weights_load_10524 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10524 \
    op interface \
    ports { weights_load_10524 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12710 \
    name weights_load_10525 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10525 \
    op interface \
    ports { weights_load_10525 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12711 \
    name weights_load_10526 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10526 \
    op interface \
    ports { weights_load_10526 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12712 \
    name weights_load_10527 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10527 \
    op interface \
    ports { weights_load_10527 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12713 \
    name weights_load_10528 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10528 \
    op interface \
    ports { weights_load_10528 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12714 \
    name weights_load_10529 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10529 \
    op interface \
    ports { weights_load_10529 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12715 \
    name weights_load_10530 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10530 \
    op interface \
    ports { weights_load_10530 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12716 \
    name weights_load_10531 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10531 \
    op interface \
    ports { weights_load_10531 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12717 \
    name weights_load_10532 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10532 \
    op interface \
    ports { weights_load_10532 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12718 \
    name weights_load_10533 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10533 \
    op interface \
    ports { weights_load_10533 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12719 \
    name weights_load_10534 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10534 \
    op interface \
    ports { weights_load_10534 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12720 \
    name weights_load_10535 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10535 \
    op interface \
    ports { weights_load_10535 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12721 \
    name weights_load_10536 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10536 \
    op interface \
    ports { weights_load_10536 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12722 \
    name weights_load_10537 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10537 \
    op interface \
    ports { weights_load_10537 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12723 \
    name weights_load_10538 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10538 \
    op interface \
    ports { weights_load_10538 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12724 \
    name weights_load_10539 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10539 \
    op interface \
    ports { weights_load_10539 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12725 \
    name weights_load_10540 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10540 \
    op interface \
    ports { weights_load_10540 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12726 \
    name weights_load_10541 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10541 \
    op interface \
    ports { weights_load_10541 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12727 \
    name weights_load_10542 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10542 \
    op interface \
    ports { weights_load_10542 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12728 \
    name weights_load_10543 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10543 \
    op interface \
    ports { weights_load_10543 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12729 \
    name weights_load_10544 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10544 \
    op interface \
    ports { weights_load_10544 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12730 \
    name weights_load_10545 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10545 \
    op interface \
    ports { weights_load_10545 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12731 \
    name weights_load_10546 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10546 \
    op interface \
    ports { weights_load_10546 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12732 \
    name weights_load_10547 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10547 \
    op interface \
    ports { weights_load_10547 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12733 \
    name weights_load_10548 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10548 \
    op interface \
    ports { weights_load_10548 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12734 \
    name weights_load_10549 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10549 \
    op interface \
    ports { weights_load_10549 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12735 \
    name weights_load_10550 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10550 \
    op interface \
    ports { weights_load_10550 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12736 \
    name weights_load_10551 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10551 \
    op interface \
    ports { weights_load_10551 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12737 \
    name weights_load_10552 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10552 \
    op interface \
    ports { weights_load_10552 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12738 \
    name weights_load_10553 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10553 \
    op interface \
    ports { weights_load_10553 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12739 \
    name weights_load_10554 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10554 \
    op interface \
    ports { weights_load_10554 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12740 \
    name weights_load_10555 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10555 \
    op interface \
    ports { weights_load_10555 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12741 \
    name weights_load_10556 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10556 \
    op interface \
    ports { weights_load_10556 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12742 \
    name weights_load_10557 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10557 \
    op interface \
    ports { weights_load_10557 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12743 \
    name weights_load_10558 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10558 \
    op interface \
    ports { weights_load_10558 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12744 \
    name weights_load_10559 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10559 \
    op interface \
    ports { weights_load_10559 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12745 \
    name weights_load_10560 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10560 \
    op interface \
    ports { weights_load_10560 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12746 \
    name weights_load_10561 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10561 \
    op interface \
    ports { weights_load_10561 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12747 \
    name weights_load_10562 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10562 \
    op interface \
    ports { weights_load_10562 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12748 \
    name weights_load_10563 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10563 \
    op interface \
    ports { weights_load_10563 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12749 \
    name weights_load_10564 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10564 \
    op interface \
    ports { weights_load_10564 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12750 \
    name weights_load_10565 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10565 \
    op interface \
    ports { weights_load_10565 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12751 \
    name weights_load_10566 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10566 \
    op interface \
    ports { weights_load_10566 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12752 \
    name weights_load_10567 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10567 \
    op interface \
    ports { weights_load_10567 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12753 \
    name weights_load_10568 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10568 \
    op interface \
    ports { weights_load_10568 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12754 \
    name weights_load_10569 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10569 \
    op interface \
    ports { weights_load_10569 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12755 \
    name weights_load_10570 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10570 \
    op interface \
    ports { weights_load_10570 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12756 \
    name weights_load_10571 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10571 \
    op interface \
    ports { weights_load_10571 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12757 \
    name weights_load_10572 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10572 \
    op interface \
    ports { weights_load_10572 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12758 \
    name weights_load_10573 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10573 \
    op interface \
    ports { weights_load_10573 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12759 \
    name weights_load_10574 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10574 \
    op interface \
    ports { weights_load_10574 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12760 \
    name weights_load_10575 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10575 \
    op interface \
    ports { weights_load_10575 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12761 \
    name weights_load_10576 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10576 \
    op interface \
    ports { weights_load_10576 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12762 \
    name weights_load_10577 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10577 \
    op interface \
    ports { weights_load_10577 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12763 \
    name weights_load_10578 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10578 \
    op interface \
    ports { weights_load_10578 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12764 \
    name weights_load_10579 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10579 \
    op interface \
    ports { weights_load_10579 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12765 \
    name weights_load_10580 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10580 \
    op interface \
    ports { weights_load_10580 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12766 \
    name weights_load_10581 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10581 \
    op interface \
    ports { weights_load_10581 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12767 \
    name weights_load_10582 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10582 \
    op interface \
    ports { weights_load_10582 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12768 \
    name weights_load_10583 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10583 \
    op interface \
    ports { weights_load_10583 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12769 \
    name weights_load_10584 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10584 \
    op interface \
    ports { weights_load_10584 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12770 \
    name weights_load_10585 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10585 \
    op interface \
    ports { weights_load_10585 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12771 \
    name weights_load_10586 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10586 \
    op interface \
    ports { weights_load_10586 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12772 \
    name weights_load_10587 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10587 \
    op interface \
    ports { weights_load_10587 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12773 \
    name weights_load_10588 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10588 \
    op interface \
    ports { weights_load_10588 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12774 \
    name weights_load_10589 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10589 \
    op interface \
    ports { weights_load_10589 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12775 \
    name weights_load_10590 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10590 \
    op interface \
    ports { weights_load_10590 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12776 \
    name weights_load_10591 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10591 \
    op interface \
    ports { weights_load_10591 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12777 \
    name weights_load_10592 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10592 \
    op interface \
    ports { weights_load_10592 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12778 \
    name weights_load_10593 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10593 \
    op interface \
    ports { weights_load_10593 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12779 \
    name weights_load_10594 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10594 \
    op interface \
    ports { weights_load_10594 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12780 \
    name weights_load_10595 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10595 \
    op interface \
    ports { weights_load_10595 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12781 \
    name weights_load_10596 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10596 \
    op interface \
    ports { weights_load_10596 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12782 \
    name weights_load_10597 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10597 \
    op interface \
    ports { weights_load_10597 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12783 \
    name weights_load_10598 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10598 \
    op interface \
    ports { weights_load_10598 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12784 \
    name weights_load_10599 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10599 \
    op interface \
    ports { weights_load_10599 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12785 \
    name weights_load_10600 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10600 \
    op interface \
    ports { weights_load_10600 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12786 \
    name weights_load_10601 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10601 \
    op interface \
    ports { weights_load_10601 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12787 \
    name weights_load_10602 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10602 \
    op interface \
    ports { weights_load_10602 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12788 \
    name weights_load_10603 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10603 \
    op interface \
    ports { weights_load_10603 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12789 \
    name weights_load_10604 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10604 \
    op interface \
    ports { weights_load_10604 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12790 \
    name weights_load_10605 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10605 \
    op interface \
    ports { weights_load_10605 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12791 \
    name weights_load_10606 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10606 \
    op interface \
    ports { weights_load_10606 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12792 \
    name weights_load_10607 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10607 \
    op interface \
    ports { weights_load_10607 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12793 \
    name weights_load_10608 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10608 \
    op interface \
    ports { weights_load_10608 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12794 \
    name weights_load_10609 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10609 \
    op interface \
    ports { weights_load_10609 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12795 \
    name weights_load_10610 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10610 \
    op interface \
    ports { weights_load_10610 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12796 \
    name weights_load_10611 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10611 \
    op interface \
    ports { weights_load_10611 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12797 \
    name weights_load_10612 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10612 \
    op interface \
    ports { weights_load_10612 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12798 \
    name weights_load_10613 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10613 \
    op interface \
    ports { weights_load_10613 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12799 \
    name weights_load_10614 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10614 \
    op interface \
    ports { weights_load_10614 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12800 \
    name weights_load_10615 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10615 \
    op interface \
    ports { weights_load_10615 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12801 \
    name weights_load_10616 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10616 \
    op interface \
    ports { weights_load_10616 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12802 \
    name weights_load_10617 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10617 \
    op interface \
    ports { weights_load_10617 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12803 \
    name weights_load_10618 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10618 \
    op interface \
    ports { weights_load_10618 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12804 \
    name weights_load_10619 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10619 \
    op interface \
    ports { weights_load_10619 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12805 \
    name weights_load_10620 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10620 \
    op interface \
    ports { weights_load_10620 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12806 \
    name weights_load_10621 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10621 \
    op interface \
    ports { weights_load_10621 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12807 \
    name weights_load_10622 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10622 \
    op interface \
    ports { weights_load_10622 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12808 \
    name weights_load_10623 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10623 \
    op interface \
    ports { weights_load_10623 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12809 \
    name weights_load_10624 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10624 \
    op interface \
    ports { weights_load_10624 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12810 \
    name weights_load_10625 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10625 \
    op interface \
    ports { weights_load_10625 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12811 \
    name weights_load_10626 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10626 \
    op interface \
    ports { weights_load_10626 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12812 \
    name weights_load_10627 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10627 \
    op interface \
    ports { weights_load_10627 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12813 \
    name weights_load_10628 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10628 \
    op interface \
    ports { weights_load_10628 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12814 \
    name weights_load_10629 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10629 \
    op interface \
    ports { weights_load_10629 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12815 \
    name weights_load_10630 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10630 \
    op interface \
    ports { weights_load_10630 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12816 \
    name weights_load_10631 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10631 \
    op interface \
    ports { weights_load_10631 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12817 \
    name weights_load_10632 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10632 \
    op interface \
    ports { weights_load_10632 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12818 \
    name weights_load_10633 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10633 \
    op interface \
    ports { weights_load_10633 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12819 \
    name weights_load_10634 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10634 \
    op interface \
    ports { weights_load_10634 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12820 \
    name weights_load_10635 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10635 \
    op interface \
    ports { weights_load_10635 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12821 \
    name weights_load_10636 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10636 \
    op interface \
    ports { weights_load_10636 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12822 \
    name weights_load_10637 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10637 \
    op interface \
    ports { weights_load_10637 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12823 \
    name weights_load_10638 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10638 \
    op interface \
    ports { weights_load_10638 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12824 \
    name weights_load_10639 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10639 \
    op interface \
    ports { weights_load_10639 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12825 \
    name weights_load_10640 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10640 \
    op interface \
    ports { weights_load_10640 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12826 \
    name weights_load_10641 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10641 \
    op interface \
    ports { weights_load_10641 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12827 \
    name weights_load_10642 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10642 \
    op interface \
    ports { weights_load_10642 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12828 \
    name weights_load_10643 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10643 \
    op interface \
    ports { weights_load_10643 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12829 \
    name weights_load_10644 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10644 \
    op interface \
    ports { weights_load_10644 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12830 \
    name weights_load_10645 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10645 \
    op interface \
    ports { weights_load_10645 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12831 \
    name weights_load_10646 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10646 \
    op interface \
    ports { weights_load_10646 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12832 \
    name weights_load_10647 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10647 \
    op interface \
    ports { weights_load_10647 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12833 \
    name weights_load_10648 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10648 \
    op interface \
    ports { weights_load_10648 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12834 \
    name weights_load_10649 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10649 \
    op interface \
    ports { weights_load_10649 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12835 \
    name weights_load_10650 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10650 \
    op interface \
    ports { weights_load_10650 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12836 \
    name weights_load_10651 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10651 \
    op interface \
    ports { weights_load_10651 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12837 \
    name weights_load_10652 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10652 \
    op interface \
    ports { weights_load_10652 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12838 \
    name weights_load_10653 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10653 \
    op interface \
    ports { weights_load_10653 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12839 \
    name weights_load_10654 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10654 \
    op interface \
    ports { weights_load_10654 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12840 \
    name weights_load_10655 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10655 \
    op interface \
    ports { weights_load_10655 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12841 \
    name weights_load_10656 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10656 \
    op interface \
    ports { weights_load_10656 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12842 \
    name weights_load_10657 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10657 \
    op interface \
    ports { weights_load_10657 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12843 \
    name weights_load_10658 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10658 \
    op interface \
    ports { weights_load_10658 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12844 \
    name weights_load_10659 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10659 \
    op interface \
    ports { weights_load_10659 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12845 \
    name weights_load_10660 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10660 \
    op interface \
    ports { weights_load_10660 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12846 \
    name weights_load_10661 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10661 \
    op interface \
    ports { weights_load_10661 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12847 \
    name weights_load_10662 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10662 \
    op interface \
    ports { weights_load_10662 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12848 \
    name weights_load_10663 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10663 \
    op interface \
    ports { weights_load_10663 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12849 \
    name weights_load_10664 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10664 \
    op interface \
    ports { weights_load_10664 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12850 \
    name weights_load_10665 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10665 \
    op interface \
    ports { weights_load_10665 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12851 \
    name weights_load_10666 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10666 \
    op interface \
    ports { weights_load_10666 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12852 \
    name weights_load_10667 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10667 \
    op interface \
    ports { weights_load_10667 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12853 \
    name weights_load_10668 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10668 \
    op interface \
    ports { weights_load_10668 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12854 \
    name weights_load_10669 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10669 \
    op interface \
    ports { weights_load_10669 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12855 \
    name weights_load_10670 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10670 \
    op interface \
    ports { weights_load_10670 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12856 \
    name weights_load_10671 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10671 \
    op interface \
    ports { weights_load_10671 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12857 \
    name weights_load_10672 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10672 \
    op interface \
    ports { weights_load_10672 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12858 \
    name weights_load_10673 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10673 \
    op interface \
    ports { weights_load_10673 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12859 \
    name weights_load_10674 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10674 \
    op interface \
    ports { weights_load_10674 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12860 \
    name weights_load_10675 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10675 \
    op interface \
    ports { weights_load_10675 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12861 \
    name weights_load_10676 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10676 \
    op interface \
    ports { weights_load_10676 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12862 \
    name weights_load_10677 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10677 \
    op interface \
    ports { weights_load_10677 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12863 \
    name weights_load_10678 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10678 \
    op interface \
    ports { weights_load_10678 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12864 \
    name weights_load_10679 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10679 \
    op interface \
    ports { weights_load_10679 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12865 \
    name weights_load_10680 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10680 \
    op interface \
    ports { weights_load_10680 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12866 \
    name weights_load_10681 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10681 \
    op interface \
    ports { weights_load_10681 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12867 \
    name weights_load_10682 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10682 \
    op interface \
    ports { weights_load_10682 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12868 \
    name weights_load_10683 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10683 \
    op interface \
    ports { weights_load_10683 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12869 \
    name weights_load_10684 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10684 \
    op interface \
    ports { weights_load_10684 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12870 \
    name weights_load_10685 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10685 \
    op interface \
    ports { weights_load_10685 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12871 \
    name weights_load_10686 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10686 \
    op interface \
    ports { weights_load_10686 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12872 \
    name weights_load_10687 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10687 \
    op interface \
    ports { weights_load_10687 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12873 \
    name weights_load_10688 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10688 \
    op interface \
    ports { weights_load_10688 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12874 \
    name weights_load_10689 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10689 \
    op interface \
    ports { weights_load_10689 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12875 \
    name weights_load_10690 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10690 \
    op interface \
    ports { weights_load_10690 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12876 \
    name weights_load_10691 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10691 \
    op interface \
    ports { weights_load_10691 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12877 \
    name weights_load_10692 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10692 \
    op interface \
    ports { weights_load_10692 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12878 \
    name weights_load_10693 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10693 \
    op interface \
    ports { weights_load_10693 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12879 \
    name weights_load_10694 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10694 \
    op interface \
    ports { weights_load_10694 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12880 \
    name weights_load_10695 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10695 \
    op interface \
    ports { weights_load_10695 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12881 \
    name weights_load_10696 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10696 \
    op interface \
    ports { weights_load_10696 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12882 \
    name weights_load_10697 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10697 \
    op interface \
    ports { weights_load_10697 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12883 \
    name weights_load_10698 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10698 \
    op interface \
    ports { weights_load_10698 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12884 \
    name weights_load_10699 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10699 \
    op interface \
    ports { weights_load_10699 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12885 \
    name weights_load_10700 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10700 \
    op interface \
    ports { weights_load_10700 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12886 \
    name weights_load_10701 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10701 \
    op interface \
    ports { weights_load_10701 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12887 \
    name weights_load_10702 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10702 \
    op interface \
    ports { weights_load_10702 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12888 \
    name weights_load_10703 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10703 \
    op interface \
    ports { weights_load_10703 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12889 \
    name weights_load_10704 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10704 \
    op interface \
    ports { weights_load_10704 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12890 \
    name weights_load_10705 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10705 \
    op interface \
    ports { weights_load_10705 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12891 \
    name weights_load_10706 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10706 \
    op interface \
    ports { weights_load_10706 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12892 \
    name weights_load_10707 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10707 \
    op interface \
    ports { weights_load_10707 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12893 \
    name weights_load_10708 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10708 \
    op interface \
    ports { weights_load_10708 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12894 \
    name weights_load_10709 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10709 \
    op interface \
    ports { weights_load_10709 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12895 \
    name weights_load_10710 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10710 \
    op interface \
    ports { weights_load_10710 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12896 \
    name weights_load_10711 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10711 \
    op interface \
    ports { weights_load_10711 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12897 \
    name weights_load_10712 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10712 \
    op interface \
    ports { weights_load_10712 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12898 \
    name weights_load_10713 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10713 \
    op interface \
    ports { weights_load_10713 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12899 \
    name weights_load_10714 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10714 \
    op interface \
    ports { weights_load_10714 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12900 \
    name weights_load_10715 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10715 \
    op interface \
    ports { weights_load_10715 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12901 \
    name weights_load_10716 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10716 \
    op interface \
    ports { weights_load_10716 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12902 \
    name weights_load_10717 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10717 \
    op interface \
    ports { weights_load_10717 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12903 \
    name weights_load_10718 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10718 \
    op interface \
    ports { weights_load_10718 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12904 \
    name weights_load_10719 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10719 \
    op interface \
    ports { weights_load_10719 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12905 \
    name weights_load_10720 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10720 \
    op interface \
    ports { weights_load_10720 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12906 \
    name weights_load_10721 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10721 \
    op interface \
    ports { weights_load_10721 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12907 \
    name weights_load_10722 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10722 \
    op interface \
    ports { weights_load_10722 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12908 \
    name weights_load_10723 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10723 \
    op interface \
    ports { weights_load_10723 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12909 \
    name weights_load_10724 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10724 \
    op interface \
    ports { weights_load_10724 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12910 \
    name weights_load_10725 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10725 \
    op interface \
    ports { weights_load_10725 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12911 \
    name weights_load_10726 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10726 \
    op interface \
    ports { weights_load_10726 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12912 \
    name weights_load_10727 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10727 \
    op interface \
    ports { weights_load_10727 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12913 \
    name weights_load_10728 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10728 \
    op interface \
    ports { weights_load_10728 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12914 \
    name weights_load_10729 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10729 \
    op interface \
    ports { weights_load_10729 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12915 \
    name weights_load_10730 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10730 \
    op interface \
    ports { weights_load_10730 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12916 \
    name weights_load_10731 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10731 \
    op interface \
    ports { weights_load_10731 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12917 \
    name weights_load_10732 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10732 \
    op interface \
    ports { weights_load_10732 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12918 \
    name weights_load_10733 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10733 \
    op interface \
    ports { weights_load_10733 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12919 \
    name weights_load_10734 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10734 \
    op interface \
    ports { weights_load_10734 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12920 \
    name weights_load_10735 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10735 \
    op interface \
    ports { weights_load_10735 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12921 \
    name weights_load_10736 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10736 \
    op interface \
    ports { weights_load_10736 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12922 \
    name weights_load_10737 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10737 \
    op interface \
    ports { weights_load_10737 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12923 \
    name weights_load_10738 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10738 \
    op interface \
    ports { weights_load_10738 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12924 \
    name weights_load_10739 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10739 \
    op interface \
    ports { weights_load_10739 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12925 \
    name weights_load_10740 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10740 \
    op interface \
    ports { weights_load_10740 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12926 \
    name weights_load_10741 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10741 \
    op interface \
    ports { weights_load_10741 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12927 \
    name weights_load_10742 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10742 \
    op interface \
    ports { weights_load_10742 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12928 \
    name weights_load_10743 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10743 \
    op interface \
    ports { weights_load_10743 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12929 \
    name weights_load_10744 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10744 \
    op interface \
    ports { weights_load_10744 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12930 \
    name weights_load_10745 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10745 \
    op interface \
    ports { weights_load_10745 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12931 \
    name weights_load_10746 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10746 \
    op interface \
    ports { weights_load_10746 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12932 \
    name weights_load_10747 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10747 \
    op interface \
    ports { weights_load_10747 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12933 \
    name weights_load_10748 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10748 \
    op interface \
    ports { weights_load_10748 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12934 \
    name weights_load_10749 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10749 \
    op interface \
    ports { weights_load_10749 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12935 \
    name weights_load_10750 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10750 \
    op interface \
    ports { weights_load_10750 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12936 \
    name weights_load_10751 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10751 \
    op interface \
    ports { weights_load_10751 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12937 \
    name weights_load_10752 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10752 \
    op interface \
    ports { weights_load_10752 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12938 \
    name weights_load_10753 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10753 \
    op interface \
    ports { weights_load_10753 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12939 \
    name weights_load_10754 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10754 \
    op interface \
    ports { weights_load_10754 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12940 \
    name weights_load_10755 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10755 \
    op interface \
    ports { weights_load_10755 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12941 \
    name weights_load_10756 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10756 \
    op interface \
    ports { weights_load_10756 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12942 \
    name weights_load_10757 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10757 \
    op interface \
    ports { weights_load_10757 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12943 \
    name weights_load_10758 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10758 \
    op interface \
    ports { weights_load_10758 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12944 \
    name weights_load_10759 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10759 \
    op interface \
    ports { weights_load_10759 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12945 \
    name weights_load_10760 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10760 \
    op interface \
    ports { weights_load_10760 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12946 \
    name weights_load_10761 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10761 \
    op interface \
    ports { weights_load_10761 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12947 \
    name weights_load_10762 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10762 \
    op interface \
    ports { weights_load_10762 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12948 \
    name weights_load_10763 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10763 \
    op interface \
    ports { weights_load_10763 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12949 \
    name weights_load_10764 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10764 \
    op interface \
    ports { weights_load_10764 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12950 \
    name weights_load_10765 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10765 \
    op interface \
    ports { weights_load_10765 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12951 \
    name weights_load_10766 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10766 \
    op interface \
    ports { weights_load_10766 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12952 \
    name weights_load_10767 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10767 \
    op interface \
    ports { weights_load_10767 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12953 \
    name weights_load_10768 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10768 \
    op interface \
    ports { weights_load_10768 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12954 \
    name weights_load_10769 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10769 \
    op interface \
    ports { weights_load_10769 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12955 \
    name weights_load_10770 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10770 \
    op interface \
    ports { weights_load_10770 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12956 \
    name weights_load_10771 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10771 \
    op interface \
    ports { weights_load_10771 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12957 \
    name weights_load_10772 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10772 \
    op interface \
    ports { weights_load_10772 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12958 \
    name weights_load_10773 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10773 \
    op interface \
    ports { weights_load_10773 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12959 \
    name weights_load_10774 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10774 \
    op interface \
    ports { weights_load_10774 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12960 \
    name weights_load_10775 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10775 \
    op interface \
    ports { weights_load_10775 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12961 \
    name weights_load_10776 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10776 \
    op interface \
    ports { weights_load_10776 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12962 \
    name weights_load_10777 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10777 \
    op interface \
    ports { weights_load_10777 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12963 \
    name weights_load_10778 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10778 \
    op interface \
    ports { weights_load_10778 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12964 \
    name weights_load_10779 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10779 \
    op interface \
    ports { weights_load_10779 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12965 \
    name weights_load_10780 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10780 \
    op interface \
    ports { weights_load_10780 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12966 \
    name weights_load_10781 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10781 \
    op interface \
    ports { weights_load_10781 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12967 \
    name weights_load_10782 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10782 \
    op interface \
    ports { weights_load_10782 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12968 \
    name weights_load_10783 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10783 \
    op interface \
    ports { weights_load_10783 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12969 \
    name weights_load_10784 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10784 \
    op interface \
    ports { weights_load_10784 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12970 \
    name weights_load_10785 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10785 \
    op interface \
    ports { weights_load_10785 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12971 \
    name weights_load_10786 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10786 \
    op interface \
    ports { weights_load_10786 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12972 \
    name weights_load_10787 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10787 \
    op interface \
    ports { weights_load_10787 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12973 \
    name weights_load_10788 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10788 \
    op interface \
    ports { weights_load_10788 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12974 \
    name weights_load_10789 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10789 \
    op interface \
    ports { weights_load_10789 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12975 \
    name weights_load_10790 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10790 \
    op interface \
    ports { weights_load_10790 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12976 \
    name weights_load_10791 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10791 \
    op interface \
    ports { weights_load_10791 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12977 \
    name weights_load_10792 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10792 \
    op interface \
    ports { weights_load_10792 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12978 \
    name weights_load_10793 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10793 \
    op interface \
    ports { weights_load_10793 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12979 \
    name weights_load_10794 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10794 \
    op interface \
    ports { weights_load_10794 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12980 \
    name weights_load_10795 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10795 \
    op interface \
    ports { weights_load_10795 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12981 \
    name weights_load_10796 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10796 \
    op interface \
    ports { weights_load_10796 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12982 \
    name weights_load_10797 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10797 \
    op interface \
    ports { weights_load_10797 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12983 \
    name weights_load_10798 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10798 \
    op interface \
    ports { weights_load_10798 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12984 \
    name weights_load_10799 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10799 \
    op interface \
    ports { weights_load_10799 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12985 \
    name weights_load_10800 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10800 \
    op interface \
    ports { weights_load_10800 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12986 \
    name weights_load_10801 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10801 \
    op interface \
    ports { weights_load_10801 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12987 \
    name weights_load_10802 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10802 \
    op interface \
    ports { weights_load_10802 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12988 \
    name weights_load_10803 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10803 \
    op interface \
    ports { weights_load_10803 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12989 \
    name weights_load_10804 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10804 \
    op interface \
    ports { weights_load_10804 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12990 \
    name weights_load_10805 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10805 \
    op interface \
    ports { weights_load_10805 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12991 \
    name weights_load_10806 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10806 \
    op interface \
    ports { weights_load_10806 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12992 \
    name weights_load_10807 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10807 \
    op interface \
    ports { weights_load_10807 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12993 \
    name weights_load_10808 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10808 \
    op interface \
    ports { weights_load_10808 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12994 \
    name weights_load_10809 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10809 \
    op interface \
    ports { weights_load_10809 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12995 \
    name weights_load_10810 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10810 \
    op interface \
    ports { weights_load_10810 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12996 \
    name weights_load_10811 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10811 \
    op interface \
    ports { weights_load_10811 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12997 \
    name weights_load_10812 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10812 \
    op interface \
    ports { weights_load_10812 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12998 \
    name weights_load_10813 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10813 \
    op interface \
    ports { weights_load_10813 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12999 \
    name weights_load_10814 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10814 \
    op interface \
    ports { weights_load_10814 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13000 \
    name weights_load_10815 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10815 \
    op interface \
    ports { weights_load_10815 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13001 \
    name weights_load_10816 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10816 \
    op interface \
    ports { weights_load_10816 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13002 \
    name weights_load_10817 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10817 \
    op interface \
    ports { weights_load_10817 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13003 \
    name weights_load_10818 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10818 \
    op interface \
    ports { weights_load_10818 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13004 \
    name weights_load_10819 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10819 \
    op interface \
    ports { weights_load_10819 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13005 \
    name weights_load_10820 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10820 \
    op interface \
    ports { weights_load_10820 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13006 \
    name weights_load_10821 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10821 \
    op interface \
    ports { weights_load_10821 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13007 \
    name weights_load_10822 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10822 \
    op interface \
    ports { weights_load_10822 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13008 \
    name weights_load_10823 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10823 \
    op interface \
    ports { weights_load_10823 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13009 \
    name weights_load_10824 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10824 \
    op interface \
    ports { weights_load_10824 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13010 \
    name weights_load_10825 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10825 \
    op interface \
    ports { weights_load_10825 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13011 \
    name weights_load_10826 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10826 \
    op interface \
    ports { weights_load_10826 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13012 \
    name weights_load_10827 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10827 \
    op interface \
    ports { weights_load_10827 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13013 \
    name weights_load_10828 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10828 \
    op interface \
    ports { weights_load_10828 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13014 \
    name weights_load_10829 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10829 \
    op interface \
    ports { weights_load_10829 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13015 \
    name weights_load_10830 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10830 \
    op interface \
    ports { weights_load_10830 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13016 \
    name weights_load_10831 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10831 \
    op interface \
    ports { weights_load_10831 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13017 \
    name weights_load_10832 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10832 \
    op interface \
    ports { weights_load_10832 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13018 \
    name weights_load_10833 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10833 \
    op interface \
    ports { weights_load_10833 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13019 \
    name weights_load_10834 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10834 \
    op interface \
    ports { weights_load_10834 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13020 \
    name weights_load_10835 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10835 \
    op interface \
    ports { weights_load_10835 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13021 \
    name weights_load_10836 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10836 \
    op interface \
    ports { weights_load_10836 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13022 \
    name weights_load_10837 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10837 \
    op interface \
    ports { weights_load_10837 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13023 \
    name weights_load_10838 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10838 \
    op interface \
    ports { weights_load_10838 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13024 \
    name weights_load_10839 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10839 \
    op interface \
    ports { weights_load_10839 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13025 \
    name weights_load_10840 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10840 \
    op interface \
    ports { weights_load_10840 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13026 \
    name weights_load_10841 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10841 \
    op interface \
    ports { weights_load_10841 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13027 \
    name weights_load_10842 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10842 \
    op interface \
    ports { weights_load_10842 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13028 \
    name weights_load_10843 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10843 \
    op interface \
    ports { weights_load_10843 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13029 \
    name weights_load_10844 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10844 \
    op interface \
    ports { weights_load_10844 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13030 \
    name weights_load_10845 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10845 \
    op interface \
    ports { weights_load_10845 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13031 \
    name weights_load_10846 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10846 \
    op interface \
    ports { weights_load_10846 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13032 \
    name weights_load_10847 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10847 \
    op interface \
    ports { weights_load_10847 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13033 \
    name weights_load_10848 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10848 \
    op interface \
    ports { weights_load_10848 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13034 \
    name weights_load_10849 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10849 \
    op interface \
    ports { weights_load_10849 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13035 \
    name weights_load_10850 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10850 \
    op interface \
    ports { weights_load_10850 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13036 \
    name weights_load_10851 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10851 \
    op interface \
    ports { weights_load_10851 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13037 \
    name weights_load_10852 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10852 \
    op interface \
    ports { weights_load_10852 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13038 \
    name weights_load_10853 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10853 \
    op interface \
    ports { weights_load_10853 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13039 \
    name weights_load_10854 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10854 \
    op interface \
    ports { weights_load_10854 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13040 \
    name weights_load_10855 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10855 \
    op interface \
    ports { weights_load_10855 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13041 \
    name weights_load_10856 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10856 \
    op interface \
    ports { weights_load_10856 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13042 \
    name weights_load_10857 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10857 \
    op interface \
    ports { weights_load_10857 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13043 \
    name weights_load_10858 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10858 \
    op interface \
    ports { weights_load_10858 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13044 \
    name weights_load_10859 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10859 \
    op interface \
    ports { weights_load_10859 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13045 \
    name weights_load_10860 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10860 \
    op interface \
    ports { weights_load_10860 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13046 \
    name weights_load_10861 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10861 \
    op interface \
    ports { weights_load_10861 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13047 \
    name weights_load_10862 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10862 \
    op interface \
    ports { weights_load_10862 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13048 \
    name weights_load_10863 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10863 \
    op interface \
    ports { weights_load_10863 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13049 \
    name weights_load_10864 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10864 \
    op interface \
    ports { weights_load_10864 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13050 \
    name weights_load_10865 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10865 \
    op interface \
    ports { weights_load_10865 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13051 \
    name weights_load_10866 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10866 \
    op interface \
    ports { weights_load_10866 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13052 \
    name weights_load_10867 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10867 \
    op interface \
    ports { weights_load_10867 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13053 \
    name weights_load_10868 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10868 \
    op interface \
    ports { weights_load_10868 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13054 \
    name weights_load_10869 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10869 \
    op interface \
    ports { weights_load_10869 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13055 \
    name weights_load_10870 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10870 \
    op interface \
    ports { weights_load_10870 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13056 \
    name weights_load_10871 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10871 \
    op interface \
    ports { weights_load_10871 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13057 \
    name weights_load_10872 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10872 \
    op interface \
    ports { weights_load_10872 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13058 \
    name weights_load_10873 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10873 \
    op interface \
    ports { weights_load_10873 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13059 \
    name weights_load_10874 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10874 \
    op interface \
    ports { weights_load_10874 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13060 \
    name weights_load_10875 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10875 \
    op interface \
    ports { weights_load_10875 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13061 \
    name weights_load_10876 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10876 \
    op interface \
    ports { weights_load_10876 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13062 \
    name weights_load_10877 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10877 \
    op interface \
    ports { weights_load_10877 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13063 \
    name weights_load_10878 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10878 \
    op interface \
    ports { weights_load_10878 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13064 \
    name weights_load_10879 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10879 \
    op interface \
    ports { weights_load_10879 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13065 \
    name weights_load_10880 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10880 \
    op interface \
    ports { weights_load_10880 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13066 \
    name weights_load_10881 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10881 \
    op interface \
    ports { weights_load_10881 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13067 \
    name weights_load_10882 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10882 \
    op interface \
    ports { weights_load_10882 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13068 \
    name weights_load_10883 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10883 \
    op interface \
    ports { weights_load_10883 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13069 \
    name weights_load_10884 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10884 \
    op interface \
    ports { weights_load_10884 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13070 \
    name weights_load_10885 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10885 \
    op interface \
    ports { weights_load_10885 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13071 \
    name weights_load_10886 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10886 \
    op interface \
    ports { weights_load_10886 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13072 \
    name weights_load_10887 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10887 \
    op interface \
    ports { weights_load_10887 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13073 \
    name weights_load_10888 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10888 \
    op interface \
    ports { weights_load_10888 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13074 \
    name weights_load_10889 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10889 \
    op interface \
    ports { weights_load_10889 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13075 \
    name weights_load_10890 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10890 \
    op interface \
    ports { weights_load_10890 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13076 \
    name weights_load_10891 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10891 \
    op interface \
    ports { weights_load_10891 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13077 \
    name weights_load_10892 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10892 \
    op interface \
    ports { weights_load_10892 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13078 \
    name weights_load_10893 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10893 \
    op interface \
    ports { weights_load_10893 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13079 \
    name weights_load_10894 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10894 \
    op interface \
    ports { weights_load_10894 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13080 \
    name weights_load_10895 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10895 \
    op interface \
    ports { weights_load_10895 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13081 \
    name weights_load_10896 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10896 \
    op interface \
    ports { weights_load_10896 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13082 \
    name weights_load_10897 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10897 \
    op interface \
    ports { weights_load_10897 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13083 \
    name weights_load_10898 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10898 \
    op interface \
    ports { weights_load_10898 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13084 \
    name weights_load_10899 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10899 \
    op interface \
    ports { weights_load_10899 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13085 \
    name weights_load_10900 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10900 \
    op interface \
    ports { weights_load_10900 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13086 \
    name weights_load_10901 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10901 \
    op interface \
    ports { weights_load_10901 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13087 \
    name weights_load_10902 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10902 \
    op interface \
    ports { weights_load_10902 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13088 \
    name weights_load_10903 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10903 \
    op interface \
    ports { weights_load_10903 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13089 \
    name weights_load_10904 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10904 \
    op interface \
    ports { weights_load_10904 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13090 \
    name weights_load_10905 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10905 \
    op interface \
    ports { weights_load_10905 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13091 \
    name weights_load_10906 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10906 \
    op interface \
    ports { weights_load_10906 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13092 \
    name weights_load_10907 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10907 \
    op interface \
    ports { weights_load_10907 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13093 \
    name weights_load_10908 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10908 \
    op interface \
    ports { weights_load_10908 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13094 \
    name weights_load_10909 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10909 \
    op interface \
    ports { weights_load_10909 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13095 \
    name weights_load_10910 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10910 \
    op interface \
    ports { weights_load_10910 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13096 \
    name weights_load_10911 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10911 \
    op interface \
    ports { weights_load_10911 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13097 \
    name weights_load_10912 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10912 \
    op interface \
    ports { weights_load_10912 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13098 \
    name weights_load_10913 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10913 \
    op interface \
    ports { weights_load_10913 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13099 \
    name weights_load_10914 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10914 \
    op interface \
    ports { weights_load_10914 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13100 \
    name weights_load_10915 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10915 \
    op interface \
    ports { weights_load_10915 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13101 \
    name weights_load_10916 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10916 \
    op interface \
    ports { weights_load_10916 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13102 \
    name weights_load_10917 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10917 \
    op interface \
    ports { weights_load_10917 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13103 \
    name weights_load_10918 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10918 \
    op interface \
    ports { weights_load_10918 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13104 \
    name weights_load_10919 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10919 \
    op interface \
    ports { weights_load_10919 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13105 \
    name weights_load_10920 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10920 \
    op interface \
    ports { weights_load_10920 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13106 \
    name weights_load_10921 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10921 \
    op interface \
    ports { weights_load_10921 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13107 \
    name weights_load_10922 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10922 \
    op interface \
    ports { weights_load_10922 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13108 \
    name weights_load_10923 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10923 \
    op interface \
    ports { weights_load_10923 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13109 \
    name weights_load_10924 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10924 \
    op interface \
    ports { weights_load_10924 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13110 \
    name weights_load_10925 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_10925 \
    op interface \
    ports { weights_load_10925 { I 32 vector } } \
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


