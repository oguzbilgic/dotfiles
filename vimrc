" Initialize vundle
set nocompatible
filetype off

" Start Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'daviddavis/vim-colorpack'
" Plugin 'junegunn/seoul256.vim'
" Plugin 'noahfrederick/vim-hemisu'
" Plugin 'luochen1990/rainbow'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'rakr/vim-one'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'w0rp/ale'
Plugin 'vim-scripts/gitignore'
Plugin 'vim-scripts/playroom'
Plugin 'vim-ruby/vim-ruby'
Plugin 'lifepillar/vim-wwdc17-theme'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'michaeljsmith/vim-indent-object'
" Plugin 'jiangmiao/auto-pairs'

" brew install cmake
" cd ~/.vim/bundle/YouCompleteMe
" ./install.py --clang-completer
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required

" Vundle doesn't work on fish shell
" https://github.com/VundleVim/Vundle.vim/issues/690#issuecomment-251830036
set shell=/bin/bash

" General Settings
filetype on                             " Enable filetype detection
filetype plugin indent on               " Enable Automatic Indentation
set hidden                              " Enable changed hidden buffers
set nobackup                            " Disable backup files
set nowritebackup                       " No backup files
set noswapfile                          " No swap files
set viminfo=""                          " No welcome screen

" UI Settings
colorscheme one
set background=light
syntax on
set wildmenu
" Enable 256 color on ubuntu server
set t_Co=256
let g:one_allow_italics = 1

" Set truecolor for 16 million colors
" https://gist.github.com/XVilka/8346728
" BUG: Shouldn't be set if term doesn't support
if has('termguicolors')
  set termguicolors
endif

" Fix Hyper terminal first line issue
" https://github.com/zeit/hyper/issues/1037
set t_RV=

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

" let g:airline_theme='one'
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

"Display all the buffers
let g:airline#extensions#tabline#enabled = 1

" Airline + A.L.E Integration
let g:airline#extensions#ale#enabled = 1

" Don't show the file path in Airline's Tabline
let g:airline#extensions#tabline#formatter = 'unique_tail'

" NERD Commenter Settings

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" NERDTree Settings
map <leader>nt :NERDTree<return>

" FZF Settings
map <leader>t :GFiles<CR>

" Ipad Pro Settings
map ` <esc>
map! ` <esc>

" Experimental Settings

" Disable automatic wrapping of long lines
set nowrap

" Exit visual mode immediately 
vmap <esc> <C-c>
