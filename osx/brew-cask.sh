#!/bin/bash


# to maintain cask .... 
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup` 


# Install native apps

brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# daily
brew cask install spectacle
brew cask install dropbox
brew cask install rescuetime
brew cask install flux

# dev
brew cask install iterm2
brew cask install sublime-text3

# Make sure to move Sublime Text to Application directory
# ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl

brew cask install imageoptim

# fun
brew cask install limechat
brew cask install miro-video-converter

# browsers
brew cask install google-chrome
brew cask install torbrowser

# less often
brew cask install disk-inventory-x
brew cask install vlc
brew cask install utorrent

# others

brew cask install evernote
brew cask install telegram
brew cask install sequel-pro
brew cask install skype
brew cask install gitx  
brew cask install todoist
brew cask install caffeine
brew cask install slack


# Not on cask but I want regardless.
