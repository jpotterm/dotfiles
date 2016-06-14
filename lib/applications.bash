brew cask install android-file-transfer
brew cask install appcleaner
brew cask install bettertouchtool
brew cask install blender
brew cask install cyberduck
brew cask install dash
brew cask install disk-inventory-x
brew cask install firefox
brew cask install flycut
brew cask install google-chrome
brew cask install macvim
brew cask install plain-clip
brew cask install reaper
brew cask install seil
brew cask install sketch
brew cask install skyfonts
brew cask install slack
brew cask install spectacle
brew cask install thunderbird
brew cask install transmission
brew cask install vlc
brew cask install xquartz


bash ./lib/spotify.bash

ln -sfh /Applications/Xcode.app/Contents/Applications/FileMerge.app /Applications/

if [[ ! -d "/Applications/iOS Simulator.app" ]]; then
    cp -a "./resources/iOS Simulator.app" /Applications/
fi

if [[ ! -d /Applications/Lorem.app ]]; then
    cp -a ./resources/Lorem.app /Applications/
fi
