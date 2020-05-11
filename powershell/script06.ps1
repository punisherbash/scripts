# Script - PortScan
param($p1)
if (!$p1){
    echo "Enter with IP"
    echo "Use mode .\script05.ps1 IP"
} else {
$topports = 21,22,80,3306,443
#foreach ($port in 80..84){
try {foreach ($port in $topports){
if (Test-NetConnection $p1 -Port $port -WarningAction SilentlyContinue -InformationLevel Quiet){
    echo "Port $port Open"
}} else {
    echo "