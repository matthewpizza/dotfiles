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
set PATH /usr/local/bin /usr/local/sbin $HOME/.composer/vendor/bin $PATH
