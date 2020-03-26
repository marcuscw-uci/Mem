#include <stdio.h>
#include "mem.h"


int main(){
	uint8 out;

	/*for(uint7 i = 0; ; i++){
		mem(i,1,1,&out);
		if(out != i) return 1;

		if(i == 127) break;
	}*/
	for(uint7 i = 0; ;i++){
		for(int j = 0; j < i + 1; j++){
			mem(i,1,1,&out);

		}

		if(out != i) return 1;
		if(i == 127) break;

	}


}
