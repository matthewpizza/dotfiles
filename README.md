# `༼ つ ◕_◕ ༽つ`

## `./dotfiles`

* Sets `$DOTFILES` environment variable with path to repository root
* Determines whether to use [`brew`](https://brew.sh/), [`yum`](https://linux.die.net/man/8/yum), or [`apt-get`](https://linux.die.net/man/8/apt-get) to install `config/packages`
* If macOS install `brew` if not installed and `config/brew` packages
* Runs non-package setup and installation from `installers`
* Symlink `files` listed in `config/dotfiles` using [`stow`](https://www.gnu.org/software/stow/)
* Symlink macOS Application preference

### `config`

* `packages`: cross-platform packages like including `stow`
* `brew`: macOS specific packages
* `dotfiles`: list of directories in `files` to `stow`
* `library`: list of directories in `files` to `stow` into `~/Library/Application Support/`
* `vscode`: list of extensions
    * `code --list-extensions > config/vscode`

### `files`

* Symlinked to `$HOME` with `stow`: `aliases`, `git`, `mpd`, `ncmpcpp`, `neovim`, `ripgrep`, `tmux`, and `zsh`
* Used in `installers`: `terminfo`
* macOS application configuration: `iterm`, `sublime-text`, and `vscode`

### `installers`

* `terminfo`: compiles `$HOME/.terminfo` binary use `tic` from source files in `files/terinfo`
* `zsh`: installs [oh my zsh](https://ohmyz.sh/) and changes shell to `zsh`
* `Darwin`
    * `brew`: install `config/brew` packages
    * `iterm`: set [iTerm](https://iterm2.com/) preferences and path to the plist in `files/iterm`
    * `mpd`: creates directories and files for [Music Player Daemon](https://www.musicpd.org/)
    * `vscode`: installs extension from `config/vscode`

## Modeled after

* [frnsys/dippindots](https://github.com/frnsys/dippindots)
* [komaeda/dotfiles](https://github.com/komaeda/dotfiles)
* [pje/dotfiles](https://github.com/pje/dotfiles/)

## Color scheme

* [Previously] [Soda Light](https://buymeasoda.github.io/soda-theme/) for Sublime Text (based on the default [Espresso](https://espressoapp.com/) theme)
* [Previously] [Dracula](https://draculatheme.com/)
* [Previously] [Night Owl](https://github.com/sdras/night-owl-vscode-theme)
* [Currently] [Light Owl](https://github.com/sdras/night-owl-vscode-theme)
