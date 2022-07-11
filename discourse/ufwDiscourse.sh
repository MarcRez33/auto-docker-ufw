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
## Ubuntu needs this
ufw-docker allow app 80
ufw-docker allow app 443
## some OS' need these too, so just add them.
ufw allow https
ufw allow http
ufw reload
clear
ufw status numbered
echo All done, now secure your SSH port again. Make sure to delete the old SSH rules: ufw delete NUM
