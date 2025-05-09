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

" Visual
Plug 'bling/vim-airline'               " Improved status line
Plug 'vim-airline/vim-airline-themes'  " Add color themes for Airline plugin
Plug 'scrooloose/nerdtree'             " Adds file browser window
Plug 'w0rp/ale'                        " Shows inline lint errors
Plug 'liuchengxu/vim-which-key'        " Displays mappings for <leader> in window
Plug 'psliwka/vim-smoothie'            " Makes CTRL-D,U scrolling smooth
" Plug 'Kazark/vim-SimpleSmoothScroll'   " Makes CTRL-D,U scrolling smooth
Plug 'Yggdroot/indentLine'             " Displays indentation levels for spaces

" AI
Plug 'github/copilot.vim'

" Text
Plug 'tpope/vim-commentary'            " Adds gc operator for toggling comments
Plug 'gokcehan/vim-opex'               " Adds gx operator to execute code
Plug 'tpope/vim-surround'              " Adds s text-object for surrounding ' } )
Plug 'michaeljsmith/vim-indent-object' " Adds i text-object for indentation
Plug 'bhurlow/vim-parinfer'            " Balances lisp parenthesis
Plug 'tpope/vim-endwise'               " Adds 'end' after def, if... in ruby/crystal
" Plug 'jiangmiao/auto-pairs'            " Adds closing ' ] } ) chars in insert mode
Plug 'junegunn/vim-easy-align'         " Adds ga operatoro for aligning text

" Git
Plug 'airblade/vim-gitgutter'          " Shows unstaged lines on the file
Plug 'tpope/vim-fugitive'              " Adds :Gstatus, :Gcommit and more
Plug 'tpope/vim-rhubarb'               " Adds :Gbrowse for opening in Github
Plug 'junegunn/gv.vim'                 " Adds :GV command for viewing git logs
Plug 'oguzbilgic/vim-gdiff'            " Adds :Gdiff command
Plug 'xuyuanp/nerdtree-git-plugin'     " Shows git status in the nerd tree
Plug 'vim-scripts/gitignore'           " Makes vim use gitignore for 'wildignore'

" Compilers
Plug 'dgraham/vim-eslint'              " Adds eslint compiler. ':make .' populates quickfix
Plug 'tfnico/vim-gradle'

" Filetype
Plug 'rhysd/vim-crystal'               " Adds .cr file type support
Plug 'udalov/kotlin-vim'               " Adds .kt file type support
Plug 'pangloss/vim-javascript'         " Improves .js file type support
Plug 'kchmck/vim-coffee-script'        " Adds .coffee file type support
Plug 'leafgarland/typescript-vim'      " Adds .ts file type support
Plug 'dag/vim-fish'                    " Adds .fish file type support
Plug 'andreshazard/vim-freemarker'     " Adds .ftl file type support
Plug 'maxmellon/vim-jsx-pretty'        " Adds jsx support for .js and .jsx
Plug 'peitalin/vim-jsx-typescript'     " Adds .tsx file type support
" Plug 'vim-ruby/vim-ruby'
" Plug 'cespare/vim-toml'              " Adds .toml file type support
Plug 'jxnblk/vim-mdx-js'               " Adds .mdx Markdown-jsx support
Plug 'jceb/vim-orgmode'                " Adds .org emacs-org support

" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'
" Deprecated -> 'ajh17/Spacegray.vim'
Plug 'https://git.sr.ht/~ackyshake/spacegray.vim'


" Plug 'felixhummel/setcolors.vim'       " :SetColors all then F8 to switch colorschemes
" Plug 'daviddavis/vim-colorpack'
" Plug 'ghifarit53/daycula-vim' , {'branch' : 'main'}
" Plug 'noahfrederick/vim-hemisu'
" Plug 'junegunn/seoul256.vim'
" Plug 'vim-scripts/playroom'
" Plug 'lifepillar/vim-wwdc17-theme'
" Plug 'oguzbilgic/sexy-railscasts-theme'
" Plug 'cormacrelf/vim-colors-github'
" Plug 'cocopon/iceberg.vim'
" Plug 'tomasr/molokai'
" Plug 'nanotech/jellybeans.vim'

" Experimental: Fuzzy Finder
" Plug 'junegunn/fzf'                    " Adds fuzzy finder
" Plug 'junegunn/fzf.vim'

" Experimental: FZF replacement
" Plug 'Yggdroot/LeaderF'
" let g:Lf_WindowPosition = 'popup'
" let g:Lf_PopupShowStatusline = 0
" nnoremap <leader>fl :Leaderf file<CR>

