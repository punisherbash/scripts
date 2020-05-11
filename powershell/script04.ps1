# Security - PING SWEEP
#
param($p1)
if(!$p1){
    echo "Enter with an IP"
    echo "Use mode .\script04.ps1 192.168.0"
}else{
    foreach ($ip in 101