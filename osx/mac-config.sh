# Show Hidden Files
defaults write com.apple.finder AppleShowAllFiles YES

# Sublime Text Symlink setup
ln -sf "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

# Automatically hide/show the Dock
defaults write com.apple.dock autohide -bool true
