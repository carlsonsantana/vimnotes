" Maintains selection after indenting
vnoremap > >gv
vnoremap < <gv

" Allow delete all with backspace
set backspace=indent,eol,start

" Copy to clipboard
set clipboard=unnamedplus

" Replace selected text without yank
xnoremap <silent> p p:let @+=@0<CR>:let @"=@0<CR>

" Delete without yank deleted text
nnoremap d "_d
vnoremap d "_d

" Emphasis current line
set cursorline
