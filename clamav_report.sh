#!/bin/bash



for i in `cat txt/ubuntu_servers.txt`; do 

	echo $i >> report.txt
	echo ------------------------ >> report.txt
	ssh fwslocal@$i "dpkg -p clamav | egrep '(Package)|(Version)' && dpkg -p besagent | egrep '(Package)|(Version)'" >> report.txt

	echo " " >> report.txt
	clear

	echo $ "Complete..."; done


