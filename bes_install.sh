#!/bin/bash



for i in `cat txt/ubuntu_servers.txt`; do 

	ssh fwslocal@$i "sudo dpkg -i ~/BESAgent-9.2.0.363-ubuntu10.amd64.deb && sudo mkdir /etc/opt/BESClient && sudo mv ~/actionsite.afxm /etc/opt/BESClient/ && sudo /etc/init.d/besclient start"
	clear
	echo $i "Complete..."; done


