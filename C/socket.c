#include <stdio.h>
#include <sys/socket.h>
#include <netdb.h>

int main (void){
	
	int mysocket;
	int access;

	struct sockaddr_in target;

	mysocket = socket(AF_INET,SOCK_STREAM,0);

	target.sin_family = AF_INET;
	target.sin_port = htons(80);
	target.sin_addr.s_addr = inet_addr("192.168.0.1");

	access = connect (mysocket, (struct sockaddr *)&target,sizeof target);

	if (access == 0){
		printf("Port Open \n");
		close(mysocket);
		close(access);
	} else {
		printf("Port Closed \n");

	}
}