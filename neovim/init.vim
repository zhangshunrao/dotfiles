inoremap jk <ESC>

let mapleader=','

nnoremap <leader>w :wa<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>a :xa<CR>
nnoremap <leader>sv :source %<CR>

set runtimepath='~/.config/nvim/potion'


" Vim Script File Settings {{{
	augroup fold
		autocmd!
		autocmd FileType vim setlocal foldmethod=marker
	augroup END
" }}}
"
"
"
"
"
" Pre
"
" Basic Settings {{{
" }}}
" FileType-specific Settings {{{
" }}}
" Mappings {{{
" }}}
