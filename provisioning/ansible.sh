#!/usr/bin/env bash

apt-get update
apt-get install -y software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get install -y ansible


#apt-get install python-setuptools
#easy_install pip
#pip install ansible
#pip install "pywinrm>=0.2.2"
# sudo...