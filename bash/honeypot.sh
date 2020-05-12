#!/bin/bash
#######################################
#			punisherbash  #
#######################################

echo "Script HoneyPot...."

nc -vnlp 20& < 21.txt >> 20.log
sleep 2
nc -vnlp 21& < 21.txt >> 21.log
sleep 2
nc -vnlp 22& < 22.txt >> 22.log
sleep 2
nc -vnlp 23& < 23.txt >> 23.log
sleep 2
nc -vnlp 80& < 80.txt >> 80.log
sleep 2
nc -vnlp 110& < 110.txt >> 110.log
sleep
nc -vnlp 443& < 443.txt >> 443.log
sleep 2
nc -vnlp 3306& < 3306.txt >> 3305.log
sleep 2
nc -vnlp 3389& < 3389.txt >> 3389.log
sleep 2
nc -vnlp 8080 < 8080.txt >> 8080.log

netstat -lntp