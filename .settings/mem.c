#define ADDRESSES 128
#include "mem.h"



void mem(int7 wr_addr, int1 we, int1 re, int8 *out){
	static int8 saved[ADDRESSES];
	//Creates a temporary variable so that the if statement does not have direct access to saved
	int8 temp1 = saved[wr_addr];

	if(we){
		temp1++;
	}
	saved[wr_addr] = temp1;

	if(re){
		*out = saved[wr_addr];
	}


}






