# OpenstackSetup

Does the initial setup of OpenStack with network, subnet and a control machine for Ansible

### Public key
Create a folder: keys and place the GB-OS-key file within.

### Vagrant up...
`Vagrant up`

### Run ansible playbook for initial setup (network, management machine, security groups...)
`ansible-playbook openstack_setup.yml -i environments/staging/inventory.yml`

### Run ansible playbook for jenkins, staging and production
`ansible-playbook openstack_compute.yml -i environments/staging/inventory.yml`

### Ansible on windows
`ansible-playbook openstack_provision.yml -i environments/test2/inventory.yml`  

### Missing console prompt git bash?
`VAGRANT_PREFER_SYSTEM_BIN=1 vagrant ssh`

### Openstack CLI commands
`openstack server list`  
`nova get-password staging /vagrant/keys/GB-OS-key`

Prosivion windows http://blog.rolpdog.com/2015/09/manage-stock-windows-amis-with-ansible.html

### Windows ansible host settings:
run the following script...
```
$url = "https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1"
$file = "$env:SystemDrive\temp\ConfigureRemotingForAnsible.ps1"

(New-Object -TypeName System.Net.WebClient).DownloadFile($url, $file)

powershell.exe -ExecutionPolicy ByPass -File $file
```

### Openstack WS2012R2 Ansible image
Currently the only thing done to this image is initial setup of Administrator since we couldn't connect with RDP without it. And the initial Ansible script is run. This should be done through userdata or packer/cloudbase init instead which I so far haven't managed.
