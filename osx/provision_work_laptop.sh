# Pip
sudo easy_install pip
sudo pip install mercurial
sudo pip install fabric

# VirtualBox
curl -L -o ~/Downloads/virtual_box.dmg http://download.virtualbox.org/virtualbox/4.3.14/VirtualBox-4.3.14-95030-OSX.dmg
hdiutil mount ~/Downloads/virtual_box.dmg
sudo installer -pkg /Volumes/VirtualBox/VirtualBox.pkg -target /
umount /Volumes/VirtualBox/

# Vagrant
curl -L -o ~/Downloads/vagrant.dmg https://dl.bintray.com/mitchellh/vagrant/vagrant_1.6.4.dmg
hdiutil mount ~/Downloads/vagrant.dmg
sudo installer -pkg /Volumes/Vagrant/Vagrant.pkg -target /
umount /Volumes/Vagrant/

# Vagrant vbguest plugin
vagrant plugin install vagrant-vbguest

# Get deployment key

# Install NPM and Bower
