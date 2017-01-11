
# Sublime Text Symlink setup
# ln -sf "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

# ----------------------------------------------------------------------
# | Finder                                                            |
# ----------------------------------------------------------------------


# Automatically open a new Finder window when a volume is mounted
# defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true &&
# defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true &&
# defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

# Use full POSIX path as window title
# defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Search the current directory by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Use list view in all Finder windows by default
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# defaults write com.apple.finder NewWindowTarget -string "PfDe"

# Set "Document" as the default location for new Finder windows
defaults write com.apple.finder NewWindowTargetPath -string "file://$HOME/Documents/"

# Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Do not show recent tags
defaults write com.apple.finder ShowRecentTags -bool false

# Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Show Hidden Files
defaults write com.apple.finder AppleShowAllFiles YES
# Removing the Open Warning from All Files in a Directory
xattr -d -r com.apple.quarantine ~/Downloads


# ----------------------------------------------------------------------
# | Terminal                                                            |
# ----------------------------------------------------------------------

# Only use UTF-8
defaults write com.apple.terminal StringEncodings -array 4

# Make the focus automatically follow the mouse
defaults write com.apple.terminal FocusFollowsMouse -string true


# ----------------------------------------------------------------------
# | TextEdit                                                            |
# ----------------------------------------------------------------------


# Open and save files as UTF-8 encoded
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

# Use plain text mode for new documents
defaults write com.apple.TextEdit RichText -int 0



# ----------------------------------------------------------------------
# | Trackpad                                                            |
# ----------------------------------------------------------------------

# Enable "Tap to click"

defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1


# Map "click or tap with two fingers" to the secondary click

defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 0
defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 0

# ----------------------------------------------------------------------
# | UI & UX                                                            |
# ----------------------------------------------------------------------

# Avoid creating ".DS_Store" files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Hide battery percentage from the menu bar
# defaults write com.apple.menuextra.battery ShowPercent -string "NO"

# Disable "Are you sure you want to open this application?" dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Automatically quit the printer app once the print jobs are completed
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Save screenshots to the Desktop
defaults write com.apple.screencapture location -string "$HOME/Dropbox/Screenshots"

# Require password immediately after into sleep or screen saver mode
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Always show scrollbars
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# Disable automatic termination of inactive apps
# defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true

# Set computer name
# sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "Laptop" &&
# sudo scutil --set ComputerName "Laptop"
# sudo scutil --set HostName "Laptop"
# sudo scutil --set LocalHostName "Laptop"

# Restart automatically if the computer freezes
sudo systemsetup -setrestartfreeze on

# Turn Bluetooth off
sudo defaults write /Library/Preferences/com.apple.Bluetooth.plist ControllerPowerState 0
sudo launchctl unload /System/Library/LaunchDaemons/com.apple.blued.plist
sudo launchctl load /System/Library/LaunchDaemons/com.apple.blued.plist

# Automatically hide/show the Dock
defaults write com.apple.dock autohide -bool true

# Reduce clutter by minimizing windows into their application icons
defaults write com.apple.dock minimize-to-application -bool true


# Enable Debug menu in App store
defaults write com.apple.appstore ShowDebugMenu -bool true

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false


# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
