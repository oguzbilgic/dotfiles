" General Settings
set nocompatible                        " Don't care vi
filetype on                             " Enable filetype detection
set hidden                              " Enable changed hidden buffers
set nobackup                            " Disable backup files
set nowritebackup                       " Don't create backup files
set noswapfile

" Gui Settings
colorscheme solarized                   " Use solarized colorscheme 
set background=dark                     " Use dark version of the colorscheme
set fuoptions=maxvert,maxhorz           " Fullscreen mode settings
set guioptions=emgt                     " Hide toolbar and scrollbars
set shortmess+=I                        " Disable welcome screen
set guifont=Menlo:h12                   " Set font and size
syntax on                               " Turn syntax higlighting on
set mouse=""                            " Disable Mouse

" Status Line Settings
set laststatus=2
set statusline=%<\%n:%f\ %m%r%y%=%-35.(l:\ %l\ of\ %L,\ c:\ %c%V\ (%P)%)
set statusline+=%{fugitive#statusline()}

" Window Settings
set number                              " Show line numbers
set splitright                          " Vertical split to right side
set lines=999 columns=95                " Set window size
set scroll=5                            " Scroll 5 lines at a time

" Search Settings
set ignorecase                          " Disable search case sensitivity
set incsearch                           " Enable instant search 
set hlsearch                            " Highlight search term

" Indentation Settings
set tabstop=2                           " Tab lenght is 2 space
set softtabstop=2                       " Tab lenght is 2 space
set shiftwidth=2                        " Tab lenght is 2 space
set expandtab                           " Use spaces instead of tabs
filetype plugin indent on               " Enable Automatic Indentation based on file type 
autocmd Filetype make setlocal noexpandtab " Use tabs for make files

" Set filetype to markdown if it is txt or undefined
autocmd BufEnter * if &filetype == "txt" | setlocal ft=markdown | endif
autocmd BufEnter * if &filetype == "" | setlocal ft=markdown | endif

" Disable Arrow Keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
