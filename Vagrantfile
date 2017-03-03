# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|

  config.vm.define :redm do |redm|
    redm.vm.box = "ubuntu/trusty64"
    redm.vm.hostname = "RedmineVagrant"
    redm.vm.network :private_network, ip: "10.1.1.101"
    redm.vm.network :public_network, ip: "192.168.8.40"
    config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ansible.yml"
    end
    config.vm.synced_folder "comparHome/", "/home/vagrant"
end
end
