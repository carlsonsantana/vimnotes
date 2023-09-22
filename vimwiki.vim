let s:current_folder = getcwd()
let s:runtime_folder = fnamemodify(resolve(expand('<sfile>:p')), ':h')

let g:vimwiki_list = [{
\  'path': s:current_folder,
\  'syntax': 'markdown',
\  'ext': '.md',
\  'auto_diary_index': 1,
\}]
let g:vimwiki_markdown_link_ext = 1
let g:vimwiki_table_auto_fmt = 0
let g:vimwiki_auto_header = 1
