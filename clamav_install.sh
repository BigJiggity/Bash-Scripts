#!/bin/bash



for i in `cat txt/ubuntu_servers.txt`; do 

	ssh fwslocal@$i "sudo apt-get install clamav clamav-daemon clamav-docs -y"
	clear
	echo $i "Complete..."; done


