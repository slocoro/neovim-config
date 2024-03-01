vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

-- line numbers
vim.wo.number = true

-- mouse mode
vim.opt.mouse = 'a'

-- enable access to system clipboard
vim.opt.clipboard = 'unnamed,unnamedplus'

-- add column line
vim.opt.colorcolumn = '80'

-- minimum lines below cursor
vim.opt.scrolloff = 8

-- key maps
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
