# List all defaults
# defaults read


# Install apps from anywhere
sudo spctl --master-disable

# Disable "downloaded from the internet" warning
defaults write com.apple.LaunchServices LSQuarantine -bool NO

# Turn off sounds
defaults write com.apple.systemsound "com.apple.sound.uiaudio.enabled" -int 0

# Turn off terminal beep
defaults write NSGlobalDomain "com.apple.sound.beep.feedback" -int 0

# Enable tap to click
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Fast key repeat (lower is faster)
defaults write NSGlobalDomain InitialKeyRepeat -int 15
defaults write NSGlobalDomain KeyRepeat -int 2

# Disable accent menu
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Start at login
osascript -e "tell application \"System Events\" to make login item at end with properties {path:\"/Applications/Spectacle.app\", hidden:false}"
osascript -e "tell application \"System Events\" to make login item at end with properties {path:\"/Applications/Seil.app\", hidden:false}"
osascript -e "tell application \"System Events\" to make login item at end with properties {path:\"/Applications/Flycut.app\", hidden:false}"

# Dock preferences
osascript -e '
tell application "System Events"
    tell dock preferences
       set properties to {minimize effect:scale, dock size:0.2, screen edge:left, animate:false}
    end tell
end tell
'

# Always open everything in Finder's column view
defaults write com.apple.Finder FXPreferredViewStyle clmv

# Set the Finder prefs for hiding volumes on the Desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false

# Three finger swipe
defaults write NSGlobalDomain AppleEnableSwipeNavigateWithScrolls -bool false

# Show file extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Disable subpixel antialiasing
defaults write NSGlobalDomain AppleFontSmoothing -int 0

# Scroll to point clicked on scrollbar
defaults write NSGlobalDomain AppleScrollerPagingBehavior -bool true

# Show ~/Library folder
chflags nohidden ~/Library

# Disable file extension change warning
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false



# Hide Safari's bookmark bar
# defaults write com.apple.Safari ShowFavoritesBar -bool false

# Set up Safari for development
# defaults write com.apple.Safari IncludeDevelopMenu -bool true
# defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
