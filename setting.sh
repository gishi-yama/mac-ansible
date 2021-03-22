#!/bin/bash

ANSIBLE_PATH=~/workspace/settings/mac-ansible

## command line tools
xcode-select --install

## install homebrew
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## install ansible
brew install ansible

## clone repo
# git clone https://github.com/kohbis/mac-ansible.git ${ANSIBLE_PATH}
git clone https://github.com/gishi-yama/mac-ansible.git ${ANSIBLE_PATH}

## ansible
cd ${ANSIBLE_PATH}
git checkout -b onBoard origin/e306
ansible-playbook -i inventory/localhost localhost.yml
