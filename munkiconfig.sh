#!/bin/bash

#***************************************************************************
# Configure Munki Client
#***************************************************************************

#************************************************************************************************************************************

#****************************************
# Functions
#****************************************

function die {
        echo $1
        exit 1
}

#****************************************
# Declair Variables
# Pull hostname and machine type and insert into plist so each machine is uniquely identified and give the right manifests in munki
#************************************************************************************************************************************

hname=$(hostname)
#htype=$(hostname | sed -e 's/denmac\(.*\).local}/\5/') 

if [[ "$hname" =~ denmac([[:alpha:]]+)[[:digit:]]+\. ]]; then
                        echo ${BASH_REMATCH[1]}
                        htype=${BASH_REMATCH[1]}
                else
                        die "EREGEX evaluation of $hname exited with error: $?"
                fi
#***************************************************************************
# Points client at munki repo
#***************************************************************************

sudo defaults write /Library/Preferences/ManagedInstalls SoftwareRepoURL "https://cbdenosx02.clickbank.local:8080"

sudo defaults write /Library/Preferences/ManagedInstalls InstallAppleSoftwareUpdates True
#***************************************************************************
# Points client to correct repo based on hostname
#***************************************************************************

case $htype in

dev)
	sudo defaults write /Library/Preferences/ManagedInstalls ClientIdentifier "CB_Developer"	
;;
itops)
	sudo defaults write /Library/Preferences/ManagedInstalls ClientIdentifier "CB_ITOPS"
;;
devops)
	sudo defaults write /Library/Preferences/ManagedInstalls ClientIdentifier "CB_DEVOPS"
;;
qa)
	sudo defaults write /Library/Preferences/ManagedInstalls ClientIdentifier "CB_QA"
;;
bi)
	sudo defaults write /Library/Preferences/ManagedInstalls ClientIdentifier "CB_BI"
;;
etl)
	sudo defaults write /Library/Preferences/ManagedInstalls ClientIdentifier "CB_ETL"
;;
mgt)
	sudo defaults write /Library/Preferences/ManagedInstalls ClientIdentifier "CB_MGT"
;; 
mkt)
	sudo defaults write /Library/Preferences/ManagedInstalls ClientIdentifier "CB_MKT"
;;
esac

exit

