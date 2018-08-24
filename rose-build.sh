#!/bin/sh

clear;

sudo apt-get -y update && sudo apt-get -y upgrade

# Remove unnecessary packages
sudo apt-get -y  remove remmina \
transmission-common \
transmission-gtk \
ubuntu-web-launchers \
gnome-mahjongg \
gnome-mines \
gnome-sudoku \
rhythmbox \
aisleriot \
cheese \
gnome-calculator \
docker \
docker-engine docker.io

# Install required Python packages
sudo apt-get install python-setuptools python-dev build-essential -y
sudo apt install python-pip
sudo pip install Django==1.8.1

# Git
sudo apt install git

# MySQL
sudo apt-get install mysql-server
sudo apt-get install mysql-workbench -y

# Gitkraken
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb

# PyCharm Community Edition
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
sudo apt-get install ubuntu-make -y
umake ide pycharm

# Sublime Text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text -y

# Virtualenv
sudo pip install virtualenv virtualenvwrapper

# Slack
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-2.9.0-amd64.deb
sudo dkpg -i ./slack-desktop-2.9.0-amd64.deb

sudo apt-get update
sudo apt-get upgrade
sudo apt autoremove





