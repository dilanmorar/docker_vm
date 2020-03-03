# adding the GPG key for docker repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# adding docker repository to APT sources
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
# updating packages including the docker packages
sudo apt-get update
# install docker repo
apt-cache policy docker-ce
# install docker
sudo apt-get install -y docker-ce
