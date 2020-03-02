Vagrant.configure("2") do |config|
  #provisioner = Vagrant::Util::Platform.windows? ? :guest_ansible : :ansible
  config.vm.define "docker" do |docker|

    docker.vm.box = "ubuntu/xenial64"

    docker.vm.provision "shell", path: "environment/docker/provision.sh", privileged: false

  end

end
