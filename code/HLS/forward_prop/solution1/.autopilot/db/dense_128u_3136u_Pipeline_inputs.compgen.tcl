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
    id 20065 \
    name weights_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_0 \
    op interface \
    ports { weights_0_address0 { O 16 vector } weights_0_ce0 { O 1 bit } weights_0_q0 { I 32 vector } weights_0_address1 { O 16 vector } weights_0_ce1 { O 1 bit } weights_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 20066 \
    name weights_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_1 \
    op interface \
    ports { weights_1_address0 { O 16 vector } weights_1_ce0 { O 1 bit } weights_1_q0 { I 32 vector } weights_1_address1 { O 16 vector } weights_1_ce1 { O 1 bit } weights_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 20067 \
    name weights_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_2 \
    op interface \
    ports { weights_2_address0 { O 16 vector } weights_2_ce0 { O 1 bit } weights_2_q0 { I 32 vector } weights_2_address1 { O 16 vector } weights_2_ce1 { O 1 bit } weights_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 20068 \
    name weights_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_3 \
    op interface \
    ports { weights_3_address0 { O 16 vector } weights_3_ce0 { O 1 bit } weights_3_q0 { I 32 vector } weights_3_address1 { O 16 vector } weights_3_ce1 { O 1 bit } weights_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 20069 \
    name weights_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_4 \
    op interface \
    ports { weights_4_address0 { O 16 vector } weights_4_ce0 { O 1 bit } weights_4_q0 { I 32 vector } weights_4_address1 { O 16 vector } weights_4_ce1 { O 1 bit } weights_4_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 20070 \
    name weights_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_5 \
    op interface \
    ports { weights_5_address0 { O 16 vector } weights_5_ce0 { O 1 bit } weights_5_q0 { I 32 vector } weights_5_address1 { O 16 vector } weights_5_ce1 { O 1 bit } weights_5_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 20071 \
    name weights_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_6 \
    op interface \
    ports { weights_6_address0 { O 16 vector } weights_6_ce0 { O 1 bit } weights_6_q0 { I 32 vector } weights_6_address1 { O 16 vector } weights_6_ce1 { O 1 bit } weights_6_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 20072 \
    name weights_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights_7 \
    op interface \
    ports { weights_7_address0 { O 16 vector } weights_7_ce0 { O 1 bit } weights_7_q0 { I 32 vector } weights_7_address1 { O 16 vector } weights_7_ce1 { O 1 bit } weights_7_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19936 \
    name kernel_sum_127_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_127_reload \
    op interface \
    ports { kernel_sum_127_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19937 \
    name kernel_sum_126_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_126_reload \
    op interface \
    ports { kernel_sum_126_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19938 \
    name kernel_sum_125_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_125_reload \
    op interface \
    ports { kernel_sum_125_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19939 \
    name kernel_sum_124_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_124_reload \
    op interface \
    ports { kernel_sum_124_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19940 \
    name kernel_sum_123_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_123_reload \
    op interface \
    ports { kernel_sum_123_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19941 \
    name kernel_sum_122_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_122_reload \
    op interface \
    ports { kernel_sum_122_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19942 \
    name kernel_sum_121_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_121_reload \
    op interface \
    ports { kernel_sum_121_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19943 \
    name kernel_sum_120_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_120_reload \
    op interface \
    ports { kernel_sum_120_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19944 \
    name kernel_sum_119_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_119_reload \
    op interface \
    ports { kernel_sum_119_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19945 \
    name kernel_sum_118_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_118_reload \
    op interface \
    ports { kernel_sum_118_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19946 \
    name kernel_sum_117_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_117_reload \
    op interface \
    ports { kernel_sum_117_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19947 \
    name kernel_sum_116_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_116_reload \
    op interface \
    ports { kernel_sum_116_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19948 \
    name kernel_sum_115_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_115_reload \
    op interface \
    ports { kernel_sum_115_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19949 \
    name kernel_sum_114_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_114_reload \
    op interface \
    ports { kernel_sum_114_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19950 \
    name kernel_sum_113_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_113_reload \
    op interface \
    ports { kernel_sum_113_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19951 \
    name kernel_sum_112_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_112_reload \
    op interface \
    ports { kernel_sum_112_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19952 \
    name kernel_sum_111_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_111_reload \
    op interface \
    ports { kernel_sum_111_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19953 \
    name kernel_sum_110_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_110_reload \
    op interface \
    ports { kernel_sum_110_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19954 \
    name kernel_sum_109_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_109_reload \
    op interface \
    ports { kernel_sum_109_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19955 \
    name kernel_sum_108_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_108_reload \
    op interface \
    ports { kernel_sum_108_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19956 \
    name kernel_sum_107_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_107_reload \
    op interface \
    ports { kernel_sum_107_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19957 \
    name kernel_sum_106_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_106_reload \
    op interface \
    ports { kernel_sum_106_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19958 \
    name kernel_sum_105_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_105_reload \
    op interface \
    ports { kernel_sum_105_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19959 \
    name kernel_sum_104_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_104_reload \
    op interface \
    ports { kernel_sum_104_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19960 \
    name kernel_sum_103_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_103_reload \
    op interface \
    ports { kernel_sum_103_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19961 \
    name kernel_sum_102_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_102_reload \
    op interface \
    ports { kernel_sum_102_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19962 \
    name kernel_sum_101_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_101_reload \
    op interface \
    ports { kernel_sum_101_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19963 \
    name kernel_sum_100_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_100_reload \
    op interface \
    ports { kernel_sum_100_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19964 \
    name kernel_sum_99_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_99_reload \
    op interface \
    ports { kernel_sum_99_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19965 \
    name kernel_sum_98_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_98_reload \
    op interface \
    ports { kernel_sum_98_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19966 \
    name kernel_sum_97_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_97_reload \
    op interface \
    ports { kernel_sum_97_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19967 \
    name kernel_sum_96_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_96_reload \
    op interface \
    ports { kernel_sum_96_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19968 \
    name kernel_sum_95_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_95_reload \
    op interface \
    ports { kernel_sum_95_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19969 \
    name kernel_sum_94_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_94_reload \
    op interface \
    ports { kernel_sum_94_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19970 \
    name kernel_sum_93_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_93_reload \
    op interface \
    ports { kernel_sum_93_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19971 \
    name kernel_sum_92_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_92_reload \
    op interface \
    ports { kernel_sum_92_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19972 \
    name kernel_sum_91_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_91_reload \
    op interface \
    ports { kernel_sum_91_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19973 \
    name kernel_sum_90_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_90_reload \
    op interface \
    ports { kernel_sum_90_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19974 \
    name kernel_sum_89_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_89_reload \
    op interface \
    ports { kernel_sum_89_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19975 \
    name kernel_sum_88_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_88_reload \
    op interface \
    ports { kernel_sum_88_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19976 \
    name kernel_sum_87_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_87_reload \
    op interface \
    ports { kernel_sum_87_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19977 \
    name kernel_sum_86_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_86_reload \
    op interface \
    ports { kernel_sum_86_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19978 \
    name kernel_sum_85_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_85_reload \
    op interface \
    ports { kernel_sum_85_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19979 \
    name kernel_sum_84_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_84_reload \
    op interface \
    ports { kernel_sum_84_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19980 \
    name kernel_sum_83_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_83_reload \
    op interface \
    ports { kernel_sum_83_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19981 \
    name kernel_sum_82_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_82_reload \
    op interface \
    ports { kernel_sum_82_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19982 \
    name kernel_sum_81_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_81_reload \
    op interface \
    ports { kernel_sum_81_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19983 \
    name kernel_sum_80_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_80_reload \
    op interface \
    ports { kernel_sum_80_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19984 \
    name kernel_sum_79_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_79_reload \
    op interface \
    ports { kernel_sum_79_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19985 \
    name kernel_sum_78_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_78_reload \
    op interface \
    ports { kernel_sum_78_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19986 \
    name kernel_sum_77_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_77_reload \
    op interface \
    ports { kernel_sum_77_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19987 \
    name kernel_sum_76_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_76_reload \
    op interface \
    ports { kernel_sum_76_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19988 \
    name kernel_sum_75_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_75_reload \
    op interface \
    ports { kernel_sum_75_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19989 \
    name kernel_sum_74_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_74_reload \
    op interface \
    ports { kernel_sum_74_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19990 \
    name kernel_sum_73_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_73_reload \
    op interface \
    ports { kernel_sum_73_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19991 \
    name kernel_sum_72_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_72_reload \
    op interface \
    ports { kernel_sum_72_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19992 \
    name kernel_sum_71_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_71_reload \
    op interface \
    ports { kernel_sum_71_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19993 \
    name kernel_sum_70_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_70_reload \
    op interface \
    ports { kernel_sum_70_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19994 \
    name kernel_sum_69_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_69_reload \
    op interface \
    ports { kernel_sum_69_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19995 \
    name kernel_sum_68_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_68_reload \
    op interface \
    ports { kernel_sum_68_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19996 \
    name kernel_sum_67_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_67_reload \
    op interface \
    ports { kernel_sum_67_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19997 \
    name kernel_sum_66_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_66_reload \
    op interface \
    ports { kernel_sum_66_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19998 \
    name kernel_sum_65_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_65_reload \
    op interface \
    ports { kernel_sum_65_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19999 \
    name kernel_sum_64_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_64_reload \
    op interface \
    ports { kernel_sum_64_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20000 \
    name kernel_sum_63_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_63_reload \
    op interface \
    ports { kernel_sum_63_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20001 \
    name kernel_sum_62_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_62_reload \
    op interface \
    ports { kernel_sum_62_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20002 \
    name kernel_sum_61_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_61_reload \
    op interface \
    ports { kernel_sum_61_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20003 \
    name kernel_sum_60_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_60_reload \
    op interface \
    ports { kernel_sum_60_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20004 \
    name kernel_sum_59_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_59_reload \
    op interface \
    ports { kernel_sum_59_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20005 \
    name kernel_sum_58_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_58_reload \
    op interface \
    ports { kernel_sum_58_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20006 \
    name kernel_sum_57_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_57_reload \
    op interface \
    ports { kernel_sum_57_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20007 \
    name kernel_sum_56_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_56_reload \
    op interface \
    ports { kernel_sum_56_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20008 \
    name kernel_sum_55_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_55_reload \
    op interface \
    ports { kernel_sum_55_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20009 \
    name kernel_sum_54_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_54_reload \
    op interface \
    ports { kernel_sum_54_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20010 \
    name kernel_sum_53_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_53_reload \
    op interface \
    ports { kernel_sum_53_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20011 \
    name kernel_sum_52_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_52_reload \
    op interface \
    ports { kernel_sum_52_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20012 \
    name kernel_sum_51_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_51_reload \
    op interface \
    ports { kernel_sum_51_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20013 \
    name kernel_sum_50_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_50_reload \
    op interface \
    ports { kernel_sum_50_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20014 \
    name kernel_sum_49_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_49_reload \
    op interface \
    ports { kernel_sum_49_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20015 \
    name kernel_sum_48_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_48_reload \
    op interface \
    ports { kernel_sum_48_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20016 \
    name kernel_sum_47_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_47_reload \
    op interface \
    ports { kernel_sum_47_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20017 \
    name kernel_sum_46_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_46_reload \
    op interface \
    ports { kernel_sum_46_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20018 \
    name kernel_sum_45_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_45_reload \
    op interface \
    ports { kernel_sum_45_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20019 \
    name kernel_sum_44_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_44_reload \
    op interface \
    ports { kernel_sum_44_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20020 \
    name kernel_sum_43_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_43_reload \
    op interface \
    ports { kernel_sum_43_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20021 \
    name kernel_sum_42_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_42_reload \
    op interface \
    ports { kernel_sum_42_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20022 \
    name kernel_sum_41_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_41_reload \
    op interface \
    ports { kernel_sum_41_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20023 \
    name kernel_sum_40_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_40_reload \
    op interface \
    ports { kernel_sum_40_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20024 \
    name kernel_sum_39_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_39_reload \
    op interface \
    ports { kernel_sum_39_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20025 \
    name kernel_sum_38_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_38_reload \
    op interface \
    ports { kernel_sum_38_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20026 \
    name kernel_sum_37_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_37_reload \
    op interface \
    ports { kernel_sum_37_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20027 \
    name kernel_sum_36_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_36_reload \
    op interface \
    ports { kernel_sum_36_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20028 \
    name kernel_sum_35_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_35_reload \
    op interface \
    ports { kernel_sum_35_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20029 \
    name kernel_sum_34_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_34_reload \
    op interface \
    ports { kernel_sum_34_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20030 \
    name kernel_sum_33_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_33_reload \
    op interface \
    ports { kernel_sum_33_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20031 \
    name kernel_sum_32_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_32_reload \
    op interface \
    ports { kernel_sum_32_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20032 \
    name kernel_sum_31_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_31_reload \
    op interface \
    ports { kernel_sum_31_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20033 \
    name kernel_sum_30_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_30_reload \
    op interface \
    ports { kernel_sum_30_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20034 \
    name kernel_sum_29_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_29_reload \
    op interface \
    ports { kernel_sum_29_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20035 \
    name kernel_sum_28_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_28_reload \
    op interface \
    ports { kernel_sum_28_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20036 \
    name kernel_sum_27_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_27_reload \
    op interface \
    ports { kernel_sum_27_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20037 \
    name kernel_sum_26_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_26_reload \
    op interface \
    ports { kernel_sum_26_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20038 \
    name kernel_sum_25_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_25_reload \
    op interface \
    ports { kernel_sum_25_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20039 \
    name kernel_sum_24_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_24_reload \
    op interface \
    ports { kernel_sum_24_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20040 \
    name kernel_sum_23_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_23_reload \
    op interface \
    ports { kernel_sum_23_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20041 \
    name kernel_sum_22_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_22_reload \
    op interface \
    ports { kernel_sum_22_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20042 \
    name kernel_sum_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_21_reload \
    op interface \
    ports { kernel_sum_21_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20043 \
    name kernel_sum_20_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_20_reload \
    op interface \
    ports { kernel_sum_20_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20044 \
    name kernel_sum_19_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_19_reload \
    op interface \
    ports { kernel_sum_19_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20045 \
    name kernel_sum_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_18_reload \
    op interface \
    ports { kernel_sum_18_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20046 \
    name kernel_sum_17_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_17_reload \
    op interface \
    ports { kernel_sum_17_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20047 \
    name kernel_sum_16_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_16_reload \
    op interface \
    ports { kernel_sum_16_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20048 \
    name kernel_sum_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_15_reload \
    op interface \
    ports { kernel_sum_15_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20049 \
    name kernel_sum_14_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_14_reload \
    op interface \
    ports { kernel_sum_14_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20050 \
    name kernel_sum_13_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_13_reload \
    op interface \
    ports { kernel_sum_13_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20051 \
    name kernel_sum_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_12_reload \
    op interface \
    ports { kernel_sum_12_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20052 \
    name kernel_sum_11_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_11_reload \
    op interface \
    ports { kernel_sum_11_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20053 \
    name kernel_sum_10_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_10_reload \
    op interface \
    ports { kernel_sum_10_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20054 \
    name kernel_sum_9_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_9_reload \
    op interface \
    ports { kernel_sum_9_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20055 \
    name kernel_sum_8_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_8_reload \
    op interface \
    ports { kernel_sum_8_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20056 \
    name kernel_sum_7_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_7_reload \
    op interface \
    ports { kernel_sum_7_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20057 \
    name kernel_sum_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_6_reload \
    op interface \
    ports { kernel_sum_6_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20058 \
    name kernel_sum_5_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_5_reload \
    op interface \
    ports { kernel_sum_5_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20059 \
    name kernel_sum_4_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_4_reload \
    op interface \
    ports { kernel_sum_4_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20060 \
    name kernel_sum_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_3_reload \
    op interface \
    ports { kernel_sum_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20061 \
    name kernel_sum_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_2_reload \
    op interface \
    ports { kernel_sum_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20062 \
    name kernel_sum_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_1_reload \
    op interface \
    ports { kernel_sum_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20063 \
    name kernel_sum_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_reload \
    op interface \
    ports { kernel_sum_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20064 \
    name maxp2d_64_feature_map_stream127 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_maxp2d_64_feature_map_stream127 \
    op interface \
    ports { maxp2d_64_feature_map_stream127_dout { I 32 vector } maxp2d_64_feature_map_stream127_num_data_valid { I 3 vector } maxp2d_64_feature_map_stream127_fifo_cap { I 3 vector } maxp2d_64_feature_map_stream127_empty_n { I 1 bit } maxp2d_64_feature_map_stream127_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20073 \
    name add17_127154_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_127154_out \
    op interface \
    ports { add17_127154_out { O 32 vector } add17_127154_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20074 \
    name add17_126153_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_126153_out \
    op interface \
    ports { add17_126153_out { O 32 vector } add17_126153_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20075 \
    name add17_125152_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_125152_out \
    op interface \
    ports { add17_125152_out { O 32 vector } add17_125152_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20076 \
    name add17_124151_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_124151_out \
    op interface \
    ports { add17_124151_out { O 32 vector } add17_124151_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20077 \
    name add17_123150_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_123150_out \
    op interface \
    ports { add17_123150_out { O 32 vector } add17_123150_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20078 \
    name add17_122149_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_122149_out \
    op interface \
    ports { add17_122149_out { O 32 vector } add17_122149_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20079 \
    name add17_121148_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_121148_out \
    op interface \
    ports { add17_121148_out { O 32 vector } add17_121148_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20080 \
    name add17_120147_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_120147_out \
    op interface \
    ports { add17_120147_out { O 32 vector } add17_120147_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20081 \
    name add17_119146_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_119146_out \
    op interface \
    ports { add17_119146_out { O 32 vector } add17_119146_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20082 \
    name add17_118145_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_118145_out \
    op interface \
    ports { add17_118145_out { O 32 vector } add17_118145_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20083 \
    name add17_117144_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_117144_out \
    op interface \
    ports { add17_117144_out { O 32 vector } add17_117144_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20084 \
    name add17_116143_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_116143_out \
    op interface \
    ports { add17_116143_out { O 32 vector } add17_116143_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20085 \
    name add17_115142_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_115142_out \
    op interface \
    ports { add17_115142_out { O 32 vector } add17_115142_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20086 \
    name add17_114141_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_114141_out \
    op interface \
    ports { add17_114141_out { O 32 vector } add17_114141_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20087 \
    name add17_113140_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_113140_out \
    op interface \
    ports { add17_113140_out { O 32 vector } add17_113140_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20088 \
    name add17_112139_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_112139_out \
    op interface \
    ports { add17_112139_out { O 32 vector } add17_112139_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20089 \
    name add17_111138_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_111138_out \
    op interface \
    ports { add17_111138_out { O 32 vector } add17_111138_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20090 \
    name add17_110137_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_110137_out \
    op interface \
    ports { add17_110137_out { O 32 vector } add17_110137_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20091 \
    name add17_109136_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_109136_out \
    op interface \
    ports { add17_109136_out { O 32 vector } add17_109136_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20092 \
    name add17_108135_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_108135_out \
    op interface \
    ports { add17_108135_out { O 32 vector } add17_108135_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20093 \
    name add17_107134_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_107134_out \
    op interface \
    ports { add17_107134_out { O 32 vector } add17_107134_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20094 \
    name add17_106133_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_106133_out \
    op interface \
    ports { add17_106133_out { O 32 vector } add17_106133_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20095 \
    name add17_105132_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_105132_out \
    op interface \
    ports { add17_105132_out { O 32 vector } add17_105132_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20096 \
    name add17_104131_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_104131_out \
    op interface \
    ports { add17_104131_out { O 32 vector } add17_104131_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20097 \
    name add17_103130_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_103130_out \
    op interface \
    ports { add17_103130_out { O 32 vector } add17_103130_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20098 \
    name add17_102129_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_102129_out \
    op interface \
    ports { add17_102129_out { O 32 vector } add17_102129_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20099 \
    name add17_101128_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_101128_out \
    op interface \
    ports { add17_101128_out { O 32 vector } add17_101128_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20100 \
    name add17_100127_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_100127_out \
    op interface \
    ports { add17_100127_out { O 32 vector } add17_100127_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20101 \
    name add17_99126_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_99126_out \
    op interface \
    ports { add17_99126_out { O 32 vector } add17_99126_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20102 \
    name add17_98125_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_98125_out \
    op interface \
    ports { add17_98125_out { O 32 vector } add17_98125_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20103 \
    name add17_97124_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_97124_out \
    op interface \
    ports { add17_97124_out { O 32 vector } add17_97124_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20104 \
    name add17_96123_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_96123_out \
    op interface \
    ports { add17_96123_out { O 32 vector } add17_96123_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20105 \
    name add17_95122_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_95122_out \
    op interface \
    ports { add17_95122_out { O 32 vector } add17_95122_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20106 \
    name add17_94121_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_94121_out \
    op interface \
    ports { add17_94121_out { O 32 vector } add17_94121_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20107 \
    name add17_93120_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_93120_out \
    op interface \
    ports { add17_93120_out { O 32 vector } add17_93120_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20108 \
    name add17_92119_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_92119_out \
    op interface \
    ports { add17_92119_out { O 32 vector } add17_92119_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20109 \
    name add17_91118_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_91118_out \
    op interface \
    ports { add17_91118_out { O 32 vector } add17_91118_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20110 \
    name add17_90117_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_90117_out \
    op interface \
    ports { add17_90117_out { O 32 vector } add17_90117_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20111 \
    name add17_89116_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_89116_out \
    op interface \
    ports { add17_89116_out { O 32 vector } add17_89116_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20112 \
    name add17_88115_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_88115_out \
    op interface \
    ports { add17_88115_out { O 32 vector } add17_88115_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20113 \
    name add17_87114_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_87114_out \
    op interface \
    ports { add17_87114_out { O 32 vector } add17_87114_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20114 \
    name add17_86113_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_86113_out \
    op interface \
    ports { add17_86113_out { O 32 vector } add17_86113_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20115 \
    name add17_85112_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_85112_out \
    op interface \
    ports { add17_85112_out { O 32 vector } add17_85112_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20116 \
    name add17_84111_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_84111_out \
    op interface \
    ports { add17_84111_out { O 32 vector } add17_84111_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20117 \
    name add17_83110_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_83110_out \
    op interface \
    ports { add17_83110_out { O 32 vector } add17_83110_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20118 \
    name add17_82109_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_82109_out \
    op interface \
    ports { add17_82109_out { O 32 vector } add17_82109_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20119 \
    name add17_81108_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_81108_out \
    op interface \
    ports { add17_81108_out { O 32 vector } add17_81108_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20120 \
    name add17_80107_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_80107_out \
    op interface \
    ports { add17_80107_out { O 32 vector } add17_80107_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20121 \
    name add17_79106_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_79106_out \
    op interface \
    ports { add17_79106_out { O 32 vector } add17_79106_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20122 \
    name add17_78105_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_78105_out \
    op interface \
    ports { add17_78105_out { O 32 vector } add17_78105_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20123 \
    name add17_77104_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_77104_out \
    op interface \
    ports { add17_77104_out { O 32 vector } add17_77104_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20124 \
    name add17_76103_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_76103_out \
    op interface \
    ports { add17_76103_out { O 32 vector } add17_76103_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20125 \
    name add17_75102_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_75102_out \
    op interface \
    ports { add17_75102_out { O 32 vector } add17_75102_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20126 \
    name add17_74101_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_74101_out \
    op interface \
    ports { add17_74101_out { O 32 vector } add17_74101_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20127 \
    name add17_73100_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_73100_out \
    op interface \
    ports { add17_73100_out { O 32 vector } add17_73100_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20128 \
    name add17_7299_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_7299_out \
    op interface \
    ports { add17_7299_out { O 32 vector } add17_7299_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20129 \
    name add17_7198_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_7198_out \
    op interface \
    ports { add17_7198_out { O 32 vector } add17_7198_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20130 \
    name add17_7097_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_7097_out \
    op interface \
    ports { add17_7097_out { O 32 vector } add17_7097_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20131 \
    name add17_6996_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_6996_out \
    op interface \
    ports { add17_6996_out { O 32 vector } add17_6996_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20132 \
    name add17_6895_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_6895_out \
    op interface \
    ports { add17_6895_out { O 32 vector } add17_6895_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20133 \
    name add17_6794_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_6794_out \
    op interface \
    ports { add17_6794_out { O 32 vector } add17_6794_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20134 \
    name add17_6693_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_6693_out \
    op interface \
    ports { add17_6693_out { O 32 vector } add17_6693_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20135 \
    name add17_6592_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_6592_out \
    op interface \
    ports { add17_6592_out { O 32 vector } add17_6592_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20136 \
    name add17_6491_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_6491_out \
    op interface \
    ports { add17_6491_out { O 32 vector } add17_6491_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20137 \
    name add17_6390_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_6390_out \
    op interface \
    ports { add17_6390_out { O 32 vector } add17_6390_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20138 \
    name add17_6289_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_6289_out \
    op interface \
    ports { add17_6289_out { O 32 vector } add17_6289_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20139 \
    name add17_6188_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_6188_out \
    op interface \
    ports { add17_6188_out { O 32 vector } add17_6188_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20140 \
    name add17_6087_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_6087_out \
    op interface \
    ports { add17_6087_out { O 32 vector } add17_6087_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20141 \
    name add17_5986_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_5986_out \
    op interface \
    ports { add17_5986_out { O 32 vector } add17_5986_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20142 \
    name add17_5885_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_5885_out \
    op interface \
    ports { add17_5885_out { O 32 vector } add17_5885_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20143 \
    name add17_5784_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_5784_out \
    op interface \
    ports { add17_5784_out { O 32 vector } add17_5784_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20144 \
    name add17_5683_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_5683_out \
    op interface \
    ports { add17_5683_out { O 32 vector } add17_5683_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20145 \
    name add17_5582_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_5582_out \
    op interface \
    ports { add17_5582_out { O 32 vector } add17_5582_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20146 \
    name add17_5481_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_5481_out \
    op interface \
    ports { add17_5481_out { O 32 vector } add17_5481_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20147 \
    name add17_5380_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_5380_out \
    op interface \
    ports { add17_5380_out { O 32 vector } add17_5380_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20148 \
    name add17_5279_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_5279_out \
    op interface \
    ports { add17_5279_out { O 32 vector } add17_5279_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20149 \
    name add17_5178_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_5178_out \
    op interface \
    ports { add17_5178_out { O 32 vector } add17_5178_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20150 \
    name add17_5077_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_5077_out \
    op interface \
    ports { add17_5077_out { O 32 vector } add17_5077_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20151 \
    name add17_4976_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_4976_out \
    op interface \
    ports { add17_4976_out { O 32 vector } add17_4976_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20152 \
    name add17_4875_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_4875_out \
    op interface \
    ports { add17_4875_out { O 32 vector } add17_4875_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20153 \
    name add17_4774_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_4774_out \
    op interface \
    ports { add17_4774_out { O 32 vector } add17_4774_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20154 \
    name add17_4673_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_4673_out \
    op interface \
    ports { add17_4673_out { O 32 vector } add17_4673_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20155 \
    name add17_4572_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_4572_out \
    op interface \
    ports { add17_4572_out { O 32 vector } add17_4572_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20156 \
    name add17_4471_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_4471_out \
    op interface \
    ports { add17_4471_out { O 32 vector } add17_4471_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20157 \
    name add17_4370_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_4370_out \
    op interface \
    ports { add17_4370_out { O 32 vector } add17_4370_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20158 \
    name add17_4269_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_4269_out \
    op interface \
    ports { add17_4269_out { O 32 vector } add17_4269_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20159 \
    name add17_4168_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_4168_out \
    op interface \
    ports { add17_4168_out { O 32 vector } add17_4168_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20160 \
    name add17_4067_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_4067_out \
    op interface \
    ports { add17_4067_out { O 32 vector } add17_4067_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20161 \
    name add17_3966_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_3966_out \
    op interface \
    ports { add17_3966_out { O 32 vector } add17_3966_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20162 \
    name add17_3865_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_3865_out \
    op interface \
    ports { add17_3865_out { O 32 vector } add17_3865_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20163 \
    name add17_3764_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_3764_out \
    op interface \
    ports { add17_3764_out { O 32 vector } add17_3764_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20164 \
    name add17_3663_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_3663_out \
    op interface \
    ports { add17_3663_out { O 32 vector } add17_3663_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20165 \
    name add17_3562_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_3562_out \
    op interface \
    ports { add17_3562_out { O 32 vector } add17_3562_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20166 \
    name add17_3461_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_3461_out \
    op interface \
    ports { add17_3461_out { O 32 vector } add17_3461_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20167 \
    name add17_3360_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_3360_out \
    op interface \
    ports { add17_3360_out { O 32 vector } add17_3360_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20168 \
    name add17_3259_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_3259_out \
    op interface \
    ports { add17_3259_out { O 32 vector } add17_3259_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20169 \
    name add17_3158_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_3158_out \
    op interface \
    ports { add17_3158_out { O 32 vector } add17_3158_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20170 \
    name add17_3057_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_3057_out \
    op interface \
    ports { add17_3057_out { O 32 vector } add17_3057_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20171 \
    name add17_2956_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_2956_out \
    op interface \
    ports { add17_2956_out { O 32 vector } add17_2956_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20172 \
    name add17_2855_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_2855_out \
    op interface \
    ports { add17_2855_out { O 32 vector } add17_2855_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20173 \
    name add17_2754_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_2754_out \
    op interface \
    ports { add17_2754_out { O 32 vector } add17_2754_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20174 \
    name add17_2653_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_2653_out \
    op interface \
    ports { add17_2653_out { O 32 vector } add17_2653_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20175 \
    name add17_2552_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_2552_out \
    op interface \
    ports { add17_2552_out { O 32 vector } add17_2552_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20176 \
    name add17_2451_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_2451_out \
    op interface \
    ports { add17_2451_out { O 32 vector } add17_2451_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20177 \
    name add17_2350_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_2350_out \
    op interface \
    ports { add17_2350_out { O 32 vector } add17_2350_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20178 \
    name add17_2249_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_2249_out \
    op interface \
    ports { add17_2249_out { O 32 vector } add17_2249_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20179 \
    name add17_2148_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_2148_out \
    op interface \
    ports { add17_2148_out { O 32 vector } add17_2148_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20180 \
    name add17_2047_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_2047_out \
    op interface \
    ports { add17_2047_out { O 32 vector } add17_2047_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20181 \
    name add17_1946_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_1946_out \
    op interface \
    ports { add17_1946_out { O 32 vector } add17_1946_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20182 \
    name add17_1845_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_1845_out \
    op interface \
    ports { add17_1845_out { O 32 vector } add17_1845_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20183 \
    name add17_1744_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_1744_out \
    op interface \
    ports { add17_1744_out { O 32 vector } add17_1744_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20184 \
    name add17_1643_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_1643_out \
    op interface \
    ports { add17_1643_out { O 32 vector } add17_1643_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20185 \
    name add17_1542_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_1542_out \
    op interface \
    ports { add17_1542_out { O 32 vector } add17_1542_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20186 \
    name add17_1441_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_1441_out \
    op interface \
    ports { add17_1441_out { O 32 vector } add17_1441_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20187 \
    name add17_1340_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_1340_out \
    op interface \
    ports { add17_1340_out { O 32 vector } add17_1340_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20188 \
    name add17_1239_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_1239_out \
    op interface \
    ports { add17_1239_out { O 32 vector } add17_1239_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20189 \
    name add17_1138_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_1138_out \
    op interface \
    ports { add17_1138_out { O 32 vector } add17_1138_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20190 \
    name add17_1037_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_1037_out \
    op interface \
    ports { add17_1037_out { O 32 vector } add17_1037_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20191 \
    name add17_936_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_936_out \
    op interface \
    ports { add17_936_out { O 32 vector } add17_936_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20192 \
    name add17_835_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_835_out \
    op interface \
    ports { add17_835_out { O 32 vector } add17_835_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20193 \
    name add17_734_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_734_out \
    op interface \
    ports { add17_734_out { O 32 vector } add17_734_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20194 \
    name add17_633_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_633_out \
    op interface \
    ports { add17_633_out { O 32 vector } add17_633_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20195 \
    name add17_532_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_532_out \
    op interface \
    ports { add17_532_out { O 32 vector } add17_532_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20196 \
    name add17_431_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_431_out \
    op interface \
    ports { add17_431_out { O 32 vector } add17_431_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20197 \
    name add17_330_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_330_out \
    op interface \
    ports { add17_330_out { O 32 vector } add17_330_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20198 \
    name add17_229_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_229_out \
    op interface \
    ports { add17_229_out { O 32 vector } add17_229_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20199 \
    name add17_128_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add17_128_out \
    op interface \
    ports { add17_128_out { O 32 vector } add17_128_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20200 \
    name add177_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add177_out \
    op interface \
    ports { add177_out { O 32 vector } add177_out_ap_vld { O 1 bit } } \
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


