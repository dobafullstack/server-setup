#!/bin/bash
sudo apt update
sudo apt upgrade

#NVM
sudo apt update
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.bashrc
nvm install v16.18.0
node -v
npm --version
npm install -g yarn pm2
yarn --version

#Git
sudo apt update
sudo apt install git
git --version
#