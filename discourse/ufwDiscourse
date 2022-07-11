#!/bin/bash
sudo apt-get update -y
sudo apt-get install -y ufw
clear
sudo ufw reset
sudo ufw allow to any port 22 proto tcp
sudo yes | sudo ufw enable
sudo wget -O /usr/local/bin/ufw-docker https://github.com/chaifeng/ufw-docker/raw/master/ufw-docker
sudo chmod +x /usr/local/bin/ufw-docker
ufw-docker install
sudo systemctl restart ufw
ufw route allow proto tcp from any to 172.17.0.2 port 80
ufw route allow proto tcp from any to 172.17.0.2 port 443
ufw reload