Vagrant.configure("2") do |config|

  config.vm.define "nginx2" do |nginx2|
      nginx2.vm.box = "ubuntu/jammy64"
      nginx2.vm.network "private_network", ip: "192.168.xx.xx"
      nginx2.vm.hostname = "nginx2"
      nginx2.vm.synced_folder "C:/Nginx_Earth/", "/vagrant_data"
      nginx2.vm.provider "virtualbox" do |vb|
          vb.memory = "2048"
          vb.name = "nginx2"
      end
  end

  
end
