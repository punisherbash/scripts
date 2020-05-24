#!/bin/bash
#######################################
#		punisherbash #
#######################################

echo "Enter with your dominio: "
read domain
shorturlbypass=web.archive.org

if [ $domain == ""]
then
	echo "Enter with domain"
else
	curl "$shorturlbypass/cdx/search/cdx?url=*.$domain/*&output=txt&fl=original&collapse=urlkey" -o result.txt
	cat result.txt | awk -F'/' '{print $3}' | sort -u

fi