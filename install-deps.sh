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
	jade

	# gulp & its related packages
	gulp
	generator-webapp
	generator-gulp-webapp

	# Linting
	jshint

	#Coding Standards
	jscs

	# Others
	live-server

	babel-cli
	babel-preset-es2015
	psi # Google Page Speed
	express
	json-server
	deployd
	itunes-remote
	fast-cli

	)

sudo npm install -g ${npm_packages[@]}

# Install Package Control for Sublime Text 3
PKG_CTRL_FILE="$HOME/Library/Application Support/Sublime Text 3/Installed Packages/Package Control.sublime-package"
[ ! -f "$PKG_CTRL_FILE" ] && curl -o "$PKG_CTRL_FILE" \
  "https://sublime.wbond.net/Package Control.sublime-package"

unset PKG_CTRL_FILE

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

sudo mv wp-cli.phar /usr/local/bin/wp

mkdir ~/go