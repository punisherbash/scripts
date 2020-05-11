//Script Run Commands

#include <stdio.h>
#include <stdlib.h>

int main(void){
	printf("Ports Open: \n");
	system("netstat -lntp");
	return 0;
}