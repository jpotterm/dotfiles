set -x

ln -sfh "$PWD"/config/bash/bashrc ~/.bashrc
ln -sfh "$PWD"/config/bash/profile ~/.profile

ln -sfh "$PWD"/config/vim/vim ~/.vim
ln -sfh "$PWD"/config/vim/vimrc ~/.vimrc
ln -sfh "$PWD"/config/vim/vimrc.d ~/.vimrc.d

ln -sfh "$PWD"/config/isort/isort.cfg ~/.isort.cfg

ln -sfh "$PWD"/config/mercurial/hgrc ~/.hgrc
ln -sfh "$PWD"/config/mercurial/hgignore_global ~/.hgignore_global

ln -sfh "$PWD"/config/git/gitconfig ~/.gitconfig
ln -sfh "$PWD"/config/git/gitignore_global ~/.gitignore_global

# Fixes Neovim Ctrl-h https://github.com/neovim/neovim/issues/2048#issuecomment-78045837
tic "$PWD"/config/terminfo/xterm-256color.ti
