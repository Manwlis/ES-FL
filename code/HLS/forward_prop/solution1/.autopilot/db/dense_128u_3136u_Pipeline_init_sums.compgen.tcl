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
    id 19775 \
    name biases \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename biases \
    op interface \
    ports { biases_address0 { O 7 vector } biases_ce0 { O 1 bit } biases_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'biases'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19776 \
    name kernel_sum_127_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_127_out \
    op interface \
    ports { kernel_sum_127_out { O 32 vector } kernel_sum_127_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19777 \
    name kernel_sum_126_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_126_out \
    op interface \
    ports { kernel_sum_126_out { O 32 vector } kernel_sum_126_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19778 \
    name kernel_sum_125_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_125_out \
    op interface \
    ports { kernel_sum_125_out { O 32 vector } kernel_sum_125_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19779 \
    name kernel_sum_124_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_124_out \
    op interface \
    ports { kernel_sum_124_out { O 32 vector } kernel_sum_124_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19780 \
    name kernel_sum_123_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_123_out \
    op interface \
    ports { kernel_sum_123_out { O 32 vector } kernel_sum_123_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19781 \
    name kernel_sum_122_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_122_out \
    op interface \
    ports { kernel_sum_122_out { O 32 vector } kernel_sum_122_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19782 \
    name kernel_sum_121_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_121_out \
    op interface \
    ports { kernel_sum_121_out { O 32 vector } kernel_sum_121_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19783 \
    name kernel_sum_120_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_120_out \
    op interface \
    ports { kernel_sum_120_out { O 32 vector } kernel_sum_120_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19784 \
    name kernel_sum_119_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_119_out \
    op interface \
    ports { kernel_sum_119_out { O 32 vector } kernel_sum_119_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19785 \
    name kernel_sum_118_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_118_out \
    op interface \
    ports { kernel_sum_118_out { O 32 vector } kernel_sum_118_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19786 \
    name kernel_sum_117_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_117_out \
    op interface \
    ports { kernel_sum_117_out { O 32 vector } kernel_sum_117_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19787 \
    name kernel_sum_116_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_116_out \
    op interface \
    ports { kernel_sum_116_out { O 32 vector } kernel_sum_116_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19788 \
    name kernel_sum_115_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_115_out \
    op interface \
    ports { kernel_sum_115_out { O 32 vector } kernel_sum_115_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19789 \
    name kernel_sum_114_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_114_out \
    op interface \
    ports { kernel_sum_114_out { O 32 vector } kernel_sum_114_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19790 \
    name kernel_sum_113_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_113_out \
    op interface \
    ports { kernel_sum_113_out { O 32 vector } kernel_sum_113_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19791 \
    name kernel_sum_112_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_112_out \
    op interface \
    ports { kernel_sum_112_out { O 32 vector } kernel_sum_112_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19792 \
    name kernel_sum_111_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_111_out \
    op interface \
    ports { kernel_sum_111_out { O 32 vector } kernel_sum_111_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19793 \
    name kernel_sum_110_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_110_out \
    op interface \
    ports { kernel_sum_110_out { O 32 vector } kernel_sum_110_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19794 \
    name kernel_sum_109_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_109_out \
    op interface \
    ports { kernel_sum_109_out { O 32 vector } kernel_sum_109_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19795 \
    name kernel_sum_108_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_108_out \
    op interface \
    ports { kernel_sum_108_out { O 32 vector } kernel_sum_108_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19796 \
    name kernel_sum_107_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_107_out \
    op interface \
    ports { kernel_sum_107_out { O 32 vector } kernel_sum_107_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19797 \
    name kernel_sum_106_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_106_out \
    op interface \
    ports { kernel_sum_106_out { O 32 vector } kernel_sum_106_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19798 \
    name kernel_sum_105_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_105_out \
    op interface \
    ports { kernel_sum_105_out { O 32 vector } kernel_sum_105_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19799 \
    name kernel_sum_104_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_104_out \
    op interface \
    ports { kernel_sum_104_out { O 32 vector } kernel_sum_104_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19800 \
    name kernel_sum_103_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_103_out \
    op interface \
    ports { kernel_sum_103_out { O 32 vector } kernel_sum_103_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19801 \
    name kernel_sum_102_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_102_out \
    op interface \
    ports { kernel_sum_102_out { O 32 vector } kernel_sum_102_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19802 \
    name kernel_sum_101_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_101_out \
    op interface \
    ports { kernel_sum_101_out { O 32 vector } kernel_sum_101_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19803 \
    name kernel_sum_100_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_100_out \
    op interface \
    ports { kernel_sum_100_out { O 32 vector } kernel_sum_100_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19804 \
    name kernel_sum_99_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_99_out \
    op interface \
    ports { kernel_sum_99_out { O 32 vector } kernel_sum_99_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19805 \
    name kernel_sum_98_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_98_out \
    op interface \
    ports { kernel_sum_98_out { O 32 vector } kernel_sum_98_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19806 \
    name kernel_sum_97_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_97_out \
    op interface \
    ports { kernel_sum_97_out { O 32 vector } kernel_sum_97_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19807 \
    name kernel_sum_96_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_96_out \
    op interface \
    ports { kernel_sum_96_out { O 32 vector } kernel_sum_96_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19808 \
    name kernel_sum_95_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_95_out \
    op interface \
    ports { kernel_sum_95_out { O 32 vector } kernel_sum_95_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19809 \
    name kernel_sum_94_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_94_out \
    op interface \
    ports { kernel_sum_94_out { O 32 vector } kernel_sum_94_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19810 \
    name kernel_sum_93_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_93_out \
    op interface \
    ports { kernel_sum_93_out { O 32 vector } kernel_sum_93_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19811 \
    name kernel_sum_92_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_92_out \
    op interface \
    ports { kernel_sum_92_out { O 32 vector } kernel_sum_92_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19812 \
    name kernel_sum_91_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_91_out \
    op interface \
    ports { kernel_sum_91_out { O 32 vector } kernel_sum_91_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19813 \
    name kernel_sum_90_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_90_out \
    op interface \
    ports { kernel_sum_90_out { O 32 vector } kernel_sum_90_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19814 \
    name kernel_sum_89_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_89_out \
    op interface \
    ports { kernel_sum_89_out { O 32 vector } kernel_sum_89_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19815 \
    name kernel_sum_88_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_88_out \
    op interface \
    ports { kernel_sum_88_out { O 32 vector } kernel_sum_88_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19816 \
    name kernel_sum_87_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_87_out \
    op interface \
    ports { kernel_sum_87_out { O 32 vector } kernel_sum_87_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19817 \
    name kernel_sum_86_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_86_out \
    op interface \
    ports { kernel_sum_86_out { O 32 vector } kernel_sum_86_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19818 \
    name kernel_sum_85_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_85_out \
    op interface \
    ports { kernel_sum_85_out { O 32 vector } kernel_sum_85_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19819 \
    name kernel_sum_84_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_84_out \
    op interface \
    ports { kernel_sum_84_out { O 32 vector } kernel_sum_84_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19820 \
    name kernel_sum_83_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_83_out \
    op interface \
    ports { kernel_sum_83_out { O 32 vector } kernel_sum_83_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19821 \
    name kernel_sum_82_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_82_out \
    op interface \
    ports { kernel_sum_82_out { O 32 vector } kernel_sum_82_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19822 \
    name kernel_sum_81_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_81_out \
    op interface \
    ports { kernel_sum_81_out { O 32 vector } kernel_sum_81_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19823 \
    name kernel_sum_80_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_80_out \
    op interface \
    ports { kernel_sum_80_out { O 32 vector } kernel_sum_80_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19824 \
    name kernel_sum_79_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_79_out \
    op interface \
    ports { kernel_sum_79_out { O 32 vector } kernel_sum_79_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19825 \
    name kernel_sum_78_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_78_out \
    op interface \
    ports { kernel_sum_78_out { O 32 vector } kernel_sum_78_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19826 \
    name kernel_sum_77_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_77_out \
    op interface \
    ports { kernel_sum_77_out { O 32 vector } kernel_sum_77_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19827 \
    name kernel_sum_76_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_76_out \
    op interface \
    ports { kernel_sum_76_out { O 32 vector } kernel_sum_76_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19828 \
    name kernel_sum_75_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_75_out \
    op interface \
    ports { kernel_sum_75_out { O 32 vector } kernel_sum_75_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19829 \
    name kernel_sum_74_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_74_out \
    op interface \
    ports { kernel_sum_74_out { O 32 vector } kernel_sum_74_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19830 \
    name kernel_sum_73_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_73_out \
    op interface \
    ports { kernel_sum_73_out { O 32 vector } kernel_sum_73_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19831 \
    name kernel_sum_72_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_72_out \
    op interface \
    ports { kernel_sum_72_out { O 32 vector } kernel_sum_72_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19832 \
    name kernel_sum_71_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_71_out \
    op interface \
    ports { kernel_sum_71_out { O 32 vector } kernel_sum_71_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19833 \
    name kernel_sum_70_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_70_out \
    op interface \
    ports { kernel_sum_70_out { O 32 vector } kernel_sum_70_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19834 \
    name kernel_sum_69_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_69_out \
    op interface \
    ports { kernel_sum_69_out { O 32 vector } kernel_sum_69_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19835 \
    name kernel_sum_68_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_68_out \
    op interface \
    ports { kernel_sum_68_out { O 32 vector } kernel_sum_68_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19836 \
    name kernel_sum_67_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_67_out \
    op interface \
    ports { kernel_sum_67_out { O 32 vector } kernel_sum_67_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19837 \
    name kernel_sum_66_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_66_out \
    op interface \
    ports { kernel_sum_66_out { O 32 vector } kernel_sum_66_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19838 \
    name kernel_sum_65_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_65_out \
    op interface \
    ports { kernel_sum_65_out { O 32 vector } kernel_sum_65_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19839 \
    name kernel_sum_64_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_64_out \
    op interface \
    ports { kernel_sum_64_out { O 32 vector } kernel_sum_64_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19840 \
    name kernel_sum_63_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_63_out \
    op interface \
    ports { kernel_sum_63_out { O 32 vector } kernel_sum_63_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19841 \
    name kernel_sum_62_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_62_out \
    op interface \
    ports { kernel_sum_62_out { O 32 vector } kernel_sum_62_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19842 \
    name kernel_sum_61_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_61_out \
    op interface \
    ports { kernel_sum_61_out { O 32 vector } kernel_sum_61_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19843 \
    name kernel_sum_60_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_60_out \
    op interface \
    ports { kernel_sum_60_out { O 32 vector } kernel_sum_60_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19844 \
    name kernel_sum_59_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_59_out \
    op interface \
    ports { kernel_sum_59_out { O 32 vector } kernel_sum_59_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19845 \
    name kernel_sum_58_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_58_out \
    op interface \
    ports { kernel_sum_58_out { O 32 vector } kernel_sum_58_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19846 \
    name kernel_sum_57_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_57_out \
    op interface \
    ports { kernel_sum_57_out { O 32 vector } kernel_sum_57_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19847 \
    name kernel_sum_56_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_56_out \
    op interface \
    ports { kernel_sum_56_out { O 32 vector } kernel_sum_56_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19848 \
    name kernel_sum_55_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_55_out \
    op interface \
    ports { kernel_sum_55_out { O 32 vector } kernel_sum_55_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19849 \
    name kernel_sum_54_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_54_out \
    op interface \
    ports { kernel_sum_54_out { O 32 vector } kernel_sum_54_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19850 \
    name kernel_sum_53_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_53_out \
    op interface \
    ports { kernel_sum_53_out { O 32 vector } kernel_sum_53_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19851 \
    name kernel_sum_52_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_52_out \
    op interface \
    ports { kernel_sum_52_out { O 32 vector } kernel_sum_52_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19852 \
    name kernel_sum_51_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_51_out \
    op interface \
    ports { kernel_sum_51_out { O 32 vector } kernel_sum_51_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19853 \
    name kernel_sum_50_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_50_out \
    op interface \
    ports { kernel_sum_50_out { O 32 vector } kernel_sum_50_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19854 \
    name kernel_sum_49_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_49_out \
    op interface \
    ports { kernel_sum_49_out { O 32 vector } kernel_sum_49_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19855 \
    name kernel_sum_48_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_48_out \
    op interface \
    ports { kernel_sum_48_out { O 32 vector } kernel_sum_48_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19856 \
    name kernel_sum_47_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_47_out \
    op interface \
    ports { kernel_sum_47_out { O 32 vector } kernel_sum_47_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19857 \
    name kernel_sum_46_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_46_out \
    op interface \
    ports { kernel_sum_46_out { O 32 vector } kernel_sum_46_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19858 \
    name kernel_sum_45_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_45_out \
    op interface \
    ports { kernel_sum_45_out { O 32 vector } kernel_sum_45_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19859 \
    name kernel_sum_44_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_44_out \
    op interface \
    ports { kernel_sum_44_out { O 32 vector } kernel_sum_44_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19860 \
    name kernel_sum_43_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_43_out \
    op interface \
    ports { kernel_sum_43_out { O 32 vector } kernel_sum_43_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19861 \
    name kernel_sum_42_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_42_out \
    op interface \
    ports { kernel_sum_42_out { O 32 vector } kernel_sum_42_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19862 \
    name kernel_sum_41_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_41_out \
    op interface \
    ports { kernel_sum_41_out { O 32 vector } kernel_sum_41_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19863 \
    name kernel_sum_40_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_40_out \
    op interface \
    ports { kernel_sum_40_out { O 32 vector } kernel_sum_40_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19864 \
    name kernel_sum_39_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_39_out \
    op interface \
    ports { kernel_sum_39_out { O 32 vector } kernel_sum_39_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19865 \
    name kernel_sum_38_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_38_out \
    op interface \
    ports { kernel_sum_38_out { O 32 vector } kernel_sum_38_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19866 \
    name kernel_sum_37_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_37_out \
    op interface \
    ports { kernel_sum_37_out { O 32 vector } kernel_sum_37_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19867 \
    name kernel_sum_36_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_36_out \
    op interface \
    ports { kernel_sum_36_out { O 32 vector } kernel_sum_36_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19868 \
    name kernel_sum_35_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_35_out \
    op interface \
    ports { kernel_sum_35_out { O 32 vector } kernel_sum_35_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19869 \
    name kernel_sum_34_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_34_out \
    op interface \
    ports { kernel_sum_34_out { O 32 vector } kernel_sum_34_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19870 \
    name kernel_sum_33_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_33_out \
    op interface \
    ports { kernel_sum_33_out { O 32 vector } kernel_sum_33_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19871 \
    name kernel_sum_32_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_32_out \
    op interface \
    ports { kernel_sum_32_out { O 32 vector } kernel_sum_32_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19872 \
    name kernel_sum_31_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_31_out \
    op interface \
    ports { kernel_sum_31_out { O 32 vector } kernel_sum_31_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19873 \
    name kernel_sum_30_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_30_out \
    op interface \
    ports { kernel_sum_30_out { O 32 vector } kernel_sum_30_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19874 \
    name kernel_sum_29_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_29_out \
    op interface \
    ports { kernel_sum_29_out { O 32 vector } kernel_sum_29_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19875 \
    name kernel_sum_28_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_28_out \
    op interface \
    ports { kernel_sum_28_out { O 32 vector } kernel_sum_28_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19876 \
    name kernel_sum_27_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_27_out \
    op interface \
    ports { kernel_sum_27_out { O 32 vector } kernel_sum_27_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19877 \
    name kernel_sum_26_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_26_out \
    op interface \
    ports { kernel_sum_26_out { O 32 vector } kernel_sum_26_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19878 \
    name kernel_sum_25_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_25_out \
    op interface \
    ports { kernel_sum_25_out { O 32 vector } kernel_sum_25_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19879 \
    name kernel_sum_24_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_24_out \
    op interface \
    ports { kernel_sum_24_out { O 32 vector } kernel_sum_24_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19880 \
    name kernel_sum_23_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_23_out \
    op interface \
    ports { kernel_sum_23_out { O 32 vector } kernel_sum_23_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19881 \
    name kernel_sum_22_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_22_out \
    op interface \
    ports { kernel_sum_22_out { O 32 vector } kernel_sum_22_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19882 \
    name kernel_sum_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_21_out \
    op interface \
    ports { kernel_sum_21_out { O 32 vector } kernel_sum_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19883 \
    name kernel_sum_20_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_20_out \
    op interface \
    ports { kernel_sum_20_out { O 32 vector } kernel_sum_20_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19884 \
    name kernel_sum_19_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_19_out \
    op interface \
    ports { kernel_sum_19_out { O 32 vector } kernel_sum_19_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19885 \
    name kernel_sum_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_18_out \
    op interface \
    ports { kernel_sum_18_out { O 32 vector } kernel_sum_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19886 \
    name kernel_sum_17_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_17_out \
    op interface \
    ports { kernel_sum_17_out { O 32 vector } kernel_sum_17_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19887 \
    name kernel_sum_16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_16_out \
    op interface \
    ports { kernel_sum_16_out { O 32 vector } kernel_sum_16_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19888 \
    name kernel_sum_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_15_out \
    op interface \
    ports { kernel_sum_15_out { O 32 vector } kernel_sum_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19889 \
    name kernel_sum_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_14_out \
    op interface \
    ports { kernel_sum_14_out { O 32 vector } kernel_sum_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19890 \
    name kernel_sum_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_13_out \
    op interface \
    ports { kernel_sum_13_out { O 32 vector } kernel_sum_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19891 \
    name kernel_sum_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_12_out \
    op interface \
    ports { kernel_sum_12_out { O 32 vector } kernel_sum_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19892 \
    name kernel_sum_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_11_out \
    op interface \
    ports { kernel_sum_11_out { O 32 vector } kernel_sum_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19893 \
    name kernel_sum_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_10_out \
    op interface \
    ports { kernel_sum_10_out { O 32 vector } kernel_sum_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19894 \
    name kernel_sum_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_9_out \
    op interface \
    ports { kernel_sum_9_out { O 32 vector } kernel_sum_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19895 \
    name kernel_sum_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_8_out \
    op interface \
    ports { kernel_sum_8_out { O 32 vector } kernel_sum_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19896 \
    name kernel_sum_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_7_out \
    op interface \
    ports { kernel_sum_7_out { O 32 vector } kernel_sum_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19897 \
    name kernel_sum_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_6_out \
    op interface \
    ports { kernel_sum_6_out { O 32 vector } kernel_sum_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19898 \
    name kernel_sum_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_5_out \
    op interface \
    ports { kernel_sum_5_out { O 32 vector } kernel_sum_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19899 \
    name kernel_sum_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_4_out \
    op interface \
    ports { kernel_sum_4_out { O 32 vector } kernel_sum_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19900 \
    name kernel_sum_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_3_out \
    op interface \
    ports { kernel_sum_3_out { O 32 vector } kernel_sum_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19901 \
    name kernel_sum_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_2_out \
    op interface \
    ports { kernel_sum_2_out { O 32 vector } kernel_sum_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19902 \
    name kernel_sum_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_1_out \
    op interface \
    ports { kernel_sum_1_out { O 32 vector } kernel_sum_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19903 \
    name kernel_sum_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_kernel_sum_out \
    op interface \
    ports { kernel_sum_out { O 32 vector } kernel_sum_out_ap_vld { O 1 bit } } \
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


