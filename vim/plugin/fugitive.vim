augroup fugitive_autocmds
  autocmd!
  autocmd Filetype fugitive setlocal nonumber
  " autocmd Filetype fugitive setlocal winfixheight
  autocmd Filetype gitcommit setlocal nonumber
  autocmd Filetype gitcommit setlocal spell
  " autocmd Filetype gitcommit exe "resize " . line('$')
augroup END

noremap <leader>gs :Gstatus<cr>
noremap <leader>gc :Gcommit<cr>
noremap <leader>gd :Gdiffsplit<cr>
noremap <leader>gp :Gpush<cr>
noremap <leader>gr :Gread<cr>
noremap <leader>gw :Gwrite<cr>
noremap <leader>gh :Gbrowse @:<cr>
noremap <leader>gb :Gblame<cr>
noremap <leader>ge :Gedit<space>

" Shell aliases
noremap <leader>gg :Git<space>
noremap <leader>go :Git checkout<space>
noremap <leader>gt :Git tree --all<cr>
