#!/bin/bash
# Install Terraform
echo "Installing java packages........"
sudo apt-get update -y
sudo apt-get install openjdk-21-jdk -y

#Installing aws cli  - Linux : google - install awscli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

#Installing teraform packages
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common

#Install the HashiCorp GPG key. key needed to secure d repo
#The command you provided is used to install the HashiCorp GPG key on your system. This key is necessary to
#verify the authenticity and integrity of the packages you download from HashiCorp's APT repository.
# Typically, you would run this command as part of the setup process for installing HashiCorp tools like Terraform,
# Vault, Consul, etc., from their official APT repository. After adding the GPG key, you would then add the HashiCorp 
# repository to your APT sources list and install the desired packages.

wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null

#Add the official HashiCorp repository to your system. The lsb_release -cs command finds 
#the distribution release codename for your current system, such as buster, groovy, or sid.
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list

#Installing terraform binary
sudo apt update -y
sudo apt-get install terraform -y

