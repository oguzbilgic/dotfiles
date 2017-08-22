"Initialize vundle
set nocompatible                        " Don't care vi
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'daviddavis/vim-colorpack'
Plugin 'junegunn/seoul256.vim'
Plugin 'noahfrederick/vim-hemisu'
Plugin 'jnwhiteh/vim-golang'
Plugin 'tpope/vim-fugitive'
Plugin 'luochen1990/rainbow'
Plugin 'guns/vim-clojure-static'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'airblade/vim-gitgutter'
Plugin 'rakr/vim-one'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

call vundle#end()            " required

" General Settings
filetype on                             " Enable filetype detection
filetype plugin indent on               " Enable Automatic Indentation
set hidden                              " Enable changed hidden buffers
set nobackup                            " Disable backup files
set nowritebackup                       " No backup files
set noswapfile                          " No swap files
set viminfo=""                          " No welcome screen

" UI Settings
" colorscheme mustang                     " Use solarized colorscheme
colorscheme one-dark                     " Use solarized colorscheme
syntax on                               " Turn syntax higlighting on
set wildmenu
set t_Co=256                            " Enable 256 color on ubuntu server

" GUI Settings
if has("gui_running")
  set fuoptions=maxvert,maxhorz       " Fullscreen mode settings
  set guioptions=emgt                 " Hide toolbar and scrollbars
  set shortmess+=I                    " Disable welcome screen
  set guifont=Monaco:h12
  set mouse=""                        " Disable Mouse
  set lines=999 columns=95            " Set window size
endif

" Status Line Settings
set laststatus=2
" set statusline=%<\%n:%f\ %m%r%y%=%-35.(l:\ %l\ of\ %L,\ c:\ %c%V\ (%P)%)

" Window Settings
set number                              " Show line numbers
set splitright                          " Vertical split to right side
set scroll=5                            " Scroll 5 lines at a time

" Search Settings
set ignorecase                          " Disable search case sensitivity
set incsearch                           " Enable instant search
set hlsearch                            " Highlight search term

" Indentation Settings
set tabstop=4                           " Width of a tab character
set softtabstop=2                       " Tab lenght is 2 space
set shiftwidth=2                        " Tab lenght is 2 space
set smartindent
set autoindent

" Disable Arrow Keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Airline settings
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_theme='one'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.readonly = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'

" Experimental Settings
set smarttab
set nowrap
imap <tab> <c-x><c-o>
set completeopt-=preview

set termguicolors
set background=light        " for the light version
let g:one_allow_italics = 1 " I love italic for comments
colorscheme one
