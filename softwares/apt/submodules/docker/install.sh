#!/bin/bash
set -e
# sudo apt-get remove docker docker-engine docker.io containerd runc
docker --version
if [ $? -ne 0 ]; then
    # dependencies
    sudo apt-get install \
        ca-certificates \
        curl \
        gnupg \
        lsb-release

    # GPG key
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

    # set up stable repository
    echo \
        "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list >/dev/null

    sudo apt-get update &&
        sudo apt install docker-ce docker-ce-cli containerd.io -y
fi
echo "Docker installed."

# post-installation
sudo groupadd docker
sudo usermod -aG docker $USER
if [ $? -eq 0 ]; then
    echo "Log out and back, then input 'newgrp docker' in terminal to use the new feature."
fi