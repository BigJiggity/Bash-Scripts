#!/bin/bash

while read i; do 

echo "getting fstab for" $i

	ssh john.reed@$i bash -s < fstab.sh
	scp john.reed@$i:/tmp/fstab* ~/fstabs

echo ""
done <~/scripts/DAT/vaservers.txt
