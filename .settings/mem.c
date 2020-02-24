#define ADDRESSES 128
#include "mem.h"



void mem(int7 wr_addr, int7 rd_addr, int1 we, int1 re, int8 *out){
	static int8 saved[ADDRESSES];
	//Creates a temporary variable so that the if statement does not have direct access to saved
	int8 temp1 = saved[wr_addr];

	if(we){
		temp1++;
	}
	saved[wr_addr] = temp1;

	//Creates a temporary variable for the same reason as temp1
	int8 temp2 = saved[wr_addr];
	if(re){
		*out = temp2;
	}


}






