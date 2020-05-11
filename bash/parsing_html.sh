#!/bin/bash
#######################################
#			punisherbash  #
#######################################



if [ "$1" == ""];then

	echo "Script Parsing HTML"
	echo "Use mode $0 domain"
	echo "Example: $0 www.teste.com.br"

else
	wget $1
	grep href index.html | cut -d "/" -f 3 | grep "\." | cut -d '"' -f1 | grep -v "<l" > lista.txt
	for url in $(cat lista.txt); do
		host $url ;
	done
fi