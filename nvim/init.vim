inoremap jk <ESC>       " use 'jk' to go back to command mode
let mapleader = "'"

syntax on
set number
set noswapfile
set hlsearch            " Highlight all results
set ignorecase          " ignore case in search
set incsearch           " show search results as you type
set relativenumber      " line numbers are relative to cursor position

" let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
" f empty(glob(data_dir . '/autoload/plug.vim'))
" silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif

call plug#begin('~/.local/share/nvim/plugins')

Plug 'gruvbox-community/gruvbox'

call plug#end()

colorscheme gruvbox

" Automatically add matching brace
inoremap {<CR> {<CR>}<C-o>O

" Tabstops
set tabstop=3 softtabstop=0 expandtab shiftwidth=4 smarttab
