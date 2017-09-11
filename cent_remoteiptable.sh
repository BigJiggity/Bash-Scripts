#!/bin/bash

for i in `cat ~/servers.txt`;
do

	ssh root@$i "iptables -A INPUT -p tcp -m tcp --dport 52311 -j ACCEPT && /etc/init.d/iptables restart"

done 
