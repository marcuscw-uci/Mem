#include <stdio.h>
#include "mem.h"


int main(){
	int8 out;
	mem(1,2,1,1,&out);
	mem(2,2,1,1,&out);
	mem(3,2,1,1,&out);
	mem(5,2,1,1,&out);
	mem(5,2,1,1,&out);
	printf("%d\n", out);


}
