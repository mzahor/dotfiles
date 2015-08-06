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
"set hlsearch	     
set scrolloff=5	

syntax on
set expandtab
set shiftwidth=4
set softtabstop=4
set laststatus=4
set showcmd
set incsearch
set ignorecase!

set nobackup       
set nowritebackup  
set noswapfile     

set tw=79

nnoremap <silent> <Leader>t :CtrlP<CR>
nnoremap <silent> <Leader>v "*p 
vnoremap <silent> <Leader>c "*y 
nnoremap <silent> <Leader>, :e $MYVIMRC<CR> 
let g:ctrlp_open_multiple_files='v'
" Force saving files that require root permission 
cmap w!! w !sudo tee > /dev/null %
