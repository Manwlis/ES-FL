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
    id 5357 \
    name conv2d_64_padded_window_stream_8 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv2d_64_padded_window_stream_8 \
    op interface \
    ports { conv2d_64_padded_window_stream_8_dout { I 288 vector } conv2d_64_padded_window_stream_8_num_data_valid { I 3 vector } conv2d_64_padded_window_stream_8_fifo_cap { I 3 vector } conv2d_64_padded_window_stream_8_empty_n { I 1 bit } conv2d_64_padded_window_stream_8_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5358 \
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
    id 5359 \
    name weights_load_576 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_576 \
    op interface \
    ports { weights_load_576 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5360 \
    name weights_load_577 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_577 \
    op interface \
    ports { weights_load_577 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5361 \
    name weights_load_578 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_578 \
    op interface \
    ports { weights_load_578 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5362 \
    name weights_load_579 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_579 \
    op interface \
    ports { weights_load_579 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5363 \
    name weights_load_580 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_580 \
    op interface \
    ports { weights_load_580 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5364 \
    name weights_load_581 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_581 \
    op interface \
    ports { weights_load_581 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5365 \
    name weights_load_582 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_582 \
    op interface \
    ports { weights_load_582 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5366 \
    name weights_load_583 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_583 \
    op interface \
    ports { weights_load_583 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5367 \
    name in_channel_map_stream_8 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_in_channel_map_stream_8 \
    op interface \
    ports { in_channel_map_stream_8_din { O 32 vector } in_channel_map_stream_8_num_data_valid { I 3 vector } in_channel_map_stream_8_fifo_cap { I 3 vector } in_channel_map_stream_8_full_n { I 1 bit } in_channel_map_stream_8_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5368 \
    name weights_load_584 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_584 \
    op interface \
    ports { weights_load_584 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5369 \
    name weights_load_585 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_585 \
    op interface \
    ports { weights_load_585 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5370 \
    name weights_load_586 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_586 \
    op interface \
    ports { weights_load_586 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5371 \
    name weights_load_587 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_587 \
    op interface \
    ports { weights_load_587 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5372 \
    name weights_load_588 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_588 \
    op interface \
    ports { weights_load_588 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5373 \
    name weights_load_589 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_589 \
    op interface \
    ports { weights_load_589 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5374 \
    name weights_load_590 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_590 \
    op interface \
    ports { weights_load_590 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5375 \
    name weights_load_591 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_591 \
    op interface \
    ports { weights_load_591 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5376 \
    name weights_load_592 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_592 \
    op interface \
    ports { weights_load_592 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5377 \
    name weights_load_593 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_593 \
    op interface \
    ports { weights_load_593 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5378 \
    name weights_load_594 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_594 \
    op interface \
    ports { weights_load_594 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5379 \
    name weights_load_595 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_595 \
    op interface \
    ports { weights_load_595 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5380 \
    name weights_load_596 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_596 \
    op interface \
    ports { weights_load_596 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5381 \
    name weights_load_597 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_597 \
    op interface \
    ports { weights_load_597 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5382 \
    name weights_load_598 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_598 \
    op interface \
    ports { weights_load_598 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5383 \
    name weights_load_599 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_599 \
    op interface \
    ports { weights_load_599 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5384 \
    name weights_load_600 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_600 \
    op interface \
    ports { weights_load_600 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5385 \
    name weights_load_601 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_601 \
    op interface \
    ports { weights_load_601 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5386 \
    name weights_load_602 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_602 \
    op interface \
    ports { weights_load_602 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5387 \
    name weights_load_603 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_603 \
    op interface \
    ports { weights_load_603 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5388 \
    name weights_load_604 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_604 \
    op interface \
    ports { weights_load_604 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5389 \
    name weights_load_605 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_605 \
    op interface \
    ports { weights_load_605 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5390 \
    name weights_load_606 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_606 \
    op interface \
    ports { weights_load_606 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5391 \
    name weights_load_607 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_607 \
    op interface \
    ports { weights_load_607 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5392 \
    name weights_load_608 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_608 \
    op interface \
    ports { weights_load_608 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5393 \
    name weights_load_609 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_609 \
    op interface \
    ports { weights_load_609 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5394 \
    name weights_load_610 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_610 \
    op interface \
    ports { weights_load_610 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5395 \
    name weights_load_611 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_611 \
    op interface \
    ports { weights_load_611 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5396 \
    name weights_load_612 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_612 \
    op interface \
    ports { weights_load_612 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5397 \
    name weights_load_613 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_613 \
    op interface \
    ports { weights_load_613 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5398 \
    name weights_load_614 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_614 \
    op interface \
    ports { weights_load_614 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5399 \
    name weights_load_615 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_615 \
    op interface \
    ports { weights_load_615 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5400 \
    name weights_load_616 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_616 \
    op interface \
    ports { weights_load_616 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5401 \
    name weights_load_617 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_617 \
    op interface \
    ports { weights_load_617 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5402 \
    name weights_load_618 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_618 \
    op interface \
    ports { weights_load_618 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5403 \
    name weights_load_619 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_619 \
    op interface \
    ports { weights_load_619 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5404 \
    name weights_load_620 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_620 \
    op interface \
    ports { weights_load_620 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5405 \
    name weights_load_621 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_621 \
    op interface \
    ports { weights_load_621 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5406 \
    name weights_load_622 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_622 \
    op interface \
    ports { weights_load_622 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5407 \
    name weights_load_623 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_623 \
    op interface \
    ports { weights_load_623 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5408 \
    name weights_load_624 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_624 \
    op interface \
    ports { weights_load_624 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5409 \
    name weights_load_625 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_625 \
    op interface \
    ports { weights_load_625 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5410 \
    name weights_load_626 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_626 \
    op interface \
    ports { weights_load_626 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5411 \
    name weights_load_627 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_627 \
    op interface \
    ports { weights_load_627 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5412 \
    name weights_load_628 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_628 \
    op interface \
    ports { weights_load_628 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5413 \
    name weights_load_629 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_629 \
    op interface \
    ports { weights_load_629 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5414 \
    name weights_load_630 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_630 \
    op interface \
    ports { weights_load_630 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5415 \
    name weights_load_631 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_631 \
    op interface \
    ports { weights_load_631 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5416 \
    name weights_load_632 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_632 \
    op interface \
    ports { weights_load_632 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5417 \
    name weights_load_633 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_633 \
    op interface \
    ports { weights_load_633 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5418 \
    name weights_load_634 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_634 \
    op interface \
    ports { weights_load_634 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5419 \
    name weights_load_635 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_635 \
    op interface \
    ports { weights_load_635 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5420 \
    name weights_load_636 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_636 \
    op interface \
    ports { weights_load_636 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5421 \
    name weights_load_637 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_637 \
    op interface \
    ports { weights_load_637 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5422 \
    name weights_load_638 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_638 \
    op interface \
    ports { weights_load_638 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5423 \
    name weights_load_639 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_639 \
    op interface \
    ports { weights_load_639 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5424 \
    name weights_load_640 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_640 \
    op interface \
    ports { weights_load_640 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5425 \
    name weights_load_641 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_641 \
    op interface \
    ports { weights_load_641 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5426 \
    name weights_load_642 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_642 \
    op interface \
    ports { weights_load_642 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5427 \
    name weights_load_643 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_643 \
    op interface \
    ports { weights_load_643 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5428 \
    name weights_load_644 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_644 \
    op interface \
    ports { weights_load_644 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5429 \
    name weights_load_645 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_645 \
    op interface \
    ports { weights_load_645 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5430 \
    name weights_load_646 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_646 \
    op interface \
    ports { weights_load_646 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5431 \
    name weights_load_647 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_647 \
    op interface \
    ports { weights_load_647 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5432 \
    name weights_load_648 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_648 \
    op interface \
    ports { weights_load_648 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5433 \
    name weights_load_649 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_649 \
    op interface \
    ports { weights_load_649 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5434 \
    name weights_load_650 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_650 \
    op interface \
    ports { weights_load_650 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5435 \
    name weights_load_651 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_651 \
    op interface \
    ports { weights_load_651 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5436 \
    name weights_load_652 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_652 \
    op interface \
    ports { weights_load_652 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5437 \
    name weights_load_653 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_653 \
    op interface \
    ports { weights_load_653 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5438 \
    name weights_load_654 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_654 \
    op interface \
    ports { weights_load_654 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5439 \
    name weights_load_655 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_655 \
    op interface \
    ports { weights_load_655 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5440 \
    name weights_load_656 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_656 \
    op interface \
    ports { weights_load_656 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5441 \
    name weights_load_657 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_657 \
    op interface \
    ports { weights_load_657 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5442 \
    name weights_load_658 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_658 \
    op interface \
    ports { weights_load_658 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5443 \
    name weights_load_659 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_659 \
    op interface \
    ports { weights_load_659 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5444 \
    name weights_load_660 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_660 \
    op interface \
    ports { weights_load_660 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5445 \
    name weights_load_661 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_661 \
    op interface \
    ports { weights_load_661 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5446 \
    name weights_load_662 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_662 \
    op interface \
    ports { weights_load_662 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5447 \
    name weights_load_663 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_663 \
    op interface \
    ports { weights_load_663 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5448 \
    name weights_load_664 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_664 \
    op interface \
    ports { weights_load_664 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5449 \
    name weights_load_665 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_665 \
    op interface \
    ports { weights_load_665 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5450 \
    name weights_load_666 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_666 \
    op interface \
    ports { weights_load_666 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5451 \
    name weights_load_667 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_667 \
    op interface \
    ports { weights_load_667 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5452 \
    name weights_load_668 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_668 \
    op interface \
    ports { weights_load_668 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5453 \
    name weights_load_669 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_669 \
    op interface \
    ports { weights_load_669 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5454 \
    name weights_load_670 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_670 \
    op interface \
    ports { weights_load_670 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5455 \
    name weights_load_671 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_671 \
    op interface \
    ports { weights_load_671 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5456 \
    name weights_load_672 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_672 \
    op interface \
    ports { weights_load_672 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5457 \
    name weights_load_673 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_673 \
    op interface \
    ports { weights_load_673 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5458 \
    name weights_load_674 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_674 \
    op interface \
    ports { weights_load_674 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5459 \
    name weights_load_675 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_675 \
    op interface \
    ports { weights_load_675 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5460 \
    name weights_load_676 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_676 \
    op interface \
    ports { weights_load_676 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5461 \
    name weights_load_677 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_677 \
    op interface \
    ports { weights_load_677 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5462 \
    name weights_load_678 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_678 \
    op interface \
    ports { weights_load_678 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5463 \
    name weights_load_679 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_679 \
    op interface \
    ports { weights_load_679 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5464 \
    name weights_load_680 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_680 \
    op interface \
    ports { weights_load_680 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5465 \
    name weights_load_681 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_681 \
    op interface \
    ports { weights_load_681 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5466 \
    name weights_load_682 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_682 \
    op interface \
    ports { weights_load_682 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5467 \
    name weights_load_683 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_683 \
    op interface \
    ports { weights_load_683 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5468 \
    name weights_load_684 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_684 \
    op interface \
    ports { weights_load_684 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5469 \
    name weights_load_685 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_685 \
    op interface \
    ports { weights_load_685 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5470 \
    name weights_load_686 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_686 \
    op interface \
    ports { weights_load_686 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5471 \
    name weights_load_687 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_687 \
    op interface \
    ports { weights_load_687 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5472 \
    name weights_load_688 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_688 \
    op interface \
    ports { weights_load_688 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5473 \
    name weights_load_689 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_689 \
    op interface \
    ports { weights_load_689 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5474 \
    name weights_load_690 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_690 \
    op interface \
    ports { weights_load_690 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5475 \
    name weights_load_691 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_691 \
    op interface \
    ports { weights_load_691 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5476 \
    name weights_load_692 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_692 \
    op interface \
    ports { weights_load_692 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5477 \
    name weights_load_693 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_693 \
    op interface \
    ports { weights_load_693 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5478 \
    name weights_load_694 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_694 \
    op interface \
    ports { weights_load_694 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5479 \
    name weights_load_695 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_695 \
    op interface \
    ports { weights_load_695 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5480 \
    name weights_load_696 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_696 \
    op interface \
    ports { weights_load_696 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5481 \
    name weights_load_697 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_697 \
    op interface \
    ports { weights_load_697 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5482 \
    name weights_load_698 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_698 \
    op interface \
    ports { weights_load_698 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5483 \
    name weights_load_699 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_699 \
    op interface \
    ports { weights_load_699 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5484 \
    name weights_load_700 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_700 \
    op interface \
    ports { weights_load_700 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5485 \
    name weights_load_701 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_701 \
    op interface \
    ports { weights_load_701 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5486 \
    name weights_load_702 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_702 \
    op interface \
    ports { weights_load_702 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5487 \
    name weights_load_703 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_703 \
    op interface \
    ports { weights_load_703 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5488 \
    name weights_load_704 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_704 \
    op interface \
    ports { weights_load_704 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5489 \
    name weights_load_705 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_705 \
    op interface \
    ports { weights_load_705 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5490 \
    name weights_load_706 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_706 \
    op interface \
    ports { weights_load_706 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5491 \
    name weights_load_707 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_707 \
    op interface \
    ports { weights_load_707 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5492 \
    name weights_load_708 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_708 \
    op interface \
    ports { weights_load_708 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5493 \
    name weights_load_709 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_709 \
    op interface \
    ports { weights_load_709 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5494 \
    name weights_load_710 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_710 \
    op interface \
    ports { weights_load_710 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5495 \
    name weights_load_711 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_711 \
    op interface \
    ports { weights_load_711 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5496 \
    name weights_load_712 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_712 \
    op interface \
    ports { weights_load_712 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5497 \
    name weights_load_713 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_713 \
    op interface \
    ports { weights_load_713 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5498 \
    name weights_load_714 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_714 \
    op interface \
    ports { weights_load_714 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5499 \
    name weights_load_715 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_715 \
    op interface \
    ports { weights_load_715 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5500 \
    name weights_load_716 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_716 \
    op interface \
    ports { weights_load_716 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5501 \
    name weights_load_717 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_717 \
    op interface \
    ports { weights_load_717 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5502 \
    name weights_load_718 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_718 \
    op interface \
    ports { weights_load_718 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5503 \
    name weights_load_719 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_719 \
    op interface \
    ports { weights_load_719 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5504 \
    name weights_load_720 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_720 \
    op interface \
    ports { weights_load_720 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5505 \
    name weights_load_721 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_721 \
    op interface \
    ports { weights_load_721 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5506 \
    name weights_load_722 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_722 \
    op interface \
    ports { weights_load_722 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5507 \
    name weights_load_723 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_723 \
    op interface \
    ports { weights_load_723 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5508 \
    name weights_load_724 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_724 \
    op interface \
    ports { weights_load_724 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5509 \
    name weights_load_725 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_725 \
    op interface \
    ports { weights_load_725 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5510 \
    name weights_load_726 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_726 \
    op interface \
    ports { weights_load_726 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5511 \
    name weights_load_727 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_727 \
    op interface \
    ports { weights_load_727 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5512 \
    name weights_load_728 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_728 \
    op interface \
    ports { weights_load_728 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5513 \
    name weights_load_729 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_729 \
    op interface \
    ports { weights_load_729 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5514 \
    name weights_load_730 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_730 \
    op interface \
    ports { weights_load_730 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5515 \
    name weights_load_731 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_731 \
    op interface \
    ports { weights_load_731 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5516 \
    name weights_load_732 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_732 \
    op interface \
    ports { weights_load_732 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5517 \
    name weights_load_733 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_733 \
    op interface \
    ports { weights_load_733 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5518 \
    name weights_load_734 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_734 \
    op interface \
    ports { weights_load_734 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5519 \
    name weights_load_735 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_735 \
    op interface \
    ports { weights_load_735 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5520 \
    name weights_load_736 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_736 \
    op interface \
    ports { weights_load_736 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5521 \
    name weights_load_737 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_737 \
    op interface \
    ports { weights_load_737 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5522 \
    name weights_load_738 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_738 \
    op interface \
    ports { weights_load_738 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5523 \
    name weights_load_739 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_739 \
    op interface \
    ports { weights_load_739 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5524 \
    name weights_load_740 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_740 \
    op interface \
    ports { weights_load_740 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5525 \
    name weights_load_741 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_741 \
    op interface \
    ports { weights_load_741 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5526 \
    name weights_load_742 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_742 \
    op interface \
    ports { weights_load_742 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5527 \
    name weights_load_743 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_743 \
    op interface \
    ports { weights_load_743 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5528 \
    name weights_load_744 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_744 \
    op interface \
    ports { weights_load_744 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5529 \
    name weights_load_745 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_745 \
    op interface \
    ports { weights_load_745 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5530 \
    name weights_load_746 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_746 \
    op interface \
    ports { weights_load_746 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5531 \
    name weights_load_747 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_747 \
    op interface \
    ports { weights_load_747 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5532 \
    name weights_load_748 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_748 \
    op interface \
    ports { weights_load_748 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5533 \
    name weights_load_749 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_749 \
    op interface \
    ports { weights_load_749 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5534 \
    name weights_load_750 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_750 \
    op interface \
    ports { weights_load_750 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5535 \
    name weights_load_751 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_751 \
    op interface \
    ports { weights_load_751 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5536 \
    name weights_load_752 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_752 \
    op interface \
    ports { weights_load_752 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5537 \
    name weights_load_753 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_753 \
    op interface \
    ports { weights_load_753 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5538 \
    name weights_load_754 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_754 \
    op interface \
    ports { weights_load_754 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5539 \
    name weights_load_755 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_755 \
    op interface \
    ports { weights_load_755 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5540 \
    name weights_load_756 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_756 \
    op interface \
    ports { weights_load_756 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5541 \
    name weights_load_757 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_757 \
    op interface \
    ports { weights_load_757 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5542 \
    name weights_load_758 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_758 \
    op interface \
    ports { weights_load_758 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5543 \
    name weights_load_759 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_759 \
    op interface \
    ports { weights_load_759 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5544 \
    name weights_load_760 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_760 \
    op interface \
    ports { weights_load_760 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5545 \
    name weights_load_761 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_761 \
    op interface \
    ports { weights_load_761 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5546 \
    name weights_load_762 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_762 \
    op interface \
    ports { weights_load_762 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5547 \
    name weights_load_763 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_763 \
    op interface \
    ports { weights_load_763 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5548 \
    name weights_load_764 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_764 \
    op interface \
    ports { weights_load_764 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5549 \
    name weights_load_765 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_765 \
    op interface \
    ports { weights_load_765 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5550 \
    name weights_load_766 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_766 \
    op interface \
    ports { weights_load_766 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5551 \
    name weights_load_767 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_767 \
    op interface \
    ports { weights_load_767 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5552 \
    name weights_load_768 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_768 \
    op interface \
    ports { weights_load_768 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5553 \
    name weights_load_769 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_769 \
    op interface \
    ports { weights_load_769 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5554 \
    name weights_load_770 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_770 \
    op interface \
    ports { weights_load_770 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5555 \
    name weights_load_771 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_771 \
    op interface \
    ports { weights_load_771 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5556 \
    name weights_load_772 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_772 \
    op interface \
    ports { weights_load_772 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5557 \
    name weights_load_773 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_773 \
    op interface \
    ports { weights_load_773 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5558 \
    name weights_load_774 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_774 \
    op interface \
    ports { weights_load_774 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5559 \
    name weights_load_775 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_775 \
    op interface \
    ports { weights_load_775 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5560 \
    name weights_load_776 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_776 \
    op interface \
    ports { weights_load_776 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5561 \
    name weights_load_777 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_777 \
    op interface \
    ports { weights_load_777 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5562 \
    name weights_load_778 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_778 \
    op interface \
    ports { weights_load_778 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5563 \
    name weights_load_779 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_779 \
    op interface \
    ports { weights_load_779 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5564 \
    name weights_load_780 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_780 \
    op interface \
    ports { weights_load_780 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5565 \
    name weights_load_781 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_781 \
    op interface \
    ports { weights_load_781 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5566 \
    name weights_load_782 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_782 \
    op interface \
    ports { weights_load_782 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5567 \
    name weights_load_783 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_783 \
    op interface \
    ports { weights_load_783 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5568 \
    name weights_load_784 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_784 \
    op interface \
    ports { weights_load_784 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5569 \
    name weights_load_785 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_785 \
    op interface \
    ports { weights_load_785 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5570 \
    name weights_load_786 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_786 \
    op interface \
    ports { weights_load_786 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5571 \
    name weights_load_787 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_787 \
    op interface \
    ports { weights_load_787 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5572 \
    name weights_load_788 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_788 \
    op interface \
    ports { weights_load_788 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5573 \
    name weights_load_789 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_789 \
    op interface \
    ports { weights_load_789 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5574 \
    name weights_load_790 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_790 \
    op interface \
    ports { weights_load_790 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5575 \
    name weights_load_791 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_791 \
    op interface \
    ports { weights_load_791 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5576 \
    name weights_load_792 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_792 \
    op interface \
    ports { weights_load_792 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5577 \
    name weights_load_793 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_793 \
    op interface \
    ports { weights_load_793 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5578 \
    name weights_load_794 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_794 \
    op interface \
    ports { weights_load_794 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5579 \
    name weights_load_795 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_795 \
    op interface \
    ports { weights_load_795 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5580 \
    name weights_load_796 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_796 \
    op interface \
    ports { weights_load_796 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5581 \
    name weights_load_797 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_797 \
    op interface \
    ports { weights_load_797 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5582 \
    name weights_load_798 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_798 \
    op interface \
    ports { weights_load_798 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5583 \
    name weights_load_799 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_799 \
    op interface \
    ports { weights_load_799 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5584 \
    name weights_load_800 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_800 \
    op interface \
    ports { weights_load_800 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5585 \
    name weights_load_801 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_801 \
    op interface \
    ports { weights_load_801 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5586 \
    name weights_load_802 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_802 \
    op interface \
    ports { weights_load_802 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5587 \
    name weights_load_803 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_803 \
    op interface \
    ports { weights_load_803 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5588 \
    name weights_load_804 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_804 \
    op interface \
    ports { weights_load_804 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5589 \
    name weights_load_805 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_805 \
    op interface \
    ports { weights_load_805 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5590 \
    name weights_load_806 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_806 \
    op interface \
    ports { weights_load_806 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5591 \
    name weights_load_807 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_807 \
    op interface \
    ports { weights_load_807 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5592 \
    name weights_load_808 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_808 \
    op interface \
    ports { weights_load_808 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5593 \
    name weights_load_809 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_809 \
    op interface \
    ports { weights_load_809 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5594 \
    name weights_load_810 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_810 \
    op interface \
    ports { weights_load_810 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5595 \
    name weights_load_811 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_811 \
    op interface \
    ports { weights_load_811 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5596 \
    name weights_load_812 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_812 \
    op interface \
    ports { weights_load_812 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5597 \
    name weights_load_813 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_813 \
    op interface \
    ports { weights_load_813 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5598 \
    name weights_load_814 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_814 \
    op interface \
    ports { weights_load_814 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5599 \
    name weights_load_815 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_815 \
    op interface \
    ports { weights_load_815 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5600 \
    name weights_load_816 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_816 \
    op interface \
    ports { weights_load_816 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5601 \
    name weights_load_817 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_817 \
    op interface \
    ports { weights_load_817 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5602 \
    name weights_load_818 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_818 \
    op interface \
    ports { weights_load_818 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5603 \
    name weights_load_819 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_819 \
    op interface \
    ports { weights_load_819 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5604 \
    name weights_load_820 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_820 \
    op interface \
    ports { weights_load_820 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5605 \
    name weights_load_821 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_821 \
    op interface \
    ports { weights_load_821 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5606 \
    name weights_load_822 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_822 \
    op interface \
    ports { weights_load_822 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5607 \
    name weights_load_823 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_823 \
    op interface \
    ports { weights_load_823 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5608 \
    name weights_load_824 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_824 \
    op interface \
    ports { weights_load_824 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5609 \
    name weights_load_825 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_825 \
    op interface \
    ports { weights_load_825 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5610 \
    name weights_load_826 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_826 \
    op interface \
    ports { weights_load_826 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5611 \
    name weights_load_827 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_827 \
    op interface \
    ports { weights_load_827 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5612 \
    name weights_load_828 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_828 \
    op interface \
    ports { weights_load_828 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5613 \
    name weights_load_829 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_829 \
    op interface \
    ports { weights_load_829 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5614 \
    name weights_load_830 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_830 \
    op interface \
    ports { weights_load_830 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5615 \
    name weights_load_831 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_831 \
    op interface \
    ports { weights_load_831 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5616 \
    name weights_load_832 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_832 \
    op interface \
    ports { weights_load_832 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5617 \
    name weights_load_833 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_833 \
    op interface \
    ports { weights_load_833 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5618 \
    name weights_load_834 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_834 \
    op interface \
    ports { weights_load_834 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5619 \
    name weights_load_835 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_835 \
    op interface \
    ports { weights_load_835 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5620 \
    name weights_load_836 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_836 \
    op interface \
    ports { weights_load_836 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5621 \
    name weights_load_837 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_837 \
    op interface \
    ports { weights_load_837 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5622 \
    name weights_load_838 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_838 \
    op interface \
    ports { weights_load_838 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5623 \
    name weights_load_839 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_839 \
    op interface \
    ports { weights_load_839 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5624 \
    name weights_load_840 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_840 \
    op interface \
    ports { weights_load_840 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5625 \
    name weights_load_841 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_841 \
    op interface \
    ports { weights_load_841 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5626 \
    name weights_load_842 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_842 \
    op interface \
    ports { weights_load_842 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5627 \
    name weights_load_843 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_843 \
    op interface \
    ports { weights_load_843 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5628 \
    name weights_load_844 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_844 \
    op interface \
    ports { weights_load_844 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5629 \
    name weights_load_845 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_845 \
    op interface \
    ports { weights_load_845 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5630 \
    name weights_load_846 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_846 \
    op interface \
    ports { weights_load_846 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5631 \
    name weights_load_847 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_847 \
    op interface \
    ports { weights_load_847 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5632 \
    name weights_load_848 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_848 \
    op interface \
    ports { weights_load_848 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5633 \
    name weights_load_849 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_849 \
    op interface \
    ports { weights_load_849 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5634 \
    name weights_load_850 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_850 \
    op interface \
    ports { weights_load_850 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5635 \
    name weights_load_851 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_851 \
    op interface \
    ports { weights_load_851 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5636 \
    name weights_load_852 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_852 \
    op interface \
    ports { weights_load_852 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5637 \
    name weights_load_853 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_853 \
    op interface \
    ports { weights_load_853 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5638 \
    name weights_load_854 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_854 \
    op interface \
    ports { weights_load_854 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5639 \
    name weights_load_855 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_855 \
    op interface \
    ports { weights_load_855 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5640 \
    name weights_load_856 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_856 \
    op interface \
    ports { weights_load_856 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5641 \
    name weights_load_857 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_857 \
    op interface \
    ports { weights_load_857 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5642 \
    name weights_load_858 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_858 \
    op interface \
    ports { weights_load_858 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5643 \
    name weights_load_859 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_859 \
    op interface \
    ports { weights_load_859 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5644 \
    name weights_load_860 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_860 \
    op interface \
    ports { weights_load_860 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5645 \
    name weights_load_861 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_861 \
    op interface \
    ports { weights_load_861 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5646 \
    name weights_load_862 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_862 \
    op interface \
    ports { weights_load_862 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5647 \
    name weights_load_863 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_863 \
    op interface \
    ports { weights_load_863 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5648 \
    name weights_load_864 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_864 \
    op interface \
    ports { weights_load_864 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5649 \
    name weights_load_865 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_865 \
    op interface \
    ports { weights_load_865 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5650 \
    name weights_load_866 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_866 \
    op interface \
    ports { weights_load_866 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5651 \
    name weights_load_867 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_867 \
    op interface \
    ports { weights_load_867 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5652 \
    name weights_load_868 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_868 \
    op interface \
    ports { weights_load_868 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5653 \
    name weights_load_869 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_869 \
    op interface \
    ports { weights_load_869 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5654 \
    name weights_load_870 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_870 \
    op interface \
    ports { weights_load_870 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5655 \
    name weights_load_871 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_871 \
    op interface \
    ports { weights_load_871 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5656 \
    name weights_load_872 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_872 \
    op interface \
    ports { weights_load_872 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5657 \
    name weights_load_873 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_873 \
    op interface \
    ports { weights_load_873 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5658 \
    name weights_load_874 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_874 \
    op interface \
    ports { weights_load_874 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5659 \
    name weights_load_875 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_875 \
    op interface \
    ports { weights_load_875 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5660 \
    name weights_load_876 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_876 \
    op interface \
    ports { weights_load_876 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5661 \
    name weights_load_877 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_877 \
    op interface \
    ports { weights_load_877 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5662 \
    name weights_load_878 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_878 \
    op interface \
    ports { weights_load_878 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5663 \
    name weights_load_879 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_879 \
    op interface \
    ports { weights_load_879 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5664 \
    name weights_load_880 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_880 \
    op interface \
    ports { weights_load_880 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5665 \
    name weights_load_881 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_881 \
    op interface \
    ports { weights_load_881 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5666 \
    name weights_load_882 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_882 \
    op interface \
    ports { weights_load_882 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5667 \
    name weights_load_883 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_883 \
    op interface \
    ports { weights_load_883 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5668 \
    name weights_load_884 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_884 \
    op interface \
    ports { weights_load_884 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5669 \
    name weights_load_885 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_885 \
    op interface \
    ports { weights_load_885 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5670 \
    name weights_load_886 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_886 \
    op interface \
    ports { weights_load_886 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5671 \
    name weights_load_887 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_887 \
    op interface \
    ports { weights_load_887 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5672 \
    name weights_load_888 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_888 \
    op interface \
    ports { weights_load_888 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5673 \
    name weights_load_889 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_889 \
    op interface \
    ports { weights_load_889 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5674 \
    name weights_load_890 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_890 \
    op interface \
    ports { weights_load_890 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5675 \
    name weights_load_891 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_891 \
    op interface \
    ports { weights_load_891 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5676 \
    name weights_load_892 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_892 \
    op interface \
    ports { weights_load_892 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5677 \
    name weights_load_893 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_893 \
    op interface \
    ports { weights_load_893 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5678 \
    name weights_load_894 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_894 \
    op interface \
    ports { weights_load_894 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5679 \
    name weights_load_895 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_895 \
    op interface \
    ports { weights_load_895 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5680 \
    name weights_load_896 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_896 \
    op interface \
    ports { weights_load_896 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5681 \
    name weights_load_897 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_897 \
    op interface \
    ports { weights_load_897 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5682 \
    name weights_load_898 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_898 \
    op interface \
    ports { weights_load_898 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5683 \
    name weights_load_899 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_899 \
    op interface \
    ports { weights_load_899 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5684 \
    name weights_load_900 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_900 \
    op interface \
    ports { weights_load_900 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5685 \
    name weights_load_901 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_901 \
    op interface \
    ports { weights_load_901 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5686 \
    name weights_load_902 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_902 \
    op interface \
    ports { weights_load_902 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5687 \
    name weights_load_903 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_903 \
    op interface \
    ports { weights_load_903 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5688 \
    name weights_load_904 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_904 \
    op interface \
    ports { weights_load_904 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5689 \
    name weights_load_905 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_905 \
    op interface \
    ports { weights_load_905 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5690 \
    name weights_load_906 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_906 \
    op interface \
    ports { weights_load_906 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5691 \
    name weights_load_907 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_907 \
    op interface \
    ports { weights_load_907 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5692 \
    name weights_load_908 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_908 \
    op interface \
    ports { weights_load_908 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5693 \
    name weights_load_909 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_909 \
    op interface \
    ports { weights_load_909 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5694 \
    name weights_load_910 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_910 \
    op interface \
    ports { weights_load_910 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5695 \
    name weights_load_911 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_911 \
    op interface \
    ports { weights_load_911 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5696 \
    name weights_load_912 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_912 \
    op interface \
    ports { weights_load_912 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5697 \
    name weights_load_913 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_913 \
    op interface \
    ports { weights_load_913 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5698 \
    name weights_load_914 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_914 \
    op interface \
    ports { weights_load_914 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5699 \
    name weights_load_915 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_915 \
    op interface \
    ports { weights_load_915 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5700 \
    name weights_load_916 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_916 \
    op interface \
    ports { weights_load_916 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5701 \
    name weights_load_917 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_917 \
    op interface \
    ports { weights_load_917 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5702 \
    name weights_load_918 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_918 \
    op interface \
    ports { weights_load_918 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5703 \
    name weights_load_919 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_919 \
    op interface \
    ports { weights_load_919 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5704 \
    name weights_load_920 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_920 \
    op interface \
    ports { weights_load_920 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5705 \
    name weights_load_921 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_921 \
    op interface \
    ports { weights_load_921 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5706 \
    name weights_load_922 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_922 \
    op interface \
    ports { weights_load_922 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5707 \
    name weights_load_923 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_923 \
    op interface \
    ports { weights_load_923 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5708 \
    name weights_load_924 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_924 \
    op interface \
    ports { weights_load_924 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5709 \
    name weights_load_925 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_925 \
    op interface \
    ports { weights_load_925 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5710 \
    name weights_load_926 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_926 \
    op interface \
    ports { weights_load_926 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5711 \
    name weights_load_927 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_927 \
    op interface \
    ports { weights_load_927 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5712 \
    name weights_load_928 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_928 \
    op interface \
    ports { weights_load_928 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5713 \
    name weights_load_929 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_929 \
    op interface \
    ports { weights_load_929 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5714 \
    name weights_load_930 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_930 \
    op interface \
    ports { weights_load_930 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5715 \
    name weights_load_931 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_931 \
    op interface \
    ports { weights_load_931 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5716 \
    name weights_load_932 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_932 \
    op interface \
    ports { weights_load_932 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5717 \
    name weights_load_933 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_933 \
    op interface \
    ports { weights_load_933 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5718 \
    name weights_load_934 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_934 \
    op interface \
    ports { weights_load_934 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5719 \
    name weights_load_935 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_935 \
    op interface \
    ports { weights_load_935 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5720 \
    name weights_load_936 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_936 \
    op interface \
    ports { weights_load_936 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5721 \
    name weights_load_937 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_937 \
    op interface \
    ports { weights_load_937 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5722 \
    name weights_load_938 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_938 \
    op interface \
    ports { weights_load_938 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5723 \
    name weights_load_939 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_939 \
    op interface \
    ports { weights_load_939 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5724 \
    name weights_load_940 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_940 \
    op interface \
    ports { weights_load_940 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5725 \
    name weights_load_941 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_941 \
    op interface \
    ports { weights_load_941 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5726 \
    name weights_load_942 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_942 \
    op interface \
    ports { weights_load_942 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5727 \
    name weights_load_943 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_943 \
    op interface \
    ports { weights_load_943 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5728 \
    name weights_load_944 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_944 \
    op interface \
    ports { weights_load_944 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5729 \
    name weights_load_945 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_945 \
    op interface \
    ports { weights_load_945 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5730 \
    name weights_load_946 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_946 \
    op interface \
    ports { weights_load_946 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5731 \
    name weights_load_947 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_947 \
    op interface \
    ports { weights_load_947 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5732 \
    name weights_load_948 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_948 \
    op interface \
    ports { weights_load_948 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5733 \
    name weights_load_949 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_949 \
    op interface \
    ports { weights_load_949 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5734 \
    name weights_load_950 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_950 \
    op interface \
    ports { weights_load_950 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5735 \
    name weights_load_951 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_951 \
    op interface \
    ports { weights_load_951 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5736 \
    name weights_load_952 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_952 \
    op interface \
    ports { weights_load_952 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5737 \
    name weights_load_953 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_953 \
    op interface \
    ports { weights_load_953 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5738 \
    name weights_load_954 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_954 \
    op interface \
    ports { weights_load_954 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5739 \
    name weights_load_955 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_955 \
    op interface \
    ports { weights_load_955 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5740 \
    name weights_load_956 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_956 \
    op interface \
    ports { weights_load_956 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5741 \
    name weights_load_957 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_957 \
    op interface \
    ports { weights_load_957 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5742 \
    name weights_load_958 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_958 \
    op interface \
    ports { weights_load_958 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5743 \
    name weights_load_959 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_959 \
    op interface \
    ports { weights_load_959 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5744 \
    name weights_load_960 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_960 \
    op interface \
    ports { weights_load_960 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5745 \
    name weights_load_961 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_961 \
    op interface \
    ports { weights_load_961 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5746 \
    name weights_load_962 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_962 \
    op interface \
    ports { weights_load_962 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5747 \
    name weights_load_963 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_963 \
    op interface \
    ports { weights_load_963 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5748 \
    name weights_load_964 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_964 \
    op interface \
    ports { weights_load_964 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5749 \
    name weights_load_965 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_965 \
    op interface \
    ports { weights_load_965 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5750 \
    name weights_load_966 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_966 \
    op interface \
    ports { weights_load_966 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5751 \
    name weights_load_967 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_967 \
    op interface \
    ports { weights_load_967 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5752 \
    name weights_load_968 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_968 \
    op interface \
    ports { weights_load_968 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5753 \
    name weights_load_969 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_969 \
    op interface \
    ports { weights_load_969 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5754 \
    name weights_load_970 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_970 \
    op interface \
    ports { weights_load_970 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5755 \
    name weights_load_971 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_971 \
    op interface \
    ports { weights_load_971 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5756 \
    name weights_load_972 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_972 \
    op interface \
    ports { weights_load_972 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5757 \
    name weights_load_973 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_973 \
    op interface \
    ports { weights_load_973 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5758 \
    name weights_load_974 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_974 \
    op interface \
    ports { weights_load_974 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5759 \
    name weights_load_975 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_975 \
    op interface \
    ports { weights_load_975 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5760 \
    name weights_load_976 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_976 \
    op interface \
    ports { weights_load_976 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5761 \
    name weights_load_977 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_977 \
    op interface \
    ports { weights_load_977 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5762 \
    name weights_load_978 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_978 \
    op interface \
    ports { weights_load_978 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5763 \
    name weights_load_979 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_979 \
    op interface \
    ports { weights_load_979 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5764 \
    name weights_load_980 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_980 \
    op interface \
    ports { weights_load_980 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5765 \
    name weights_load_981 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_981 \
    op interface \
    ports { weights_load_981 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5766 \
    name weights_load_982 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_982 \
    op interface \
    ports { weights_load_982 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5767 \
    name weights_load_983 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_983 \
    op interface \
    ports { weights_load_983 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5768 \
    name weights_load_984 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_984 \
    op interface \
    ports { weights_load_984 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5769 \
    name weights_load_985 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_985 \
    op interface \
    ports { weights_load_985 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5770 \
    name weights_load_986 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_986 \
    op interface \
    ports { weights_load_986 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5771 \
    name weights_load_987 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_987 \
    op interface \
    ports { weights_load_987 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5772 \
    name weights_load_988 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_988 \
    op interface \
    ports { weights_load_988 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5773 \
    name weights_load_989 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_989 \
    op interface \
    ports { weights_load_989 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5774 \
    name weights_load_990 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_990 \
    op interface \
    ports { weights_load_990 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5775 \
    name weights_load_991 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_991 \
    op interface \
    ports { weights_load_991 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5776 \
    name weights_load_992 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_992 \
    op interface \
    ports { weights_load_992 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5777 \
    name weights_load_993 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_993 \
    op interface \
    ports { weights_load_993 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5778 \
    name weights_load_994 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_994 \
    op interface \
    ports { weights_load_994 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5779 \
    name weights_load_995 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_995 \
    op interface \
    ports { weights_load_995 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5780 \
    name weights_load_996 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_996 \
    op interface \
    ports { weights_load_996 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5781 \
    name weights_load_997 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_997 \
    op interface \
    ports { weights_load_997 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5782 \
    name weights_load_998 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_998 \
    op interface \
    ports { weights_load_998 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5783 \
    name weights_load_999 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_999 \
    op interface \
    ports { weights_load_999 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5784 \
    name weights_load_1000 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1000 \
    op interface \
    ports { weights_load_1000 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5785 \
    name weights_load_1001 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1001 \
    op interface \
    ports { weights_load_1001 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5786 \
    name weights_load_1002 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1002 \
    op interface \
    ports { weights_load_1002 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5787 \
    name weights_load_1003 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1003 \
    op interface \
    ports { weights_load_1003 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5788 \
    name weights_load_1004 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1004 \
    op interface \
    ports { weights_load_1004 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5789 \
    name weights_load_1005 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1005 \
    op interface \
    ports { weights_load_1005 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5790 \
    name weights_load_1006 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1006 \
    op interface \
    ports { weights_load_1006 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5791 \
    name weights_load_1007 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1007 \
    op interface \
    ports { weights_load_1007 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5792 \
    name weights_load_1008 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1008 \
    op interface \
    ports { weights_load_1008 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5793 \
    name weights_load_1009 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1009 \
    op interface \
    ports { weights_load_1009 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5794 \
    name weights_load_1010 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1010 \
    op interface \
    ports { weights_load_1010 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5795 \
    name weights_load_1011 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1011 \
    op interface \
    ports { weights_load_1011 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5796 \
    name weights_load_1012 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1012 \
    op interface \
    ports { weights_load_1012 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5797 \
    name weights_load_1013 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1013 \
    op interface \
    ports { weights_load_1013 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5798 \
    name weights_load_1014 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1014 \
    op interface \
    ports { weights_load_1014 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5799 \
    name weights_load_1015 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1015 \
    op interface \
    ports { weights_load_1015 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5800 \
    name weights_load_1016 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1016 \
    op interface \
    ports { weights_load_1016 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5801 \
    name weights_load_1017 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1017 \
    op interface \
    ports { weights_load_1017 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5802 \
    name weights_load_1018 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1018 \
    op interface \
    ports { weights_load_1018 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5803 \
    name weights_load_1019 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1019 \
    op interface \
    ports { weights_load_1019 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5804 \
    name weights_load_1020 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1020 \
    op interface \
    ports { weights_load_1020 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5805 \
    name weights_load_1021 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1021 \
    op interface \
    ports { weights_load_1021 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5806 \
    name weights_load_1022 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1022 \
    op interface \
    ports { weights_load_1022 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5807 \
    name weights_load_1023 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1023 \
    op interface \
    ports { weights_load_1023 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5808 \
    name weights_load_1024 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1024 \
    op interface \
    ports { weights_load_1024 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5809 \
    name weights_load_1025 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1025 \
    op interface \
    ports { weights_load_1025 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5810 \
    name weights_load_1026 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1026 \
    op interface \
    ports { weights_load_1026 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5811 \
    name weights_load_1027 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1027 \
    op interface \
    ports { weights_load_1027 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5812 \
    name weights_load_1028 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1028 \
    op interface \
    ports { weights_load_1028 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5813 \
    name weights_load_1029 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1029 \
    op interface \
    ports { weights_load_1029 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5814 \
    name weights_load_1030 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1030 \
    op interface \
    ports { weights_load_1030 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5815 \
    name weights_load_1031 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1031 \
    op interface \
    ports { weights_load_1031 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5816 \
    name weights_load_1032 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1032 \
    op interface \
    ports { weights_load_1032 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5817 \
    name weights_load_1033 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1033 \
    op interface \
    ports { weights_load_1033 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5818 \
    name weights_load_1034 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1034 \
    op interface \
    ports { weights_load_1034 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5819 \
    name weights_load_1035 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1035 \
    op interface \
    ports { weights_load_1035 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5820 \
    name weights_load_1036 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1036 \
    op interface \
    ports { weights_load_1036 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5821 \
    name weights_load_1037 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1037 \
    op interface \
    ports { weights_load_1037 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5822 \
    name weights_load_1038 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1038 \
    op interface \
    ports { weights_load_1038 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5823 \
    name weights_load_1039 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1039 \
    op interface \
    ports { weights_load_1039 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5824 \
    name weights_load_1040 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1040 \
    op interface \
    ports { weights_load_1040 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5825 \
    name weights_load_1041 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1041 \
    op interface \
    ports { weights_load_1041 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5826 \
    name weights_load_1042 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1042 \
    op interface \
    ports { weights_load_1042 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5827 \
    name weights_load_1043 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1043 \
    op interface \
    ports { weights_load_1043 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5828 \
    name weights_load_1044 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1044 \
    op interface \
    ports { weights_load_1044 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5829 \
    name weights_load_1045 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1045 \
    op interface \
    ports { weights_load_1045 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5830 \
    name weights_load_1046 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1046 \
    op interface \
    ports { weights_load_1046 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5831 \
    name weights_load_1047 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1047 \
    op interface \
    ports { weights_load_1047 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5832 \
    name weights_load_1048 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1048 \
    op interface \
    ports { weights_load_1048 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5833 \
    name weights_load_1049 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1049 \
    op interface \
    ports { weights_load_1049 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5834 \
    name weights_load_1050 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1050 \
    op interface \
    ports { weights_load_1050 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5835 \
    name weights_load_1051 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1051 \
    op interface \
    ports { weights_load_1051 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5836 \
    name weights_load_1052 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1052 \
    op interface \
    ports { weights_load_1052 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5837 \
    name weights_load_1053 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1053 \
    op interface \
    ports { weights_load_1053 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5838 \
    name weights_load_1054 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1054 \
    op interface \
    ports { weights_load_1054 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5839 \
    name weights_load_1055 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1055 \
    op interface \
    ports { weights_load_1055 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5840 \
    name weights_load_1056 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1056 \
    op interface \
    ports { weights_load_1056 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5841 \
    name weights_load_1057 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1057 \
    op interface \
    ports { weights_load_1057 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5842 \
    name weights_load_1058 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1058 \
    op interface \
    ports { weights_load_1058 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5843 \
    name weights_load_1059 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1059 \
    op interface \
    ports { weights_load_1059 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5844 \
    name weights_load_1060 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1060 \
    op interface \
    ports { weights_load_1060 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5845 \
    name weights_load_1061 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1061 \
    op interface \
    ports { weights_load_1061 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5846 \
    name weights_load_1062 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1062 \
    op interface \
    ports { weights_load_1062 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5847 \
    name weights_load_1063 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1063 \
    op interface \
    ports { weights_load_1063 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5848 \
    name weights_load_1064 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1064 \
    op interface \
    ports { weights_load_1064 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5849 \
    name weights_load_1065 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1065 \
    op interface \
    ports { weights_load_1065 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5850 \
    name weights_load_1066 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1066 \
    op interface \
    ports { weights_load_1066 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5851 \
    name weights_load_1067 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1067 \
    op interface \
    ports { weights_load_1067 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5852 \
    name weights_load_1068 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1068 \
    op interface \
    ports { weights_load_1068 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5853 \
    name weights_load_1069 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1069 \
    op interface \
    ports { weights_load_1069 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5854 \
    name weights_load_1070 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1070 \
    op interface \
    ports { weights_load_1070 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5855 \
    name weights_load_1071 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1071 \
    op interface \
    ports { weights_load_1071 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5856 \
    name weights_load_1072 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1072 \
    op interface \
    ports { weights_load_1072 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5857 \
    name weights_load_1073 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1073 \
    op interface \
    ports { weights_load_1073 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5858 \
    name weights_load_1074 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1074 \
    op interface \
    ports { weights_load_1074 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5859 \
    name weights_load_1075 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1075 \
    op interface \
    ports { weights_load_1075 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5860 \
    name weights_load_1076 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1076 \
    op interface \
    ports { weights_load_1076 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5861 \
    name weights_load_1077 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1077 \
    op interface \
    ports { weights_load_1077 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5862 \
    name weights_load_1078 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1078 \
    op interface \
    ports { weights_load_1078 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5863 \
    name weights_load_1079 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1079 \
    op interface \
    ports { weights_load_1079 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5864 \
    name weights_load_1080 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1080 \
    op interface \
    ports { weights_load_1080 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5865 \
    name weights_load_1081 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1081 \
    op interface \
    ports { weights_load_1081 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5866 \
    name weights_load_1082 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1082 \
    op interface \
    ports { weights_load_1082 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5867 \
    name weights_load_1083 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1083 \
    op interface \
    ports { weights_load_1083 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5868 \
    name weights_load_1084 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1084 \
    op interface \
    ports { weights_load_1084 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5869 \
    name weights_load_1085 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1085 \
    op interface \
    ports { weights_load_1085 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5870 \
    name weights_load_1086 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1086 \
    op interface \
    ports { weights_load_1086 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5871 \
    name weights_load_1087 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1087 \
    op interface \
    ports { weights_load_1087 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5872 \
    name weights_load_1088 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1088 \
    op interface \
    ports { weights_load_1088 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5873 \
    name weights_load_1089 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1089 \
    op interface \
    ports { weights_load_1089 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5874 \
    name weights_load_1090 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1090 \
    op interface \
    ports { weights_load_1090 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5875 \
    name weights_load_1091 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1091 \
    op interface \
    ports { weights_load_1091 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5876 \
    name weights_load_1092 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1092 \
    op interface \
    ports { weights_load_1092 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5877 \
    name weights_load_1093 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1093 \
    op interface \
    ports { weights_load_1093 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5878 \
    name weights_load_1094 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1094 \
    op interface \
    ports { weights_load_1094 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5879 \
    name weights_load_1095 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1095 \
    op interface \
    ports { weights_load_1095 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5880 \
    name weights_load_1096 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1096 \
    op interface \
    ports { weights_load_1096 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5881 \
    name weights_load_1097 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1097 \
    op interface \
    ports { weights_load_1097 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5882 \
    name weights_load_1098 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1098 \
    op interface \
    ports { weights_load_1098 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5883 \
    name weights_load_1099 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1099 \
    op interface \
    ports { weights_load_1099 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5884 \
    name weights_load_1100 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1100 \
    op interface \
    ports { weights_load_1100 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5885 \
    name weights_load_1101 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1101 \
    op interface \
    ports { weights_load_1101 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5886 \
    name weights_load_1102 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1102 \
    op interface \
    ports { weights_load_1102 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5887 \
    name weights_load_1103 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1103 \
    op interface \
    ports { weights_load_1103 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5888 \
    name weights_load_1104 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1104 \
    op interface \
    ports { weights_load_1104 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5889 \
    name weights_load_1105 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1105 \
    op interface \
    ports { weights_load_1105 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5890 \
    name weights_load_1106 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1106 \
    op interface \
    ports { weights_load_1106 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5891 \
    name weights_load_1107 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1107 \
    op interface \
    ports { weights_load_1107 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5892 \
    name weights_load_1108 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1108 \
    op interface \
    ports { weights_load_1108 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5893 \
    name weights_load_1109 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1109 \
    op interface \
    ports { weights_load_1109 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5894 \
    name weights_load_1110 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1110 \
    op interface \
    ports { weights_load_1110 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5895 \
    name weights_load_1111 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1111 \
    op interface \
    ports { weights_load_1111 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5896 \
    name weights_load_1112 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1112 \
    op interface \
    ports { weights_load_1112 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5897 \
    name weights_load_1113 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1113 \
    op interface \
    ports { weights_load_1113 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5898 \
    name weights_load_1114 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1114 \
    op interface \
    ports { weights_load_1114 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5899 \
    name weights_load_1115 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1115 \
    op interface \
    ports { weights_load_1115 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5900 \
    name weights_load_1116 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1116 \
    op interface \
    ports { weights_load_1116 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5901 \
    name weights_load_1117 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1117 \
    op interface \
    ports { weights_load_1117 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5902 \
    name weights_load_1118 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1118 \
    op interface \
    ports { weights_load_1118 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5903 \
    name weights_load_1119 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1119 \
    op interface \
    ports { weights_load_1119 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5904 \
    name weights_load_1120 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1120 \
    op interface \
    ports { weights_load_1120 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5905 \
    name weights_load_1121 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1121 \
    op interface \
    ports { weights_load_1121 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5906 \
    name weights_load_1122 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1122 \
    op interface \
    ports { weights_load_1122 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5907 \
    name weights_load_1123 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1123 \
    op interface \
    ports { weights_load_1123 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5908 \
    name weights_load_1124 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1124 \
    op interface \
    ports { weights_load_1124 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5909 \
    name weights_load_1125 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1125 \
    op interface \
    ports { weights_load_1125 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5910 \
    name weights_load_1126 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1126 \
    op interface \
    ports { weights_load_1126 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5911 \
    name weights_load_1127 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1127 \
    op interface \
    ports { weights_load_1127 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5912 \
    name weights_load_1128 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1128 \
    op interface \
    ports { weights_load_1128 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5913 \
    name weights_load_1129 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1129 \
    op interface \
    ports { weights_load_1129 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5914 \
    name weights_load_1130 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1130 \
    op interface \
    ports { weights_load_1130 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5915 \
    name weights_load_1131 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1131 \
    op interface \
    ports { weights_load_1131 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5916 \
    name weights_load_1132 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1132 \
    op interface \
    ports { weights_load_1132 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5917 \
    name weights_load_1133 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1133 \
    op interface \
    ports { weights_load_1133 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5918 \
    name weights_load_1134 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1134 \
    op interface \
    ports { weights_load_1134 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5919 \
    name weights_load_1135 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1135 \
    op interface \
    ports { weights_load_1135 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5920 \
    name weights_load_1136 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1136 \
    op interface \
    ports { weights_load_1136 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5921 \
    name weights_load_1137 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1137 \
    op interface \
    ports { weights_load_1137 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5922 \
    name weights_load_1138 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1138 \
    op interface \
    ports { weights_load_1138 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5923 \
    name weights_load_1139 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1139 \
    op interface \
    ports { weights_load_1139 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5924 \
    name weights_load_1140 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1140 \
    op interface \
    ports { weights_load_1140 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5925 \
    name weights_load_1141 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1141 \
    op interface \
    ports { weights_load_1141 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5926 \
    name weights_load_1142 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1142 \
    op interface \
    ports { weights_load_1142 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5927 \
    name weights_load_1143 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1143 \
    op interface \
    ports { weights_load_1143 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5928 \
    name weights_load_1144 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1144 \
    op interface \
    ports { weights_load_1144 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5929 \
    name weights_load_1145 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1145 \
    op interface \
    ports { weights_load_1145 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5930 \
    name weights_load_1146 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1146 \
    op interface \
    ports { weights_load_1146 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5931 \
    name weights_load_1147 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1147 \
    op interface \
    ports { weights_load_1147 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5932 \
    name weights_load_1148 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1148 \
    op interface \
    ports { weights_load_1148 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5933 \
    name weights_load_1149 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1149 \
    op interface \
    ports { weights_load_1149 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5934 \
    name weights_load_1150 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weights_load_1150 \
    op interface \
    ports { weights_load_1150 { I 32 vector } } \
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


