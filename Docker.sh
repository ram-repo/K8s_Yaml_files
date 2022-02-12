#!/bin/bash
# Docker Shell File 
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh 
## Configuration 
sudo mkdir /etc/docker
cat <<EOF | sudo tee /etc/docker/daemon.json
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}
EOF
# usermod docker user 
whoami
sudo usermod -aG docker $whoami
# Configure the Docker daemon, in particular to use systemd for the management of the container’s cgroups.
enable docker service
sudo systemctl enable docker
sudo systemctl restart docker
