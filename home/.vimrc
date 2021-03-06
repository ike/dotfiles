set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Bundle 'VundleVim/Vundle.vim'

" My Bundles
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-surround'
" Bundle 'tpope/vim-fugitive'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'tpope/vim-rails'
Bundle 'agude/vim-eldar'
Bundle 'tpope/vim-rake'
Bundle 'nanotech/jellybeans.vim'
Bundle 'nacitar/terminalkeys.vim'
Bundle 'nightsense/rusticated'
Bundle 'scrooloose/nerdtree'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'slim-template/vim-slim'
Bundle 'vim-airline/vim-airline'
Bundle 'rust-lang/rust.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'sotte/presenting.vim'
Bundle 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Bundle 'junegunn/fzf.vim'
Bundle 'vim-scripts/aspvbs.vim'
Bundle 'sodapopcan/vim-twiggy'
Bundle 'junegunn/gv.vim'

call vundle#end()
filetype plugin indent on

set background=dark
color eldar

" Color customizations
" highlight Search guibg='Purple' guifg='NONE'

let mapleader=","

set cursorline
set expandtab
set modelines=0
set shiftwidth=2
set clipboard=unnamed
set synmaxcol=4096
set ttyscroll=10
set encoding=utf-8
set tabstop=2
set nowrap
set number
set expandtab
set nowritebackup
set noswapfile
set nobackup
set hlsearch
set ignorecase
set smartcase
set lazyredraw

" disable Background Color Erase (BCE) so that color schemes
" render properly when inside 256-color tmux and GNU screen.
" see also http://snk.tuxfamily.org/log/vim-256color-bce.html
if &term =~ '256color'
  set t_ut=
endif

" Automatic formatting
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.go :%s/\s\+$//e
autocmd BufWritePre *.haml :%s/\s\+$//e
autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.scss :%s/\s\+$//e
autocmd BufWritePre *.slim :%s/\s\+$//e

au BufNewFile * set noeol
au BufRead,BufNewFile *.go set filetype=go

" Tab between buffers
noremap <tab> <c-w><c-w>

" Status and buffer
set laststatus=2 "show the status line

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 2
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 600
let g:ctrlp_max_depth = 5
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/bower_components/*

" NERDTree
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTreeToggle | endi

" FZF
let g:fzf_history_dir = '~/.local/share/fzf-history'

" Twiggy
nmap <leader>t :Twiggy<CR>

" vimdiff helpers
map <silent> <leader>2 :diffget 2<CR> :diffupdate<CR>
map <silent> <leader>3 :diffget 3<CR> :diffupdate<CR>
map <silent> <leader>4 :diffget 4<CR> :diffupdate<CR>

" Quit with :Q
command -nargs=0 Quit :qa!
