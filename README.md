(Please note - due to bad weather in Texas, some data was lost, but should al be recreated.)

First, on the developer machine, install Vagrant and VirtualBox:

(assume we're on a Mac)

Install brew:
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

Install VirtualBox:
brew cask install virtualbox

Install Vagrant:
brew cask install vagrant

You will need to instaall the Ansible control machine with pip (requires python, of course)

Install pip:
/usr/bin/sudo easy_install pip

Install Ansible required python dependencies:
/usr/bin/sudo pip install paramiko PyYAML Jinja2 httplib2 six

Install Ansible using pip:
/usr/bin/sudo pip install ansible

Install Fleetctl:
brew install Fleetctl

Install panamax for pretty web ui:
brew install http://download.panamax.io/installer/brew/panamax.rb && panamax init

Export a fleet endpoint so we don't have to keep on typing the endpoint over and over
FLEETCTL_ENDPOINT=http://172.12.8.101:2379
export FLEETCTL_ENDPOINT

You can also run the dev_provision.sh to do all of this for you.

Now, you need to bring the three CoreOS instances up using the config/Vangrantfile in this directory:

cd $HOME/coreostest
vagrant up

Please wait until all instances are up.

Configure python for instance bootstrap:
./bin/generate_ssh_config

Bootstrap ansible on the vagrant instances:
ansible-playbook -i inventory/vagrant bootstrap.yml

Verify that ansible is working on the vagrant instances:
ansible -i inventory/vagrant all -m setupq

Install nginx:
ansible-playbook -i inventory/vagrant website.yml

Install HAProxy:
ansible-playbook -i inventory/vagrant haproxy.yml

Of course, the fastest way is:
ansible-playbook -i inventory/vagrant site.yml
