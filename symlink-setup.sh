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
ln -s ~/dotfiles/.secrets ~/.secrets


ln -sf ~/dotfiles/git/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/git/.gitignore ~/.gitignore
ln -sf ~/dotfiles/.gemrc ~/.gemrc
ln -sf ~/dotfiles/.sshrc ~/.sshrc


ln -sf ~/dotfiles/shell/local-bin/ssh.sh /usr/local/bin/ssh.sh



ln -sf $HOME/dotfiles/sublime-text/snippets $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Snippets
ln -sf $HOME/dotfiles/sublime-text/Default\ \(OSX\).sublime-keymap $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap
ln -sf $HOME/dotfiles/sublime-text/Package\ Control.sublime-settings $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings
ln -sf $HOME/dotfiles/sublime-text/Preferences.sublime-settings $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
ln -sf $HOME/dotfiles/sublime-text/ColorHighlighter.sublime-settings $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/ColorHighlighter.sublime-settings


#  ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

# For DropShare to work
# ln -s `which ffmpeg` /usr/local/bin/ffmpeg-static
# Make sure to move Sublime Text to Application directory

# Fix for MySQL gem.
sudo ln -s /usr/local/mysql/lib/libmysqlclient.18.dylib /usr/local/lib/libmysqlclient.18.dylib