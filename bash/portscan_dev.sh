#!/bin/bash

echo "#########################################"
echo "This script check Ports Open"
echo "#########################################"
echo "Mode use ./script 192.168.0.1"
read ip 
echo "" > report.txt

if [[ ! $ip ]]; then
	echo "Enter with an IP"
else
	for (( i = 1; i < 1025; i++ )); do
		if (2> /dev/null >/dev/tcp/$ip/$i); then
			echo "Port $i Open" >> report.txt
		fi
	done
fi
