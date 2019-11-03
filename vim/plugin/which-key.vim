set timeoutlen=500

let g:which_key_map = {
  \ 'a': { 'name' : '+ale' },
  \ 'f': { 'name' : '+fuzy-finder' },
  \ 'g': { 'name' : '+git' },
  \ 'h': { 'name' : '+hunk' },
  \ 'n': { 'name' : '+nerd-tree' },
  \ 'p': { 'name' : '+plugin' },
  \ 'v': { 'name' : '+vim' }
  \ }

call which_key#register('<space>', "g:which_key_map")
nnoremap <silent> <leader> :<c-u>WhichKey '<leader>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<leader>'<CR>

autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
      \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
