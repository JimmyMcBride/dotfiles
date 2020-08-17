#!/bin/bash

mkdir bin .config

mkdir .config/nvim

touch .config/nvim/init.vim

cat vimrc >> .config/nvim/init.vim

touch .tmux.conf

cat tmux.conf >> .tmux.conf

git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

nvm install node

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

cat bashrc >> .bashrc

rm tmux.conf bashrc vimrc

sudo apt-get update

sudo apt-get upgrade

sudo apt install --no-install-recommends yarn

sudo apt-get install tmux neovim pm2 postgresql postgresql-contrib nginx docker.io

sudo systemctl start nginx

sudo systemctl start docker

sudo systemctl enable docker

echo "Node Version"

node --version

echo "Yarn Version"

yarn --version

echo "Docker Version"

docker --version

source ~/.bashrc

echo "All done! 🚀"

exit