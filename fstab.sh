#!/bin/bash

hname=$(hostname)
cat /etc/fstab > /tmp/fstab-$hname.txt

echo "***************************"
echo "* File Generated in /tmp/ *"
echo "***************************"
echo ""
echo "Contents:" 

cat /tmp/fstab*

echo ""
echo "Complete"

exit
