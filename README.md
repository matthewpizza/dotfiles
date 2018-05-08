A mellow amount of configuration.

- [Fira Code](https://github.com/tonsky/FiraCode)
- [`fd`](https://github.com/sharkdp/fd)

`fish`:

- [fisherman](https://github.com/fisherman/fisherman)

Ripped from:

- [frnsys/dippindots](https://github.com/frnsys/dippindots)
- [keeganlow/dotfiles](https://github.com/keeganlow/dotfiles)
- [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
- [holman/dotfiles](https://github.com/holman/dotfiles)
- [ryanb/dotfiles](https://github.com/ryanb/dotfiles)
- [rtomayko/dotfiles](https://github.com/rtomayko/dotfiles)
- [jondashkyle/dotfiles](https://github.com/jondashkyle/dotfiles)
- [paulirish/dotfiles](https://github.com/paulirish/dotfiles)
- [oe/dotfiles](https://github.com/oe/dotfiles)
- [torrez/dotvim](https://github.com/torrez/dotvim)
- [v/dotfiles](https://github.com/v/dotfiles)
- [noopkat/dotfiles](https://github.com/noopkat/dotfiles)
- [wincent/wincent](https://github.com/wincent/wincent)

TODO:

- [`stow`](https://www.gnu.org/software/stow/)
- PHPDoc
- code folding
- Brewfile

Test color support:

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
