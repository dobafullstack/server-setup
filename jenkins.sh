#!/bin/bash
sudo apt update
sudo apt install openjdk-11-jdk -y
sudo apt install maven -y
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y
sudo mkdir /etc/systemd/system/jenkins.service.d
echo -e "[Service]\nTimeoutStartSec=180" | sudo tee /etc/systemd/system/jenkins.service.d/startup-timeout.conf
sudo systemctl daemon-reload
sudo systemctl start jenkins
sudo systemctl enable jenkins
###