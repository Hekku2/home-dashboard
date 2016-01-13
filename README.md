# Home dashboard project

## What is it
Purpose of the home-dashboard project is to visualize sensor data gathered from home (temperature, noise levels, etc).

###
This project is based on [angular-sailsjs-boilerplate](https://github.com/tarlepp/angular-sailsjs-boilerplate)

## Directory structure
* ```backend``` = Backend api [repository](https://github.com/Hekku2/home-dashboard-backend)
* ```frontend``` = Frontend views [repository](https://github.com/Hekku2/home-dashboard-frontend)
* ```windows-client``` = Windows client [repository](https://github.com/Hekku2/home-dashboard-windowsclient)

Also note that these 'directories' are just submodules to another repos

### Installation
Install vagrant

<pre>
vagrant up
</pre>

See ```bootstrap.sh``` and ```user-install.sh```

#### Back- and frontend installation
Navigate yourself to directory where you downloaded or cloned this repo and run following command on shell:
<pre>
npm install
</pre>

That will install all needed packages for back- and frontend. If this won't work you could try first to initialize
back- and frontend submodules with following command:

<pre>
git submodule update --init --recursive
</pre>

Also you might need to run ```npm install``` command on each of those directories (<code>backend</code> and 
<code>frontend</code>).

#### Configuration
You can configure your <code>backend</code> and <code>frontend</code> applications to use your environment specified 
settings. Basically by default you don't need to make any configurations at all. With default configuration backend will 
be run on http://localhost:1337 and frontend on http://localhost:3001 (development) http://localhost:3000 (production).

##### Backend
There is an example of backend configuration file on following path.

<pre>
/backend/config/local_example.js
</pre>

Just copy this to <code>/backend/config/local.js</code> and make necessary changes to it. Note that this 
<code>local.js</code> file is in .gitignore so it won't go to VCS at any point.

##### Frontend
There is an example of front configuration file on following path.

<pre>
/frontend/config/config_example.json
</pre>

Just copy this to <code>/frontend/config/config.json</code> and make necessary changes to it. Note that this 
<code>config.json</code> file is in .gitignore so it won't go to VCS at any point.

##### Notes
If you're changing your backend API url to another than <code>http://localhost:1337</code> you need to make 
<code>frontend/config/config.json</code> with proper content on it. Use that example file as start.

### Running of this project
You have to start both <code>backend</code> and <code>frontend</code> servers to run this project. You can do this
by running following command on your project root directory:

<pre>
npm start
</pre>

This will start back- and frontend applications for you. And if you need to start those separately see following docs
about that.

#### Backend
<pre>
cd backend
sails lift
</pre>

This will start sails.js server on defined port. By default this is accessible from http://localhost:1337 url. If you 
try that with your browser you should only see page that contains <code>Not Found</code> message on it. This means that
everything is ok.

#### Frontend

##### Development #####
<pre>
cd frontend
gulp serve
</pre>

This will start simple web server that you can use within developing frontend side. By default this is accessible from 
http://localhost:3001 url. You should be see login page if you try that url with your browser.

##### Deployment #####
As in production
<pre>
cd frontend
gulp dist
</pre>

This will create a deployment code to ```frontend/dist``` folder. After that you can serve those static HTML, CSS, 
Javascript and asset files by any web server you like (Apache, nginx, IIS, etc.). For testing this production ready code
you can also use ```gulp production``` command which will serve those dist files. By default this is accessible from
http://localhost:3000 url.

### Possible failures
Below is small list of possible failures that can occur while trying this POC.

<ol>
    <li>Sails won't lift and you get error message like: <code>Fatal error: watch ENOSPC</code>
        <ul>
            <li>http://stackoverflow.com/questions/16748737/grunt-watch-error-waiting-fatal-error-watch-enospc</li>
            <li>tl;dr just run <code>npm dedupe</code> 
        </ul>
    </li>
    <li>Frontend side is missing some 3rd party libraries. eg. browser console is full of some errors.
        <ul>
            <li>Try to install bower packages manually by command <code>bower install</code> in <code>frontend</code> directory.
        </ul>        
    </li>
</ol>

## License
The MIT License (MIT)

Based on tarlepp's [angular-sailsjs-boilerplate](https://github.com/tarlepp/angular-sailsjs-boilerplate)