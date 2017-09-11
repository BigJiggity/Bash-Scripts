#!/bin/bash

while read i; do

    echo "getting hostname for: " $i

        host $i >> hostnames.txt 

    done <~/httpip.txt
    
exit    
