" install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" :PlugInstall
call plug#begin('~/.vim/plugged')
    Plug 'airblade/vim-gitgutter'
    Plug 'bronson/vim-trailing-whitespace'
    " Plug 'ctrlpvim/ctrlp.vim'
    Plug 'dracula/vim', { 'as': 'dracula' } " 🦇
    Plug 'junegunn/vim-easy-align'          " TODO: key mapping to make this easier
    Plug 'mustache/vim-mustache-handlebars'
    Plug 'pangloss/vim-javascript'          " better js syntax
    Plug 'vim-airline/vim-airline'          " tabline uses buffers
call plug#end()

" colors
set t_Co=256        " sometimes tmux says weird stuff
syntax on

if filereadable(expand("$HOME/.vim/plugged/dracula/colors/dracula.vim"))
    colorscheme dracula
endif

" editor
set cursorline     " highlight current line
set encoding=utf-8
set hidden         " don't require save when switching
set history=1000   " undo more
set mouse=a        " mouse interactions 💯
set nocompatible   " don't do dumb vi things with arrow keys
set number
set relativenumber
set ruler
set title

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

" code completion
set wildmenu
set wildmode=longest:list,full

" whitespace
set backspace=indent,eol,start " make backspace work sanely
set list                       " show invisble characters
set listchars=""               " reset inivisble character setting
set listchars+=tab:▸\          " tab character
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

" TODO: disabled for now because it makes code unreadable
" set spell
" set spelllang=en_us

" ctrlp
" let g:ctrlp_show_hidden = 1

" https://robots.thoughtbot.com/faster-grepping-in-vim
" if executable('ag')
"     set grepprg=ag\ --nogroup\ --nocolor
"     let g:ctrlp_user_command = 'ag %s -l --nocolor --nogroup --hidden -g ""'
"     let g:ctrlp_use_caching = 0
" endif

" airline
let g:airline#extensions#tabline#enabled = 1 " 🆒 fake tabs for buffer
let g:airline_powerline_fonts = 1            " TODO: iTerm vertical character spacing

" gitgutter
let g:gitgutter_enabled = 1

" custom keys
" nnoremap <esc> :noh<return><esc> " clear highlighting on escape key

" buffer nav
nnoremap <c-h> :bprevious!<CR>
nnoremap <c-l> :bnext!<CR>
nnoremap <silent> <c-w> :bdelete!<CR>
