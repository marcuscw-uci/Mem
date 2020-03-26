#include "mem.h"

void mem(uint7 addr, uint1 we, uint1 re, uint8 *out){

	static uint8 saved[ADDRESSES];
	static uint7 tempOutAddr = 0;
	static uint8 tempOutVal = 0;
	uint8 temp1 = saved[addr];


	if(we){
		temp1++;


		if(temp1 >= tempOutVal){
			tempOutAddr = addr;
			tempOutVal = temp1;
			if(re){
				*out = addr;
			}

		}else{
			if(re){
				*out = tempOutAddr;
			}
		}

		saved[addr] = temp1;

	}else{
		if(re){
			*out = tempOutAddr;
			}
	}


}
