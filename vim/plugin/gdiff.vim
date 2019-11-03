" Experimental: Mappings
" After quickfix list is populated with :Gdiff command
" Requires fugitive plugin
nnoremap ]r :%bd<CR>:cnext<CR>:Gdiffsplit master<CR>
nnoremap [r :%bd<CR>:cprevious<CR>:Gdiffsplit master<CR>
nnoremap ]R :%bd<CR>:clast<CR>:Gdiffsplit master<CR>
nnoremap [R :%bd<CR>:cfirst<CR>:Gdiffsplit master<CR>
