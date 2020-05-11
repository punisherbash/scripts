// Script Program C 5

#include <stdio.h>

int main (int argc, char *argv[]){

	if (argc<2){
		printf("Use mode: ./program5 192.168.0.1 80\n");
	} else {
		printf("Scan Host %s on Port %s\n",argv[1],argv[2]);
	}
}