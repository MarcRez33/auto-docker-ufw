#!/bin/bash
sudo apt-get update -y
sudo apt-get install -y ufw
clear
sudo yes | ufw reset
sudo ufw allow ssh
sudo yes | sudo ufw enable
sudo wget -O /usr/local/bin/ufw-docker https://github.com/chaifeng/ufw-docker/raw/master/ufw-docker
sudo chmod +x /usr/local/bin/ufw-docker
ufw-docker install
sudo systemctl restart ufw
ufw allow 443
ufw allow 80
ufw reload