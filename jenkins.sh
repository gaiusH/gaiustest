#!/bin/bash
##author: GaiusH
##date: 29/2022

curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo

sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

sleep 7

sudo yum install jenkins -y

sudo systemctl start jenkins
sudo systemctl status jenkins
sudo systemctl enable jenkins

sleep 7
sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
sudo firewall-cmd --reload
sleep 7
