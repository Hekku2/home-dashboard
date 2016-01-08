#Global NPM
wget -O- https://raw.githubusercontent.com/glenpike/npm-g_nosudo/master/npm-g-nosudo.sh | sh

git clone --recursive https://github.com/Hekku2/home-dashboard.git
cat home-dashboard/vagrant-bashrc-additions.txt >> .bashrc
npm install bower -g
npm install gulp -g
npm install sails -g
source ~/.bashrc

cd home-dashboard

mysql --user=root --password=root < db/database_initialization.sql

npm install

#Initialize config
cp backend/config/local_vagrant.js backend/config/local.js
cp frontend/config/config_vagrant.json frontend/config/config.json

cd frontend
npm rebuild node-sass

--Ruby and scss-lint gem installed