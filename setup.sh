#!/bin/sh

# You will be prompted for your root password when first starting script.
# We use -y throughout this script to tell apt-get not to prompt me,
# and to just get on with installing.
sudo apt-get update

# Fortunately most Linux distros come pre-installed with Python so we can disregard that dependency.
# Install base requirements for working with iTracR.
sudo apt-get install sudo apt-get install python-setuptools python-dev build-essential -y
sudo pip install Django==1.8.1

# Set up virtualenv
sudo pip install virtualenv virtualenvwrapper
sudo pip install --upgrade pip
printf '\n%s\n%s\n%s' '# virtualenv' 'export WORKON_HOME=~/virtualenvs' 'source /usr/local/bin/virtualenvwrapper.sh' >> ~/.bashrc
source ~/.bashrc
mkdir -p $WORKON_HOME
# To make a virtualenv with virtualenv wrapper
# mkvirtualenv name_env
# workon name_env

# Install MySQL
# You will need to set your MySQL password which will be used to access server from terminal.
sudo apt-get install mysql-server

# Install GitKraken
wget https://release.gitkraken.com/linux/gitkraken-amd64.tar.gz
tar -xvzf gitkraken-amd64.tar.gz

# Install PyCharm
# This will only install community edition, for you pros, you need to do it yourself ;)
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
sudo apt-get install ubuntu-make -y
umake ide pycharm

# Install MySQL Workbench
sudo dpkg -i mysql-apt-config_0.5.3-1_all.deb
sudo apt-get update
sudo apt-get install mysql-workbench-community -y

# Install Sublime Text (Feel free to install another text editor)
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text -y


# Install Slack
# Be mindful that the version number may change over time.
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-2.9.0-amd64.deb
sudo dkpg -i ./slack-desktop-2.9.0-amd64.deb
# If you have any problems installing Slack use below command:
# 					sudo apt-get -f install


# Create and clone the iTracR repo
mkdir -p ~/solirius/itracr
cd ~/solirius/itracr
git clone git@bitbucket.org:solirius/edam.git
cd

# Create and clone the Bench repo
mkdir -p ~/solirius/bench
cd ~/solirius/bench
git clone git@bitbucket.org:tomxelliott/thebench-backend.git
cd
