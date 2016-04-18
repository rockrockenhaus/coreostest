#!/bin/bash

#Install brew:
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Install Virtualbox
/usr/local/bin/brew cask install virtualbox

#Install Vagrant
/usr/local/bin/brew cask install vagrant

#Install Ansible and pip
/usr/bin/sudo easy_install pip

# install plugins
/usr/bin/sudo pip install paramiko PyYAML Jinja2 httplib2 sixp

# install ansible
/usr/bin/sudo pip install ansible

# Create roles directory
/usr/bin/sudo ln -s ~Documents/coreostest/etc/ansible /etc/ansible

#Install Fleectl
/usr/local/bin/brew install Fleetctl

