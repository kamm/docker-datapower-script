# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "puppetlabs/ubuntu-16.04-64-nocm"

  # config.vm.network "forwarded_port", guest: 80, host: 8080
   config.vm.network "private_network", ip: "192.168.33.10"
  # config.vm.network "public_network"
  # config.vm.synced_folder "../data", "/vagrant_data"

  config.vm.provider "virtualbox" do |vb|
     vb.memory = 4096
     vb.cpus = 2
     vb.customize ["modifyvm", :id, "--ioapic", "on"]
  end
   config.vm.provision "shell", inline: <<-SHELL
     apt-get update
     apt-get install -y vim docker.io wget
     sudo usermod -aG docker vagrant
     wget -O /home/vagrant/docker_datapower.sh https://raw.githubusercontent.com/kamm/docker-datapower-script/master/docker_datapower.sh
     sudo service docker start
     chmod 755 /home/vagrant/docker_datapower.sh
     docker pull kmetrak/datapower:latest
   SHELL
end
