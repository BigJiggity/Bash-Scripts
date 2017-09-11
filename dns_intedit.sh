#!/bin/bash
svn up ~/subversion/systems/cbdensec01/service/tinydns-int/root/zones

cd ~/subversion/systems/cbdensec01/service/tinydns-int/root/zones

ls

echo "Pick your zone:"
read answer
#set answer = $<

vim ~/subversion/systems/cbdensec01/service/tinydns-int/root/zones/$answer

svn ci ~/subversion/systems/cbdensec01/service/tinydns-int/root/zones/$answer
