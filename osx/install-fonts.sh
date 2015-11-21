#!/bin/bash

find $HOME/dotfiles/osx/fonts/ -name "*.ttf" -exec cp -iv {} $HOME/Library/Fonts \;
find $HOME/dotfiles/osx/fonts/ -name "*.otf" -exec cp -iv {} $HOME/Library/Fonts \;

exit