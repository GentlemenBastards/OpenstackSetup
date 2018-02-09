#!/usr/bin/env bash

#eval "$(ssh-agent -s)"
#ssh-add ~/.ssh/GB-OS-key
#export ANSIBLE_HOST_KEY_CHECKING=False

echo "cd /vagrant" >> /home/vagrant/.bashrc
echo "eval $(ssh-agent -s)" >> /home/vagrant/.bashrc
echo "ssh-add ~/.ssh/GB-OS-key" >> /home/vagrant/.bashrc
echo "export ANSIBLE_HOST_KEY_CHECKING=False" >> /home/vagrant/.bashrc