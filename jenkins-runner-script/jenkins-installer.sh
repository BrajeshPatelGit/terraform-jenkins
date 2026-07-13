#!/bin/bash
sudo dnf update -y || sudo yum update -y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/rpm-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/rpm-stable/jenkins.io-2026.key
sudo dnf upgrade -y || sudo yum upgrade -y
sudo dnf install java-21-amazon-corretto -y || sudo yum install java-21-amazon-corretto -y
sleep 59
sudo dnf install jenkins -y || sudo yum install jenkins -y
sleep 59
sleep 59
sleep 59
sleep 50
sleep 50
sudo systemctl enable jenkins
sleep 10
sudo systemctl start jenkins
sudo dnf update -y || sudo yum update -y
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo dnf install -y terraform || sudo yum install -y terraform