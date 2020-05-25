#!/bin/bash

echo "#########################################"
echo "This script check Ports Open"
echo "#########################################"
echo "Enter with IP:"
read ip 
echo "" > report.txt

for i in {1..1025}; do
	2> /dev/null echo > /dev/tcp/$ip/$i;
	if [ $? == 0 ]; then
		echo "Port $i Open" > report.txt
	fi
done