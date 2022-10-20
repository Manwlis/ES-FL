############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project maxp2d_32_forward_prop
set_top accel
add_files maxp2d_32_forward_prop/src/maxp2d_32_fwp.cpp
add_files maxp2d_32_forward_prop/src/maxp2d_32_fwp.hpp
add_files -tb maxp2d_32_forward_prop/src/testbench.cpp
add_files -tb maxp2d_32_forward_prop/src/temp
open_solution "solution1" -flow_target vitis
set_part {xcvu5p-flva2104-1-e}
create_clock -period 10 -name default
#source "./maxp2d_32_forward_prop/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design -enable_dataflow_profiling
export_design -format ip_catalog
