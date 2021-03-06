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
    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter3;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<7> > saved_address0;
    sc_signal< sc_logic > saved_ce0;
    sc_signal< sc_lv<8> > saved_q0;
    sc_signal< sc_lv<7> > saved_address1;
    sc_signal< sc_logic > saved_ce1;
    sc_signal< sc_logic > saved_we1;
    sc_signal< sc_lv<8> > saved_d1;
    sc_signal< sc_lv<8> > store;
    sc_signal< sc_lv<7> > tempOutAddr;
    sc_signal< sc_lv<7> > prevAddr;
    sc_signal< sc_lv<8> > tempOutVal;
    sc_signal< sc_lv<1> > re_read_reg_210;
    sc_signal< sc_lv<1> > re_read_reg_210_pp0_iter1_reg;
    sc_signal< sc_lv<1> > re_read_reg_210_pp0_iter2_reg;
    sc_signal< sc_lv<1> > we_read_reg_214;
    sc_signal< sc_lv<1> > we_read_reg_214_pp0_iter1_reg;
    sc_signal< sc_lv<1> > we_read_reg_214_pp0_iter2_reg;
    sc_signal< sc_lv<7> > addr_read_reg_218;
    sc_signal< sc_lv<7> > addr_read_reg_218_pp0_iter1_reg;
    sc_signal< sc_lv<7> > addr_read_reg_218_pp0_iter2_reg;
    sc_signal< sc_lv<7> > saved_addr_reg_227;
    sc_signal< sc_lv<7> > saved_addr_reg_227_pp0_iter1_reg;
    sc_signal< sc_lv<7> > saved_addr_reg_227_pp0_iter2_reg;
    sc_signal< sc_lv<8> > temp_reg_233;
    sc_signal< sc_lv<1> > or_ln17_fu_130_p2;
    sc_signal< sc_lv<1> > or_ln17_reg_238;
    sc_signal< sc_lv<8> > temp2_1_fu_136_p2;
    sc_signal< sc_lv<8> > temp2_1_reg_242;
    sc_signal< sc_lv<1> > icmp_ln20_fu_148_p2;
    sc_signal< sc_lv<1> > icmp_ln20_reg_247;
    sc_signal< sc_lv<8> > temp_1_fu_160_p2;
    sc_signal< sc_lv<8> > temp_1_reg_251;
    sc_signal< sc_lv<1> > icmp_ln39_fu_165_p2;
    sc_signal< sc_lv<1> > icmp_ln39_reg_256;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_lv<64> > zext_ln9_fu_102_p1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<8> > zext_ln58_fu_187_p1;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<8> > zext_ln24_fu_192_p1;
    sc_signal< sc_lv<8> > zext_ln28_fu_196_p1;
    sc_signal< sc_lv<8> > zext_ln43_fu_201_p1;
    sc_signal< sc_lv<8> > zext_ln47_fu_205_p1;
    sc_signal< sc_lv<1> > icmp_ln17_fu_115_p2;
    sc_signal< sc_lv<1> > icmp_ln17_1_fu_124_p2;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0_0to2;
    sc_signal< sc_logic > ap_reset_idle_pp0;
    sc_signal< bool > ap_block_pp0;
    sc_signal< bool > ap_enable_operation_10;
    sc_signal< bool > ap_enable_state1_pp0_iter0_stage0;
    sc_signal< bool > ap_enable_operation_12;
    sc_signal< bool > ap_enable_state2_pp0_iter1_stage0;
    sc_signal< bool > ap_predicate_op58_store_state4;
    sc_signal< bool > ap_enable_operation_58;
    sc_signal< bool > ap_enable_state4_pp0_iter3_stage0;
    sc_signal< bool > ap_predicate_op69_store_state4;
    sc_signal< bool > ap_enable_operation_69;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< bool > ap_condition_137;
    sc_signal< bool > ap_condition_283;
    sc_signal< bool > ap_condition_142;
    sc_signal< bool > ap_condition_288;
    sc_signal< bool > ap_condition_280;
    sc_signal< bool > ap_condition_293;
    sc_signal< bool > ap_condition_226;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_fsm_pp0_stage0;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<8> ap_const_lv8_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_block_pp0();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1_pp0_stage0_iter0();
    void thread_ap_block_state2_pp0_stage0_iter1();
    void thread_ap_block_state3_pp0_stage0_iter2();
    void thread_ap_block_state4_pp0_stage0_iter3();
    void thread_ap_condition_137();
    void thread_ap_condition_142();
    void thread_ap_condition_226();
    void thread_ap_condition_280();
    void thread_ap_condition_283();
    void thread_ap_condition_288();
    void thread_ap_condition_293();
    void thread_ap_done();
    void thread_ap_enable_operation_10();
    void thread_ap_enable_operation_12();
    void thread_ap_enable_operation_58();
    void thread_ap_enable_operation_69();
    void thread_ap_enable_pp0();
    void thread_ap_enable_reg_pp0_iter0();
    void thread_ap_enable_state1_pp0_iter0_stage0();
    void thread_ap_enable_state2_pp0_iter1_stage0();
    void thread_ap_enable_state4_pp0_iter3_stage0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp0_0to2();
    void thread_ap_predicate_op58_store_state4();
    void thread_ap_predicate_op69_store_state4();
    void thread_ap_ready();
    void thread_ap_reset_idle_pp0();
    void thread_icmp_ln17_1_fu_124_p2();
    void thread_icmp_ln17_fu_115_p2();
    void thread_icmp_ln20_fu_148_p2();
    void thread_icmp_ln39_fu_165_p2();
    void thread_or_ln17_fu_130_p2();
    void thread_out_r();
    void thread_out_r_ap_vld();
    void thread_saved_address0();
    void thread_saved_address1();
    void thread_saved_ce0();
    void thread_saved_ce1();
    void thread_saved_d1();
    void thread_saved_we1();
    void thread_temp2_1_fu_136_p2();
    void thread_temp_1_fu_160_p2();
    void thread_zext_ln24_fu_192_p1();
    void thread_zext_ln28_fu_196_p1();
    void thread_zext_ln43_fu_201_p1();
    void thread_zext_ln47_fu_205_p1();
    void thread_zext_ln58_fu_187_p1();
    void thread_zext_ln9_fu_102_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
