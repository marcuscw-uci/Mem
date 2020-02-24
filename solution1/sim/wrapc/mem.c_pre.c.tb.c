// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "/data11/home/marcuscw/Desktop/Mem/.settings/mem.c"
# 1 "/data11/home/marcuscw/Desktop/Mem/.settings/mem.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 149 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/data11/home/marcuscw/Desktop/Mem/.settings/mem.c" 2


int mem(int addr, int we, int data){
#pragma HLS INTERFACE ap_none port = addr
#pragma HLS INTERFACE ap_none port = we
#pragma HLS INTERFACE ap_none port = data

 static int stored[8];

 if(we){
  stored[addr] = data;
 }

 return stored[addr];
}
