inoremap jk <ESC>       " use 'jk' to go back to command mode
let mapleader = "'"

syntax on
set number
set noswapfile
set hlsearch            " Highlight all results
set ignorecase          " ignore case in search
set incsearch           " show search results as you type
set relativenumber      " line numbers are relative to cursor position

set path+=**
set nowrap
set scrolloff=8
set cmdheight=3


" let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
" f empty(glob(data_dir . '/autoload/plug.vim'))
" silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif

call plug#begin('~/.local/share/nvim/plugins')

Plug 'gruvbox-community/gruvbox'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

colorscheme gruvbox

" Automatically add matching brace
inoremap {<CR> {<CR>}<C-o>O

" Automatically add matching double quote
inoremap {<CR> {<CR>}<C-o>O

" Tabstops
set tabstop=3 softtabstop=0 expandtab shiftwidth=3 smarttab
set smartindent

" Disable left arrow key
nnoremap <Left> :echo "No left for you!"<CR>
vnoremap <Left> :<C-u>echo "No left for you!"<CR>
inoremap <Left> <C-o>:echo "No left for you!"<CR>
nnoremap <Right> :echo "No right for you!"<CR>
vnoremap <Right> :<C-u>echo "No right for you!"<CR>
inoremap <Right> <C-o>:echo "No right for you!"<CR>
nnoremap <Down> :echo "No down for you!"<CR>
vnoremap <Down> :<C-u>echo "No down for you!"<CR>
inoremap <Down> <C-o>:echo "No down for you!"<CR>
nnoremap <Up> :echo "No up for you!"<CR>
vnoremap <Up> :<C-u>echo "No up for you!"<CR>
inoremap <Up> <C-o>:echo "No up for you!"<CR>

" File browsing using netrw
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
let g:netrw_winsize=25
augroup ProjectDrawer
    autocmd!
    autocmd VimEnter * :Vexplore
augroup END

" Move selected text up and down with capital J and K
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
