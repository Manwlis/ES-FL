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
    id 87 \
    name conv2d_32_weights \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_32_weights \
    op interface \
    ports { conv2d_32_weights_address0 { O 9 vector } conv2d_32_weights_ce0 { O 1 bit } conv2d_32_weights_we0 { O 1 bit } conv2d_32_weights_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_32_weights'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 88 \
    name conv2d_32_biases \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_32_biases \
    op interface \
    ports { conv2d_32_biases_address0 { O 5 vector } conv2d_32_biases_ce0 { O 1 bit } conv2d_32_biases_we0 { O 1 bit } conv2d_32_biases_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_32_biases'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 89 \
    name conv2d_64_weights_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_0 \
    op interface \
    ports { conv2d_64_weights_0_address1 { O 10 vector } conv2d_64_weights_0_ce1 { O 1 bit } conv2d_64_weights_0_we1 { O 1 bit } conv2d_64_weights_0_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 90 \
    name conv2d_64_weights_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_1 \
    op interface \
    ports { conv2d_64_weights_1_address1 { O 10 vector } conv2d_64_weights_1_ce1 { O 1 bit } conv2d_64_weights_1_we1 { O 1 bit } conv2d_64_weights_1_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 91 \
    name conv2d_64_weights_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_2 \
    op interface \
    ports { conv2d_64_weights_2_address1 { O 10 vector } conv2d_64_weights_2_ce1 { O 1 bit } conv2d_64_weights_2_we1 { O 1 bit } conv2d_64_weights_2_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 92 \
    name conv2d_64_weights_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_3 \
    op interface \
    ports { conv2d_64_weights_3_address1 { O 10 vector } conv2d_64_weights_3_ce1 { O 1 bit } conv2d_64_weights_3_we1 { O 1 bit } conv2d_64_weights_3_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 93 \
    name conv2d_64_weights_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_4 \
    op interface \
    ports { conv2d_64_weights_4_address1 { O 10 vector } conv2d_64_weights_4_ce1 { O 1 bit } conv2d_64_weights_4_we1 { O 1 bit } conv2d_64_weights_4_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 94 \
    name conv2d_64_weights_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_5 \
    op interface \
    ports { conv2d_64_weights_5_address1 { O 10 vector } conv2d_64_weights_5_ce1 { O 1 bit } conv2d_64_weights_5_we1 { O 1 bit } conv2d_64_weights_5_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 95 \
    name conv2d_64_weights_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_6 \
    op interface \
    ports { conv2d_64_weights_6_address1 { O 10 vector } conv2d_64_weights_6_ce1 { O 1 bit } conv2d_64_weights_6_we1 { O 1 bit } conv2d_64_weights_6_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 96 \
    name conv2d_64_weights_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_7 \
    op interface \
    ports { conv2d_64_weights_7_address1 { O 10 vector } conv2d_64_weights_7_ce1 { O 1 bit } conv2d_64_weights_7_we1 { O 1 bit } conv2d_64_weights_7_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 97 \
    name conv2d_64_weights_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_8 \
    op interface \
    ports { conv2d_64_weights_8_address1 { O 10 vector } conv2d_64_weights_8_ce1 { O 1 bit } conv2d_64_weights_8_we1 { O 1 bit } conv2d_64_weights_8_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 98 \
    name conv2d_64_weights_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_9 \
    op interface \
    ports { conv2d_64_weights_9_address1 { O 10 vector } conv2d_64_weights_9_ce1 { O 1 bit } conv2d_64_weights_9_we1 { O 1 bit } conv2d_64_weights_9_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 99 \
    name conv2d_64_weights_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_10 \
    op interface \
    ports { conv2d_64_weights_10_address1 { O 10 vector } conv2d_64_weights_10_ce1 { O 1 bit } conv2d_64_weights_10_we1 { O 1 bit } conv2d_64_weights_10_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 100 \
    name conv2d_64_weights_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_11 \
    op interface \
    ports { conv2d_64_weights_11_address1 { O 10 vector } conv2d_64_weights_11_ce1 { O 1 bit } conv2d_64_weights_11_we1 { O 1 bit } conv2d_64_weights_11_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 101 \
    name conv2d_64_weights_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_12 \
    op interface \
    ports { conv2d_64_weights_12_address1 { O 10 vector } conv2d_64_weights_12_ce1 { O 1 bit } conv2d_64_weights_12_we1 { O 1 bit } conv2d_64_weights_12_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 102 \
    name conv2d_64_weights_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_13 \
    op interface \
    ports { conv2d_64_weights_13_address1 { O 10 vector } conv2d_64_weights_13_ce1 { O 1 bit } conv2d_64_weights_13_we1 { O 1 bit } conv2d_64_weights_13_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 103 \
    name conv2d_64_weights_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_14 \
    op interface \
    ports { conv2d_64_weights_14_address1 { O 10 vector } conv2d_64_weights_14_ce1 { O 1 bit } conv2d_64_weights_14_we1 { O 1 bit } conv2d_64_weights_14_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 104 \
    name conv2d_64_weights_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_15 \
    op interface \
    ports { conv2d_64_weights_15_address1 { O 10 vector } conv2d_64_weights_15_ce1 { O 1 bit } conv2d_64_weights_15_we1 { O 1 bit } conv2d_64_weights_15_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 105 \
    name conv2d_64_weights_16 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_16 \
    op interface \
    ports { conv2d_64_weights_16_address1 { O 10 vector } conv2d_64_weights_16_ce1 { O 1 bit } conv2d_64_weights_16_we1 { O 1 bit } conv2d_64_weights_16_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 106 \
    name conv2d_64_weights_17 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_17 \
    op interface \
    ports { conv2d_64_weights_17_address1 { O 10 vector } conv2d_64_weights_17_ce1 { O 1 bit } conv2d_64_weights_17_we1 { O 1 bit } conv2d_64_weights_17_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 107 \
    name conv2d_64_weights_18 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_18 \
    op interface \
    ports { conv2d_64_weights_18_address1 { O 10 vector } conv2d_64_weights_18_ce1 { O 1 bit } conv2d_64_weights_18_we1 { O 1 bit } conv2d_64_weights_18_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 108 \
    name conv2d_64_weights_19 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_19 \
    op interface \
    ports { conv2d_64_weights_19_address1 { O 10 vector } conv2d_64_weights_19_ce1 { O 1 bit } conv2d_64_weights_19_we1 { O 1 bit } conv2d_64_weights_19_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 109 \
    name conv2d_64_weights_20 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_20 \
    op interface \
    ports { conv2d_64_weights_20_address1 { O 10 vector } conv2d_64_weights_20_ce1 { O 1 bit } conv2d_64_weights_20_we1 { O 1 bit } conv2d_64_weights_20_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 110 \
    name conv2d_64_weights_21 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_21 \
    op interface \
    ports { conv2d_64_weights_21_address1 { O 10 vector } conv2d_64_weights_21_ce1 { O 1 bit } conv2d_64_weights_21_we1 { O 1 bit } conv2d_64_weights_21_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 111 \
    name conv2d_64_weights_22 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_22 \
    op interface \
    ports { conv2d_64_weights_22_address1 { O 10 vector } conv2d_64_weights_22_ce1 { O 1 bit } conv2d_64_weights_22_we1 { O 1 bit } conv2d_64_weights_22_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 112 \
    name conv2d_64_weights_23 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_23 \
    op interface \
    ports { conv2d_64_weights_23_address1 { O 10 vector } conv2d_64_weights_23_ce1 { O 1 bit } conv2d_64_weights_23_we1 { O 1 bit } conv2d_64_weights_23_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 113 \
    name conv2d_64_weights_24 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_24 \
    op interface \
    ports { conv2d_64_weights_24_address1 { O 10 vector } conv2d_64_weights_24_ce1 { O 1 bit } conv2d_64_weights_24_we1 { O 1 bit } conv2d_64_weights_24_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 114 \
    name conv2d_64_weights_25 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_25 \
    op interface \
    ports { conv2d_64_weights_25_address1 { O 10 vector } conv2d_64_weights_25_ce1 { O 1 bit } conv2d_64_weights_25_we1 { O 1 bit } conv2d_64_weights_25_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 115 \
    name conv2d_64_weights_26 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_26 \
    op interface \
    ports { conv2d_64_weights_26_address1 { O 10 vector } conv2d_64_weights_26_ce1 { O 1 bit } conv2d_64_weights_26_we1 { O 1 bit } conv2d_64_weights_26_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 116 \
    name conv2d_64_weights_27 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_27 \
    op interface \
    ports { conv2d_64_weights_27_address1 { O 10 vector } conv2d_64_weights_27_ce1 { O 1 bit } conv2d_64_weights_27_we1 { O 1 bit } conv2d_64_weights_27_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 117 \
    name conv2d_64_weights_28 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_28 \
    op interface \
    ports { conv2d_64_weights_28_address1 { O 10 vector } conv2d_64_weights_28_ce1 { O 1 bit } conv2d_64_weights_28_we1 { O 1 bit } conv2d_64_weights_28_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 118 \
    name conv2d_64_weights_29 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_29 \
    op interface \
    ports { conv2d_64_weights_29_address1 { O 10 vector } conv2d_64_weights_29_ce1 { O 1 bit } conv2d_64_weights_29_we1 { O 1 bit } conv2d_64_weights_29_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 119 \
    name conv2d_64_weights_30 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_30 \
    op interface \
    ports { conv2d_64_weights_30_address1 { O 10 vector } conv2d_64_weights_30_ce1 { O 1 bit } conv2d_64_weights_30_we1 { O 1 bit } conv2d_64_weights_30_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 120 \
    name conv2d_64_weights_31 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_weights_31 \
    op interface \
    ports { conv2d_64_weights_31_address1 { O 10 vector } conv2d_64_weights_31_ce1 { O 1 bit } conv2d_64_weights_31_we1 { O 1 bit } conv2d_64_weights_31_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_weights_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 121 \
    name conv2d_64_biases \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename conv2d_64_biases \
    op interface \
    ports { conv2d_64_biases_address0 { O 6 vector } conv2d_64_biases_ce0 { O 1 bit } conv2d_64_biases_we0 { O 1 bit } conv2d_64_biases_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv2d_64_biases'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 122 \
    name dense_weights_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dense_weights_0 \
    op interface \
    ports { dense_weights_0_address0 { O 16 vector } dense_weights_0_ce0 { O 1 bit } dense_weights_0_we0 { O 1 bit } dense_weights_0_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dense_weights_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 123 \
    name dense_weights_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dense_weights_1 \
    op interface \
    ports { dense_weights_1_address0 { O 16 vector } dense_weights_1_ce0 { O 1 bit } dense_weights_1_we0 { O 1 bit } dense_weights_1_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dense_weights_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 124 \
    name dense_weights_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dense_weights_2 \
    op interface \
    ports { dense_weights_2_address0 { O 16 vector } dense_weights_2_ce0 { O 1 bit } dense_weights_2_we0 { O 1 bit } dense_weights_2_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dense_weights_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 125 \
    name dense_weights_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dense_weights_3 \
    op interface \
    ports { dense_weights_3_address0 { O 16 vector } dense_weights_3_ce0 { O 1 bit } dense_weights_3_we0 { O 1 bit } dense_weights_3_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dense_weights_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 126 \
    name dense_weights_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dense_weights_4 \
    op interface \
    ports { dense_weights_4_address0 { O 16 vector } dense_weights_4_ce0 { O 1 bit } dense_weights_4_we0 { O 1 bit } dense_weights_4_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dense_weights_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 127 \
    name dense_weights_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dense_weights_5 \
    op interface \
    ports { dense_weights_5_address0 { O 16 vector } dense_weights_5_ce0 { O 1 bit } dense_weights_5_we0 { O 1 bit } dense_weights_5_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dense_weights_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 128 \
    name dense_weights_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dense_weights_6 \
    op interface \
    ports { dense_weights_6_address0 { O 16 vector } dense_weights_6_ce0 { O 1 bit } dense_weights_6_we0 { O 1 bit } dense_weights_6_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dense_weights_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 129 \
    name dense_weights_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dense_weights_7 \
    op interface \
    ports { dense_weights_7_address0 { O 16 vector } dense_weights_7_ce0 { O 1 bit } dense_weights_7_we0 { O 1 bit } dense_weights_7_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dense_weights_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 130 \
    name dense_biases \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dense_biases \
    op interface \
    ports { dense_biases_address0 { O 7 vector } dense_biases_ce0 { O 1 bit } dense_biases_we0 { O 1 bit } dense_biases_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dense_biases'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 131 \
    name softmax_weights_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename softmax_weights_0 \
    op interface \
    ports { softmax_weights_0_address0 { O 9 vector } softmax_weights_0_ce0 { O 1 bit } softmax_weights_0_we0 { O 1 bit } softmax_weights_0_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'softmax_weights_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 132 \
    name softmax_weights_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename softmax_weights_1 \
    op interface \
    ports { softmax_weights_1_address0 { O 9 vector } softmax_weights_1_ce0 { O 1 bit } softmax_weights_1_we0 { O 1 bit } softmax_weights_1_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'softmax_weights_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 133 \
    name softmax_weights_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename softmax_weights_2 \
    op interface \
    ports { softmax_weights_2_address0 { O 9 vector } softmax_weights_2_ce0 { O 1 bit } softmax_weights_2_we0 { O 1 bit } softmax_weights_2_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'softmax_weights_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 134 \
    name softmax_biases \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename softmax_biases \
    op interface \
    ports { softmax_biases_address0 { O 4 vector } softmax_biases_ce0 { O 1 bit } softmax_biases_we0 { O 1 bit } softmax_biases_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'softmax_biases'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name gmem \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem \
    op interface \
    ports { m_axi_gmem_AWVALID { O 1 bit } m_axi_gmem_AWREADY { I 1 bit } m_axi_gmem_AWADDR { O 64 vector } m_axi_gmem_AWID { O 1 vector } m_axi_gmem_AWLEN { O 32 vector } m_axi_gmem_AWSIZE { O 3 vector } m_axi_gmem_AWBURST { O 2 vector } m_axi_gmem_AWLOCK { O 2 vector } m_axi_gmem_AWCACHE { O 4 vector } m_axi_gmem_AWPROT { O 3 vector } m_axi_gmem_AWQOS { O 4 vector } m_axi_gmem_AWREGION { O 4 vector } m_axi_gmem_AWUSER { O 1 vector } m_axi_gmem_WVALID { O 1 bit } m_axi_gmem_WREADY { I 1 bit } m_axi_gmem_WDATA { O 512 vector } m_axi_gmem_WSTRB { O 64 vector } m_axi_gmem_WLAST { O 1 bit } m_axi_gmem_WID { O 1 vector } m_axi_gmem_WUSER { O 1 vector } m_axi_gmem_ARVALID { O 1 bit } m_axi_gmem_ARREADY { I 1 bit } m_axi_gmem_ARADDR { O 64 vector } m_axi_gmem_ARID { O 1 vector } m_axi_gmem_ARLEN { O 32 vector } m_axi_gmem_ARSIZE { O 3 vector } m_axi_gmem_ARBURST { O 2 vector } m_axi_gmem_ARLOCK { O 2 vector } m_axi_gmem_ARCACHE { O 4 vector } m_axi_gmem_ARPROT { O 3 vector } m_axi_gmem_ARQOS { O 4 vector } m_axi_gmem_ARREGION { O 4 vector } m_axi_gmem_ARUSER { O 1 vector } m_axi_gmem_RVALID { I 1 bit } m_axi_gmem_RREADY { O 1 bit } m_axi_gmem_RDATA { I 512 vector } m_axi_gmem_RLAST { I 1 bit } m_axi_gmem_RID { I 1 vector } m_axi_gmem_RFIFONUM { I 9 vector } m_axi_gmem_RUSER { I 1 vector } m_axi_gmem_RRESP { I 2 vector } m_axi_gmem_BVALID { I 1 bit } m_axi_gmem_BREADY { O 1 bit } m_axi_gmem_BRESP { I 2 vector } m_axi_gmem_BID { I 1 vector } m_axi_gmem_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name gmem_conv2d_32_weights \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_conv2d_32_weights \
    op interface \
    ports { gmem_conv2d_32_weights { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name gmem_conv2d_32_biases \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_conv2d_32_biases \
    op interface \
    ports { gmem_conv2d_32_biases { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name gmem_conv2d_64_weights \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_conv2d_64_weights \
    op interface \
    ports { gmem_conv2d_64_weights { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name gmem_conv2d_64_biases \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_conv2d_64_biases \
    op interface \
    ports { gmem_conv2d_64_biases { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name gmem_dense_weights \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_dense_weights \
    op interface \
    ports { gmem_dense_weights { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name gmem_dense_biases \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_dense_biases \
    op interface \
    ports { gmem_dense_biases { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name gmem_softmax_weights \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_softmax_weights \
    op interface \
    ports { gmem_softmax_weights { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name gmem_softmax_biases \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_softmax_biases \
    op interface \
    ports { gmem_softmax_biases { I 64 vector } } \
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


