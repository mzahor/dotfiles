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
set smartcase

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'rking/ag.vim'
Plug 'tmux-plugins/vim-tmux'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" color themes
Plug 'chriskempson/base16-vim' " base16 theme
Plug 'scwood/vim-hybrid'
Plug 'dandorman/vim-colors'
" es6 syntax
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'SirVer/ultisnips'
call plug#end()

syntax on
set expandtab
set shiftwidth=4
set softtabstop=4
set laststatus=2
set showcmd
set incsearch
set t_ut=
set ignorecase!
set tw=79
set nobackup       
set nowritebackup  
set noswapfile     
set cursorline 
set tabstop=4
set wrap

let base16colorspace=256
colorscheme base16-eighties

let g:ag_working_path_mode="r"

" Hotkeys
let mapleader = "\<Space>"
nnoremap <silent> <Leader>t :tabnew<CR>
nnoremap <silent> <Leader>v "*p 
vnoremap <silent> <Leader>c "*y 
nnoremap <silent> <Leader>l :NERDTreeFind<CR>
noremap <silent> <C-p> :Files<CR>
nnoremap <silent> <Leader>, :vsplit $MYVIMRC<CR> 
let g:ctrlp_open_multiple_files='v'

" Force saving files that require root permission 
cmap w!! w !sudo tee > /dev/null %

" allow the . to execute once for each line of a visual selection
vnoremap . :normal .<CR>

set path=.,,**

" Powerline setup
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim

" Enable mouse
set mouse=a

nnoremap <silent> ,/ :nohlsearch<CR>
nnoremap <bs> dd
inoremap <c-d> <esc>:w<cr>a
nnoremap <leader>f :%!js-beautify<cr>
" wrap selection or word with quotes
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>
vnoremap <leader>' <esc>`>a'<esc>`<i'<esc>
vnoremap <leader>c "+y
vnoremap <leader>v "+p
" faster navigation
nnoremap j gj
nnoremap k gk
xnoremap j gj
xnoremap k gk
nmap J 5j
nmap K 5k
xmap J 5j
xmap K 5k
nmap gh <C-w>h
nmap gj <C-w>j
nmap gk <C-w>k
nmap gl <C-w>l
nmap <C-l> gt
nmap <C-h> gT
nnoremap ; :
vnoremap ; :
