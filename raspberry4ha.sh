#!/bin/sh

echo "------------------ Update --------------------"
sudo apt update

echo "------------------ Install docker ------------" 
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=arm64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update
sudo apt install docker-ce -y
sudo usermod -aG docker ${USER}

echo "-------------------- Install jq -------------"
sudo apt install jq -y
