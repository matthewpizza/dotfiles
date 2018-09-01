# Load aliases file
if test -e ~/.aliases
    source ~/.aliases
end

# nvim
if type nvim > /dev/null 2>&1
    alias vim='nvim'
end

# EDITOR
set EDITOR vim

# PATH
set PATH $HOME/.composer/vendor/bin $PATH

if test -z "$TMUX"
    tmux attach; or tmux new-session -A -s pizza
end
