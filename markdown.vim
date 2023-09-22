" Enable sintax highlight
filetype plugin on
syntax on

let g:markdown_fenced_languages = [
\  'xml', 'yaml', 'ini=dosini', 'html', 'css', 'python', 'ruby', 'java', 'c',
\  'c++=cpp', 'javascript', 'rust', 'bash=sh', 'viml=vim', 'bash=sh',
\]

let g:bullets_enabled_file_types = ['markdown']
let g:bullets_outline_levels = []
let g:bullets_pad_right = 0
let g:bullets_max_alpha_characters = 0
let g:bullets_checkbox_markers = '                                                                                                                                               x'

augroup MarkdownSpellChecking
  au!
  au FileType markdown :setlocal spell spelllang=pt_br
augroup END
