#!/bin/bash

# Part 1: Preparing the instances
sudo yum update -y
sudo yum install -y git

# Part 2: Installing Docker
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce docker-ce-cli containerd.io
sudo systemctl start docker
sudo systemctl enable docker

# Part 3: Installing the OpenShift OKD CLI (oc)
wget https://github.com/openshift/okd/releases/download/4.7.0-0.okd-2021-08-22-163618/openshift-client-linux-4.7.0-0.okd-2021-08-22-163618.tar.gz
tar -xvzf openshift-client-linux-*.tar.gz
sudo mv oc /usr/local/bin/

# Add more parts if needed

