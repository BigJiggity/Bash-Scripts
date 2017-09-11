#!/bin/bash

while read p; do
	
	ssh root@$p "yum update -y"

done < servers.txt
