" Author: Cano
" Email: gcanoxl@gmail.com

call plug#begin('~/.config/nvim/plugged')

" Plugin tables
Plug 'bling/vim-airline'                    " 状态栏增强
Plug 'scrooloose/nerdcommenter'             " 注释增强
Plug 'majutsushi/tagbar'                    " 代码结构浏览
Plug 'scrooloose/nerdtree',                 " 文件浏览
            \ {'on': 'NERDTreeToggle'}
Plug 'kien/ctrlp.vim'                       " 快速查找和打开文件
Plug 'mattn/emmet-vim',                     " 生成HTML
            \ {'for': 'html'}               " 生成HTML
Plug 'Valloric/YouCompleteMe',              " 智能补全
            \ {'do': './install.py', 'for': ['html', 'css', 'python']}
Plug 'mbbill/undotree'                      " 历史记录
Plug 'easymotion/vim-easymotion'            " 快速移动
Plug 'tpope/vim-surround'                   " 修改成对符号
Plug 'Xuyuanp/nerdtree-git-plugin'          " Git plugin for NERDTree
Plug 'dhruvasagar/vim-table-mode',          " Table mode
            \ {'on': 'TableModeToggle'}
Plug 'terryma/vim-multiple-cursors'         " 多点输入
Plug 'sirver/ultisnips'                     " 模板
Plug 'honza/vim-snippets'                   " 模板库
Plug 'tpope/vim-fugitive'                   " Git集成
" colors
Plug 'altercation/vim-colors-solarized'


call plug#end()

" General settings {{{
    set scrolloff=8
    " UI {{{
        set background=dark
        set number
        set cursorcolumn
        set cursorline
        colorscheme solarized
    " }}} 
" }}}

" Mappings {{{
	" set leader key
	let mapleader=','

	inoremap jk <ESC>

	nnoremap <silent> <leader>w :wa<CR>
	nnoremap <silent> <leader>x :x<CR>
	nnoremap <silent> <leader>a :xa<CR>

	nnoremap <space> za

    " Source Vimrc {{{ 
        nnoremap <leader>sv :source $MYVIMRC<CR>
        nnoremap <leader>ev :edit $MYVIMRC<CR>
    " }}} 

	" window movement {{{
		nnoremap <C-H> <C-W><C-H>
		nnoremap <C-J> <C-W><C-J>
		nnoremap <C-K> <C-W><C-K>
		nnoremap <C-L> <C-W><C-L>
        nnoremap <C-C> <C-W><C-C>
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
    " tagbar
    nnoremap <silent> <leader>tt :TagbarToggle<CR>
    
    " nerdtree
    nnoremap <silent> <leader>nt :NERDTreeToggle<CR>

    " undotree
    nnoremap <silent> du :UndotreeToggle<CR>

    " easymotion
    nmap <leader> <Plug>(easymotion-prefix)

    " table-mode
    nnoremap <silent> <leader>tm :TableModeToggle<CR>

    " ultisnips {{{ 
        let g:UltiSnipsExpandTrigger="<leader><tab>"
        let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
        let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"
        let g:UltiSnipsEditSplit="vertical"
    " }}} 

    " fugitive {{{ 
        nnoremap <leader>gw :Gwrite<CR>
        nnoremap <leader>gr :Gremove<CR>
        nnoremap <leader>gm :Gmove<CR>
        nnoremap <leader>gc :Gcommit<CR>
    " }}} 

" }}} 
