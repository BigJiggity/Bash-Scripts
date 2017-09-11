#!/bin/bash

file=$"servers.alt"

while read p; do

scp -p ~/krb.conf krb5.conf admin@$p:~/

done < $file
