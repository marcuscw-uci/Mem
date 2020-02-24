#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("wr_addr", 7, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("rd_addr", 7, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("we", 1, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("re", 1, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("out_r", 8, hls_out, 4, "ap_vld", "out_data", 1),
	Port_Property("out_r_ap_vld", 1, hls_out, 4, "ap_vld", "out_vld", 1),
};
const char* HLS_Design_Meta::dut_name = "mem";