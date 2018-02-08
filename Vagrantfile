
Vagrant.configure("2") do |config| 
  config.vm.box = "ubuntu/xenial64"
  config.vm.provision :shell, path: "provisioning/ansible.sh"
  config.vm.provision :shell, path: "provisioning/openstack.sh"
  #config.vm.provision "shell", path: "provisioning/ssh.sh", 
  #  privileged: false
  #config.vm.provision :shell, path: "provisioning/always.sh",
  #  run: "always"
  #config.vm.provision :shell, path: "provisioning/always.sh",
  #  privileged: false,
  #  run: "always"
end
