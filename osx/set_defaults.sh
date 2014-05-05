# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false

# Always open everything in Finder's column view
defaults write com.apple.Finder FXPreferredViewStyle clmv

# Set a fast key repeat
defaults write NSGlobalDomain KeyRepeat -int 2

# Set the Finder prefs for hiding volumes on the Desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false

# Hide Safari's bookmark bar
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Set up Safari for development
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
