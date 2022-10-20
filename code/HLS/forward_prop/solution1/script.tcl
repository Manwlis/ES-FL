############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project forward_prop
set_top accel
add_files forward_prop/src/forward_prop.hpp
add_files forward_prop/src/forward_prop.cpp
add_files -tb forward_prop/src/testbench.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb forward_prop/src/activations
add_files -tb forward_prop/src/temp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vitis
set_part {xcvu5p-flva2104-1-e}
create_clock -period 10 -name default
config_compile -unsafe_math_optimizations
config_interface -m_axi_alignment_byte_size 64 -m_axi_latency 64 -m_axi_max_widen_bitwidth 512
config_rtl -register_reset_num 3
source "./forward_prop/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design -enable_dataflow_profiling
export_design -format ip_catalog
