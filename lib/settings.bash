# Install apps from anywhere
sudo spctl --master-disable

# Disable "downloaded from the internet" warning
defaults write com.apple.LaunchServices LSQuarantine -bool NO

# Turn off sounds
defaults write com.apple.systemsound "com.apple.sound.uiaudio.enabled" -int 0

# Turn off terminal beep
#defaults write -g "com.apple.sound.beep.feedback" -int 0

# Fast key repeat (lower is faster)
defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 2

# Disable accent menu
defaults write -g ApplePressAndHoldEnabled -bool false

# Start at login
osascript -e "tell application \"System Events\" to make login item at end with properties {path:\"$HOME/Applications/Spectacle.app\", hidden:false}"
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
