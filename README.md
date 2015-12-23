# Docerized Ionic environment
# Building
`docker build Dockerfile`
# Running
Exec run.sh with path to Ionic project root directory
`./run.sh <path_to_ionic_project>`
# Bootstrapping project
Execute following commands inside running container
`npm install`
`bower install`
`ionic serve -b 8100 35729 -a`
And open http://localhost in your browser

