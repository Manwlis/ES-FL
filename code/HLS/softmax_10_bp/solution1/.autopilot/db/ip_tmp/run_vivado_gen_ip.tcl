create_project prj -part xczu9eg-ffvb1156-2-e -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/home/msi/ES-FL/code/HLS/softmax_10_bp/solution1/syn/verilog/accel_fsub_32ns_32ns_32_4_full_dsp_1_ip.tcl"
source "/home/msi/ES-FL/code/HLS/softmax_10_bp/solution1/syn/verilog/accel_fmul_32ns_32ns_32_3_max_dsp_1_ip.tcl"
source "/home/msi/ES-FL/code/HLS/softmax_10_bp/solution1/syn/verilog/accel_fadd_32ns_32ns_32_4_full_dsp_1_ip.tcl"
source "/home/msi/ES-FL/code/HLS/softmax_10_bp/solution1/syn/verilog/accel_uitofp_32ns_32_4_no_dsp_1_ip.tcl"
