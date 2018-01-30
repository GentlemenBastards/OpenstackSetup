#!/usr/bin/env bash

apt-get install -y python-dev python-pip
pip install python-openstackclient
pip install shade

cp /vagrant/keys/GB-OS-key ~/.ssh/
chmod 700 ~/.ssh/GB-OS-key
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/GB-OS-key



# . pipcd and enter password
# eval `ssh-agent -s`
# copy GB to .ssh flder
# chmod 700 GB file 
# ssh-add ....

#  VAGRANT_PREFER_SYSTEM_BIN=1 vagrant ssh

# pip install shade