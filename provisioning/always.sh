#!/usr/bin/env bash

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/GB-OS-key

echo "cd /vagrant" >> /home/vagrant/.bashrc