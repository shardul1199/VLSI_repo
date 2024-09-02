// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "k2c_bias_add_2.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic k2c_bias_add_2::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic k2c_bias_add_2::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<14> k2c_bias_add_2::ap_ST_fsm_state1 = "1";
const sc_lv<14> k2c_bias_add_2::ap_ST_fsm_state2 = "10";
const sc_lv<14> k2c_bias_add_2::ap_ST_fsm_state3 = "100";
const sc_lv<14> k2c_bias_add_2::ap_ST_fsm_state4 = "1000";
const sc_lv<14> k2c_bias_add_2::ap_ST_fsm_state5 = "10000";
const sc_lv<14> k2c_bias_add_2::ap_ST_fsm_state6 = "100000";
const sc_lv<14> k2c_bias_add_2::ap_ST_fsm_state7 = "1000000";
const sc_lv<14> k2c_bias_add_2::ap_ST_fsm_state8 = "10000000";
const sc_lv<14> k2c_bias_add_2::ap_ST_fsm_state9 = "100000000";
const sc_lv<14> k2c_bias_add_2::ap_ST_fsm_state10 = "1000000000";
const sc_lv<14> k2c_bias_add_2::ap_ST_fsm_state11 = "10000000000";
const sc_lv<14> k2c_bias_add_2::ap_ST_fsm_state12 = "100000000000";
const sc_lv<14> k2c_bias_add_2::ap_ST_fsm_state13 = "1000000000000";
const sc_lv<14> k2c_bias_add_2::ap_ST_fsm_state14 = "10000000000000";
const sc_lv<32> k2c_bias_add_2::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> k2c_bias_add_2::ap_const_lv32_1 = "1";
const sc_lv<1> k2c_bias_add_2::ap_const_lv1_1 = "1";
const sc_lv<32> k2c_bias_add_2::ap_const_lv32_2 = "10";
const sc_lv<1> k2c_bias_add_2::ap_const_lv1_0 = "0";
const sc_lv<32> k2c_bias_add_2::ap_const_lv32_3 = "11";
const sc_lv<32> k2c_bias_add_2::ap_const_lv32_C = "1100";
const sc_lv<64> k2c_bias_add_2::ap_const_lv64_0 = "0000000000000000000000000000000000000000000000000000000000000000";
const sc_lv<32> k2c_bias_add_2::ap_const_lv32_D = "1101";
const sc_lv<3> k2c_bias_add_2::ap_const_lv3_0 = "000";
const sc_lv<3> k2c_bias_add_2::ap_const_lv3_1 = "1";
const sc_lv<3> k2c_bias_add_2::ap_const_lv3_2 = "10";
const sc_lv<3> k2c_bias_add_2::ap_const_lv3_3 = "11";
const sc_lv<3> k2c_bias_add_2::ap_const_lv3_4 = "100";
const sc_lv<3> k2c_bias_add_2::ap_const_lv3_5 = "101";
const sc_lv<3> k2c_bias_add_2::ap_const_lv3_6 = "110";
const sc_lv<3> k2c_bias_add_2::ap_const_lv3_7 = "111";
const sc_lv<32> k2c_bias_add_2::ap_const_lv32_4 = "100";
const sc_lv<64> k2c_bias_add_2::ap_const_lv64_1 = "1";
const sc_lv<32> k2c_bias_add_2::ap_const_lv32_5 = "101";
const bool k2c_bias_add_2::ap_const_boolean_1 = true;

