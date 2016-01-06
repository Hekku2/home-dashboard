#Global NPM
wget -O- https://raw.githubusercontent.com/glenpike/npm-g_nosudo/master/npm-g-nosudo.sh | sh
cat vagrant-bashrc-additions.txt >> .bashrc

source ~/.bashrc

npm install bower -g
npm install gulp -g
npm install sails -g

git clone --recursive https://github.com/Hekku2/home-dashboard.git

cd home-dashboard
npm install

#Initialize config
cp backend/config/local_vagrant.js backend/config/local.js
cp frontend/config/config_vagrant.json frontend/config/config.json