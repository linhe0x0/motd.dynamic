set -e

printf "\033[1;34m==>\033[0m Download latest scripts from GitHub"
curl -fsSL https://github.com/sqrthree/motd.dynamic/archive/master.zip -o motd.dynamic.zip

printf "\033[1;34m==>\033[0m Extract motd.dynamic.zip"
unzip -q motd.dynamic.zip

printf "\033[1;34m==>\033[0m Extract motd.dynamic.zip"
sudo mv motd.dynamic-master /etc/motd.dynamic

printf "\033[1;34m==>\033[0m Link motd.dynamic to /etc/profile.d/"
sudo ln /etc/motd.dynamic/motd.dynamic /etc/profile.d/motd.dynamic.sh

printf "\033[32m[✔]\033[0m Successfully to install motd.dynamic. The system info will be shown after your next login."

cd -