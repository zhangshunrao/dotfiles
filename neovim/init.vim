" Author: Cano
" Email: gcanoxl@gmail.com

call plug#begin('~/.config/nvim/plugged')

" Plugin tables {{{

    " 状态栏增强
    Plug 'bling/vim-airline'

    " 注释增强
    Plug 'scrooloose/nerdcommenter'
     
    " 代码结构浏览
    Plug 'majutsushi/tagbar'
    
    " 文件浏览
    Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}

    " 快速搜索打开文件
    Plug 'kien/ctrlp.vim'
    " 搜索命令
    Plug 'fisadev/vim-ctrlp-cmdpalette'         

    " 生成HTML
    Plug 'mattn/emmet-vim', {'for': 'html'}
    
    " 智能补全
    Plug 'Valloric/YouCompleteMe', {'do': './install.py', 'for': ['html', 'css', 'python']}

    " 撤销历史操作
    Plug 'mbbill/undotree', {'on': 'UndoTreeToggle'}

    " 快速移动
    Plug 'easymotion/vim-easymotion'

    " 修改成对符号
    Plug 'tpope/vim-surround'

    " 字符表格
    Plug 'dhruvasagar/vim-table-mode', {'on': 'TableModeToggle'}

    " 多光标输入
    Plug 'terryma/vim-multiple-cursors'

    " 代码模板
    Plug 'sirver/ultisnips'
    Plug 'honza/vim-snippets'

    " Git集成
    Plug 'Xuyuanp/nerdtree-git-plugin'          
    Plug 'tpope/vim-fugitive'
    Plug 'mhinz/vim-signify'

    " Python Mode as IDE
    Plug 'klen/python-mode', {'for': 'python'}

    " colors {{{
        Plug 'altercation/vim-colors-solarized'
        Plug 'fisadev/fisa-vim-colorscheme'
    " }}} 
    
" }}} 

call plug#end()

" General settings {{{
    set scrolloff=8
    " UI {{{
        set background=dark
        set number
        set cursorcolumn
        set cursorline
        colorscheme fisa
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
        let NERDTreeWinSize = 32
    " }}}

    " undotree
    nnoremap <silent> <leader>du :UndotreeToggle<CR>

    " easymotion
    nmap <leader> <Plug>(easymotion-prefix)

    " table-mode
    nnoremap <silent> <leader>tm :TableModeToggle<CR>

    " python-mode
    nnoremap <leader>la :PymodeLintAuto<CR>

    " ctrlp-cmdpaletted {{{ 
        let g:ctrlp_cmdpalette_execute = 1  " auto execute command
        nnoremap <silent> <leader>cp :CtrlPCmdPalette<CR>
    " }}}
    
    " neocomplete {{{ 
        let g:neocomplete#enable_at_startup = 1
        let g:neocomplete#enable_smart_case = 1
    " }}} 

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
