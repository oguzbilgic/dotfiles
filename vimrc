"----------------------------------------------------------
" Plugins
"----------------------------------------------------------

" Auto install vim-plug if It's missing
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Start vim-plug
call plug#begin()

Plug 'VundleVim/Vundle.vim'
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'michaeljsmith/vim-indent-object' " Adds i text-object for indentation
Plug 'tpope/vim-surround'              " Adds text object for surrounding ' } )
Plug 'airblade/vim-gitgutter'          " Shows unstaged lines on the file
Plug 'xuyuanp/nerdtree-git-plugin'     " Shows git status in the nerd tree
Plug 'tpope/vim-fugitive'              " Shows git branch in airline and more...
Plug 'Kazark/vim-SimpleSmoothScroll'   " Slows down scroll speed
Plug 'vim-scripts/gitignore'           " Makes vim use gitignore for 'wildignore'
Plug 'bhurlow/vim-parinfer'            " Balances lisp parenthesis
Plug 'jiangmiao/auto-pairs'            " Adds closing ' ] } ) chars in insert mode
Plug 'tpope/vim-endwise'               " Adds 'end' after def, if... in ruby/crystal
Plug 'w0rp/ale'                        " Shows inline lint errors

" Compilers
Plug 'dgraham/vim-eslint'              " Adds eslint compiler. ':make .' populates quickfix

" Filetype
Plug 'rhysd/vim-crystal'               " Adds .cr file type support
Plug 'udalov/kotlin-vim'               " Adds .kt file type support
Plug 'pangloss/vim-javascript'         " Improved .js support
" Plug 'vim-ruby/vim-ruby'
" Plug 'mxw/vim-jsx'
" Plug 'leafgarland/typescript-vim'

" Colorschemes
Plug 'felixhummel/setcolors.vim'       " :SetColors all then F8 to switch colorschemes
Plug 'vim-airline/vim-airline-themes'
" Plug 'daviddavis/vim-colorpack'
Plug 'noahfrederick/vim-hemisu'
Plug 'ajh17/Spacegray.vim'
Plug 'rakr/vim-one'
Plug 'junegunn/seoul256.vim'
Plug 'vim-scripts/playroom'
Plug 'lifepillar/vim-wwdc17-theme'
Plug 'oguzbilgic/sexy-railscasts-theme'
Plug 'cormacrelf/vim-colors-github'
Plug 'cocopon/iceberg.vim'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'

" brew install cmake
" cd ~/.vim/bundle/YouCompleteMe
" ./install.py --js-completer
" Plug 'Valloric/YouCompleteMe'

" End plugin list
call plug#end()

"----------------------------------------------------------
" Vim Settings
"----------------------------------------------------------

" General Settings
set nocompatible                       " Don't try to be compatible with Vi
set hidden                             " Enable unsaved buffers to be hidden
set clipboard=unnamed                  " Use system clipboard for copy/paste
set visualbell                         " Disable beeping by using visual bell

" File type
filetype plugin indent on              " Enable filetype system

" Insert settings
set backspace=indent,eol,start         " Enable backspace for deleting after insert

" Backup settings
set nobackup                           " Disable backup files
set nowritebackup                      " No backup files
set noswapfile                         " No swap files

" Search Settings
set ignorecase                         " Disable search case sensitivity
set incsearch                          " Enable instant search
set hlsearch                           " Highlight search term

" Indentation Settings
set tabstop=2                          " Width of a tab character
set softtabstop=2                      " Tab length is 2 space
set shiftwidth=2                       " Tab length is 2 space
set smartindent                        " Add extra indent if new block started
set autoindent                         " Use current lines indent for new line
set expandtab                          " Insert <space> instead of tab
set smarttab

" Folding
set foldmethod=indent                  " Fold based on indentation
set foldlevel=9                        " Fold all starting from the first
" set foldclose=all                      " Close folds if you leave them in any way
" set foldopen=all                       " Open folds if you touch them in any way
set foldnestmax=5                      " Fold only maximum of 5 levels of indentation
set fillchars+=fold:\                  " Don't use fold divider character

" Diff
set fillchars+=diff:\                  " Don't fill deleted diff lines

" Performance
set lazyredraw
set ttyfast

"----------------------------------------------------------
" UI Settings
"----------------------------------------------------------

" Colorscheme
if &background == 'dark'
  let g:spacegray_use_italics = 1
  colorscheme spacegray
else
  let g:one_allow_italics = 1
  colorscheme one
endif

" Color Settings
syntax on
set t_Co=256                           " Enable 256 color

" UI Settings
set mouse=a                            " Enable mouse
set showcmd                            " Show current command bottom right
set wildmenu                           " Show command line suggestions
set number                             " Show line numbers
set nowrap                             " Disable  wrapping of long lines
set shortmess+=I                       " Hide Vim's welcome message

" Invisible Character
set list                               " Show invisible characters
set showbreak=↪\
set listchars=tab:→\ ,nbsp:␣,trail:·,extends:⟩,precedes:⟨
" │ » → •

