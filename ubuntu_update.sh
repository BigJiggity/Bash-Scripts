#!/bin/bash

while read p; do

	ssh fwslocal@$p "sudo pt-get update -y && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y"

done < ~/scripts/txt/ubuntu_servers.txt
