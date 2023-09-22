let g:netrw_liststyle = 3

" Hide hidden files
let g:netrw_hide = 1
let g:netrw_list_hide = '^\..*'

augroup OpenTreeViewer
  au!
  au VimEnter * if !filereadable(@%) | :Explore | endif
augroup END