" Experimental: Another FZF replacement
Plug 'liuchengxu/vim-clap'

" End plugin list
call plug#end()

"----------------------------------------------------------
" Vim Settings
"----------------------------------------------------------

" General Settings
set hidden                             " Enable unsaved buffers to be hidden
" set clipboard=unnamed                  " Use system clipboard for copy/paste
set visualbell                         " Disable beeping by using visual bell
set history=500                        " Increase command history

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
" set foldmethod=indent                  " Fold based on indentation
set foldlevel=9                        " Fold all starting from the first
" set foldclose=all                      " Close folds if you leave them in any way
" set foldopen=all                       " Open folds if you touch them in any way
set foldnestmax=5                      " Fold only maximum of 5 levels of indentation
set fillchars+=fold:\                  " Don't use fold divider character

" Diff
set fillchars+=diff:\                  " Don't fill deleted diff lines
set diffopt+=vertical                  " Always show diffs in a vertical split

" Session
set sessionoptions-=options            " When saving session, don't store options

" Performance
set lazyredraw
set ttyfast

" Experimental: Enable project specific .vimrc
" Dangerous because untrust code can be executed
set exrc
set secure

" Completion
set completeopt-=preview

" Experimental: enable 'cursorline' only for the active window
" augroup cursor_line_autocmds
"   autocmd!
"   autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
"   autocmd WinLeave * setlocal nocursorline
" augroup END

"----------------------------------------------------------
" UI Settings
"----------------------------------------------------------

" Set truecolor for 16 million colors
" INFO: https://gist.github.com/XVilka/8346728
" BUG: This checks if vim is built with +termguicolors feature.
"      We need a way to check if the current terminal supports truecolor.
"      Hyper.js and Terminal.app don't support truecolor.
if has('termguicolors')
  set termguicolors
endif

" Colorscheme
if &background == 'dark'
  colorscheme spacegray
else
  colorscheme spacegray
endif

" Color Settings
syntax on
set t_Co=256                           " Enable 256 color

" UI Settings
" set mouse=a                            " Enable mouse
set showcmd                            " Show current command bottom right
set wildmenu                           " Show command line suggestions
set wildoptions=pum
set number                             " Show line numbers
set relativenumber                     " Show relative numbers
set nowrap                             " Disable  wrapping of long lines
set shortmess+=I                       " Hide Vim's welcome message

" Invisible Character
set list                               " Show invisible characters
set showbreak=↪\                       " Line breaks for wrap option
set listchars=tab:│\ ,nbsp:␣,trail:·,extends:⟩,precedes:⟨
" │ » → •

" Window Settings
" set laststatus=2                       " Always show window status line
set splitright                         " Vertical split to right side
set splitbelow                         " Horizontal split to bottom
set noequalalways                      " Don't make equalize windows when closed
set fillchars+=vert:\                  " Don't use window divider character

