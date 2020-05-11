#!/usr/bin/python3
import socket
#import sys

# host = sys.argv[1]
host = str(input('Enter with Host: '))
print('----->', socket.gethostbyname(host))