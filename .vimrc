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
set t_Co=256
set background=dark
"set hlsearch	     
set scrolloff=5	

"vundle config
set nocompatible
filetype off                  
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'wincent/command-t'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'pangloss/vim-javascript'
call vundle#end()
syntax on
set expandtab
set shiftwidth=2
set softtabstop=2
set laststatus=2
set showcmd
set incsearch

set nobackup       
set nowritebackup  
set noswapfile     
set cursorline cursorcolumn

let g:airline_powerline_fonts = 1
"colorscheme kolor
colorscheme bubblegum
set tw=79

nnoremap <silent> <Leader>t :CommandT<CR>
nnoremap <silent> <Leader>b :CommandTBuffer<CR>
nnoremap <silent> <Leader>v "*p 
vnoremap <silent> <Leader>c "*y 
nnoremap <silent> <Leader>, :e $MYVIMRC<CR> 

