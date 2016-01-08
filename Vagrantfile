# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/trusty64"

  
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
  end
  
  # Backend
  config.vm.network "forwarded_port", guest: 1337, host: 1337
  
  # Frontend
  config.vm.network "forwarded_port", guest: 3001, host: 3001
  
  #livereload
  config.vm.network "forwarded_port", guest: 35729, host: 35729

  config.vm.provision "fix-no-tty", type: "shell" do |s|
    s.privileged = false
    s.inline = "sudo sed -i '/tty/!s/mesg n/tty -s \\&\\& mesg n/' /root/.profile"
	end
  
  config.vm.provision :shell, :path => "bootstrap.sh"
  config.vm.provision :shell, :privileged => false, :path => "user-install.sh"
   
   
   
end
