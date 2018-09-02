" install vim-plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" :PlugInstall
call plug#begin('~/.local/share/nvim/plugged')
    Plug 'airblade/vim-gitgutter'
    Plug 'bronson/vim-trailing-whitespace'
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'editorconfig/editorconfig-vim'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    " Plug 'junegunn/vim-easy-align'
    " Plug 'ludovicchabant/vim-gutentags'
    Plug 'mileszs/ack.vim'
    Plug 'mustache/vim-mustache-handlebars'
    Plug 'raimondi/delimitmate'             " auto-complete quotes etc in insert mode
    Plug 'sheerun/vim-polyglot'             " better syntax highlighting
    Plug 'tomtom/tcomment_vim'              " easier code commenting
    Plug 'vim-airline/vim-airline'          " tabline uses buffers
call plug#end()

" colors
if (has('termguicolors'))
    " fix for ugly half working syntax highlighting
    set termguicolors

    " fix for termguicolors in tmux
    " https://github.com/vim/vim/issues/993#issuecomment-255651605
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

syntax on

if filereadable(expand('~/.local/share/nvim/plugged/dracula/colors/dracula.vim'))
    colorscheme dracula
    highlight Normal ctermbg=NONE
endif

" editor
set autoread       " :e to reload
set cursorline     " highlight current line
set encoding=utf-8
set hidden         " don't require save when switching
set history=1000   " undo more
set lazyredraw
set mouse=a        " mouse interactions
set nocompatible   " don't do dumb vi things with arrow keys
set noshowmode     " hides -- INSERT -- from the status line
set number
set relativenumber
set ruler
set shortmess+=I   " don't show the intro message when opening
set title

" swap
set noswapfile
set nobackup
set nowritebackup
set backupdir=~/.vim/tmp,/var/tmp,/tmp
set directory=~/.vim/tmp,/var/tmp,/tmp

" overrides
set exrc     " allow childern .vimrc to override
set modeline " per file overrides
set secure   " be safe about overrides

" identation
set autoindent            " keeps indentation on next line
set expandtab             " insert spaces for tab key
set shiftwidth=4          " indent with 4 spaces
set smartindent           " knows when to increase indentation
set softtabstop=4         " when hitting tab
filetype indent plugin on

" override / to be , for finger sanity
let mapleader = ","

" move w/ wrap
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" code completion
set wildmenu
set wildmode=longest:list,full

" whitespace
set backspace=indent,eol,start " make backspace work sanely
set list                       " show invisble characters
set listchars=""               " reset inivisble character setting
set listchars+=tab:\ \         " tab character
set listchars+=eol:¬           " newline character
set listchars+=trail:.         " show trailing spaces

" search
set hlsearch   " higlight search matches
set incsearch  " move cursor to search matches
set ignorecase " case-insensitive search
set smartcase  " except when caps are present

" softwrap
set linebreak    " soft break at word / whitespace
set textwidth=0  " no hard warp
set wrapmargin=0 " same as above
set wrap         " 'visual' wrapping

" spellcheck
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd FileType gitcommit setlocal spell
set complete+=kspell

" fzf as ctrl-p
nnoremap <c-p> :FZF<CR>

" find in files with ack
nnoremap <Leader>f :Ack<Space>

" find the word under the cursor
" https://robots.thoughtbot.com/faster-grepping-in-vim
nnoremap K :Ack! "\b<C-R><C-W>\b"<CR>:cw<CR>

if executable('ag')
    let g:ackprg = 'ag --hidden --ignore .git --vimgrep'
    let $FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
endif

if executable('fd')
    let $FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
endif

" airline
let g:airline#extensions#tabline#enabled = 1 " fake tabs for buffer
let g:airline_powerline_fonts = 1            " TODO: iTerm vertical character spacing

" gitgutter
let g:gitgutter_enabled = 1

" buffer nav
map <Leader>a :bprev<CR>
map <Leader>s :bnext<CR>
map <Leader>d :bdelete<CR>
nnoremap <Leader><Leader> <C-^>

" git commit message
autocmd FileType gitcommit call setpos('.', [0, 1, 1, 0]) " start on first line always

" netrw
" http://ellengummesson.com/blog/2014/02/22/make-vim-really-behave-like-netrw/
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:netrw_banner = 0
let g:netrw_list_hide = &wildignore
