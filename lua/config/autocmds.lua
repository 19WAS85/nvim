-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

WHITE_BACKGROUND = {
  'BufEnter',
  'BufNew',
  'ColorScheme',
  'FocusGained',
  'GUIEnter',
  'TabEnter',
  'TermResponse',
  'VimEnter',
  'WinEnter',
}

local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

vim.api.nvim_create_autocmd(WHITE_BACKGROUND, {
  group = augroup('checktime'),
  callback = function()
    vim.cmd('hi Normal guibg=#ffffff')
    vim.cmd('hi CursorLine guibg=#ffffff')
  end
})
