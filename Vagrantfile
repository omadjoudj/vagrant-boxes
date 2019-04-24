# -*- mode: ruby -*-
# vi: set ft=ruby :
#
## Windows "Workstation" VM, sometimes Windows is needed, especially for IPMI-KVMs
#

Vagrant.configure("2") do |config|
  config.vm.box = "mwrock/Windows2016"

  # config.vm.network "forwarded_port", guest: 80, host: 8080
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # config.vm.synced_folder "../data", "/vagrant_data"

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
    # Customize the amount of memory on the VM:
    vb.memory = "1536"
  end
  config.vm.provision "bootstrap_choco", type: "shell", path: "https://chocolatey.org/install.ps1"
  config.vm.provision "install_tools", type: "shell", path: "install_tools.ps1"
end
