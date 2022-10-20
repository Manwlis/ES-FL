############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project softmax_10_bp
set_top accel
add_files softmax_10_bp/src/softmax_10_bp.cpp
add_files softmax_10_bp/src/softmax_10_bp.hpp
add_files -tb softmax_10_bp/src/testbench.cpp
add_files -tb softmax_10_bp/src/output_gradients
add_files -tb softmax_10_bp/src/temp
open_solution "solution1" -flow_target vitis
set_part {xczu9eg-ffvb1156-2-e}
create_clock -period 10 -name default
config_compile -unsafe_math_optimizations
source "./softmax_10_bp/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design -enable_dataflow_profiling
export_design -format ip_catalog
