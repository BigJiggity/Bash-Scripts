#!/bin/bash
cd ~/git/puppet/modules/inf_authentication/templates
git pull
vim sshd_config.erb
git commit -a
git push
