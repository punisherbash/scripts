#!/bin/bash
echo -e ""
echo -e "Welcome to the CSAE (Cyber Script of Analyze and Exploitation)\n"
echo "Enter 1 - Analyze with NMAP"
echo "Enter 2 - Analyze with Nikto"
echo "Enter 3 - Analyze with Dirb"
echo "Enter 4 - Analyze with NMAP and Nikto"
echo "Enter 5 - Analyze Social Engineer wiht Thehavester"
echo "Enter 6 - Analyze Social Engineer wiht Recon-ng"
echo "Enter 7 - Analyze Reconnaissance with Shodan"
echo "Enter 8 - Analyze Reputation with Abuse-IP-DB"
echo "Enter 9 - Analyze Sql Injection with SQLMap"

read var

echo "Enter with IP / Range (192.168.0.1/24) / Domain that you wish Analyze"
read ip


case $var in
"1")
	# NMAP
	echo "scan $ip with NMAP...."
	echo "scan $ip with NMAP...." > report_$ip.txt
	nmap -Pn -sV -sS -T4 --script vuln $ip >> report_$ip.txt
	echo "Finishing  NMAP" >> report_$ip.txt
	echo "Finished NMAP"
	echo "The file is report_$ip.txt"
;;
"2")
	# Nikto
	echo "scan $ip with Nikto...."
	echo "scan $ip with Nikto...." > report_$ip.txt
	nikto -h http://$ip -C all >> report_$ip.txt
	echo "Finishing the scan Nikto" >> report_$ip.txt
	echo "Finished Nikto"
	echo "The file is report_$ip.txt"
;;
"3")
	# Dirb
	echo "scan $ip with Dirb...."
	echo "scan $ip with Dirb...." > report_$ip.txt
	dirb http://$ip >> report_$ip.txt
	echo "Finishing the scan with Dirb" >> report_$ip.txt
	echo "Finished Dirb"
	echo "The file is report_$ip.txt"
;;
"4")
	# NMAP
	echo "scan $ip with NMAP...."
	echo "scan $ip with NMAP...." > report_$ip.txt
	nmap -Pn -sV -sS -T4 --script vuln $ip >> report_$ip.txt
	echo "Finishing portscan NMAP" >> report_$ip.txt	
	echo "Finished NMAP"
	echo "The file is report_$ip.txt"
	# Nikto
	echo "scan $ip with Nikto...."
	echo "scan $ip with Nikto...." >> report_$ip.txt
	nikto -h http://$ip -C all >> report_$ip.txt
	echo "Finishing the scan Nikto" >> report_$ip.txt
	echo "Finished Nikto"
	echo "The file is report_$ip.txt"
;;
"5")
	# TheHarvester
	echo "scan $ip with TheHarvester...."
	echo "scan $ip with TheHervester...." > report_$ip.txt
	theHarvester -d $ip -l 500 -b google >> report_$ip.txt
	echo "Finishing the scan TheHarverter" >> report_$ip.txt
	echo "Finished TheHarvester"
;;
"6")

	# Recon-ng
	echo "scan $ip with Recon-ng using the shodan module...."
	echo "scan $ip with Recon-ng...." > report_$ip.txt
	recon-cli -m recon/domains-hosts/shodan_hostname -C set -o source=$ip -x | grep -v "[!]" >> report_$ip.txt
	echo "Finishing the scan Recon-ng" >> report_$ip.txt
	echo "Finished Recon-ng"
;;
"7")
	# shodan
	echo "scan $ip with Recon-ng using the shodan module...."
	echo "scan $ip with Recon-ng...." > report_$ip.txt
	shodan domain $ip >> report_$ip.txt
	shodan host $ip --history >> report_$ip.txt
	echo "Finishing the scan Recon-ng" >> report_$ip.txt
	echo "Finished Recon-ng"
;;
"8")
	# AbuseIP-DB
	echo "Checkinhg reputation $ip with AbuseIPDB...."
	echo "Checkinhg reputation $ip with AbuseIPDB...." > report_$ip.txt
	w3m https://www.abuseipdb.com/check/"$ip" | grep "     Reporter" -A 30 >> report_$ip.txt
	echo "Finishing the scan AbuseIPDB" >> report_$ip.txt
	echo "Finished AbuseIPDB"


esac



curl -G https://api.abuseipdb.com/api/v2/check --data-urlencode "ipAddress=8.8.8.8" -d maxAgeInDays=90 -d verbose -H "Key: 19675d712059664c28dc8b38bab78d16329369d4f5a41dd2c5e0aceca7cd71699cabcc33785b1a9a" -H "Accept: application/html"

