#include "mem.h"

void mem(uint7 addr, uint1 we, uint1 re, uint8 *out){

	static uint8 saved[ADDRESSES];

	static uint7 tempOutAddr = 0;
	static uint8 tempOutVal = 0;
	uint8 temp = saved[addr];

	static uint7 prevAddr;
	static int store;
	uint8 temp2 = store;

	if(we){

		if(addr == prevAddr && tempOutVal != 0){
			temp2++;
			store = temp2;
			if(temp2 >= tempOutVal){
				tempOutVal = temp2;
				tempOutAddr = addr;
				if(re){
					*out = addr;
				}
			}else{
				if(re){
					*out = tempOutAddr;
				}else;
			}

				saved[addr] = temp2;
				prevAddr = addr;


		}else{

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
				prevAddr = addr;
				store = temp;

		}
	}else{
		if(re){
			*out = tempOutAddr;
		}else;
	}




}
