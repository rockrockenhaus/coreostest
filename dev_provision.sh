#!/bin/bash

#Install brew:

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Install Virtualbox

/usr/local/bin/brew cask install virtualbox

#Install Vagrant

/usr/local/bin/brew cask install vagrant

#Install Ansible and pip

sudo easy_install pi

# install plugins

sudo pip install paramiko PyYAML Jinja2 httplib2 sixp
