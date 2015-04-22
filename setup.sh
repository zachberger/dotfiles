set -euo pipefail
IFS=$'\n\t'

git submodule init
git submodule update

if [ ! -f ~/.zshrc]; then
	ln -s `pwd`/.zshrc ~/.zshrc
fi

if [ ! -f ~/.oh-my-zsh ]; then
	ln -s `pwd`/.oh-my-zsh ~/.oh-my-zsh
fi

if [ ! -f ~/.vimrc ]; then
	ln -s `pwd`/.vimrc ~/.vimrc
fi

if [ ! -f ~/.gitconfig ]; then
	ln -s `pwd`/.gitconfig ~/.gitconfig
fi

if [ ! -f ~/.ssh/id_rsa ]; then
	ssh-keygen -t rsa -b 4096 
fi
