#! /bin/bash 

sudo apt-get update
sudo apt-get install -y  ca-certificates curl gnupg
curl -fsSL https://get.docker.com -o install-docker.sh
cat install-docker.sh
sudo sh install-docker.sh
