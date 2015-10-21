mkdir ~/Library/"Application Support"/Spotify
sudo touch ~/Library/"Application Support"/Spotify/Spotify_new.archive{,.sig}
sudo chmod -w ~/Library/"Application Support"/Spotify/{,Spotify_new.archive{,.sig}}

if [[ ! -d /Applications/Spotify.app ]]; then
    cp -a ../resources/Spotify.app /Applications/
fi
