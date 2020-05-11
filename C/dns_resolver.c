#include <stdio.h>
#include <netdb.h>
#include <arpa/inet.h>

int main(int argc, char *argv[]){
	
	if ( argc<=1 ){

		printf("Use mode: ./dns_resolver www.site.com.br\n");

    } else {
		struct hostent *target = gethostbyname(argv[1]);

		if ( target == NULL)	{
			printf("Occurred an error \n");
		} else {

		printf("IP: %s\n",inet_ntoa(*((struct in_addr *)target->h_addr)));
		return 0;
			}
	}
}