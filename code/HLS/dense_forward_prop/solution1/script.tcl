############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project dense_forward_prop
set_top accel
add_files dense_forward_prop/src/dense_128_fwp.hpp
add_files dense_forward_prop/src/dense_128_fwp.cpp
add_files -tb dense_forward_prop/src/temp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb dense_forward_prop/src/testbench.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vitis
set_part {xczu9eg-ffvb1156-2-e}
create_clock -period 10 -name default
source "./dense_forward_prop/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design -enable_dataflow_profiling
export_design -format ip_catalog
