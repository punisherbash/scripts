#!/bin/bash
read ip
if [ ip == "" ]; then
	echo "Use mode: $0 IP"
	echo "Example: $0 192.168.0.1"
else
ssh=0
while [ ssh -le 3 ]
do
	echo "start attack..."
	nc ip 22
	ssh=$[ ssh +1]
done
fi