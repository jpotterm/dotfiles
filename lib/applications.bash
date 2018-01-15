set -x

ln -sfh /Applications/Xcode.app/Contents/Applications/FileMerge.app /Applications/

if [[ ! -d "/Applications/iOS Simulator.app" ]]; then
    cp -a "./resources/iOS Simulator.app" /Applications/
fi

if [[ ! -d /Applications/Lorem.app ]]; then
    cp -a ./resources/Lorem.app /Applications/
fi
