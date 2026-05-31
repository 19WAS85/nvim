-- like.nvim — GitHub Light colorscheme for Neovim
-- https://github.com/like-nvim/like.nvim (future repo)

vim.o.background = "light"
vim.o.termguicolors = true

if vim.g.colors_name then
  vim.cmd("hi clear")
end
vim.g.colors_name = "like"

-- Section 1: Palette
local p = {
  -- backgrounds
  bg           = "#ffffff",
  bg_dark      = "#f6f8fa",
  bg_highlight = "#ffffcc",
  bg_visual    = "#e8f0fe",
  bg_search    = "#fff3b0",
  -- foregrounds
  fg           = "#000000",
  fg_dark      = "#555555",
  fg_gutter    = "#bbbbbb",
  -- syntax
  comment      = "#999988",
  keyword      = "#000000",
  string       = "#d01040",
  number       = "#009999",
  func         = "#990000",
  type         = "#445588",
  variable     = "#008080",
  constant     = "#008080",
  builtin      = "#0086b3",
  symbol       = "#990073",
  regex        = "#009926",
  tag          = "#000080",
  entity       = "#800080",
  decorator    = "#3c5d5d",
  namespace    = "#555555",
  -- diagnostics / git
  error        = "#a61717",
  error_bg     = "#e3d2d2",
  warning      = "#aa0000",
  diff_add     = "#ddffdd",
  diff_delete  = "#ffdddd",
  diff_add_fg    = "#009926",
  diff_delete_fg = "#a61717",
  none         = "NONE",
}

-- Section 2: Highlights (populated in Tasks 2–5)

-- Section 3: Application (populated in Task 6)
