Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.hostname = "todoapp-vm"

  # Acceso desde el host en http://localhost:8080
  config.vm.network "forwarded_port", guest: 80, host: 8080, auto_correct: true

  config.vm.provision "shell", inline: <<-SHELL
    set -eux
    apt-get update
    apt-get install -y docker.io docker-compose-plugin git curl
    usermod -aG docker vagrant
  SHELL
end