k2c_bias_add_2::k2c_bias_add_2(sc_module_name name) : sc_module(name), mVcdFile(0) {
    dense_15_bias_array_U = new k2c_bias_add_2_de7jG("dense_15_bias_array_U");
    dense_15_bias_array_U->clk(ap_clk);
    dense_15_bias_array_U->reset(ap_rst);
    dense_15_bias_array_U->address0(dense_15_bias_array_address0);
    dense_15_bias_array_U->ce0(dense_15_bias_array_ce0);
    dense_15_bias_array_U->q0(dense_15_bias_array_q0);
    sample_fadd_32ns_ocq_U268 = new sample_fadd_32ns_ocq<1,9,32,32,32>("sample_fadd_32ns_ocq_U268");
    sample_fadd_32ns_ocq_U268->clk(ap_clk);
    sample_fadd_32ns_ocq_U268->reset(ap_rst);
    sample_fadd_32ns_ocq_U268->din0(tmp_51_reg_389);
    sample_fadd_32ns_ocq_U268->din1(dense_15_bias_array_1_reg_384);
    sample_fadd_32ns_ocq_U268->ce(ap_var_for_const0);
    sample_fadd_32ns_ocq_U268->dout(grp_fu_203_p2);
    sample_mux_864_32rcU_U269 = new sample_mux_864_32rcU<1,1,32,32,32,32,32,32,32,32,64,32>("sample_mux_864_32rcU_U269");
    sample_mux_864_32rcU_U269->din0(A_array_q0);
    sample_mux_864_32rcU_U269->din1(A_array1_q0);
    sample_mux_864_32rcU_U269->din2(A_array2_q0);
    sample_mux_864_32rcU_U269->din3(A_array3_q0);
    sample_mux_864_32rcU_U269->din4(A_array4_q0);
    sample_mux_864_32rcU_U269->din5(A_array5_q0);
    sample_mux_864_32rcU_U269->din6(A_array6_q0);
    sample_mux_864_32rcU_U269->din7(A_array7_q0);
    sample_mux_864_32rcU_U269->din8(tmp_51_fu_280_p9);
    sample_mux_864_32rcU_U269->dout(tmp_51_fu_280_p10);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_A_array1_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( A_array1_addr_reg_344 );
    sensitive << ( ap_CS_fsm_state14 );
    sensitive << ( newIndex_cast_fu_260_p1 );

    SC_METHOD(thread_A_array1_ce0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_A_array1_d0);
    sensitive << ( tmp_s_reg_394 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_A_array1_we0);
    sensitive << ( arrayNo_trunc_reg_334 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_A_array2_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( A_array2_addr_reg_349 );
    sensitive << ( ap_CS_fsm_state14 );
    sensitive << ( newIndex_cast_fu_260_p1 );

    SC_METHOD(thread_A_array2_ce0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_A_array2_d0);
    sensitive << ( tmp_s_reg_394 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_A_array2_we0);
    sensitive << ( arrayNo_trunc_reg_334 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_A_array3_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( A_array3_addr_reg_354 );
    sensitive << ( ap_CS_fsm_state14 );
    sensitive << ( newIndex_cast_fu_260_p1 );

    SC_METHOD(thread_A_array3_ce0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_A_array3_d0);
    sensitive << ( tmp_s_reg_394 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_A_array3_we0);
    sensitive << ( arrayNo_trunc_reg_334 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_A_array4_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( A_array4_addr_reg_359 );
    sensitive << ( ap_CS_fsm_state14 );
    sensitive << ( newIndex_cast_fu_260_p1 );

    SC_METHOD(thread_A_array4_ce0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_A_array4_d0);
    sensitive << ( tmp_s_reg_394 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_A_array4_we0);
    sensitive << ( arrayNo_trunc_reg_334 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_A_array5_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( A_array5_addr_reg_364 );
    sensitive << ( ap_CS_fsm_state14 );
    sensitive << ( newIndex_cast_fu_260_p1 );

    SC_METHOD(thread_A_array5_ce0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_A_array5_d0);
    sensitive << ( tmp_s_reg_394 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_A_array5_we0);
    sensitive << ( arrayNo_trunc_reg_334 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_A_array6_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( A_array6_addr_reg_369 );
    sensitive << ( ap_CS_fsm_state14 );
    sensitive << ( newIndex_cast_fu_260_p1 );

    SC_METHOD(thread_A_array6_ce0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_A_array6_d0);
    sensitive << ( tmp_s_reg_394 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_A_array6_we0);
    sensitive << ( arrayNo_trunc_reg_334 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_A_array7_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( A_array7_addr_reg_374 );
    sensitive << ( ap_CS_fsm_state14 );
    sensitive << ( newIndex_cast_fu_260_p1 );

    SC_METHOD(thread_A_array7_ce0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_A_array7_d0);
    sensitive << ( tmp_s_reg_394 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_A_array7_we0);
    sensitive << ( arrayNo_trunc_reg_334 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_A_array_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( A_array_addr_reg_339 );
    sensitive << ( ap_CS_fsm_state14 );
    sensitive << ( newIndex_cast_fu_260_p1 );

    SC_METHOD(thread_A_array_ce0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_A_array_d0);
    sensitive << ( tmp_s_reg_394 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_A_array_we0);
    sensitive << ( arrayNo_trunc_reg_334 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state13);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state14);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_207_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_207_p2 );

    SC_METHOD(thread_arrayNo_trunc_fu_245_p2);
    sensitive << ( tmp_86_reg_316 );
    sensitive << ( tmp_88_fu_231_p1 );

    SC_METHOD(thread_dense_15_bias_array_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( j_reg_191 );

    SC_METHOD(thread_dense_15_bias_array_ce0);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_exitcond_fu_220_p2);
    sensitive << ( b_numel_read );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( j_reg_191 );

    SC_METHOD(thread_i_34_fu_272_p2);
    sensitive << ( b_numel_read );
    sensitive << ( i_reg_179 );

    SC_METHOD(thread_j_1_fu_225_p2);
    sensitive << ( j_reg_191 );

    SC_METHOD(thread_newIndex_cast_fu_260_p1);
    sensitive << ( newIndex_fu_250_p4 );

    SC_METHOD(thread_newIndex_fu_250_p4);
    sensitive << ( sum_fu_239_p2 );

    SC_METHOD(thread_sum_fu_239_p2);
    sensitive << ( tmp_89_fu_235_p1 );
    sensitive << ( tmp_87_fu_216_p1 );

    SC_METHOD(thread_tmp_51_fu_280_p9);
    sensitive << ( arrayNo_trunc_reg_334 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_tmp_86_fu_212_p1);
    sensitive << ( i_reg_179 );

    SC_METHOD(thread_tmp_87_fu_216_p1);
    sensitive << ( j_reg_191 );

    SC_METHOD(thread_tmp_88_fu_231_p1);
    sensitive << ( j_reg_191 );

    SC_METHOD(thread_tmp_89_fu_235_p1);
    sensitive << ( i_reg_179 );

    SC_METHOD(thread_tmp_fu_207_p2);
    sensitive << ( A_numel_read );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_reg_179 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_207_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( exitcond_fu_220_p2 );

    SC_THREAD(thread_ap_var_for_const0);

    ap_CS_fsm = "00000000000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "k2c_bias_add_2_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, A_array_address0, "(port)A_array_address0");
    sc_trace(mVcdFile, A_array_ce0, "(port)A_array_ce0");
    sc_trace(mVcdFile, A_array_we0, "(port)A_array_we0");
    sc_trace(mVcdFile, A_array_d0, "(port)A_array_d0");
    sc_trace(mVcdFile, A_array_q0, "(port)A_array_q0");
    sc_trace(mVcdFile, A_array1_address0, "(port)A_array1_address0");
    sc_trace(mVcdFile, A_array1_ce0, "(port)A_array1_ce0");
    sc_trace(mVcdFile, A_array1_we0, "(port)A_array1_we0");
    sc_trace(mVcdFile, A_array1_d0, "(port)A_array1_d0");
    sc_trace(mVcdFile, A_array1_q0, "(port)A_array1_q0");
    sc_trace(mVcdFile, A_array2_address0, "(port)A_array2_address0");
    sc_trace(mVcdFile, A_array2_ce0, "(port)A_array2_ce0");
    sc_trace(mVcdFile, A_array2_we0, "(port)A_array2_we0");
    sc_trace(mVcdFile, A_array2_d0, "(port)A_array2_d0");
    sc_trace(mVcdFile, A_array2_q0, "(port)A_array2_q0");
    sc_trace(mVcdFile, A_array3_address0, "(port)A_array3_address0");
    sc_trace(mVcdFile, A_array3_ce0, "(port)A_array3_ce0");
    sc_trace(mVcdFile, A_array3_we0, "(port)A_array3_we0");
    sc_trace(mVcdFile, A_array3_d0, "(port)A_array3_d0");
    sc_trace(mVcdFile, A_array3_q0, "(port)A_array3_q0");
    sc_trace(mVcdFile, A_array4_address0, "(port)A_array4_address0");
    sc_trace(mVcdFile, A_array4_ce0, "(port)A_array4_ce0");
    sc_trace(mVcdFile, A_array4_we0, "(port)A_array4_we0");
    sc_trace(mVcdFile, A_array4_d0, "(port)A_array4_d0");
    sc_trace(mVcdFile, A_array4_q0, "(port)A_array4_q0");
    sc_trace(mVcdFile, A_array5_address0, "(port)A_array5_address0");
    sc_trace(mVcdFile, A_array5_ce0, "(port)A_array5_ce0");
    sc_trace(mVcdFile, A_array5_we0, "(port)A_array5_we0");
    sc_trace(mVcdFile, A_array5_d0, "(port)A_array5_d0");
    sc_trace(mVcdFile, A_array5_q0, "(port)A_array5_q0");
    sc_trace(mVcdFile, A_array6_address0, "(port)A_array6_address0");
    sc_trace(mVcdFile, A_array6_ce0, "(port)A_array6_ce0");
    sc_trace(mVcdFile, A_array6_we0, "(port)A_array6_we0");
    sc_trace(mVcdFile, A_array6_d0, "(port)A_array6_d0");
    sc_trace(mVcdFile, A_array6_q0, "(port)A_array6_q0");
    sc_trace(mVcdFile, A_array7_address0, "(port)A_array7_address0");
    sc_trace(mVcdFile, A_array7_ce0, "(port)A_array7_ce0");
    sc_trace(mVcdFile, A_array7_we0, "(port)A_array7_we0");
    sc_trace(mVcdFile, A_array7_d0, "(port)A_array7_d0");
    sc_trace(mVcdFile, A_array7_q0, "(port)A_array7_q0");
    sc_trace(mVcdFile, A_numel_read, "(port)A_numel_read");
    sc_trace(mVcdFile, b_numel_read, "(port)b_numel_read");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, dense_15_bias_array_address0, "dense_15_bias_array_address0");
    sc_trace(mVcdFile, dense_15_bias_array_ce0, "dense_15_bias_array_ce0");
    sc_trace(mVcdFile, dense_15_bias_array_q0, "dense_15_bias_array_q0");
    sc_trace(mVcdFile, tmp_86_fu_212_p1, "tmp_86_fu_212_p1");
    sc_trace(mVcdFile, tmp_86_reg_316, "tmp_86_reg_316");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, tmp_fu_207_p2, "tmp_fu_207_p2");
    sc_trace(mVcdFile, j_1_fu_225_p2, "j_1_fu_225_p2");
    sc_trace(mVcdFile, j_1_reg_324, "j_1_reg_324");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, exitcond_fu_220_p2, "exitcond_fu_220_p2");
    sc_trace(mVcdFile, arrayNo_trunc_fu_245_p2, "arrayNo_trunc_fu_245_p2");
    sc_trace(mVcdFile, arrayNo_trunc_reg_334, "arrayNo_trunc_reg_334");
    sc_trace(mVcdFile, A_array_addr_reg_339, "A_array_addr_reg_339");
    sc_trace(mVcdFile, A_array1_addr_reg_344, "A_array1_addr_reg_344");
    sc_trace(mVcdFile, A_array2_addr_reg_349, "A_array2_addr_reg_349");
    sc_trace(mVcdFile, A_array3_addr_reg_354, "A_array3_addr_reg_354");
    sc_trace(mVcdFile, A_array4_addr_reg_359, "A_array4_addr_reg_359");
    sc_trace(mVcdFile, A_array5_addr_reg_364, "A_array5_addr_reg_364");
    sc_trace(mVcdFile, A_array6_addr_reg_369, "A_array6_addr_reg_369");
    sc_trace(mVcdFile, A_array7_addr_reg_374, "A_array7_addr_reg_374");
    sc_trace(mVcdFile, i_34_fu_272_p2, "i_34_fu_272_p2");
    sc_trace(mVcdFile, dense_15_bias_array_1_reg_384, "dense_15_bias_array_1_reg_384");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, tmp_51_fu_280_p10, "tmp_51_fu_280_p10");
    sc_trace(mVcdFile, tmp_51_reg_389, "tmp_51_reg_389");
    sc_trace(mVcdFile, grp_fu_203_p2, "grp_fu_203_p2");
    sc_trace(mVcdFile, tmp_s_reg_394, "tmp_s_reg_394");
    sc_trace(mVcdFile, ap_CS_fsm_state13, "ap_CS_fsm_state13");
    sc_trace(mVcdFile, i_reg_179, "i_reg_179");
    sc_trace(mVcdFile, j_reg_191, "j_reg_191");
    sc_trace(mVcdFile, ap_CS_fsm_state14, "ap_CS_fsm_state14");
    sc_trace(mVcdFile, newIndex_cast_fu_260_p1, "newIndex_cast_fu_260_p1");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, tmp_89_fu_235_p1, "tmp_89_fu_235_p1");
    sc_trace(mVcdFile, tmp_87_fu_216_p1, "tmp_87_fu_216_p1");
    sc_trace(mVcdFile, tmp_88_fu_231_p1, "tmp_88_fu_231_p1");
    sc_trace(mVcdFile, sum_fu_239_p2, "sum_fu_239_p2");
    sc_trace(mVcdFile, newIndex_fu_250_p4, "newIndex_fu_250_p4");
    sc_trace(mVcdFile, tmp_51_fu_280_p9, "tmp_51_fu_280_p9");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

