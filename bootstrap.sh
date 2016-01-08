#!/usr/bin/env bash
apt-get -qq update
apt-get -qq install -y git
apt-get -qq install python-software-properties python g++ make

#Database configuration
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
apt-get -qq install -y mysql-server

#Node js
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
apt-get -qq install -y nodejs build-essential
