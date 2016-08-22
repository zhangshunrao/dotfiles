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
            \ {'for': 'html'}
Plug 'Valloric/YouCompleteMe',              " 智能补全
            \ {'do': './install.py', 'for': ['html', 'css', 'python']}
Plug 'mbbill/undotree'                      " 历史记录
Plug 'easymotion/vim-easymotion'            " 快速移动
Plug 'tpope/vim-surround'                   " 修改成对符号
Plug 'Xuyuanp/nerdtree-git-plugin'          " Git状态显示
Plug 'dhruvasagar/vim-table-mode',          " 字符表格
            \ {'on': 'TableModeToggle'}
Plug 'terryma/vim-multiple-cursors'         " 多点输入
Plug 'sirver/ultisnips'                     " 模板
Plug 'honza/vim-snippets'                   " 模板库
Plug 'tpope/vim-fugitive'                   " Git集成
Plug 'ironcamel/vim-script-runner'
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
    vnoremap <space> <ESC>

	nnoremap <silent> <leader>w :wa<CR>
	nnoremap <silent> <leader>x :x<CR>
	nnoremap <silent> <leader>a :xa<CR>

	nnoremap <space> za

    " Visual shifting (does not exit Visual mode) {{{ 
        vnoremap < <gv
        vnoremap > >gv
    " }}} 

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
        nnoremap <C-O> <C-W><C-O>
	" }}}
" }}}

" Formatting {{{
    " {{{ folding 
        autocmd FileType vim setlocal foldmethod=marker
        autocmd FileType python setlocal foldmethod=indent
    " }}} 

	set ts=4 sw=4 sts=4 expandtab
" }}}

" Abbreviations {{{
 	autocmd FileType vim iabbrev <buffer> { {{{
 	autocmd FileType vim iabbrev <buffer> } }}}
" }}}

" Plugin Settings {{{
    " tagbar
    nnoremap <silent> <leader>mg :TagbarToggle<CR>
    
    " nerdtree {{{ 
        nnoremap <silent> <leader>ng :NERDTreeToggle<CR>
        let NERDTreeIgnore = ['\.pyc', '\~$', '\.swp$', '\.git']
        let NERDTreeWinSize = 33
    " }}}

    " undotree
    nnoremap <silent> <leader>du :UndotreeToggle<CR>

    " easymotion
    nmap <leader> <Plug>(easymotion-prefix)

    " table-mode
    nnoremap <silent> <leader>tm :TableModeToggle<CR>

    " script-runner
    let g:script_runner_key = '<F3>'

    " youcompleteme {{{ 
        " ycm-mappings {{{ 
            nnoremap <leader>jd :YcmCompleter GoToDeclaration<CR>
            nnoremap <leader>jf :YcmCompleter GoToDefinition<CR>
            nnoremap <leader>jg :YcmCompleter GoTo<CR>
            nnoremap <leader>jr :YcmCompleter GoToReferences<CR>
            nnoremap <leader>jo :YcmCompleter GetDoc<CR>
        " }}} 
        let g:ycm_python_binary_path = '/usr/bin/python3'
        let g:ycm_python_binary_path = 'python'
    	let g:ycm_autoclose_preview_window_after_insertion = 1
        let g:ycm_global_ycm_extra_conf = '~/.config/nvim/ycm_extra_conf.py'
        let g:ycm_extra_conf_globlist = ['~/.config/nvim/ycm_extra_conf.py']
    " }}} 

    " ultisnips {{{ 
        let g:UltiSnipsExpandTrigger="<leader><tab>"
        let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
        let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"
        let g:UltiSnipsEditSplit="vertical"
    " }}} 

    " fugitive {{{ 
        nnoremap <silent> <leader>gw :Gwrite<CR>
        nnoremap <silent> <leader>gr :Gremove<CR>
        nnoremap <silent> <leader>gm :Gmove<CR>
        nnoremap <silent> <leader>gc :Gcommit<CR>
        nnoremap <silent> <leader>gp :Gpush<CR>
    " }}} 

" }}} 
