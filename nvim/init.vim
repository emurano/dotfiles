inoremap jk <ESC>       " use 'jk' to go back to command mode
let mapleader = "'"


syntax on
set number
set noswapfile
set hlsearch            " Highlight all results
set ignorecase          " ignore case in search
set incsearch           " show search results as you type
set relativenumber      " line numbers are relative to cursor position

call plug#begin('~/.config/nvim')


call plug#end()

colorscheme gruvbox

