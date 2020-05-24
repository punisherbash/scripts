#!/bin/bash

echo "#########################################"
echo "This script check Ports Open"
echo "#########################################"
echo "Enter with IP:"
read ip 
echo "" > report.txt

if ($ip); then
	echo "Please enter with IP"
else
	for (( i = 1; i < 1025; i++ )); do
		if (>/dev/tcp/$ip/$i); then
			echo "Port $i Open" >> report.txt
		fi
	done
fi