k2c_bias_add_2::~k2c_bias_add_2() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete dense_15_bias_array_U;
    delete sample_fadd_32ns_ocq_U268;
    delete sample_mux_864_32rcU_U269;
}

void k2c_bias_add_2::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void k2c_bias_add_2::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_220_p2.read(), ap_const_lv1_1))) {
        i_reg_179 = i_34_fu_272_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_reg_179 = ap_const_lv64_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_fu_207_p2.read(), ap_const_lv1_1))) {
        j_reg_191 = ap_const_lv64_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read())) {
        j_reg_191 = j_1_reg_324.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(exitcond_fu_220_p2.read(), ap_const_lv1_0))) {
        A_array1_addr_reg_344 =  (sc_lv<1>) (newIndex_cast_fu_260_p1.read());
        A_array2_addr_reg_349 =  (sc_lv<1>) (newIndex_cast_fu_260_p1.read());
        A_array3_addr_reg_354 =  (sc_lv<1>) (newIndex_cast_fu_260_p1.read());
        A_array4_addr_reg_359 =  (sc_lv<1>) (newIndex_cast_fu_260_p1.read());
        A_array5_addr_reg_364 =  (sc_lv<1>) (newIndex_cast_fu_260_p1.read());
        A_array6_addr_reg_369 =  (sc_lv<1>) (newIndex_cast_fu_260_p1.read());
        A_array7_addr_reg_374 =  (sc_lv<1>) (newIndex_cast_fu_260_p1.read());
        A_array_addr_reg_339 =  (sc_lv<1>) (newIndex_cast_fu_260_p1.read());
        arrayNo_trunc_reg_334 = arrayNo_trunc_fu_245_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        dense_15_bias_array_1_reg_384 = dense_15_bias_array_q0.read();
        tmp_51_reg_389 = tmp_51_fu_280_p10.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        j_1_reg_324 = j_1_fu_225_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(tmp_fu_207_p2.read(), ap_const_lv1_1))) {
        tmp_86_reg_316 = tmp_86_fu_212_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state13.read())) {
        tmp_s_reg_394 = grp_fu_203_p2.read();
    }
}

