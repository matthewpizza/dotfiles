export ZSH=$HOME/.oh-my-zsh

ZSH_THEME='cool_dude'

plugins=(
    git
)

source $ZSH/oh-my-zsh.sh

export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"
export FZF_DEFAULT_COMMAND='rg --files'
