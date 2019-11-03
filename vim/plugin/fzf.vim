" :Buffers Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" Command key doesn't work, we are using option/alt key <command-t>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>ff :GFiles<CR>
nnoremap <leader>fh :Helptags<CR>
nnoremap <leader>fc :Commands<CR>
