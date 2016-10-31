# Load aliases file
if test -e ~/.aliases
    source ~/.aliases
end

# fuck
function fuck
    eval ( thefuck $history[1] )
end

# EDITOR
set EDITOR /usr/bin/vim

# PATH
set PATH $HOME/.composer/vendor/bin $PATH
