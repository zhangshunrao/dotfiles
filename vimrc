" ================================================
" Cano's Vim Config
" version: alpha 0.2
" Blog: http://cano.xyz/
" ================================================
 
" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ==================== Bundle =====================
Bundle 'IndexedSearch'
Bundle 'majutsushi/tagbar'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'python-rope/ropevim'
Bundle 'sjl/gundo.vim'
Bundle 'gmarik/Vundle.vim'
Bundle 'tmhedberg/SimpylFold'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/nerdtree'
Bundle 'Xuyuanp/nerdtree-git-plugin'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-scripts/loremipsum'
Bundle 'mattn/emmet-vim'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'Raimondi/delimitMate'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'vim-scripts/indentpython.vim'
Bundle 'pangloss/vim-javascript'
" ---- Colorscheme ----
Bundle 'tomasr/molokai'
Bundle 'altercation/vim-colors-solarized'
" ==================== Bundle =====================

call vundle#end()
filetype plugin indent on

" Basic Config
let mapleader=','
filetype on
set number
syntax enable
syntax on
set tabstop=4
set shiftwidth=4
set expandtab autoindent
set laststatus=2
set ruler
set cursorline
set cursorcolumn
set hlsearch
set incsearch

" Apparent
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'Consolas'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set background=dark " Colorscheme
colorscheme molokai
"colorscheme solarized

" Back Normal Mode
inoremap jk <ESC>

" Global Search
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip     
let g:ctrlp_custom_ignore = {'dir':  '\v[\/]\.(git|hg|svn)$', 'file': '\v\.(exe|so|dll)$'}

" File Tree
nnoremap <silent> <leader>f :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore=['\.pyc$', '\~$', 'node_modules'] "ignore files in NERDTree

" Class Tree
nnoremap <silent> <leader>t :TagbarToggle<CR>

" File
nnoremap <silent> <leader>w :wa<CR>
nnoremap <silent> <leader>x :x<CR>
nnoremap <silent> <leader>a :xa<CR>

" Buffer
nnoremap <silent> <C-n> :bNext<CR>

" Window
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-l> <C-w>l
nnoremap <silent> <C-o> <C-w>o

" Copy & Paste
vnoremap <C-y> "+y
inoremap <C-p> <ESC>"+p

" YouCompleteMe
let g:ycm_semantic_triggers = {'css': [ 're!^\s{4}', 're!:\s+'],'html': [ '</' ],}
let g:ycm_autoclose_preview_window_after_completion=1
set completeopt=longest,menu
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
let g:ycm_confirm_extra_conf=0
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_cache_omnifunc=0
let g:ycm_seed_identifiers_with_syntax=1

" Run Python
nnoremap <silent> <F3> :!clear && python % <CR>

" Indent
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
nnoremap <silent> <Leader>i <Plug>IndentGuidesToggleCode fold
au BufWinLeave * silent mkview
au BufRead * silent loadview

" History
nnoremap <silent> <leader>g :GundoToggle<CR>

" Set to not compatible with VI Mode
set nocompatible
