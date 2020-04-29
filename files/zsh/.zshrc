export COLORTERM='truecolor'
export EDITOR='nvim'
export FZF_DEFAULT_COMMAND='rg --files'
export PATH=$HOME/bin:$PATH
export RIPGREP_CONFIG_PATH=$HOME/.ripgreprc
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME='cool_dude'

plugins=(
    git
)

source $ZSH/oh-my-zsh.sh
