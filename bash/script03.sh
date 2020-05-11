#!/bin/bash
echo "entre com a idade"
read idade
if [ "$idade" -ge "18" ]; then
	echo "maior de idade"
else
	echo "menor de idade"
fi