#!/bin/bash
## Author : GaiusH
## Date : OCT/29/2022

## Description : Docker Installation on CentoS7...........

sleep 10

sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine

sleep 7

sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install docker-ce docker-ce-cli containerd.io

sudo systemctl status docker

sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker

sleep 10
sudo docker run hello-world
