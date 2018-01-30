#!/usr/bin/env bash

apt-get install -y python-dev python-pip
pip install python-openstackclient
pip install shade

cp /vagrant/keys/GB-OS-key ~/.ssh/
chmod 700 ~/.ssh/GB-OS-key
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/GB-OS-key

echo "cd /vagrant_projects/my-project" >> /home/vagrant/.bashrc