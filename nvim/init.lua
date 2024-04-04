vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set encoding=UTF-8")
vim.cmd("set smartindent")
vim.cmd("inoremap jk <ESC>")
vim.cmd("set backspace=indent,eol,start")
vim.cmd("set number")
vim.cmd("set noswapfile")
vim.cmd("set relativenumber")
vim.cmd("set hlsearch")
vim.cmd("set ignorecase")
vim.cmd("set incsearch")
vim.cmd("set nowrap")
vim.cmd("set scrolloff=8")
vim.cmd("set cmdheight=1")
vim.cmd("set exrc")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {}
local opts = {}
require("lazy").setup(plugins, opts)

