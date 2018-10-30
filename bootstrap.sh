#!/usr/bin/env bash

#Configure everis.cer
cp /vagrant/everis.crt /usr/local/share/ca-certificates/
update-ca-certificates
apt-get update -y
apt-get install -y apt-transport-https ca-certificates curl software-properties-common dos2unix git
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update -y
apt-get install -y docker-ce
usermod -aG docker vagrant

