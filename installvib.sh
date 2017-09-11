#!/bin/bash

while read i; do

echo "copying to host..." $i

        scp ~/Desktop/vmware-esx-MegaCli-8.07.07.vib root@$i:/tmp
	ssh root@$i '/bin/sh' -s < vib.sh

echo ""
done <~/scripts/DAT/vmhosts.txt


