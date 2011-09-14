" General Settings
set nocompatible " Don't care vi
filetype on " Enable filetype detection
set hidden " Enable changed hidden buffers
set nobackup " Disable backup files
set nowritebackup
set noswapfile

" Gui Settings
colorscheme sexy-railscasts " Set theme
set fuoptions=maxvert,maxhorz " Fullscreen mode settings
set guioptions =emgt " Hide toolbar and scrollbars
set shortmess +=I " Disable welcome screen
set guifont =Menlo:h12 " Set font and size
set mouse="" " Disable Mose
syntax on

" Status Line Settings
set laststatus=2
set statusline=%t\ %y\ %{fugitive#statusline()} " [%c,%l]

" Window Settings
set scroll=5 " Scroll 5 lines at a time
set number " Show line numbers
set splitright " Vertical split to right side
if has("gui_running")
  set lines=999 columns=100
endif

" Indentation Settings
set tabstop =2 " Tab lenght is 2 space
set softtabstop =2 " Tab lenght is 2 space
set shiftwidth =2  " Tab lenght is 2 space
set expandtab " Use spaces instead of tabs
filetype plugin indent on " Enable Automatic Indentation based on file type 
autocmd Filetype make setlocal noexpandtab " Use tabs for make files

" Search Settings
set ignorecase " Disable search case sensitivity
set incsearch " Enable instant search 
set hlsearch " Highlight search term

" Disable Arrow Keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Experimental Settings
set transparency=5
colorscheme solarized
