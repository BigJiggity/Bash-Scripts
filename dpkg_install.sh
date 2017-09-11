#!/bin/bash 

for i in ifw9bct-pptmstr01.fws.doi.net ifw9bct-ipam.fws.doi.net ifw9bct-lnxrpo01.fws.doi.net ifw9bct-git01.fws.doi.net ifw9bct-tp01.fws.doi.net ifw9bct-pandora01.fws.doi.net ifw9bct-pptdb01.fws.doi.net ifw9bct-webmin01.fws.doi.net

do
	ssh $i "sudo pkg -i /tmp/pandorafms.agent_unix_5.1SP3.deb"
done
