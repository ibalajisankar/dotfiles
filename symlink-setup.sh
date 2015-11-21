#!/bin/bash

# Set up symlinks
if [ -f "$HOME/.bashrc" ]
then
  mv ~/.bashrc ~/.bashrc.old
fi
ln -s ~/dotfiles/.bashrc ~/.bashrc

if [ -f "$HOME/.zshrc" ]
then
  mv ~/.zshrc ~/.zshrc.old
fi

ln -s ~/dotfiles/.zshrc ~/.zshrc


ln -sf ~/dotfiles/git/gitconfig ~/.gitconfig
ln -sf ~/dotfiles/git/gitignore ~/.gitignore
ln -sf ~/dotfiles/.gemrc ~/.gemrc


ln -sf $HOME/dotfiles/sublime-text/snippets $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Snippets

sudo rmdir -r $HOME/Library/Fonts
ln -sf $HOME/dotfiles/osx/fonts $HOME/Library/Fonts