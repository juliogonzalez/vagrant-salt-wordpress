# -*- mode: ruby -*-
# vi: set ft=ruby :

# Based on code from JustinCarmony, available at https://github.com/JustinCarmony/vagrant-salt-example

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Vagrant Box, use Vagrant > 1.8.5 (https://atlas.hashicorp.com/centos/boxes/6)
  config.vm.box = "centos/6"

  # Use a bridge network, so we can expose wordpress and phpmyadmin without
  # port forwarding
  # Otherwise we could not forward TCP 80 unless we run Vagrant as root
  # (ports <= 1024 are reserved)
  config.vm.network "public_network"

  # Hostname (if it is localhost mysql-formula will fail:
  # https://github.com/saltstack-formulas/mysql-formula/commit/4975897b42dd16a740d401680075c9de6062408a
  config.vm.hostname = "wordpress.localdomain"

  # Salt Provisioner
  config.vm.provision :salt do |salt|
    # Relative location of configuration file to use for minion
    # since we need to tell our minion to run in masterless mode
    salt.minion_config = "saltstack/etc/minion"

    # On provision, run state.highstate (which installs packages, services, etc).
    # Highstate basicly means "comapre the VMs current machine state against 
    # what it should be and make changes if necessary".
    salt.run_highstate = true
    
    # Run in verbose mode, so it will output all debug info to the console.
    # This is nice to have when you are testing things out. Once you know they
    # work well you can comment this line out.
    salt.verbose = false
  end
  
  # Print public IP to access wordpress and phpmyadmin
  config.vm.provision "shell",
    inline: "echo Public IP: $(ip addr | grep 'eth1' | tail -n1 | awk '{print $2}' | cut -f1  -d'/')"
end
