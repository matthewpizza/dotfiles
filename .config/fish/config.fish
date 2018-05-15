# Load aliases file
if test -e ~/.aliases
    source ~/.aliases
end

# nvim
if type nvim > /dev/null 2>&1
    alias vim='nvim'
end

# fuck (https://github.com/nvbn/thefuck)
function fuck
    eval thefuck $history[1]
end

# EDITOR
set EDITOR /usr/bin/vim

# PATH
set PATH $HOME/.composer/vendor/bin $PATH
