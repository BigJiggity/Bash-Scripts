#!/bin/bash

cd /Users/reed.john/git/puppet/manifests/
git pull
vim users.pp
git commit -a
git push
exit
