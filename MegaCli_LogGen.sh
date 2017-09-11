#!/bin/bash

if [ ! -d "$/logs"]; then

	echo "Creating logs dir"
	mkdir /logs
else

	echo "generating logs..."

	/opt/lsi/MegaCLI/MegaCli -AdpAllInfo –aALL > /logs/adapterinfo.log
	/opt/lsi/MegaCLI/MegaCli -CfgDsply –aALL > /logs/Config.log
	/opt/lsi/MegaCLI/MegaCli -adpeventlog -getevents -f lsi-events.log -a0 –nolog > /logs/adpevent.log
	/opt/lsi/MegaCLI/MegaCli -fwtermlog -dsply -a0 -nolog > /logs/lsi-fwterm.log
	/opt/lsi/MegaCLI/MegaCli -EncInfo –aALL > /logs/Enclosureinfo.log
	/opt/lsi/MegaCLI/MegaCli -LDInfo -Lall –aALL > /logs/VirtualDrive.log
	/opt/lsi/MegaCLI/MegaCli -AdpBbuCmd -aALL > /logs/BBU.log
	/opt/lsi/MegaCLI/MegaCli -AdpBbuCmd -BbuLearn –aALL > /logs/adpbbucmd.log

	echo "logs saved."
	echo ""
		while read i; do
	
			echo "copying to host" $i"..."

			scp root@$i:/logs/*.logs /tmp
			
			echo "Copy from" $i "complete."
			echo ""
			clear

		done <~/DAT/vmhosts.txt
fi

exit
