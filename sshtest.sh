#!/bin/bash
file=$"servers.txt"
while read p; do
ssh root@$p
exit
done <$file