void k2c_bias_add_2::thread_A_array1_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read())) {
        A_array1_address0 = A_array1_addr_reg_344.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        A_array1_address0 =  (sc_lv<1>) (newIndex_cast_fu_260_p1.read());
    } else {
        A_array1_address0 = "X";
    }
}

void k2c_bias_add_2::thread_A_array1_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read()))) {
        A_array1_ce0 = ap_const_logic_1;
    } else {
        A_array1_ce0 = ap_const_logic_0;
    }
}

void k2c_bias_add_2::thread_A_array1_d0() {
    A_array1_d0 = tmp_s_reg_394.read();
}

void k2c_bias_add_2::thread_A_array1_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read()) && 
         esl_seteq<1,3,3>(arrayNo_trunc_reg_334.read(), ap_const_lv3_1))) {
        A_array1_we0 = ap_const_logic_1;
    } else {
        A_array1_we0 = ap_const_logic_0;
    }
}

void k2c_bias_add_2::thread_A_array2_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read())) {
        A_array2_address0 = A_array2_addr_reg_349.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        A_array2_address0 =  (sc_lv<1>) (newIndex_cast_fu_260_p1.read());
    } else {
        A_array2_address0 = "X";
    }
}

void k2c_bias_add_2::thread_A_array2_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read()))) {
        A_array2_ce0 = ap_const_logic_1;
    } else {
        A_array2_ce0 = ap_const_logic_0;
    }
}

