# Run script

> WARNING: This script will reset your current ufw config! There will be no prompts after running the script.

It resets your firewall, installs ufw-docker-util (that edits the after.rules), then adds ports 443 and 80 to your allowlist. Voila.

It also allows port 22 from any IP to make sure you don’t get locked out. After all works, secure port 22 again.

Best to run when Discourse is running, it will manually add docker forward rules anyway but those only work if Discourse is your only docker app. If Discourse is running the script always fetches the correct internal IP for the docker app (eg. 172.17.0.2 for the first app).

```
cd
rm ufwDiscourse.sh
sudo apt update -y
sudo apt install wget -y
sudo wget https://github.com/MarcRez33/auto-docker-ufw/raw/main/discourse/ufwDiscourse.sh
chmod +x ufwDiscourse.sh
./ufwDiscourse.sh

```
### or for yum package manager (doesn't work - needs a fix?)
```
cd
rm ufwDiscourse.sh
sudo yum update -y
sudo yum install wget -y
sudo wget https://github.com/MarcRez33/auto-docker-ufw/raw/main/discourse/ufwDiscourseYum.sh
chmod +x ufwDiscourseYum.sh
./ufwDiscourseYum.sh

```

# If script ran and did not end with the message below, run above command again.

```
All done, now secure your SSH port again. Make sure to delete the old SSH rules: ufw delete NUM
```