" Plugin
call plug#begin('~/.vim/plugged')

Plug 'tmhedberg/SimpylFold' 	" 折叠增强
Plug 'scrooloose/nerdtree'  	" 文件树
Plug 'bling/vim-airline'	" 状态栏美化与增强
Plug 'scrooloose/nerdcommenter' " 注释增强
Plug 'majutsushi/tagbar'	" 显示代码结构
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer', 'for': ['c', 'cpp', 'css', 'html', 'python'] }	" 代码智能补全

call plug#end()

" General settings
filetype plugin indent on	" Automatically detect file types.
syntax on			" Syntax highlighting
set mousehide 			" Hide the mouse cursor while typing
set number 			" Show LineNumber

" My hotkeys
let mapleader=','
inoremap jk <ESC>			" Exit insert mode
nnoremap <silent> <leader>w :wa<CR>	" Save files
nnoremap <silent> <leader>x :x<CR>	" Save and close file
nnoremap <silent> <leader>a :xa<CR>	" Save and exit Vim
nnoremap <silent> <leader>f :NERDTreeToggle<CR>
nnoremap <silent> <leader>t :TagbarToggle<CR>

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
let g:SimpyFold_docstring_preview=1 "可看到折叠代码的文档字符串

" NERDTree
let NERDTreeIgnore = [
		\ '\.pyc',
		\'\~$',
		\'\.swo$',
		\'\.swp$',
		\'\.git',
		\'\.hg',
		\'\.svn',
		\'\.bzr'] " Ignore files in NERDTree

" YCM
let g:ycm_python_binary_path = 'python'
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/ycm_extra_conf.py'
let g:ycm_extra_conf_globlist = ['~/.config/nvim/ycm_extra_conf.py']

" Python
au BufNewFile,BufRead *.py
\ let g:python3_host_prog = '/usr/bin/Python3.5'
\ let g:ycm_server_python_interpreter = '/usr/bin/Python3.5'

" HTML & CSS & JS
au BufNewFile,BufRead *.js, *.html, *.css
\ set tabstop=2
\ set softtabstop=2
\ set shiftwidth=2
