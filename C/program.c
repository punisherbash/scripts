//My First Program in C
#include <stdio.h>

int main(void){

	int port = 80;
	char ip [] = "192.168.0.1";
	float ver = 1.1;

	printf("Script Security\n");
	printf("Scan Version: %.1f \n",ver);
	printf("Scan Host: %s on port %i \n",ip,port);
	return 0;
}