#!/bin/bash

#***************************************************************************
# Bootstrap Munki
#***************************************************************************

touch /Users/Shared/.com.googlecode.munki.checkandinstallatstartup

#***************************************************************************
# Disable quarantine warning
#***************************************************************************

defaults write com.apple.LaunchServices LSQuarantine -bool NO

#***************************************************************************
# Gatekeeper: Allow Anywhere
#***************************************************************************

spctl --master-disable


