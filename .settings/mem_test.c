#include <stdio.h>
#include "mem.h"


int main(){
	int8 out;
	mem(1,1,1,&out);
	mem(2,1,1,&out);
	mem(3,1,1,&out);
	mem(5,0,1,&out);
	mem(5,1,1,&out);
	printf("%d\n", out);


}
