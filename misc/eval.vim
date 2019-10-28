" ------------------------------------------------------------------------------
" Learning Vim script
" ------------------------------------------------------------------------------

" Nerd tree quickfix? ----------------------------------------------------------

call NERDTreeAddPathFilter('MyFilter')

function! MyFilter(params)
  echom a:params
  if a:params['nerdtree'] == 'emacs.el'
    return 1
  else
    return 0
  endif
  "params is a dict containing keys: 'nerdtree' and 'path' which are
  "g:NERDTree and g:NERDTreePath objects

  "return 1 to ignore params['path'] or 0 otherwise
endfunction

" eval javascript --------------------------------------------------------------

function! s:eval_javcript()
  pclose!
  wincmd n
  set previewwindow
  execute "read !node" expand('%:t')
  setlocal buftype=nofile bufhidden=wipe noswapfile nobuflisted nomodified
  wincmd p
endfunction

nnoremap <leader>x :call <SID>eval_javascript()<CR>

" Confirmation popup -----------------------------------------------------------

function! MyDialogHandler(id, result)
  if a:result
    echo "said yes"
  else
    echo "said now"
  endif
endfunc

let g:options = {
      \ 'filter': 'popup_filter_yesno',
      \ 'callback': 'MyDialogHandler',
      \ }

call popup_dialog('Continue? y/n', options)

" Moving popup -----------------------------------------------------------------

call prop_type_add('popupMarker', {})

let lnum = 1
let col = 1
let len = 0
let propId = '10000'
call prop_add(lnum, col, #{
      \ length: len,
      \ type: 'popupMarker',
      \ id: propId,
      \ })

let winid = popup_create('the text', #{
      \ line: line('.')-1,
      \ col: col('.')-1,
      \ pos: 'botleft',
      \ textprop: 'popupMarker',
      \ textpropid: propId,
      \ border: [0,0,0,0],
      \ padding: [0,0,0,0],
      \ close: 'click',
      \ })

function! UpdatePopup(winid)
  call popup_move(a:winid, #{ line: line('.'), col: col('.')})
endfunction

augroup cursor_move
  autocmd!
  autocmd CursorMoved * call UpdatePopup(winid)
augroup END

" :call example ----------------------------------------------------------------

function! Mynumber(arg)
  echom line(".") . " " . a:arg
endfunction

1,5call Mynumber(getline("."))
