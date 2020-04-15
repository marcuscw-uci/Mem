// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// apint = uint1
#define uint1 bool
// apint = uint7
#define uint7 char
// apint = uint8
#define uint8 char

// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "addr"
#define AUTOTB_TVIN_addr  "../tv/cdatafile/c.mem.autotvin_addr.dat"
// wrapc file define: "we"
#define AUTOTB_TVIN_we  "../tv/cdatafile/c.mem.autotvin_we.dat"
// wrapc file define: "re"
#define AUTOTB_TVIN_re  "../tv/cdatafile/c.mem.autotvin_re.dat"
// wrapc file define: "out_r"
#define AUTOTB_TVOUT_out_r  "../tv/cdatafile/c.mem.autotvout_out_r.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "out_r"
#define AUTOTB_TVOUT_PC_out_r  "../tv/rtldatafile/rtl.mem.autotvout_out_r.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			addr_depth = 0;
			we_depth = 0;
			re_depth = 0;
			out_r_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{addr " << addr_depth << "}\n";
			total_list << "{we " << we_depth << "}\n";
			total_list << "{re " << re_depth << "}\n";
			total_list << "{out_r " << out_r_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int addr_depth;
		int we_depth;
		int re_depth;
		int out_r_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern "C" void mem (
uint7 addr,
uint1 we,
uint1 re,
uint8* out);

extern "C" void AESL_WRAP_mem (
uint7 addr,
uint1 we,
uint1 re,
uint8* out)
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "out_r"
		aesl_fh.read(AUTOTB_TVOUT_PC_out_r, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_out_r, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_out_r, AESL_token); // data

			sc_bv<8> *out_r_pc_buffer = new sc_bv<8>[1];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_r', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_r', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					out_r_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_out_r, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_out_r))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: out_r
				{
					// bitslice(7, 0)
					// {
						// celement: out(7, 0)
						// {
							sc_lv<8>* out_lv0_0_0_1 = new sc_lv<8>[1];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: out(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(out[0]) != NULL) // check the null address if the c port is array or others
								{
									out_lv0_0_0_1[hls_map_index].range(7, 0) = sc_bv<8>(out_r_pc_buffer[hls_map_index].range(7, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: out(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : out[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : out[0]
								// output_left_conversion : out[i_0]
								// output_type_conversion : (out_lv0_0_0_1[hls_map_index]).to_uint64()
								if (&(out[0]) != NULL) // check the null address if the c port is array or others
								{
									out[i_0] = (out_lv0_0_0_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] out_r_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "addr"
		char* tvin_addr = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_addr);

		// "we"
		char* tvin_we = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_we);

		// "re"
		char* tvin_re = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_re);

		// "out_r"
		char* tvout_out_r = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_out_r);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_addr, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_addr, tvin_addr);

		sc_bv<7> addr_tvin_wrapc_buffer;

		// RTL Name: addr
		{
			// bitslice(6, 0)
			{
				// celement: addr(6, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : addr
						// sub_1st_elem          : 
						// ori_name_1st_elem     : addr
						// regulate_c_name       : addr
						// input_type_conversion : addr
						if (&(addr) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<7> addr_tmp_mem;
							addr_tmp_mem = addr;
							addr_tvin_wrapc_buffer.range(6, 0) = addr_tmp_mem.range(6, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_addr, "%s\n", (addr_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_addr, tvin_addr);
		}

		tcl_file.set_num(1, &tcl_file.addr_depth);
		sprintf(tvin_addr, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_addr, tvin_addr);

		// [[transaction]]
		sprintf(tvin_we, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_we, tvin_we);

		sc_bv<1> we_tvin_wrapc_buffer;

		// RTL Name: we
		{
			// bitslice(0, 0)
			{
				// celement: we(0, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : we
						// sub_1st_elem          : 
						// ori_name_1st_elem     : we
						// regulate_c_name       : we
						// input_type_conversion : we
						if (&(we) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> we_tmp_mem;
							we_tmp_mem = we;
							we_tvin_wrapc_buffer.range(0, 0) = we_tmp_mem.range(0, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_we, "%s\n", (we_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_we, tvin_we);
		}

		tcl_file.set_num(1, &tcl_file.we_depth);
		sprintf(tvin_we, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_we, tvin_we);

		// [[transaction]]
		sprintf(tvin_re, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_re, tvin_re);

		sc_bv<1> re_tvin_wrapc_buffer;

		// RTL Name: re
		{
			// bitslice(0, 0)
			{
				// celement: re(0, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : re
						// sub_1st_elem          : 
						// ori_name_1st_elem     : re
						// regulate_c_name       : re
						// input_type_conversion : re
						if (&(re) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> re_tmp_mem;
							re_tmp_mem = re;
							re_tvin_wrapc_buffer.range(0, 0) = re_tmp_mem.range(0, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_re, "%s\n", (re_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_re, tvin_re);
		}

		tcl_file.set_num(1, &tcl_file.re_depth);
		sprintf(tvin_re, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_re, tvin_re);

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		mem(addr, we, re, out);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_out_r, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_out_r, tvout_out_r);

		sc_bv<8>* out_r_tvout_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: out_r
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: out(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out[0]
						// regulate_c_name       : out
						// input_type_conversion : out[i_0]
						if (&(out[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> out_tmp_mem;
							out_tmp_mem = out[i_0];
							out_r_tvout_wrapc_buffer[hls_map_index].range(7, 0) = out_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_out_r, "%s\n", (out_r_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_out_r, tvout_out_r);
		}

		tcl_file.set_num(1, &tcl_file.out_r_depth);
		sprintf(tvout_out_r, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_out_r, tvout_out_r);

		// release memory allocation
		delete [] out_r_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "addr"
		delete [] tvin_addr;
		// release memory allocation: "we"
		delete [] tvin_we;
		// release memory allocation: "re"
		delete [] tvin_re;
		// release memory allocation: "out_r"
		delete [] tvout_out_r;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}


// apint = uint1
#undef uint1

// apint = uint7
#undef uint7

// apint = uint8
#undef uint8
