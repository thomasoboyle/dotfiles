#!/usr/bin/env bash

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressANdHoldEnabled -bool false

# Set a blazingly fast keyboard repeat key
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlbalDomain InitialKeyRepeat -int 10

# Show the full URL in the address bar (note: this still hides the scheme)
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true
