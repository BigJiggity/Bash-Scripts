#!/bin/bash

while read i; do

echo "copying to host..." $i

        scp ~/.ssh/authorized_keys root@$i:/etc/ssh/keys-root 

echo ""
done <~/scripts/DAT/vmhosts.txt
