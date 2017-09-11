#!/bin/bash



for i in `cat txt/ubuntu_servers.txt`; do 

	scp content/actionsite.afxm fwslocal@$i:~/
	clear
	echo $i "Complete..."; done


