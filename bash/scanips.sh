#!/bin/bash
#/bin/bash
#######################################
#		punisherbash #
#######################################


if [ "$1" == "" ]
then
	echo "Security - PING SWEEP"
	echo "SCRIPT PING SWEEP"
	echo "Example: $0 192.168.0"
else
for host in {100..254};
do
	#ping -c 1 $1.$host | grep "64 bytes" | cut -d ":" -f 1 | cut -d " " -f 4 ;
	ping -c 1 $1.$host | grep "64 bytes" | cut -d " " -f 4 | sed "s/.$//"
	#ping -c 1 192.168.0.1 | awk '/64 bytes/ {print $4,$5,$6}';
done
fi
