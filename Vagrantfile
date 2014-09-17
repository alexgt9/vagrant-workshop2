# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "Debian"

  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.hostname = "development.workshop.dev"
  
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  # Configuration for different environments using hostnames and nodes
  # config.vm.define "devel" do |devel|
  #   devel.hostname "development"
  # end
  #
  # config.vm.define "testing" do |testing|
  #   testing.hostname "development"
  # end

  #
  # View the documentation for the provider you're using for more
  # information on available options.

  # Enable provisioning with Puppet stand alone.  Puppet manifests
  # are contained in a directory path relative to this Vagrantfile.
  # You will need to create the manifests directory and a manifest in
  # the file default.pp in the manifests_path directory.
  #
  config.vm.provision "puppet" do |puppet|
     puppet.manifests_path = "puppet/manifests"
     puppet.manifest_file  = "default.pp"
     puppet.module_path = "puppet/modules"
  end
end
