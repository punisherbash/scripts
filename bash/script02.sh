#!/bin/bash
echo "Entre com o serviço desejado "
read serv
if [[  "$serv" == "ssh" ]]; then
	echo "serviço ssh"
elif [[ "$serv" == "SSH" ]]; then
	echo "serviço SSH"	
else
	echo "serviço digitado não foi o SSH"
fi