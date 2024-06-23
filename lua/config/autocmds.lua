-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- github theme ---------------------------------------------------------------

local github_theme = function ()
  vim.cmd('hi Comment guifg=#999988')
  vim.cmd('hi Conditional guifg=#1f2328 gui=bold')
  vim.cmd('hi Constant guifg=#445588')
  vim.cmd('hi Function guifg=#990000 gui=bold')
  vim.cmd('hi IncSearch guifg=#1f2328 guibg=#ffff00')
  vim.cmd('hi Keyword guifg=#1f2328 gui=bold')
  vim.cmd('hi LineNr guifg=#999988')
  vim.cmd('hi LspReferenceRead guibg=#ffffcc')
  vim.cmd('hi LspReferenceText guibg=#ffffcc')
  vim.cmd('hi LspReferenceWrite guibg=#ffffcc')
  vim.cmd('hi MatchParen guibg=#ffff00')
  vim.cmd('hi Number guifg=#445588')
  vim.cmd('hi Operator guifg=#1f2328')
  vim.cmd('hi PreProc guifg=#1f2328')
  vim.cmd('hi Search guifg=#1f2328 guibg=#ffff00')
  vim.cmd('hi Statement guifg=#1f2328')
  vim.cmd('hi String guifg=#d01040')
  vim.cmd('hi Type guifg=#008080')
  vim.cmd('hi @constant.builtin guifg=#1f2328 gui=bold')
  vim.cmd('hi @keyword.exception guifg=#1f2328 gui=bold')
  vim.cmd('hi @keyword.function guifg=#1f2328 gui=bold')
  vim.cmd('hi @keyword.operator guifg=#1f2328 gui=bold')
  vim.cmd('hi @punctuation.bracket guifg=#666666')
  vim.cmd('hi @punctuation.delimiter guifg=#666666')
  vim.cmd('hi @type guifg=#445588')
  vim.cmd('hi @type.builtin guifg=#0086b3')
  vim.cmd('hi @variable.builtin guifg=#1f2328 gui=bold')
  vim.cmd('hi @variable.member guifg=#990073')
end

vim.api.nvim_create_autocmd({ "ColorScheme" }, {
  callback = function()
    github_theme()
  end,
})

github_theme()

-- telescope multiselection ---------------------------------------------------

local select_one_or_multi = function(prompt_bufnr)
  local picker = require('telescope.actions.state').get_current_picker(prompt_bufnr)
  local multi = picker:get_multi_selection()
  if not vim.tbl_isempty(multi) then
    require('telescope.actions').close(prompt_bufnr)
    for _, j in pairs(multi) do
      if j.path ~= nil then
        vim.cmd(string.format('%s %s', 'edit', j.path))
      end
    end
  else
    require('telescope.actions').select_default(prompt_bufnr)
  end
end
require('telescope').setup { defaults = { mappings = { i = { ['<CR>'] = select_one_or_multi, } } } }

