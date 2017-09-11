#!/bin/bash


########################
# Script by John Reed  #
# 7/29/2015            #
########################

##################################################################################################
# This script checks if a system is 64 or 32 bit, and runs the correct package install for the   #
# architecture.                                                                                  #
##################################################################################################

##################################
# Constants                      #
##################################

b1=$i386

##################################
# Main                           #
##################################

while read p; do

##################################
# Variables                      #
##################################

sys=$(ssh root@$p "uname -i")

##################################

if [ "$b1" = "$sys" ]; then


	echo "system is 32bit..."
	sleep 2 
	
	ssh root@$p "unzip -o /tmp/CentOS_Installs.zip"
	ssh root@$p "sleep 1 && rpm -ivh /tmp/CentOS_Installs/BESAgent-9.2.5.130-rhe5.i686.rpm && && mkdir /etc/opt/BESClient && mv /tmp/CentOS_Installs/actionsite.afxm /etc/opt/BESClient/ && /etc/init.d/besclient start"

else
	echo "system is 64bit..."
	sleep 2
		
	ssh root@$p "unzip -o /tmp/CentOS_Installs.zip"
	ssh root@$p "sleep 1 && rpm -ivh /tmp/CentOS_Installs/BESAgent-9.2.0.363-rhe5.x86_64.rpm && mv /tmp/CentOS_Installs/actionsite.afxm /etc/opt/BESClient/ && /etc/init.d/besclient start"

fi

done <servers.txt
