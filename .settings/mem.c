#include "mem.h"



void mem(int7 addr, int1 we, int1 re, int8 *out){
	static int8 saved[ADDRESSES];
	static int8 tempOutAddr = 0;
	static int8 tempOutVal = 0;
	int8 temp1 = saved[addr];


	if(we){
		temp1++;
		saved[addr] = temp1;
	}else{
		saved[addr] = temp1;
	}


	if(temp1 >= tempOutVal){
		tempOutAddr = addr;
		tempOutVal = temp1;
		if(re){
			*out = addr;
		}
	}

	else{
		if(re){
			*out = tempOutAddr;
		}
	}


}






