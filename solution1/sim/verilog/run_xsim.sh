
/state/opt/Xilinx/Vivado/2019.1/bin/xelab xil_defaultlib.apatb_mem_top glbl -prj mem.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm --initfile "/state/opt/Xilinx/Vivado/2019.1/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s mem 
/state/opt/Xilinx/Vivado/2019.1/bin/xsim --noieeewarnings mem -tclbatch mem.tcl

