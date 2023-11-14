#!/bin/bash -eux

# dock: https://macos-defaults.com/dock/orientation.html
defaults write com.apple.dock "orientation" -string bottom
defaults write com.apple.dock "tilesize" -int "60"
defaults write com.apple.dock "autohide" -bool "true"
defaults write com.apple.dock "autohide-time-modifier" -float "0.5"
defaults write com.apple.dock "autohide-delay" -float "0.1"
defaults write com.apple.dock "show-recents" -bool "false"
defaults write com.apple.dock "mineffect" -string "suck"
killall Dock || true


# Finder
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"
defaults write com.apple.finder "AppleShowAllFiles" -bool "true"
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true"
defaults write com.apple.finder "FXPreferredViewStyle" -string "clmv"
killall Finder || true

# Menu Bar
defaults write com.apple.menuextra.clock "FlashDateSeparators" -bool "false"
killall SystemUIServer

# Trackpad
defaults write com.apple.AppleMultitouchTrackpad "FirstClickThreshold" -int "0"
