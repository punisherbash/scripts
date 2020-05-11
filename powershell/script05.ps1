# Script - PortScan

param($p1, $port)
if (!$p1 -or !$port){
    echo "Enter with IP"
    echo "Use mode .\script05.ps1 IP Port"
}else{
    if (Test-NetConnection "$p1" -port "$port" -WarningAction SilentlyContinue -InformationLevel Quiet){
        echo "Port Open"
 