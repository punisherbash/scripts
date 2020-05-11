#include <stdio.h>
#include <sys/socket.h>
#include <netdb.h>

int main (int argc, char *argv[]){
	
	int mysocket;
	int access;

	int port;
	int start = 0;
	int end = 65535;
	char *dest;
	dest = argv[1];

	for (port=start;port<end;port++) {

	struct sockaddr_in target;

	mysocket = socket(AF_INET,SOCK_STREAM,0);
	target.sin_family = AF_INET;
	target.sin_port = htons(port);
	target.sin_addr.s_addr = inet_addr(dest);

	access = connect (mysocket, (struct sockaddr *)&target,sizeof target);

	if (access == 0){
		printf("Port Open %d - status [OPEN] \n", port);
		close(mysocket);
		close(access);
	} else {
		close (mysocket);
		close (access);
	}
	}
}