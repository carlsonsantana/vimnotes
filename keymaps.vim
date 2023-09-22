let s:runtime_folder = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" Leader key
nnoremap <Space> <Nop>
map <Space> <Leader>
let mapleader=' '

execute 'source ' . s:runtime_folder . '/format_markdown_table.vim'

augroup MarkdownKeyMapping
  au!
  au FileType markdown nnoremap <silent> <leader>f :TableFormat<cr>
augroup END
