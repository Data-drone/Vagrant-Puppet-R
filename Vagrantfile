# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|

  # online documentation at
  # https://docs.vagrantup.com.

  config.vm.box = "bento/centos-7.2"
  #config.vm.provision "shell", path: "bootstrap.sh" 

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  #config.vm.synced_folder "/data", "/vagrant_data"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = "8192"
  end

  config.vm.provision :shell, :path => "upgrade_puppet.sh"
  #config.vm.provision "shell", inline: "/opt/puppetlabs/bin/puppet apply --modulepath=/vagrant/modules /vagrant/manifests/default.pp"
  config.vm.provision :shell, :path => "puppet_modules.sh"
  
  config.vm.provision :puppet do |puppet|
	puppet.environment_path = "puppet/environments"
	puppet.environment = "production"
	#puppet.manifest_file = "default.pp"
    puppet.options = ['--verbose']
  end
  
end