#!/bin/bash

# ansible-galaxy install -r ~/work/mac-dev-playbook/requirements.yml
# ansible-playbook ~/work/mac-dev-playbook/main.yml -i ~/work/mac-dev-playbook/inventory -K
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
pip3 install neovim

chsh -s /usr/local/bin/zsh

rm -rf ~/.vim ~/.vimrc ~/.zshrc ~/.tmux ~/.tmux.conf 2> /dev/null
rm -rf ~/.bash_profile 2> /dev/null
rm -rf ~/.inputrc 2> /dev/null
rm -rf ~/.gitconfig 2> /dev/null
rm -rf ~/.gitignore 2> /dev/null

mkdir -p ~/.config ~/.config/nvim

mkdir -p ~/.vim/pack/bundle/start
mkdir -p ~/.vim/pack/bundle/opt
mkdir -p ~/.vim/pack/minpac/opt

ln -s ~/work/dotfiles/zshrc ~/.zshrc
ln -s ~/work/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/work/dotfiles/vimrc ~/.vimrc
ln -s ~/work/dotfiles/bash_profile ~/.bash_profile
ln -s ~/work/dotfiles/inputrc ~/.inputrc
ln -s ~/work/dotfiles/gitconfig ~/.gitconfig
ln -s ~/work/dotfiles/gitignore ~/.gitignore