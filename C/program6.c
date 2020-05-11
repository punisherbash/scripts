// Script Program C 5

#include <stdio.h>

int main (int argc, char *argv[]){

	int i;
	if (argc<2){

		printf("Use mode: ./program5 192.168.0 \n");

	} else {
	for (i=0;i<=10;i++){
		
		printf("Scan Host %s.%i \n",argv[1],i);
			
		}
	}
}