void k2c_bias_add_2::thread_A_array2_d0() {
    A_array2_d0 = tmp_s_reg_394.read();
}

void k2c_bias_add_2::thread_A_array2_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read()) && 
         esl_seteq<1,3,3>(arrayNo_trunc_reg_334.read(), ap_const_lv3_2))) {
        A_array2_we0 = ap_const_logic_1;
    } else {
        A_array2_we0 = ap_const_logic_0;
    }
}

void k2c_bias_add_2::thread_A_array3_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read())) {
        A_array3_address0 = A_array3_addr_reg_354.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        A_array3_address0 =  (sc_lv<1>) (newIndex_cast_fu_260_p1.read());
    } else {
        A_array3_address0 = "X";
    }
}

void k2c_bias_add_2::thread_A_array3_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read()))) {
        A_array3_ce0 = ap_const_logic_1;
    } else {
        A_array3_ce0 = ap_const_logic_0;
    }
}

void k2c_bias_add_2::thread_A_array3_d0() {
    A_array3_d0 = tmp_s_reg_394.read();
}

void k2c_bias_add_2::thread_A_array3_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read()) && 
         esl_seteq<1,3,3>(arrayNo_trunc_reg_334.read(), ap_const_lv3_3))) {
        A_array3_we0 = ap_const_logic_1;
    } else {
        A_array3_we0 = ap_const_logic_0;
    }
}

