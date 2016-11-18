#!/usr/bin/env bash
apt-get -qq update
apt-get -qq install -y git
apt-get -qq install python-software-properties python g++ make

#Following is needed by frontend scss lint
apt-get -qq install ruby
gem install scss_lint

#Database configuration
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
apt-get -qq install -y mysql-server

mysql --user=root --password=root -e "create user 'root'@'10.0.2.2' identified by 'root';"
mysql --user=root --password=root -e "grant all privileges on *.* to 'root'@'10.0.2.2' with grant option;"
mysql --user=root --password=root -e "flush privileges;"

echo '[mysqld]' >> /etc/mysql/conf.d/vagrant-override.cnf

echo 'bind-address=0.0.0.0' >> /etc/mysql/conf.d/vagrant-override.cnf
sudo service mysql restart

#Node js
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs build-essential
