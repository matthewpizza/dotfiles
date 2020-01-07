# .

A mellow amount of configuration.

## Ripped from

- [frnsys/dippindots](https://github.com/frnsys/dippindots)
- [holman/dotfiles](https://github.com/holman/dotfiles)
- [jondashkyle/dotfiles](https://github.com/jondashkyle/dotfiles)
- [keeganlow/dotfiles](https://github.com/keeganlow/dotfiles)
- [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
- [noopkat/dotfiles](https://github.com/noopkat/dotfiles)
- [oe/dotfiles](https://github.com/oe/dotfiles)
- [paulirish/dotfiles](https://github.com/paulirish/dotfiles)
- [pje/dotfiles/](https://github.com/pje/dotfiles/)
- [rtomayko/dotfiles](https://github.com/rtomayko/dotfiles)
- [ryanb/dotfiles](https://github.com/ryanb/dotfiles)
- [torrez/dotvim](https://github.com/torrez/dotvim)
- [v/dotfiles](https://github.com/v/dotfiles)
- [waferbaby/dotfiles](https://github.com/waferbaby/dotfiles)
- [wincent/wincent](https://github.com/wincent/wincent)

## TODO

- [`stow`](https://www.gnu.org/software/stow/) — vaguely I think this is a symlink thing?
- For `vim`
    - PHPDoc
    - code folding
- Maybe some parity b/w `fish` and `zsh` — or make work use `fish`
- tmux autoconnect after suspend with that dumb clod vm
- media keys for mpd https://github.com/pushrax/osxmpdkeys

## Test color support for `mosh` lots of colors

```bash
awk 'BEGIN{
    s="/\\/\\/\\/\\/\\"; s=s s s s s s s s;
    for (colnum = 0; colnum<77; colnum++) {
        r = 255-(colnum*255/76);
        g = (colnum*510/76);
        b = (colnum*255/76);
        if (g>255) g = 510-g;
        printf "\033[48;2;%d;%d;%dm", r,g,b;
        printf "\033[38;2;%d;%d;%dm", 255-r,255-g,255-b;
        printf "%s\033[0m", substr(s,colnum+1,1);
    }
    printf "\n";
}'
```

god I love `mosh`, definitely stole this from somewhere…
