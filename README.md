# OpenstackSetup

Does the initial setup of OpenStack with network, subnet and a control machine for Ansible

### Public key
Create a folder: keys and place the GB-OS-key file within.

### Vagrant up...
`Vagrant up`

### Run ansible playbook for initial setup (network, management machine, security groups...)
ansible-playbook openstack_setup.yml -i environments/staging/inventory.yml
### Run ansible playbook for jenkins, staging and production
ansible-playbook openstack_compute.yml -i environments/staging/inventory.yml

### For windows test instance run
ansible-playbook openstack_windows_test.yml -i environments/test/inventory.yml

### Ansible on windows
ansible-playbook playbook-install-firefox.yml -i environments/test2/inventory.yml

### Missing console prompt git bash?
VAGRANT_PREFER_SYSTEM_BIN=1 vagrant ssh

### Openstack CLI commands
openstack server list
nova get-password staging /vagrant/keys/GB-OS-key

Prosivion windows http://blog.rolpdog.com/2015/09/manage-stock-windows-amis-with-ansible.html

### Windows ansible host settings:
run the following script...

Maybe it has to join domain? test to make sure...
