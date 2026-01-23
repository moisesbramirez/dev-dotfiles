vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.wo.number = true
vim.o.relativenumber = true

-- Disable horizontal scrolling.
vim.o.mousescroll = 'ver:3,hor:0'

-- Wrap long lines at words.
vim.o.linebreak = true

vim.opt.hidden = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 12

vim.opt.cmdheight = 1
vim.opt.signcolumn = "yes"
