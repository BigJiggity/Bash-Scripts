#!/bin/bash

file=$"servers.txt"

while read p; do

	echo "connecting to: "$p
	scp -p ~/Desktop/CentOS_Installs.zip root@$p:/tmp	 

done < $file
