#!/bin/bash

echo "Bem vindo a script de analise de reputação e vulnerabilidades"
echo "Digite 1 - Para analise com NMAP"
echo "Digite 2 - Para analise com Nikto"
echo "Digite 3 - Para analise com Dirb"
echo "Digite 4 - Para analise com NMAP e Nikto"
echo "Digite 5 - Para Engenharia Social com Thehavester"
read var

echo "Entre com IP / Bloco / Dominio desejado para analise"
read ip

# usando NMAP
if [ "$var" == "1" ]; then

	echo "Varrendo $ip com NMAP...."
	echo "Varrendo $ip com NMAP...." > report_$ip.txt
	nmap -Pn -sV -sS -T4 --script vuln $ip >> report_$ip.txt
	echo "Finalizado portscan NMAP" >> report_$ip.txt
	echo "Fim NMAP"

# usando nikto
elif [ "$var" ==  "2" ]; then

	echo "Varrendo $ip com Nikto...."
	echo "Varrendo $ip com Nikto...." > report_$ip.txt
	nikto -h http://$ip -C all >> report_$ip.txt
	echo "Finalizado varredura Nikto" >> report_$ip.txt
	echo "Fim Nikto"

# Usando dirb
elif [ "$var" == "3" ]; then

	echo "Varrendo $ip com Dirb...."
	echo "Varrendo $ip com Dirb...." > report_$ip.txt
	dirb http://$ip >> report_$ip.txt
	echo "Finalizado varredura com Dirb" >> report_$ip.txt
	echo "Fim Dirb"

elif [ "$var" == "4" ]; then
	
	# NMAP
	echo "Varrendo $ip com NMAP...."
	echo "Varrendo $ip com NMAP...." > report_$ip.txt
	nmap -Pn -sV -sS -T4 --script vuln $ip >> report_$ip.txt
	echo "Finalizado portscan NMAP" >> report_$ip.txt	
	echo "Fim NMAP"
	# Nikto
	echo "Varrendo $ip com Nikto...."
	echo "Varrendo $ip com Nikto...." > report_$ip.txt
	nikto -h http://$ip -C all >> report_$ip.txt
	echo "Finalizado varredura Nikto" >> report_$ip.txt
	echo "Fim Nikto"

elif [ "$var" == "5" ]; then
	
	echo "Varrendo $ip com TheHarvester...."
	echo "Varrendo $ip com TheHervester...." > report_$ip.txt
	theHarvester -d $ip -l 500 -b google >> report_$ip.txt
	echo "Finalizado varredura TheHarverter" >> report_$ip.txt
	echo "Fim TheHarvester"	


fi