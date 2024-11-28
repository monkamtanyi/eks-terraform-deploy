#WHAT I USED AND IT WORKED TO INSTALL JENKINS
#Install Java on Ubuntu 24.04 from Apt Package Manager

#!/bin/bash
# Install Java
sudo apt update && sudo apt upgrade -y
sudo apt install default-jdk -y  #install Java 21 on your system.
java --version

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins

# Start Jenkins service
sudo systemctl start jenkins
sudo systemctl restart jenkins
sudo systemctl enable jenkins

XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

#!/bin/bash
# Install Java
sudo apt-get upgrade -y
sudo apt-get update && apt-get -y install openjdk-17-jdk 
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y
sudo apt-get install jenkins -y

# Start Jenkins service
sudo systemctl start jenkins
sudo systemctl enable jenkins


