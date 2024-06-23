Vagrant.configure("2") do |config|

  config.vm.define "nginx3" do |nginx3|
      nginx3.vm.box = "ubuntu/jammy64"
      nginx3.vm.network "private_network", ip: "192.168.xx.xx"
      nginx3.vm.hostname = "nginx3"
      nginx3.vm.synced_folder "C:/Nginx_Flight/", "/vagrant_data"
      nginx3.vm.provider "virtualbox" do |vb|
          vb.memory = "2048"
          vb.name = "nginx3"
      end
  end

  
end
