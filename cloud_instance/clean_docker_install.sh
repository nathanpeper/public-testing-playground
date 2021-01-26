#!/bin/bash
# Uninstall Old Docker Versions
sudo apt-get remove docker docker-engine docker.io containerd runc


# Install Docker 
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
    
# add the docker repo    
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
 
# install it
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

# Give current user access to run Docker
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker