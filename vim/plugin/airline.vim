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
