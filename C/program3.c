//My First Program in C 3
#include <stdio.h>

int main(void){

	char name [10];
	
	printf("Script Security\n");
	
	printf("Enter with your name: \n");
	fgets(name,10,stdin);
	
	printf("The name is: %s \n",name);
	
	return 0;
}