set designtopgroup "Design Top Signals"
add wave -group $designtopgroup
set clockgroup "Clock"
add wave -group $designtopgroup -group $clockgroup
add wave -group $designtopgroup -group $clockgroup /apatb_mem_top/AESL_inst_mem/ap_clk
set resetgroup "Reset"
add wave -group $designtopgroup -group $resetgroup
add wave -group $designtopgroup -group $resetgroup /apatb_mem_top/AESL_inst_mem/ap_rst
set blocksiggroup "Block-level IO Handshake"
add wave -group $designtopgroup -group $blocksiggroup
add wave -group $designtopgroup -group $blocksiggroup /apatb_mem_top/AESL_inst_mem/ap_start
add wave -group $designtopgroup -group $blocksiggroup /apatb_mem_top/AESL_inst_mem/ap_done
add wave -group $designtopgroup -group $blocksiggroup /apatb_mem_top/AESL_inst_mem/ap_idle
add wave -group $designtopgroup -group $blocksiggroup /apatb_mem_top/AESL_inst_mem/ap_ready
set cinputgroup "C Inputs"
add wave -group $designtopgroup -group $cinputgroup
set addr_group addr(wire)
add wave -group $designtopgroup -group $cinputgroup -group $addr_group
add wave -group $designtopgroup -group $cinputgroup -group $addr_group -radix hex /apatb_mem_top/AESL_inst_mem/addr
set we_group we(wire)
add wave -group $designtopgroup -group $cinputgroup -group $we_group
add wave -group $designtopgroup -group $cinputgroup -group $we_group -radix hex /apatb_mem_top/AESL_inst_mem/we
set re_group re(wire)
add wave -group $designtopgroup -group $cinputgroup -group $re_group
add wave -group $designtopgroup -group $cinputgroup -group $re_group -radix hex /apatb_mem_top/AESL_inst_mem/re
set coutputgroup "C Outputs"
add wave -group $designtopgroup -group $coutputgroup
set out_group out(wire)
add wave -group $designtopgroup -group $coutputgroup -group $out_group
add wave -group $designtopgroup -group $coutputgroup -group $out_group -radix hex /apatb_mem_top/AESL_inst_mem/out_r
add wave -group $designtopgroup -group $coutputgroup -group $out_group -color #ffff00 -radix hex /apatb_mem_top/AESL_inst_mem/out_r_ap_vld
set testbenchgroup "Test Bench Signals"
add wave -group $testbenchgroup
set tbcinputgroup "C Inputs"
add wave -group $testbenchgroup -group $tbcinputgroup
set tb_addr_group addr(wire)
add wave -group $testbenchgroup -group $tbcinputgroup -group $tb_addr_group
add wave -group $testbenchgroup -group $tbcinputgroup -group $tb_addr_group -radix hex /apatb_mem_top/addr
set tb_we_group we(wire)
add wave -group $testbenchgroup -group $tbcinputgroup -group $tb_we_group
add wave -group $testbenchgroup -group $tbcinputgroup -group $tb_we_group -radix hex /apatb_mem_top/we
set tb_re_group re(wire)
add wave -group $testbenchgroup -group $tbcinputgroup -group $tb_re_group
add wave -group $testbenchgroup -group $tbcinputgroup -group $tb_re_group -radix hex /apatb_mem_top/re
set tbcoutputgroup "C Outputs"
add wave -group $testbenchgroup -group $tbcoutputgroup
set tb_out_group out(wire)
add wave -group $testbenchgroup -group $tbcoutputgroup -group $tb_out_group
add wave -group $testbenchgroup -group $tbcoutputgroup -group $tb_out_group -radix hex /apatb_mem_top/out_r
add wave -group $testbenchgroup -group $tbcoutputgroup -group $tb_out_group -color #ffff00 -radix hex /apatb_mem_top/out_r_ap_vld
set tbinternalsiggroup "Internal Signals"
add wave -group $testbenchgroup -group $tbinternalsiggroup
set tb_simstatus_group "Simulation Status"
add wave -group $testbenchgroup -group $tbinternalsiggroup -group $tb_simstatus_group
add wave -group $testbenchgroup -group $tbinternalsiggroup -group $tb_simstatus_group -radix hex /apatb_mem_top/AUTOTB_TRANSACTION_NUM
add wave -group $testbenchgroup -group $tbinternalsiggroup -group $tb_simstatus_group -radix hex /apatb_mem_top/ready_cnt
add wave -group $testbenchgroup -group $tbinternalsiggroup -group $tb_simstatus_group -radix hex /apatb_mem_top/done_cnt
set tb_portdepth_group "Port Depth"
add wave -group $testbenchgroup -group $tbinternalsiggroup -group $tb_portdepth_group
add wave -group $testbenchgroup -group $tbinternalsiggroup -group $tb_portdepth_group -radix hex /apatb_mem_top/LENGTH_addr
add wave -group $testbenchgroup -group $tbinternalsiggroup -group $tb_portdepth_group -radix hex /apatb_mem_top/LENGTH_we
add wave -group $testbenchgroup -group $tbinternalsiggroup -group $tb_portdepth_group -radix hex /apatb_mem_top/LENGTH_re
add wave -group $testbenchgroup -group $tbinternalsiggroup -group $tb_portdepth_group -radix hex /apatb_mem_top/LENGTH_out_r
