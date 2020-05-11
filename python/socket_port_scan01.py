#!/usr/bin/python3

import socket,sys

ip = str(input("Enter with IP: "))
port = int(input("Enter with Port: "))

mysocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
res =  mysocket.connect_ex((ip, port))
if (res == 0):
    print("Port Open")
else:
    print('Port Closed')
