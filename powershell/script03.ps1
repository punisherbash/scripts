# Passando paramentros na linha de comando
param($p1)

if (!$p1){
    echo "Script of PING"
    echo "Use mode .\script.ps1 192.168.0"
}else {
    echo "Peform PING in host"
    foreach ($ip in 100..107){
        ping -n 1