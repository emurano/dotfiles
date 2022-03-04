set exrc
" set guicursor=
set cursorline
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set signcolumn=yes
set noshowmode
set colorcolumn=80,120
set completeopt=menuone,noinsert,noselect
set autoindent
set cmdheight=1
syntax on

call plug#begin('~/.config/nvim/plugged')

Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'nvim-treesitter/nvim-treesitter'

call plug#end()

colorscheme gruvbox
"highlight Normal guibg=none

" let mapleader = " "
" nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>

" Move selected text up and down with capital J and K
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

