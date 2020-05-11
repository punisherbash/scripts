#!/ush/bin/python3
import socket
import sys

for port in range(1, 1024):
    mysocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    if mysocket.connect_ex((sys.argv[1], port)) == 0:
        print("Port {} Open".format(port))
        mysocket.close()