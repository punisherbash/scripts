#!/bin/bash
# Script inicial

#mensagens com comandos
echo "Aula de Script"
echo "Sistema iniciado a:" $(uptime -p)
echo "Diretorio atual:" $(pwd)
echo "Usuário atual:" $(whoami)

# declarando variaveis
#ip=192.168.0.1

# lendo variaveis
#echo "Varrendo o host" $ip

# lendo variaveis a partir do usuario

#echo "Digite o IP:"
#read ip
#echo "Executando portscan no IP:" $ip

# lendo variaveis a partir do usuario
#echo "Digite o IP"
#read ip
#port=80
#echo "Varrendo o host: $ip na porta: $port"

# testando comandos com variaveis
echo "Entre com IP/Bloco desejado para analise"
read ip
echo "Varrendo o $ip com NMAP...."

echo "Varrendo o $ip com NMAP...." > report_$ip.txt

nmap -Pn -sV -sS -T4 --script vuln $ip >> report_$ip.txt

echo "Finalizado portscan NMAP" >> report_$ip.txt

echo "--------------------------------------------------------------------------------------------------------------------------------" >> report_$ip.txt

echo "Varrendo $ip com Nikto...."

nikto -h http://$ip -C all >> report_$ip.txt

echo "Finalizado varredura Nikto" >> report_$ip.txt

echo "--------------------------------------------------------------------------------------------------------------------------------" >> report_$ip.txt

echo "Varrendo $ip com Dirb...."

dirb http://$ip >> report_$ip.txt

echo "Finalizado varredura com Dirb" >> report_$ip.txt

echo "--------------------------------------------------------------------------------------------------------------------------------" >> report_$ip.txt