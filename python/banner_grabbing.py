#!/usr/bin/python
#######################################
#			punisherbash  #
#######################################

import socket
ip = str(input('Enter with IP: '))
port = int(input('Enter with Port: '))

mysocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
mysocket.connect((ip, port))
banner = mysocket.recv(1024)
print(banner)
