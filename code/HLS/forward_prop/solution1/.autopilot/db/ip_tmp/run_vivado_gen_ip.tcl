create_project prj -part xcvu5p-flva2104-1-e -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/home/msi/ES-FL/code/HLS/forward_prop/solution1/syn/verilog/accel_fmul_32ns_32ns_32_2_max_dsp_1_ip.tcl"
source "/home/msi/ES-FL/code/HLS/forward_prop/solution1/syn/verilog/accel_faddfsub_32ns_32ns_32_3_full_dsp_1_ip.tcl"
source "/home/msi/ES-FL/code/HLS/forward_prop/solution1/syn/verilog/accel_flog_32ns_32ns_32_6_full_dsp_1_ip.tcl"
source "/home/msi/ES-FL/code/HLS/forward_prop/solution1/syn/verilog/accel_fadd_32ns_32ns_32_3_full_dsp_1_ip.tcl"
source "/home/msi/ES-FL/code/HLS/forward_prop/solution1/syn/verilog/accel_fcmp_32ns_32ns_1_2_no_dsp_1_ip.tcl"
source "/home/msi/ES-FL/code/HLS/forward_prop/solution1/syn/verilog/accel_fexp_32ns_32ns_32_5_full_dsp_1_ip.tcl"
