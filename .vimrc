filetype plugin indent on
" to learn hjkl navigation "
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
set number
set background=dark
set t_Co=256
"set hlsearch	     
set scrolloff=5	

"vundle config
set nocompatible
filetype off                  
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'pangloss/vim-javascript'
Plugin 'sjl/badwolf'
Plugin 'SirVer/ultisnips'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'groenewege/vim-less'
"Plugin 'phildawes/racer'
Plugin 'editorconfig/editorconfig-vim'
call vundle#end()
syntax on
set expandtab
set shiftwidth=4
set softtabstop=4
set laststatus=4
set showcmd
set incsearch
set t_ut=
set ignorecase!

set nobackup       
set nowritebackup  
set noswapfile     
set cursorline cursorcolumn

let g:airline_powerline_fonts = 1
"colorscheme kolor
let g:solarized_termcolors=256
colorscheme bubblegum
set tw=79

let mapleader = "\<Space>"
nnoremap <silent> <Leader>t :CtrlP<CR>
nnoremap <silent> <Leader>v "*p 
vnoremap <silent> <Leader>c "*y 
nnoremap <silent> <Leader>, :e $MYVIMRC<CR> 
let g:ctrlp_open_multiple_files='v'
" Force saving files that require root permission 
cmap w!! w !sudo tee > /dev/null %
