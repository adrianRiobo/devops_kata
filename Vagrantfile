Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.box_version = "20181025.0.0"
  config.vm.box_download_insecure = true
  config.vm.provider "virtualbox" do |v|
  	v.name = "devops_kata"
  	v.memory = 2024
  	v.cpus = 2
  end
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.network "private_network", ip: "192.168.50.10"
end

