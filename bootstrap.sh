#!/usr/bin/env bash
apt-get -qq update
apt-get -qq install -y git
apt-get -qq install python-software-properties python g++ make

#Node js
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
apt-get -qq install -y nodejs build-essential
