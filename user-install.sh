#Global NPM
wget -O- https://raw.githubusercontent.com/glenpike/npm-g_nosudo/master/npm-g-nosudo.sh | sh

export NPM_PACKAGES="/home/vagrant/.npm-packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules${NODE_PATH:+:$NODE_PATH}"
export PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
unset MANPATH  # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

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