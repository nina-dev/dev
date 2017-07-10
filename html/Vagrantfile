Vagrant.configure(2) do |config|
  config.vm.box = "geerlingguy/centos7"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.network "public_network"
  config.vm.provision "shell", inline: $script
end

$script = <<SCRIPT
sudo yum -y update
sudo yum -y install httpd
sudo systemctl start httpd
SCRIPT
