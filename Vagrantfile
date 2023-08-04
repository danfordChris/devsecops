

# Vagrant.configure("2") do |config|
#   # Web Server VM
#   config.vm.define "web" do |web|
#     web.vm.box = "ubuntu/jammy64"
#     web.vm.network "private_network", ip: "192.168.33.10"
#     web.vm.synced_folder "web/code/", "/app/code"
#     web.vm.network "forwarded_port", guest: 80, host: 8080

#     web.vm.provider "virtualbox" do |vb|
#       vb.memory = "1024"
#       vb.cpus = 2
#     end
#   end

#   # Database Server VM
#   config.vm.define "db" do |db|
#     db.vm.box = "ubuntu/jammy64"
#     db.vm.network "private_network", ip: "192.168.33.20"
#     db.vm.synced_folder "db/data/", "/db/data"
#     db.vm.provision "shell", path: "setup_db.sh"
#     db.vm.provider "virtualbox" do |vb|
#       vb.memory = "1024"
#       vb.cpus = 2
#     end
#   end
# end

# Vagrantfile

Vagrant.configure("2") do |config|
    # Define the web VM
    config.vm.define "web" do |web|
      web.vm.box = "ubuntu/jammy64"
      web.vm.network "private_network", ip: "192.168.33.20"
      web.vm.network "forwarded_port", guest: 80, host: 8080
      web.vm.synced_folder "web/code/", "/app/code"
      web.vm.hostname = "web-server"
      web.vm.provider "virtualbox" do |vb|
        vb.memory = "1024"
        vb.cpus = 2
      end
    end
  
    # Define the database VM
    config.vm.define "db" do |db|
      db.vm.box = "ubuntu/jammy64"
      db.vm.network "private_network", ip: "192.168.33.10"
      db.vm.synced_folder "db/data/", "/db/data"
      #db.vm.provision "shell", path: "setup_db.sh"
      db.vm.hostname = "db-server"
      db.vm.provider "virtualbox" do |vb|
        vb.memory = "1048"
        vb.cpus = 2
      end
    end
  end
  