void k2c_bias_add_2::thread_A_array4_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read())) {
        A_array4_address0 = A_array4_addr_reg_359.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        A_array4_address0 =  (sc_lv<1>) (newIndex_cast_fu_260_p1.read());
    } else {
        A_array4_address0 = "X";
    }
}

void k2c_bias_add_2::thread_A_array4_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read()))) {
        A_array4_ce0 = ap_const_logic_1;
    } else {
        A_array4_ce0 = ap_const_logic_0;
    }
}

void k2c_bias_add_2::thread_A_array4_d0() {
    A_array4_d0 = tmp_s_reg_394.read();
}

void k2c_bias_add_2::thread_A_array4_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read()) && 
         esl_seteq<1,3,3>(arrayNo_trunc_reg_334.read(), ap_const_lv3_4))) {
        A_array4_we0 = ap_const_logic_1;
    } else {
        A_array4_we0 = ap_const_logic_0;
    }
}

void k2c_bias_add_2::thread_A_array5_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read())) {
        A_array5_address0 = A_array5_addr_reg_364.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        A_array5_address0 =  (sc_lv<1>) (newIndex_cast_fu_260_p1.read());
    } else {
        A_array5_address0 = "X";
    }
}

void k2c_bias_add_2::thread_A_array5_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read()))) {
        A_array5_ce0 = ap_const_logic_1;
    } else {
        A_array5_ce0 = ap_const_logic_0;
    }
}

void k2c_bias_add_2::thread_A_array5_d0() {
    A_array5_d0 = tmp_s_reg_394.read();
}

