# OpenstackSetup

Does the initial setup of OpenStack with network, subnet and a control machine for Ansible

## Public key
Create a folder: keys and place the GB-OS-key file within.

## Vagrant up...
Vagrant up

## Run ansible playbook
ansible-playbook openstack_setup.yml -i environments/staging/inventory.yml
When this is done control machine is created within Openstack and there are no point using this machine until it has to be teared down/rebuilt.

## Problems starting vagrant with git bash?
VAGRANT_PREFER_SYSTEM_BIN=1 vagrant ssh

## Feature to add
- teardown?