if $TERM_PROGRAM == 'iTerm.app'
  " Undercurl escape characters
  " let &t_Cs = "\e[4:3m"
  " let &t_Ce = "\e[4:0m"

  " Change cursor in insert mode
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

"----------------------------------------------------------
" Mappings
"----------------------------------------------------------

" Set <space> as the <leader> key
let g:mapleader = "\<space>"

" Disable Arrow Keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Experimental: Quickfix motions
nnoremap [q :cprevious<cr>
nnoremap ]q :cnext<cr>
nnoremap [Q :cfirst<cr>
nnoremap ]Q :clast<cr>

" Experimental: Location list motions
nnoremap [l :lprevious<cr>
nnoremap ]l :lnext<cr>
nnoremap [L :lfirst<cr>
nnoremap ]L :llast<cr>

" Experimental: Buffer motions
nnoremap [b :bprevious<cr>
nnoremap ]b :bnext<cr>
nnoremap [B :bfirst<cr>
nnoremap ]B :blast<cr>

" Open vimrc in a new tab
nnoremap <leader>ve :tabe $MYVIMRC<CR>
nnoremap <leader>vs :source $MYVIMRC<CR>

" Experimental: Run terminal commands
nnoremap <leader>ts :call ToggleTerminal("shell", "fish")<CR>
" nnoremap <leader>tj :call ToggleTerminal("node-repl", "node -i")<CR>
nnoremap <leader>tj :call ToggleTerminal("node-repl", "docker run -it node:alpine")<CR>
nnoremap <leader>tr :call ToggleTerminal("ruby-repl", "docker run -it ruby:alpine")<CR>
nnoremap <leader>tp :call ToggleTerminal("python-repl", "docker run -it python:alpine")<CR>


nnoremap <leader>td :call ToggleTerminal("docker-compose up", "docker-compose up")<CR>
nnoremap <leader>tn :call ToggleTerminal("npm run dev", "npm run dev")<CR>

" Experimental: ZZ in insert mode
" inoremap ZZ <esc>ZZ

" Ipad Settings
" map! ` <ESC>
" vmap! ` <ESC>

" Exit visual mode immediately
" vmap <esc> <C-c>

"----------------------------------------------------------
" Vim Plug Settings
"----------------------------------------------------------

nnoremap <leader>pi :PlugInstall<cr>
nnoremap <leader>pu :PlugUpdate<cr>
nnoremap <leader>pc :PlugClean<cr>

"----------------------------------------------------------
" Which Key Settings
"----------------------------------------------------------

set timeoutlen=500

let g:which_key_map = {
  \ 'a': { 'name' : '+ale' },
  \ 'f': { 'name' : '+fuzy-finder' },
  \ 'g': { 'name' : '+git' },
  \ 'h': { 'name' : '+hunk' },
  \ 'n': { 'name' : '+nerd-tree' },
  \ 'p': { 'name' : '+plugin' },
  \ 't': { 'name' : '+terminal' },
  \ 'v': { 'name' : '+vim' }
  \ }

call which_key#register('<space>', "g:which_key_map")
nnoremap <silent> <leader> :<c-u>WhichKey '<leader>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<leader>'<CR>

autocmd! FileType which_key
autocmd  FileType which_key set laststatus=1 noshowmode noruler
      \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

"----------------------------------------------------------
" Airline Settings
"----------------------------------------------------------

" Airline picks the current theme, but specify for spacegray
if g:colors_name == 'spacegray'
  let g:airline_theme = 'zenburn'
end

" Airline + A.L.E Integration
let g:airline#extensions#ale#enabled = 1

" Display all the buffers
" let g:airline#extensions#tabline#enabled = 1

" Don't show the file path in Airline's Tabline
let g:airline#extensions#tabline#formatter = 'unique_tail'

nnoremap <leader>va :AirlineToggle<CR>

"----------------------------------------------------------
" Ale Settings
"----------------------------------------------------------

let g:ale_sign_error = '✖'
let g:ale_sign_warning = 'ⓘ'

" Enable ale auto completion
" Make sure to install lsp binaries for each file type.
" Use tsserver for javascript
let g:ale_completion_enabled = 1

" Display :ALEHover within balloon using mouse
let g:ale_set_balloons = 1

nnoremap <silent> <leader>ah :ALEHover<CR>
nnoremap <silent> <leader>ad :ALEDocumentation<CR>
nnoremap <silent> <leader>ae :ALEDetail<CR>
nnoremap <silent> <leader>af :ALEFix<CR>
nnoremap <silent> <leader>ai :ALEInfo<CR>
nnoremap <silent> <leader>at :ALEToggle<CR>
nnoremap <silent> <leader>ar :ALEFindReferences<CR>
nnoremap <silent> <leader>ag :ALEGoToDefinition<CR>
nnoremap <silent> <leader>as :ALESymbolSearch<space>

augroup ale_autocmds
  autocmd!
  autocmd Filetype javascript nnoremap <buffer> gd :ALEGoToDefinition<CR>
  autocmd Filetype javascript nnoremap <buffer> gD :ALEGoToDefinition<CR>
  autocmd Filetype javascript nnoremap <buffer> K :ALEHover<CR>
  autocmd Filetype javascript set omnifunc=ale#completion#OmniFunc
augroup END

nnoremap [e :ALEPrevious<cr>
nnoremap ]e :ALENext<cr>
nnoremap [E :ALEFirst<cr>
nnoremap ]E :ALELast<cr>

"----------------------------------------------------------
" NERDTree Settings
"----------------------------------------------------------

let g:NERDTreeMinimalUI = 1
" let g:NERDTreeWinPos = 'right'

nnoremap <leader>nf :NERDTreeFind<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>

" Make `/` character same as the folder name
highlight link NERDTreeDirSlash NERDTreeDir

"----------------------------------------------------------
" FZF Settings
"----------------------------------------------------------

" :Buffers Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" Command key doesn't work, we are using option/alt key <command-t>
" nnoremap <leader>fb :Buffers<CR>
" nnoremap <leader>ff :GFiles<CR>
" nnoremap <leader>fh :Helptags<CR>
" nnoremap <leader>fc :Commands<CR>

"----------------------------------------------------------
" Clap Settings
"----------------------------------------------------------

" Show file type fonts using Nerd fonts
let g:clap_enable_icon = 1

let g:clap_layout = {
      \ 'width': '50%',
      \ 'height': '33%',
      \ 'row': '33%',
      \ 'col': '25%'
      \ }

let g:clap_popup_move_manager = {
      \ "\<C-N>": "\<Down>",
      \ "\<C-P>": "\<Up>",
      \ }

" Don't show file previews on the right
let g:clap_open_preview = 'never'

nnoremap <leader>f :Clap files<CR>
nnoremap <leader>fb :Clap buffers<CR>
" nnoremap <leader>ff :Clap files<CR>
" nnoremap <leader>fc :Clap colors<CR>

"----------------------------------------------------------
" GitGutter Settings
"----------------------------------------------------------

" Faster updatetime so that GitGutter can update instantly
set updatetime=100

" Use line highlighting instead of signs if light background
if &background == "light"
  let g:gitgutter_signs = 0
  let g:gitgutter_highlight_lines = 1
endif

let g:gitgutter_sign_added = '▎'
let g:gitgutter_sign_modified = '▎'
let g:gitgutter_sign_removed = '━'
let g:gitgutter_sign_modified_removed = '╋━'

" Folds all unchanged lines in the buffer
noremap <leader>hf :GitGutterFold<cr>
" Toggle git gutter
noremap <leader>ht :GitGutterToggle<cr>

"----------------------------------------------------------
" Fugitive Settings
"----------------------------------------------------------

augroup fugitive_autocmds
  autocmd!
  autocmd Filetype fugitive setlocal nonumber
  " autocmd Filetype fugitive setlocal winfixheight
  autocmd Filetype gitcommit setlocal nonumber
  autocmd Filetype gitcommit setlocal spell
  " autocmd Filetype gitcommit exe "resize " . line('$')
augroup END

noremap <leader>gs :Git<cr>
noremap <leader>gd :Gdiffsplit<cr>
noremap <leader>gr :Gread<cr>
noremap <leader>gw :Gwrite<cr>
noremap <leader>gh :GBrowse @:<cr>
noremap <leader>ge :Gedit<space>

noremap <leader>gbl :Gblame<cr>
noremap <leader>gbd :Git branch -D<space>

noremap <leader>gco :Git commit<cr>
noremap <leader>gca :Git commit --amend<cr>
noremap <leader>gch :Git checkout<space>
noremap <leader>gcb :Git checkout -b<space>
noremap <leader>gcm :Git checkout ma

noremap <leader>gps :Git push<cr>
noremap <leader>gpl :Git pull<cr>

"----------------------------------------------------------
" Gdiff Settings
"----------------------------------------------------------

" Experimental: Mappings
" After quickfix list is populated with :Gdiff command
" Requires fugitive plugin
nnoremap ]r :%bd<CR>:cnext<CR>:Gdiffsplit master<CR>
nnoremap [r :%bd<CR>:cprevious<CR>:Gdiffsplit master<CR>
nnoremap ]R :%bd<CR>:clast<CR>:Gdiffsplit master<CR>
nnoremap [R :%bd<CR>:cfirst<CR>:Gdiffsplit master<CR>

"----------------------------------------------------------
" GV Settings
"----------------------------------------------------------

noremap <leader>gv :GV --all<cr>

"----------------------------------------------------------
" IndentLine Settings
"----------------------------------------------------------

" let g:indentLine_showFirstIndentLevel = 1

let g:indentLine_first_char = '│'
let g:indentLine_char = '│'


if g:colors_name == 'spacegray'
  let g:indentLine_color_gui = '#1C1F20'
endif

"----------------------------------------------------------
" Vim Netrw Settings
"----------------------------------------------------------

" Hide info banner
let g:netrw_banner=0
let g:netrw_liststyle=3

"----------------------------------------------------------
" Vim Javascript Settings
"----------------------------------------------------------

" Highlight js code within JSDoc comment blocks
let g:javascript_plugin_jsdoc = 1

"----------------------------------------------------------
" Vim Markdown Settings
"----------------------------------------------------------

let g:markdown_folding = 1

augroup vim_markdown_autocmds
  autocmd!
  " Enable spell checker
  autocmd FileType markdown setlocal spell
  autocmd FileType markdown setlocal wrap
augroup END

"----------------------------------------------------------
" Vim Markdown.mdx Settings
"----------------------------------------------------------

augroup vim_markdown_mdx_autocmds
  autocmd!
  " Enable spell checker
  autocmd FileType markdown.mdx setlocal spell
  autocmd FileType markdown.mdx setlocal wrap
augroup END

"----------------------------------------------------------
" Vim OrgMode Settings
"----------------------------------------------------------

let g:org_indent = 1
let g:org_heading_shade_leading_stars = 0

"----------------------------------------------------------
" Experimental: Vim Help Settings
"----------------------------------------------------------

" Easier way to navigate vim help
augroup vim_help_autocmds
  autocmd!

  " Use <CR> to move to tag
  " autocmd FileType help nnoremap <buffer> <cr> <c-]>
  " Use <BS> to go back
  " autocmd FileType help nnoremap <buffer> <bs> <c-t>

  " Use <tab> to jump to the next tag within the helpfile
  " autocmd FileType help nnoremap <buffer> <tab> /\|\zs\S\{-}\|/<cr>:noh<cr>

  " Center the cursor vertically
  " autocmd FileType help setlocal scrolloff=999
augroup END

"----------------------------------------------------------
" Colorscheme Settings & Overwrites
"----------------------------------------------------------

if g:colors_name == 'one' && &background == "light"
  let g:one_allow_italics = 1

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

  " Fugitive objects use these groups
  highlight DiffFile guibg=NONE
  highlight DiffNewFile guibg=NONE
  highlight! link DiffAdded DiffAdd
  highlight! link DiffRemoved DiffDelete
  highlight! link DiffLine Folded

  highlight clear Folded
  highlight Folded guibg=#e8f1fb guifg=#868c90 cterm=italic

  " Remove underline
  highlight TabLine cterm=NONE gui=NONE
  highlight! link VertSplit StatusLine
end

if g:colors_name == 'spacegray'
  let g:spacegray_use_italics = 1

  highlight clear Todo

  highlight! link VertSplit StatusLineNC
  highlight! link TabLineFill StatusLineNC
  highlight! link TabLineSel StatusLine

  highlight DiffText guibg=#d88735 guifg=black cterm=italic,bold
  highlight DiffChange guibg=#815d3a guifg=black
  highlight Error cterm=NONE
  highlight SpellBad cterm=underline guibg=NONE

  " GitGutter
  highlight link GitGutterAdd String
  highlight link GitGutterChange Identifier
end

if g:colors_name == 'gruvbox'
  highlight! link Visual CursorLine
  highlight! link VertSplit StatusLineNC

  highlight! link StatusLineTerm StatusLine
  highlight! link StatusLineTermNC StatusLineNC

  highlight! link ALEError GruvboxRedBold
  highlight! link ALEErrorSign GruvboxRedBold

  highlight clear SignColumn
  highlight! link GitGutterAdd GruvboxGreen
  highlight! link GitGutterChange GruvboxYellow

  highlight! link gitcommitSummary GruvboxBlue

  highlight CursorLineNr guibg=NONE
end

"----------------------------------------------------------
" Experimental: Custom Commands
"----------------------------------------------------------

" Saves read only file with sudo
command Sudow w !sudo tee %

" Resizes current window to fit contents
command Fit execute('resize ' . line('$'))

" SynStack -----------------------------------------------

" Prints the highlight groups for the word under the cursor
function! SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

command SynStack call SynStack()

" Note ---------------------------------------------------

" Experimental: Navigate to notes
function! Note(period)
  let day = strftime('%Y-%m-%d')
  let week = strftime('%Y-%W')
  let folder = '~/Code/oguzbilgic/self/'
  let daily_file = folder . day . '.md'
  let weekly_file = folder . 'week/' . week . '.md'

  if a:period == "week"
    execute "tabedit" . weekly_file
  else
    execute "tabedit" . daily_file
  endif
endfunc

nnoremap <leader>vd :call Note("day")<CR>
nnoremap <leader>vw :call Note("week")<CR>

" ToggleTerminal -----------------------------------------

" Experimental: toggle terminal with the given command
"
" :call ToggleTerminal("node -i")
" Opens up a new or an existing node repl
function! ToggleTerminal(name, command)
  let bufferNum = bufnr(a:name)

  if bufferNum == -1 || bufloaded(bufferNum) != 1
    call term_start(a:command, {
          \ 'term_finish': 'close',
          \ 'term_name': a:name
          \})
    resize 15
  else
    let windowNum = bufwinnr(bufferNum)
    if windowNum == -1
      execute 'sbuffer '.bufferNum
      resize 15
    else
      execute windowNum.'wincmd w'
      hide
    endif
  endif
endfunction
