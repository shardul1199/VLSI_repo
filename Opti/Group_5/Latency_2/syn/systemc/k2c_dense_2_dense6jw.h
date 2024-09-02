// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __k2c_dense_2_dense6jw_H__
#define __k2c_dense_2_dense6jw_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct k2c_dense_2_dense6jw_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 32;
  static const unsigned AddressWidth = 5;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(k2c_dense_2_dense6jw_ram) {
        ram[0] = "0b00111011100100010001111010000011";
        ram[1] = "0b00111100111100110010011111101101";
        ram[2] = "0b00111011011100100001000110110010";
        ram[3] = "0b00111100011110011110000101100011";
        ram[4] = "0b00111010101111101110100110010000";
        ram[5] = "0b00111100011101010000100010000100";
        ram[6] = "0b00111101001011001010011000110010";
        ram[7] = "0b10111100001111100110010110110111";
        ram[8] = "0b00111011110111111001011111011100";
        ram[9] = "0b10111100100100010010001100000000";
        ram[10] = "0b00111100000100101000111010100101";
        ram[11] = "0b00111100110010010110110111011111";
        ram[12] = "0b10111011010000010001110100011000";
        ram[13] = "0b00111100110000011110101001011011";
        ram[14] = "0b00111101000010000011100111110010";
        ram[15] = "0b00111101000000101100011000011110";
        ram[16] = "0b10111011010010100100000100111111";
        ram[17] = "0b00111101001110110010111001000101";
        ram[18] = "0b00111101001000111000100111011100";
        ram[19] = "0b10111100011101110100011101111010";
        ram[20] = "0b00111010110001110111110010110100";
        ram[21] = "0b00111101010000000010010001111101";
        ram[22] = "0b10111100011000111100101111101000";
        ram[23] = "0b00111101001011101000000111110010";
        ram[24] = "0b00111101001001100101001101111001";
        ram[25] = "0b00111100100111111001101110010001";
        ram[26] = "0b00111101001010011000110001010110";
        ram[27] = "0b10111100000100101010010011101110";
        ram[28] = "0b00111101000001000111110010101100";
        ram[29] = "0b00111100011010101011010100111101";
        ram[30] = "0b10111100011000000010010111010010";
        ram[31] = "0b00111101001000011101000110101000";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(k2c_dense_2_dense6jw) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


k2c_dense_2_dense6jw_ram* meminst;


SC_CTOR(k2c_dense_2_dense6jw) {
meminst = new k2c_dense_2_dense6jw_ram("k2c_dense_2_dense6jw_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~k2c_dense_2_dense6jw() {
    delete meminst;
}


};//endmodule
#endif
