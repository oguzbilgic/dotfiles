" Initialize vundle
set nocompatible
filetype off

" Start Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'michaeljsmith/vim-indent-object'
" Plugin 'jiangmiao/auto-pairs'
" Plugin 'xuyuanp/nerdtree-git-plugin'
" Plugin 'tpope/vim-fugitive'
" Plugin 'airblade/vim-gitgutter'

" Language
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'rhysd/vim-crystal'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/gitignore'

" Themes
" Plugin 'daviddavis/vim-colorpack'
Plugin 'noahfrederick/vim-hemisu'
Plugin 'luochen1990/rainbow'
Plugin 'ajh17/Spacegray.vim'
Plugin 'felixhummel/setcolors.vim'
Plugin 'rakr/vim-one'
Plugin 'junegunn/seoul256.vim'
Plugin 'w0rp/ale'
Plugin 'vim-scripts/playroom'
Plugin 'lifepillar/vim-wwdc17-theme'

" brew install cmake
" cd ~/.vim/bundle/YouCompleteMe
" ./install.py --clang-completer
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required

" Vundle doesn't work on fish shell
" https://github.com/VundleVim/Vundle.vim/issues/690#issuecomment-251830036
" set shell=/bin/bash

" General Settings
filetype on                             " Enable filetype detection
filetype plugin indent on               " Enable Automatic Indentation
set hidden                              " Enable changed hidden buffers
set nobackup                            " Disable backup files
set nowritebackup                       " No backup files
set noswapfile                          " No swap files
set viminfo=""                          " No welcome screen

" UI Settings
colorscheme hemisu
set background=light
syntax on
set wildmenu
" Enable 256 color on ubuntu server
" set t_Co=256
" Hyper.js doesn't support italics
" let g:one_allow_italics = 1
" let g:spacegray_use_italics = 1

" Set truecolor for 16 million colors
" https://gist.github.com/XVilka/8346728
" BUG: Shouldn't be set if term doesn't support
if has('termguicolors')
  " set termguicolors
endif

" GUI Settings
if has("gui_running")
  set fuoptions=maxvert,maxhorz       " Fullscreen mode settings
  set guioptions=emgt                 " Hide toolbar and scrollbars
  set shortmess+=I                    " Disable welcome screen
  set guifont=Menlo:h14
  set mouse=""                        " Disable Mouse
  set lines=999 columns=95            " Set window size
endif

" Status Line Settings
set laststatus=2

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
set expandtab
set smarttab

" Disable Arrow Keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Airline settings
" if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
" endif

let g:airline_theme='one'
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.whitespace = 'Ξ'

" Airline + A.L.E Integration
" let g:airline#extensions#ale#enabled = 1

"Display all the buffers
let g:airline#extensions#tabline#enabled = 1
" Don't show the file path in Airline's Tabline
let g:airline#extensions#tabline#formatter = 'unique_tail'

" NERD Commenter Settings

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Use atom's mapping for comment toggles
" Command key doesn't work, we are using option/alt key
nmap ÷ <Plug>NERDCommenterToggle
vmap ÷ <Plug>NERDCommenterToggle<CR>gv

" NERDTree Settings
map <leader>nt :NERDTree<return>

" FZF Settings
" Command key doesn't work, we are using option/alt key <command-t>
map † :GFiles<CR>

" Ipad Pro Settings
" map ` <esc>
" map! ` <esc>

""""""""""""""""""""""""
" Experimental Settings
""""""""""""""""""""""""

" Disable automatic wrapping of long lines
set nowrap

" Exit visual mode immediately 
vmap <esc> <C-c>

" Enable mouse scrolling
set mouse=a