void k2c_bias_add_2::thread_A_array5_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read()) && 
         esl_seteq<1,3,3>(arrayNo_trunc_reg_334.read(), ap_const_lv3_5))) {
        A_array5_we0 = ap_const_logic_1;
    } else {
        A_array5_we0 = ap_const_logic_0;
    }
}

void k2c_bias_add_2::thread_A_array6_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read())) {
        A_array6_address0 = A_array6_addr_reg_369.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        A_array6_address0 =  (sc_lv<1>) (newIndex_cast_fu_260_p1.read());
    } else {
        A_array6_address0 = "X";
    }
}

void k2c_bias_add_2::thread_A_array6_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read()))) {
        A_array6_ce0 = ap_const_logic_1;
    } else {
        A_array6_ce0 = ap_const_logic_0;
    }
}

void k2c_bias_add_2::thread_A_array6_d0() {
    A_array6_d0 = tmp_s_reg_394.read();
}

void k2c_bias_add_2::thread_A_array6_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read()) && 
         esl_seteq<1,3,3>(arrayNo_trunc_reg_334.read(), ap_const_lv3_6))) {
        A_array6_we0 = ap_const_logic_1;
    } else {
        A_array6_we0 = ap_const_logic_0;
    }
}

void k2c_bias_add_2::thread_A_array7_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read())) {
        A_array7_address0 = A_array7_addr_reg_374.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        A_array7_address0 =  (sc_lv<1>) (newIndex_cast_fu_260_p1.read());
    } else {
        A_array7_address0 = "X";
    }
}

void k2c_bias_add_2::thread_A_array7_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read()))) {
        A_array7_ce0 = ap_const_logic_1;
    } else {
        A_array7_ce0 = ap_const_logic_0;
    }
}

void k2c_bias_add_2::thread_A_array7_d0() {
    A_array7_d0 = tmp_s_reg_394.read();
}

void k2c_bias_add_2::thread_A_array7_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read()) && 
         esl_seteq<1,3,3>(arrayNo_trunc_reg_334.read(), ap_const_lv3_7))) {
        A_array7_we0 = ap_const_logic_1;
    } else {
        A_array7_we0 = ap_const_logic_0;
    }
}

void k2c_bias_add_2::thread_A_array_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read())) {
        A_array_address0 = A_array_addr_reg_339.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        A_array_address0 =  (sc_lv<1>) (newIndex_cast_fu_260_p1.read());
    } else {
        A_array_address0 = "X";
    }
}

void k2c_bias_add_2::thread_A_array_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read()))) {
        A_array_ce0 = ap_const_logic_1;
    } else {
        A_array_ce0 = ap_const_logic_0;
    }
}

void k2c_bias_add_2::thread_A_array_d0() {
    A_array_d0 = tmp_s_reg_394.read();
}

void k2c_bias_add_2::thread_A_array_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read()) && 
         esl_seteq<1,3,3>(arrayNo_trunc_reg_334.read(), ap_const_lv3_0))) {
        A_array_we0 = ap_const_logic_1;
    } else {
        A_array_we0 = ap_const_logic_0;
    }
}

void k2c_bias_add_2::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void k2c_bias_add_2::thread_ap_CS_fsm_state13() {
    ap_CS_fsm_state13 = ap_CS_fsm.read()[12];
}

void k2c_bias_add_2::thread_ap_CS_fsm_state14() {
    ap_CS_fsm_state14 = ap_CS_fsm.read()[13];
}

void k2c_bias_add_2::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void k2c_bias_add_2::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void k2c_bias_add_2::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void k2c_bias_add_2::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void k2c_bias_add_2::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_fu_207_p2.read(), ap_const_lv1_0)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void k2c_bias_add_2::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void k2c_bias_add_2::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_fu_207_p2.read(), ap_const_lv1_0))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void k2c_bias_add_2::thread_arrayNo_trunc_fu_245_p2() {
    arrayNo_trunc_fu_245_p2 = (!tmp_88_fu_231_p1.read().is_01() || !tmp_86_reg_316.read().is_01())? sc_lv<3>(): (sc_biguint<3>(tmp_88_fu_231_p1.read()) + sc_biguint<3>(tmp_86_reg_316.read()));
}

