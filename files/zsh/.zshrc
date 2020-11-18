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
source $HOME/.aliases

if [ -f $HOME/.fzf.zsh ]; then
    source $HOME/.fzf.zsh
fi

# local settings
if [[ -f "$HOME/.zshrc.local" ]]; then
    source "$HOME/.zshrc.local"
fi

# attach to pizza on load
if [[ -z "$TMUX" ]] && [ "$SSH_CONNECTION" != "" ]; then
    tmux attach-session -t pizza || tmux new-session -s pizza
fi
