#!/bin/bash

echo "{"
echo "\"data\":["
comma=""
while read line
do
        TIPO=$(echo ${line} | cut -d " " -f1)
        BAND=$(echo ${line} | cut -d " " -f2)
        #STATUS=$(echo ${line} | cut -d " " -f3)
        echo " $comma{\"{#TIPO}\":\"${TIPO}\",\"{#BAND}\":\"${BAND}\"}"
        comma=","
done < /etc/zabbix/externalscripts/discovery_v1.txt

echo "]"
echo "}"

{'VDIs': {'hosts': ['VIRTUAL-100.GRUPO.QUALICORP'], 'vars': {'ansible_ssh_user': 'projectuser',}}, '_meta': {'hostvars': {'VIRTUAL-100.GRUPO.QUALICORP': {'ip_address': '10.220.21.24'}}}}