void k2c_bias_add_2::thread_dense_15_bias_array_address0() {
    dense_15_bias_array_address0 =  (sc_lv<4>) (j_reg_191.read());
}

void k2c_bias_add_2::thread_dense_15_bias_array_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        dense_15_bias_array_ce0 = ap_const_logic_1;
    } else {
        dense_15_bias_array_ce0 = ap_const_logic_0;
    }
}

void k2c_bias_add_2::thread_exitcond_fu_220_p2() {
    exitcond_fu_220_p2 = (!j_reg_191.read().is_01() || !b_numel_read.read().is_01())? sc_lv<1>(): sc_lv<1>(j_reg_191.read() == b_numel_read.read());
}

void k2c_bias_add_2::thread_i_34_fu_272_p2() {
    i_34_fu_272_p2 = (!i_reg_179.read().is_01() || !b_numel_read.read().is_01())? sc_lv<64>(): (sc_biguint<64>(i_reg_179.read()) + sc_biguint<64>(b_numel_read.read()));
}

void k2c_bias_add_2::thread_j_1_fu_225_p2() {
    j_1_fu_225_p2 = (!ap_const_lv64_1.is_01() || !j_reg_191.read().is_01())? sc_lv<64>(): (sc_biguint<64>(ap_const_lv64_1) + sc_biguint<64>(j_reg_191.read()));
}

void k2c_bias_add_2::thread_newIndex_cast_fu_260_p1() {
    newIndex_cast_fu_260_p1 = esl_zext<64,3>(newIndex_fu_250_p4.read());
}

void k2c_bias_add_2::thread_newIndex_fu_250_p4() {
    newIndex_fu_250_p4 = sum_fu_239_p2.read().range(5, 3);
}

void k2c_bias_add_2::thread_sum_fu_239_p2() {
    sum_fu_239_p2 = (!tmp_89_fu_235_p1.read().is_01() || !tmp_87_fu_216_p1.read().is_01())? sc_lv<6>(): (sc_biguint<6>(tmp_89_fu_235_p1.read()) + sc_biguint<6>(tmp_87_fu_216_p1.read()));
}

void k2c_bias_add_2::thread_tmp_51_fu_280_p9() {
    tmp_51_fu_280_p9 = esl_zext<64,3>(arrayNo_trunc_reg_334.read());
}

void k2c_bias_add_2::thread_tmp_86_fu_212_p1() {
    tmp_86_fu_212_p1 = i_reg_179.read().range(3-1, 0);
}

void k2c_bias_add_2::thread_tmp_87_fu_216_p1() {
    tmp_87_fu_216_p1 = j_reg_191.read().range(6-1, 0);
}

void k2c_bias_add_2::thread_tmp_88_fu_231_p1() {
    tmp_88_fu_231_p1 = j_reg_191.read().range(3-1, 0);
}

void k2c_bias_add_2::thread_tmp_89_fu_235_p1() {
    tmp_89_fu_235_p1 = i_reg_179.read().range(6-1, 0);
}

void k2c_bias_add_2::thread_tmp_fu_207_p2() {
    tmp_fu_207_p2 = (!i_reg_179.read().is_01() || !A_numel_read.read().is_01())? sc_lv<1>(): (sc_biguint<64>(i_reg_179.read()) < sc_biguint<64>(A_numel_read.read()));
}

void k2c_bias_add_2::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(tmp_fu_207_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(exitcond_fu_220_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state8;
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_fsm_state9;
            break;
        case 256 : 
            ap_NS_fsm = ap_ST_fsm_state10;
            break;
        case 512 : 
            ap_NS_fsm = ap_ST_fsm_state11;
            break;
        case 1024 : 
            ap_NS_fsm = ap_ST_fsm_state12;
            break;
        case 2048 : 
            ap_NS_fsm = ap_ST_fsm_state13;
            break;
        case 4096 : 
            ap_NS_fsm = ap_ST_fsm_state14;
            break;
        case 8192 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<14>) ("XXXXXXXXXXXXXX");
            break;
    }
}

}