" Window Settings
set laststatus=2                       " Always show window status line
set splitright                         " Vertical split to right side
set fillchars+=vert:\                  " Don't use window divider character

" Set truecolor for 16 million colors
" INFO: https://gist.github.com/XVilka/8346728
" BUG: This checks if vim is built with +termguicolors feature.
"      We need a way to check if the current terminal supports truecolor.
"      Hyper.js and Terminal.app don't support truecolor.
if has('termguicolors')
  set termguicolors
endif

" GUI Settings
if has("gui_running")
  set fuoptions=maxvert,maxhorz        " Full screen mode settings
  " set guioptions=emgt                  " Hide toolbar and scrollbars
  set guifont=Roboto\ Mono:h13
  set linespace=3                      " Increase line height
  set lines=999 columns=95             " Set window size
endif

" Experimental tmux settings
if $TERM == 'tmux-256color'
  " Italics and true color support in tmux+vim
  " INFO: https://medium.com/@dubistkomisch/how-to-actually-get-italics-and-true-colour-to-work-in-iterm-tmux-vim-9ebe55ebc2be
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

  " Mouse in tmux doesn't resize windows, but this option makes
  " scrolling very slow in vim without tmux
  set ttymouse=xterm2
endif

"----------------------------------------------------------
" Mappings
"----------------------------------------------------------

" Disable Arrow Keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"----------------------------------------------------------
" Airline Settings
"----------------------------------------------------------

" Airline picks the current theme, but specify for spacegray
if g:colors_name == 'spacegray'
  let g:airline_theme = 'distinguished'
end

" Airline + A.L.E Integration
let g:airline#extensions#ale#enabled = 1

" Display all the buffers
" let g:airline#extensions#tabline#enabled = 1

" Don't show the file path in Airline's Tabline
let g:airline#extensions#tabline#formatter = 'unique_tail'

"----------------------------------------------------------
" Ale Settings
"----------------------------------------------------------

let g:ale_sign_error = '➤'

"----------------------------------------------------------
" NERD Commenter Settings
"----------------------------------------------------------

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Use atom's mapping for comment toggles
" Command key doesn't work, we are using option/alt key
nmap ÷ <Plug>NERDCommenterToggle
vmap ÷ <Plug>NERDCommenterToggle<CR>gv

"----------------------------------------------------------
" NERDTree Settings
"----------------------------------------------------------

let NERDTreeMinimalUI=1

map <leader>nt :NERDTreeFind<CR>

"----------------------------------------------------------
" FZF Settings
"----------------------------------------------------------

" Command key doesn't work, we are using option/alt key <command-t>
map † :GFiles<CR>

map ˙ :Helptags<CR>

map ç :Commands<CR>

"----------------------------------------------------------
" GitGutter Settings
"----------------------------------------------------------

" Use line highlighting instead of signs if light background
if &background == "light"
  let g:gitgutter_signs = 0
  let g:gitgutter_highlight_lines = 1
endif

" Faster updatetime so that GitGutter can update instantly
set updatetime=100

"----------------------------------------------------------
" SimpleSmoothScroll Settings
"----------------------------------------------------------

map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

"----------------------------------------------------------
" Experimental Mappings
"----------------------------------------------------------

" Ipad Settings
" map! ` <ESC>
" vmap! ` <ESC>

" Exit visual mode immediately
" vmap <esc> <C-c>

" Open vimrc in a new tab
nnoremap <leader>ev :tabe $MYVIMRC<CR>

" Source vimrc
nnoremap <leader>sv :source $MYVIMRC<CR>

"----------------------------------------------------------
" Experimental Highlight Overwrites
"----------------------------------------------------------

if &background == "light"
  highlight clear Visual
  highlight clear Search
  highlight clear IncSearch
  highlight Visual guibg=#d7ffff
  highlight Search guibg=#fffc38 cterm=italic gui=italic

  highlight clear DiffAdd
  highlight clear DiffChange
  highlight clear DiffDelete
  highlight clear DiffText
  highlight DiffAdd    ctermbg=194 guibg=#e7feed
  highlight DiffChange ctermbg=230 guibg=#ffffd7
  highlight DiffDelete ctermbg=224 guibg=#feeef0
  highlight DiffText guibg=#ffe6bc
endif

if g:colors_name == 'spacegray'
  highlight! link VertSplit StatusLineNC
  highlight! link TabLineFill StatusLineNC
  highlight! link TabLineSel StatusLine

  highlight DiffText guibg=#d88735 guifg=black cterm=italic,bold
  highlight DiffChange guibg=#815d3a guifg=black
end

if g:colors_name == 'one'
  highlight clear Folded
  highlight Folded guibg=#e8f1fb guifg=#868c90 cterm=italic

  " Remove underline
  highlight TabLine cterm=NONE gui=NONE
  highlight! link VertSplit StatusLine
end
