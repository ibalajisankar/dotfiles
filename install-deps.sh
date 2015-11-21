#!/bin/bash

xcode-select –install


# https://rvm.io
# rvm for the rubiess
curl -L https://get.rvm.io | bash -s stable --rails


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# commonly used npm deps
npm_packages=(
	yo
	express-generator
	
	# gulp & its related packages
	gulp
	generator-webapp
	generator-gulp-webapp

	# Linting
	jshint

	# Others
	live-server
	
	
	)
sudo npm install -g ${npm_packages[@]} 

