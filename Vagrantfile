VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define "vagrant" do |machine|
    machine.vm.box = "debian/bullseye64"
    machine.vm.network :private_network, ip: "192.168.56.10"
  end

  config.vm.provider "virtualbox" do |virtualbox|
    virtualbox.cpus = 1
    virtualbox.memory = 1024
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbooks/vagrant.yml"
    ansible.inventory_path = "inventories"
    ansible.raw_arguments = ["--diff"]
  end
end
