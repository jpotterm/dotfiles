ln -sfh "$PWD"/config/vim/vim ~/.vim
ln -sfh "$PWD"/config/vim/vimrc ~/.vimrc
ln -sfh "$PWD"/config/vim/vimrc.d ~/.vimrc.d

mkdir -p ~/.config/nvim
ln -sfh ~/.vimrc ~/.config/nvim/init.vim

ln -sfh "$PWD"/config/vim/gvimrc ~/.gvimrc

ln -sfh "$PWD"/config/isort/isort.cfg ~/.isort.cfg

ln -sfh "$PWD"/config/mercurial/hgrc ~/.hgrc
ln -sfh "$PWD"/config/mercurial/hgignore_global ~/.hgignore_global

ln -sfh "$PWD"/config/git/gitconfig ~/.gitconfig
ln -sfh "$PWD"/config/git/gitignore_global ~/.gitignore_global
