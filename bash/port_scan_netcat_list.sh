#!/bin/bash
#######################################
#			punisherbash  #
#######################################

echo -e "Port Scanning with NetCat\n"
echo "Enter with Host: "

read host

for port in $(cat list);
do
	nc -vnz $host $port;
done