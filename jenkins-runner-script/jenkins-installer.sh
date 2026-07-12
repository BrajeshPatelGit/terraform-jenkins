#!/bin/bash
sudo dnf update -y || sudo yum update -y
sudo dnf install java-17-amazon-corretto-devel -y || sudo yum install java-17-amazon-corretto-devel -y
sudo wget -O /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo dnf upgrade -y || sudo yum upgrade -y
sudo dnf install jenkins -y || sudo yum install jenkins -y
sudo systemctl enable jenkins

sleep 59

sudo dnf update -y || sudo yum update -y
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo dnf install -y terraform || sudo yum install -y terraform