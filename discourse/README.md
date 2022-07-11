# Run script

> WARNING: This script will reset your current ufw config! There will be no prompts after running the script.

It resets your firewall, installs ufw-docker-util (that edits the after.rules), then adds ports 443 and 80 to your allowlist. Voila.

It also allows port 22 from any IP to make sure you don’t get locked out. After all works, secure port 22 again.

```
cd
rm ufwDiscourse.sh
sudo apt install wget
sudo wget https://github.com/MarcRez33/auto-docker-ufw/raw/main/discourse/ufwDiscourse.sh
chmod +x ufwDiscourse.sh
./ufwDiscourse.sh

```
### or for yum package manager
```
cd
rm ufwDiscourse.sh
sudo yum install wget
sudo wget https://github.com/MarcRez33/auto-docker-ufw/raw/main/discourse/ufwDiscourseYum.sh
chmod +x ufwDiscourse.sh
./ufwDiscourse.sh

```
