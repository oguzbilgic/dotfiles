" General settings
set nocompatible " Don't care vi
filetype on " Enable filetype detectio
set hidden " Enable changed hidden buffers

" Set Gui Options
colorscheme sexy-railscasts " Set theme
set fuoptions=maxvert,maxhorz " Fullscreen mode settings
set guioptions =emgt " Hide toolbar and scrollbars
set shortmess +=I " Disable welcome screen
set guifont =Menlo:h12 " Set font and size
syntax on

" Set Indentation
set tabstop =2 " Tab lenght is 2 space
set softtabstop =2 " Tab lenght is 2 space
set shiftwidth =2  " Tab lenght is 2 space
set expandtab " Use spaces instead of tabs
filetype plugin indent on " Enable Automatic Indentation based on file type 
autocmd Filetype make setlocal noexpandtab " Use tabs for make files

" Window Options
set scroll=5 " Scroll 5 lines at a time
set number " Show line numbers
set splitright " Vertical split to right side
if has("gui_running")
  set lines=999 columns=100
endif

" StatusLine Options
set laststatus=2
set statusline=%t\ %y\ %{fugitive#statusline()} [%c,%l]

" Search Options
set ignorecase " Disable search case sensitivity
set incsearch " Enable instant search 
set hlsearch " Highlight search term

" Disable backup files
set nobackup
set nowritebackup
set noswapfile

" Command-t options
let g:CommandTMaxHeight=15
