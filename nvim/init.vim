set encoding=UTF-8
set conceallevel=3
set guifont=1


" use 'jk' to go back to command mode
inoremap jk <ESC>
let mapleader = "'"

" Set sane backspace behavior
set backspace=indent,eol,start

syntax on
" Show the line number on the line that the cursor is on
set number

" Don't create swapfiles
set noswapfile

" Higlihgt all results
set hlsearch

" Case insenstive searching
set ignorecase

" Show search results as you type
set incsearch           " show search results as you type
set relativenumber      " line numbers are relative to cursor position

set path+=**
set nowrap
set scrolloff=8
set cmdheight=2

" Allow local rc files - for project specific config
set exrc

" Don't allow local rc files to execute :autocmd
set secure

call plug#begin('~/.local/share/nvim/plugins')

Plug 'gruvbox-community/gruvbox'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'udalov/kotlin-vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'sheerun/vim-polyglot'
" Plug 'ryanoasis/vim-devicons'
" Plug 'scrooloose/nerdtree'
" Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/nerdcommenter'
Plug 'ap/vim-buftabline'
Plug 'itchyny/lightline.vim'

call plug#end()

colorscheme gruvbox

" Automatically add matching brace
inoremap {<CR> {<CR>}<C-o>O

" Tabstops
set tabstop=3 softtabstop=0 expandtab shiftwidth=3 smarttab
set smartindent

" Disable Arrow keys in Normal mode
" map <up> <nop>
" map <down> <nop>
" map <left> <nop>
" map <right> <nop>

" Disable Arrow keys in Insert mode
" imap <up> <nop>
" imap <down> <nop>
" imap <left> <nop>
" imap <right> <nop>


" File browsing using netrw
" let g:netrw_banner=0
" let g:netrw_browse_split=4
" let g:netrw_altv=1
" let g:netrw_liststyle=3
" let g:netrw_list_hide=netrw_gitignore#Hide()
" let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
" let g:netrw_winsize=25
" augroup ProjectDrawer
"    autocmd!
"    autocmd VimEnter * :Vexplore
" augroup END

" Move selected text up and down with capital J and K
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" nmap <C-s> <Plug>MarkdownPreview
" nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-p> <Plug>MarkdownPreviewToggle

" open new split panes to right and below
set splitright
set splitbelow

" Nerdtree shortcuts
nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
" let g:NERDTreeHijackNetrw=0


filetype plugin on


" buftabline
nnoremap <C-M> :bnext<CR>
nnoremap <C-N> :bprev<CR>

" Nerdcommenter - Toggle comments using ctrl-/
nmap <C-_>   <Plug>NERDCommenterToggle
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv

set noshowmode

