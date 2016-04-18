First, on the developer machine, install Vagrant and VirtualBox:

(assume we're on a Mac)

Install brew:
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

Install VirtualBox:
brew cask install virtualbox

Install Vagrant
brew cask install vagrant

You will need to instaall the Ansible control machine with pip (requires python, of course)

Install pip
/usr/bin/sudo easy_install pip

Install Ansible required python dependencies:
/usr/bin/sudo pip install paramiko PyYAML Jinja2 httplib2 six

Install Ansible using pip
/usr/bin/sudo pip install ansible

You can also run the dev_provision.sh to do all of this for you.

Let's provision our instances, using ansible to provision mult machine:

cd $HOME/vagrant-provision

vagrant up

Create an ansible hosts file (etc/ansible/hosts)



