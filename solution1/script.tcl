############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Mem
set_top mem
add_files Mem/.settings/mem.c
add_files -tb Mem/.settings/mem_test.c -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7vx485t-ffg1157-1}
create_clock -period 10 -name default
config_sdx -target none
config_export -vivado_optimization_level 2 -vivado_phys_opt place -vivado_report_level 0
set_clock_uncertainty 12.5%
source "./Mem/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all -compiled_library_dir "/DFS-L/DATA/atlas/psundara/xilinx/compiled_libraries/v2019.1" -tool modelsim
export_design -format ip_catalog
