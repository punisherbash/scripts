#!/usr/bin/python3

print("Interacting with Services")

import socket
ip = str(input('Enter with IP: '))
port = int(input('Enter with Port: '))

mysocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
mysocket.connect((ip, port))
banner = mysocket.recv(1024)
print(banner)

print("Send User")
mysocket.send('USER ricardo\r\n')
banner = mysocket.recv(1024)
print(banner)

print('Send Password')
mysocket.send('PASS ricardo\r\n')
banner = mysocket.recv(1024)
print(banner)