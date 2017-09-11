#!/bin/bash

while read p; do

	scp content/sshd_config root@$p:/etc

done < txt/xenservers.txt
