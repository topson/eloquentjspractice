set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'jist/vim-nerdtree-tabs'
Plugin 'scrooloose/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi-tagbar'
Plugin 'jelera/vim-javascript-syntax'

call vundle#end()
filetype plugin indent on

"--javascript syntax

au Filetype javascript call JavaScriptFold()

"--tags
set tags=./tags;,~/.vimtags
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

"--tagbar
nmap <silent><leader>b: TagbarToggle<CR>

"--syntastic
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END

"-- nertree
let g:nerdtree_tabs_open_on_console_startup=1

"--airline
set laststatus=2
let g:airline_detect_past=1
let g:airline#extensions#tabline#enabled=1

"--General Settings--
set backspace=indent,eol,start
set ruler
set t_Co=256
set number
set tabstop=4
set shiftwidth=4
set smarttab
set ai
set smartindent
set showmatch
set incsearch
set hlsearch
set mouse=a
set cursorline
set nowrap
set autoindent
set background=dark


syntax on
colorscheme zenburn
