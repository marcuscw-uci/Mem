// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _mem_HH_
#define _mem_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "mem_saved.h"

namespace ap_rtl {

struct mem : public sc_module {
    // Port declarations 11
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<7> > addr;
    sc_in< sc_lv<1> > we;
    sc_in< sc_lv<1> > re;
    sc_out< sc_lv<8> > out_r;
    sc_out< sc_logic > out_r_ap_vld;


    // Module declarations
    mem(sc_module_name name);
    SC_HAS_PROCESS(mem);

    ~mem();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    mem_saved* saved_U;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<7> > saved_address0;
    sc_signal< sc_logic > saved_ce0;
    sc_signal< sc_logic > saved_we0;
    sc_signal< sc_lv<8> > saved_q0;
    sc_signal< sc_lv<8> > tempOutVal;
    sc_signal< sc_lv<7> > tempOutAddr;
    sc_signal< sc_lv<7> > addr_read_reg_132;
    sc_signal< sc_lv<7> > saved_addr_reg_138;
    sc_signal< sc_lv<64> > sext_ln11_fu_78_p1;
    sc_signal< sc_lv<8> > temp1_2_fu_89_p3;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln22_fu_102_p2;
    sc_signal< sc_lv<1> > re_read_read_fu_46_p2;
    sc_signal< sc_lv<8> > sext_ln23_fu_108_p1;
    sc_signal< sc_lv<8> > sext_ln32_fu_127_p1;
    sc_signal< sc_lv<7> > sext_ln11_fu_78_p0;
    sc_signal< sc_lv<8> > temp1_1_fu_83_p2;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_fsm_state1;
    static const sc_lv<2> ap_ST_fsm_state2;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<8> ap_const_lv8_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_icmp_ln22_fu_102_p2();
    void thread_out_r();
    void thread_out_r_ap_vld();
    void thread_re_read_read_fu_46_p2();
    void thread_saved_address0();
    void thread_saved_ce0();
    void thread_saved_we0();
    void thread_sext_ln11_fu_78_p0();
    void thread_sext_ln11_fu_78_p1();
    void thread_sext_ln23_fu_108_p1();
    void thread_sext_ln32_fu_127_p1();
    void thread_temp1_1_fu_83_p2();
    void thread_temp1_2_fu_89_p3();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
