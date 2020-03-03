required_plugins = ["vagrant-hostsupdater"]
# installs plugin if not already install
required_plugins.each do |plugin|
    exec "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
end

Vagrant.configure("2") do |config|
  #provisioner = Vagrant::Util::Platform.windows? ? :guest_ansible : :ansible
  config.vm.define "docker" do |docker|

    docker.vm.box = "ubuntu/xenial64"

    docker.hostsupdater.aliases = ["development.local"]

    docker.vm.synced_folder "node-sample-app", "/home/ubuntu/node-sample-app"

    docker.vm.synced_folder "environment/app", "/home/ubuntu/environment/app"

    docker.vm.provision "shell", path: "environment/docker/provision.sh", privileged: false

  end

end
