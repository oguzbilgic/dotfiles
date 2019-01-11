"----------------------------------------------------------
" Plugins
"----------------------------------------------------------

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
Plugin 'michaeljsmith/vim-indent-object' " Adds i text-object for indentation
Plugin 'airblade/vim-gitgutter'          " Shows unstaged lines on the file
Plugin 'xuyuanp/nerdtree-git-plugin'     " Shows git status in the nerd tree
Plugin 'tpope/vim-fugitive'              " Shows git branch in airline and more...
Plugin 'Kazark/vim-SimpleSmoothScroll'   " Slows down scroll speed
Plugin 'vim-scripts/gitignore'           " Makes vim use gitignore for wildignore option
Plugin 'bhurlow/vim-parinfer'            " Balances lisp parenthesis
Plugin 'jiangmiao/auto-pairs'            " Adds closing ' ] } ) chars
Plugin 'tpope/vim-endwise'               " Adds 'end' after def, if... in ruby/crystal etc..
Plugin 'w0rp/ale'                        " Shows inline lint errors

" Compilers
Plugin 'dgraham/vim-eslint'              " Adds eslint compiler. ':make .' populates quickfix

" Filetype
Plugin 'rhysd/vim-crystal'               " Adds .cr file type support
Plugin 'udalov/kotlin-vim'               " Adds .kt file type support
Plugin 'pangloss/vim-javascript'         " Improved .js support
" Plugin 'vim-ruby/vim-ruby'
" Plugin 'mxw/vim-jsx'
" Plugin 'leafgarland/typescript-vim'

" Colorschemes
Plugin 'felixhummel/setcolors.vim'       " :SetColors all then F8 to switch colorschemes
" Plugin 'daviddavis/vim-colorpack'
Plugin 'noahfrederick/vim-hemisu'
Plugin 'ajh17/Spacegray.vim'
Plugin 'rakr/vim-one'
Plugin 'junegunn/seoul256.vim'
Plugin 'vim-scripts/playroom'
Plugin 'lifepillar/vim-wwdc17-theme'
Plugin 'oguzbilgic/sexy-railscasts-theme'
Plugin 'cormacrelf/vim-colors-github'
Plugin 'cocopon/iceberg.vim'
Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'

" brew install cmake
" cd ~/.vim/bundle/YouCompleteMe
" ./install.py --js-completer
" Plugin 'Valloric/YouCompleteMe'

" End Vundle plugin list
call vundle#end()

"----------------------------------------------------------
" Vim Settings
"----------------------------------------------------------

" General Settings
filetype on                             " Enable filetype detection
filetype plugin indent on               " Enable Automatic Indentation
set hidden                              " Enable unsaved buffers to be hidden
set clipboard=unnamed                   " Use system clipboard for copy/paste

" Insert settings
set backspace=indent,eol,start          " Enable backspace for deleting after insert

" Backup settings
set nobackup                            " Disable backup files
set nowritebackup                       " No backup files
set noswapfile                          " No swap files

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

" Folding
set foldmethod=indent                   " Fold based on indentation
set foldlevel=9                         " Fold all starting from the first
set foldclose=all                       " Close folds if you leave them in any way
set foldopen=all                        " Open folds if you touch them in any way
set foldnestmax=5                       " Fold only maximum of 5 levels of indenation
set fillchars+=fold:\                   " Don't use fold divider character

" Diff
set fillchars+=diff:\                   " Don't fill deleted diff lines

" Performence
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
set t_Co=256                            " Enable 256 color

" UI Settings
set mouse=a                             " Enable mouse
set showcmd                             " Show current command bottom right
set wildmenu                            " Show command line suggestions
set number                              " Show line numbers
set nowrap                              " Disable  wrapping of long lines
set shortmess+=I                        " Hide :intro message

" Window Settings
set laststatus=2                        " Always show window status line
set splitright                          " Vertical split to right side
set fillchars+=vert:\                   " Don't use window divider character

" Set truecolor for 16 million colors
" https://gist.github.com/XVilka/8346728
" BUG: Shouldn't be set if term doesn't support
" BUG: Currently hyper doesn't support this?
if has('termguicolors')
  set termguicolors
endif

" GUI Settings
if has("gui_running")
  set fuoptions=maxvert,maxhorz         " Fullscreen mode settings
  " set guioptions=emgt                   " Hide toolbar and scrollbars
  set guifont=SF\ Mono\ Regular:h12
  set linespace=7                       " Increase line height
  set lines=999 columns=95              " Set window size
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

" let w:airline_disabled = 1
let g:airline_theme = 'one'

" Airline + A.L.E Integration
let g:airline#extensions#ale#enabled = 1

" Display all the buffers
" let g:airline#extensions#tabline#enabled = 1

" Don't show the file path in Airline's Tabline
let g:airline#extensions#tabline#formatter = 'unique_tail'

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
end

if g:colors_name == 'one'
  highlight clear Folded
  highlight Folded guibg=#e8f1fb guifg=#868c90 cterm=italic

  " Remove underline
  highlight TabLine cterm=NONE gui=NONE
  highlight! link VertSplit StatusLine
end
