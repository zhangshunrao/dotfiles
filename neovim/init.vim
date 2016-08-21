" Author: Cano
" Email: gcanoxl@gmail.com

call plug#begin('~/.config/nvim/plugged')

" Plugin tables
Plug 'bling/vim-airline'            " 状态栏增强
Plug 'scrooloose/nerdcommenter'     " 注释增强
Plug 'majutsushi/tagbar'            " 代码结构浏览
Plug 'scrooloose/nerdtree'          " 文件管理器
Plug 'kien/ctrlp.vim'               " 快速查找和打开文件
Plug 'mattn/emmet-vim', {'for': 'html'}  " 生成HTML

call plug#end()


" Basic
" General settings {{{
    set number
" }}}

" Mappings {{{
	" set leader key
	let mapleader=','

	inoremap jk <ESC>

	nnoremap <leader>w :wa<CR>
	nnoremap <leader>x :x<CR>
	nnoremap <leader>a :xa<CR>

	nnoremap <space> za

    " Source Vimrc
    nnoremap <leader>sv :source $MYVIMRC<CR>

	" window movement {{{
		nnoremap <C-H> <C-W><C-H>
		nnoremap <C-J> <C-W><C-J>
		nnoremap <C-K> <C-W><C-K>
		nnoremap <C-L> <C-W><C-L>
	" }}}
" }}}

" Formatting {{{
	autocmd FileType vim setlocal foldmethod=marker

	set ts=4 sw=4 sts=4 expandtab
" }}}

" Abbreviations {{{
 	autocmd FileType vim iabbrev <buffer> { {{{
 	autocmd FileType vim iabbrev <buffer> } }}}
" }}}

" Plugin Settings {{{
    " Tagbar
    nnoremap <leader>t :TagBarToggle<CR>
    
    " NERDTree {{{
    nnoremap <leader>f :NERDTreeToggle<CR>
    " }}} 
    
" }}} 


