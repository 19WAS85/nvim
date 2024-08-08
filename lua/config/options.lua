-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.autoformat = false

vim.opt.guicursor = vim.opt.guicursor + 'a:blinkon100'

vim.opt.colorcolumn = '80'
vim.opt.cursorline = false
vim.opt.list = false
vim.opt.relativenumber = false
vim.opt.spelllang = {}
vim.opt.swapfile = false
vim.opt.undofile = false

vim.g.root_spec = { 'cwd' }
