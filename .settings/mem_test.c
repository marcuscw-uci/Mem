#include <stdio.h>
#include "mem.h"


int main(){
	uint8 out = 0;

	mem(1,1,1,&out);
	mem(1,1,1,&out);
	mem(1,1,1,&out);
	if(out != 1) return 1;

	mem(2,1,1,&out);
	mem(2,1,1,&out);
	mem(2,1,1,&out);
	if(out != 2) return 1;

	mem(1,1,1,&out);
	if(out != 1) return 1;
}
