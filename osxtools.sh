!#/bin/bash
******************************************************************************************
# Declair Variables
#*****************************************************************************************

htype=$(hostname | sed -e 's/cbdenmac\(.*\).local/\4/')

******************************************************************************************
* Install Brew
******************************************************************************************

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

******************************************************************************************
* Group Specific installs based on machine name
******************************************************************************************

case $htype in

devops)
brew install maven
brew install git
brew cask install vagrant
brew cask install vagrant-manager
brew install docker
brew install bro
brew cask install virtual box

dev)
brew install git
brew install sbt
brew install scala
brew install gradle
brew install apache
brew install mysql
brew install bro

itops)
brew install git
brew install bro

