#!/usr/bin/python

import socket

target_host = 'www.terra.com.br' # change for your site
target_port = 80

# create a socket object
client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# connect socket
client.connect_ex((target_host,target_port))

# send some data
client.send("GET / HTTP/1.1\r\nHost: terra.com.br\r\n\r\n") # change for domain your site

# receive some data
response = client.recv(4096)

print(response)