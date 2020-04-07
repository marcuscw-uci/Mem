#include <stdio.h>
#include "mem.h"


int main(){
	uint8 out = 0;

	mem(1,1,1,&out);
	printf("%d\n",out);

	mem(1,0,1,&out);
	printf("%d\n",out);

	mem(3,1,0,&out);
	printf("%d\n",out);

	mem(4,0,1,&out);
	printf("%d\n",out);

	mem(3,1,0,&out);
	printf("%d\n",out);



}
