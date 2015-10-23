#!/bin/bash

xcode-select –install

# Install Brew
curl -fsS \'https://raw.githubusercontent.com/Homebrew/install/master/install' |ruby



# https://rvm.io
# rvm for the rubiess
curl -L https://get.rvm.io | bash -s stable --rails


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# commonly used npm deps
sudo npm install -g yo gulp grunt-cli jshint browserify generator-webapp generator-gulp-webapp
