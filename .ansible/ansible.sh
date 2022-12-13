#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install -y python-software-properties
sudo apt-get update
sudo apt-get install -y ansible
cp /vagrant/.ansible/inventory /etc/ansible/hosts -f
chmod 666 /etc/ansible/hosts
sudo ansible-playbook /vagrant/.ansible/docker.yml --connection=local
