let g:ale_sign_error = '✖'
let g:ale_sign_warning = 'ⓘ'

" Enable ale auto completion
" let g:ale_completion_enabled = 1

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
