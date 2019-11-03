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
