# `༼ つ ◕_◕ ༽つ`

## `./dotfiles`

* Sets `$DOTFILES` environment variable with path to repository root
* Determines whether to use [`brew`](https://brew.sh/), [`yum`](https://linux.die.net/man/8/yum), or [`apt-get`](https://linux.die.net/man/8/apt-get) to install `config/packages`
* If macOS install `brew` if not installed and `config/brew` and `config/cask` packages
* Runs non-package setup and installation from `installers`
* Symlink `files` listed in `config/dotfiles` using [`stow`](https://www.gnu.org/software/stow/)

### `config`

* `packages`: cross-platform packages like including `stow`
* `brew`: macOS specific packages
* `cask`: macOS application
* `dotfiles`: list of directories in `files` to `stow`

### `files`

* Symlinked to `$HOME` with `stow`: `aliases`, `git`, `mpd`, `ncmpcpp`, `neovim`, `ripgrep`, `tmux`, and `zsh`
* Used in `installers`: `terminfo`
* macOS application configuration: `iterm`

### `installers`

* `brew` and `cask`: install `config/brew` and `config/cask` packages
* `font`: install current preferred editor font [Source Code Pro](https://github.com/adobe-fonts/source-code-pro)
* `iterm`: set [iTerm](https://iterm2.com/) preferences and path to the plist in `files/iterm`
* `mpd`: creates directories and files for [Music Player Daemon](https://www.musicpd.org/)
* `terminfo`: compiles `$HOME/.terminfo` binary use `tic` from source files in `files/terminfo`
* `zsh`: installs [oh my zsh](https://ohmyz.sh/) and changes shell to `zsh`

## Modeled after

* [frnsys/dippindots](https://github.com/frnsys/dippindots)
* [komaeda/dotfiles](https://github.com/komaeda/dotfiles)
* [pje/dotfiles](https://github.com/pje/dotfiles/)
