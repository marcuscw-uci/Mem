#include "mem.h"

void mem(uint7 addr, uint1 we, uint1 re, uint8 *out){

	static uint8 saved[ADDRESSES];
	static uint7 tempOutAddr = 0;
	static uint8 tempOutVal = 0;
	uint8 temp = saved[addr];

	if(we){

		temp++;

		if(temp >= tempOutVal){
			tempOutVal = temp;
			tempOutAddr = addr;
			if(re){
				*out = addr;
			}
		}else{
			if(re){
				*out = tempOutAddr;
			}else;
		}

		saved[addr] = temp;



	}else{
		if(re){
			*out = tempOutAddr;
		}else;
	}




}
