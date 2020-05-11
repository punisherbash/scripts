//My First Program in C 2
#include <stdio.h>

int main(void){

	int port;
	char ip [16];
	
	printf("Script Security\n");
	
	printf("Enter with IP: \n");
	scanf("%s",&ip);
	
	printf("Enter with Port: \n");
	scanf("%i",&port);
	
	printf("Scan Host: %s on port %i \n",ip,port);
	
	return 0;
}