#/bin/bash
#######################################
#		punisherbash #
#######################################

if [ "$1" == "" ]
then
	echo "Security - PORTSCAN NETWORK"
	echo "Example: $0 netwotk"
else
	for host in {1..65535};
	do
		sudo hping3 -S -p 80 -c 1 $1.$host 2> /dev/null | grep "flags=SA" | cut -d "" -f 2
	done
fi