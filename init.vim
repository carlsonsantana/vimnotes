scriptencoding utf-8

let s:runtime_folder = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let &runtimepath = s:runtime_folder . ',' . &runtimepath

execute 'source ' . s:runtime_folder . '/plugins.vim'
execute 'source ' . s:runtime_folder . '/markdown.vim'
execute 'source ' . s:runtime_folder . '/vimwiki.vim'
execute 'source ' . s:runtime_folder . '/autosave.vim'
execute 'source ' . s:runtime_folder . '/tree_viewer.vim'
execute 'source ' . s:runtime_folder . '/keymaps.vim'
execute 'source ' . s:runtime_folder . '/editor.vim'
execute 'source ' . s:runtime_folder . '/performance.vim'
execute 'source ' . s:runtime_folder . '/other.vim'
