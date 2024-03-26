-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.autoformat = false

vim.opt.conceallevel = 0
vim.opt.guicursor = vim.opt.guicursor + 'a:blinkon100'
vim.opt.relativenumber = false
vim.opt.swapfile = false
vim.opt.undofile = false

-- conflict-marker.vim

vim.cmd('let g:conflict_marker_highlight_group = ""')
vim.cmd('highlight ConflictMarkerBegin guibg=#2f7366')
vim.cmd('highlight ConflictMarkerOurs guibg=#2e5049')
vim.cmd('highlight ConflictMarkerTheirs guibg=#344f69')
vim.cmd('highlight ConflictMarkerEnd guibg=#2f628e')
vim.cmd('highlight ConflictMarkerCommonAncestorsHunk guibg=#754a81')
