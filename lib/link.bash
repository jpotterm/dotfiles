ln -s ~/.vim ../config/vim/vim
ln -s ~/.vimrc ../config/vim/vimrc
ln -s ~/.vimrc.d ../config/vim/vimrc.d

mkdir -p ~/.config/nvim
ln -s ~/.config/nvim/init.vim ~/.vimrc

ln -s ~/.gvimrc ../config/vim/gvimrc

ln -s ~/.isort.cfg ../config/isort/isort.cfg

ln -s ~/.hgrc ../config/mercurial/hgrc
ln -s ~/.hgignore_global ../config/mercurial/hgignore_global

ln -s ~/.gitconfig ../config/git/gitconfig
ln -s ~/.gitignore_global ../config/git/gitignore_global
