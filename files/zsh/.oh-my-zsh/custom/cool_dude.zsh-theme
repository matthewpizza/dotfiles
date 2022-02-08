cool='༼ つ ◕_◕ ༽つ'
unchill='༼ つ ಠ_ಠ ༽つ'

# Modified robbyrussell theme
# https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/robbyrussell.zsh-theme
PROMPT="%(?:%{$fg[green]%}$cool:%{$fg[red]%}$unchill)"
PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
