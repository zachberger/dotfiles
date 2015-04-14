# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

HISTSIZE=10000
SAVEHIST=10000

platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
   platform='darwin'
fi

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="tjkirch"

if [[ $platform == 'linux' ]]; then
	export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
	plugins=(git git-extras tmux)
elif [[ $platform == 'darwin' ]]; then
    PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
    PATH=$PATH:/usr/local/opt/go/libexec/bin
    PATH=$PATH:/Users/zach/Development/depot_tools
    export PATH
    plugins=(git git-extras osx pip pod tmux)
    alias cdd="cd ~/Development"
    export GOPATH=/usr/local/Cellar/go/1.4.1
fi
source $ZSH/oh-my-zsh.sh
export EDITOR="nvim"
# User configuration
alias vim="nvim"
alias ls="ll"
