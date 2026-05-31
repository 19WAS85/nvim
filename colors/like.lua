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

-- Section 2: Highlights
local h = {}

-- Base UI
h.Normal          = { fg = p.fg,        bg = p.bg }
h.NormalFloat     = { fg = p.fg,        bg = p.bg_dark }
h.NormalNC        = { fg = p.fg_dark,   bg = p.bg }
h.LineNr          = { fg = p.fg_gutter }
h.CursorLine      = { bg = p.bg_dark }
h.CursorLineNr    = { fg = p.fg,        bold = true }
h.ColorColumn     = { bg = p.bg_dark }
h.SignColumn      = { fg = p.fg_gutter, bg = p.bg }
h.FoldColumn      = { fg = p.fg_gutter, bg = p.bg }
h.Folded          = { fg = p.comment,   bg = p.bg_dark }
h.Visual          = { bg = p.bg_visual }
h.VisualNOS       = { bg = p.bg_visual }
h.Search          = { fg = p.fg,        bg = p.bg_search }
h.IncSearch       = { fg = p.fg,        bg = p.bg_highlight, bold = true }
h.MatchParen      = { fg = p.func,      bold = true, underline = true }
h.Pmenu           = { fg = p.fg,        bg = p.bg_dark }
h.PmenuSel        = { fg = p.fg,        bg = p.bg_visual, bold = true }
h.PmenuSbar       = { bg = p.bg_dark }
h.PmenuThumb      = { bg = p.fg_gutter }
h.StatusLine      = { fg = p.fg_dark,   bg = p.bg_dark }
h.StatusLineNC    = { fg = p.fg_gutter, bg = p.bg_dark }
h.WinSeparator    = { fg = p.fg_gutter }
h.VertSplit       = { fg = p.fg_gutter }
h.TabLine         = { fg = p.fg_dark,   bg = p.bg_dark }
h.TabLineSel      = { fg = p.fg,        bg = p.bg, bold = true }
h.TabLineFill     = { bg = p.bg_dark }
h.FloatBorder     = { fg = p.fg_gutter, bg = p.bg_dark }
h.NonText         = { fg = p.fg_gutter }
h.SpecialKey      = { fg = p.fg_gutter }
h.EndOfBuffer     = { fg = p.bg }
h.WildMenu        = { fg = p.fg,        bg = p.bg_visual, bold = true }
h.Title           = { fg = p.type,      bold = true }
h.Directory       = { fg = p.builtin }
h.QuickFixLine    = { bg = p.bg_visual }
h.ModeMsg         = { fg = p.fg,        bold = true }
h.MoreMsg         = { fg = p.func }
h.Question        = { fg = p.func }
h.WarningMsg      = { fg = p.warning }
h.ErrorMsg        = { fg = p.error }

-- Legacy syntax
h.Comment         = { fg = p.comment, italic = true }
h.Keyword         = { fg = p.keyword, bold = true }
h.KeywordFunction = { fg = p.keyword, bold = true }
h.KeywordReturn   = { fg = p.keyword, bold = true }
h.KeywordOperator = { fg = p.keyword }
h.String          = { fg = p.string }
h.Character       = { fg = p.string }
h.Number          = { fg = p.number }
h.Float           = { fg = p.number }
h.Boolean         = { fg = p.keyword, bold = true }
h.Operator        = { fg = p.keyword }
h.Delimiter       = { fg = p.fg_dark }
h.Function        = { fg = p.func }
h.Method          = { fg = p.func }
h.Type            = { fg = p.type }
h.TypeDef         = { fg = p.type }
h.Identifier      = { fg = p.variable }
h.Constant        = { fg = p.constant }
h.Special         = { fg = p.symbol }
h.SpecialChar     = { fg = p.string }
h.SpecialComment  = { fg = p.comment, bold = true }
h.Tag             = { fg = p.tag }
h.Attribute       = { fg = p.variable }
h.PreProc         = { fg = p.keyword }
h.Include         = { fg = p.keyword }
h.Define          = { fg = p.keyword }
h.Macro           = { fg = p.keyword }
h.Statement       = { fg = p.keyword, bold = true }
h.Conditional     = { fg = p.keyword, bold = true }
h.Repeat          = { fg = p.keyword, bold = true }
h.Label           = { fg = p.func }
h.Exception       = { fg = p.func }
h.Structure       = { fg = p.type }
h.StorageClass    = { fg = p.type }
h.Typedef         = { fg = p.type }
h.Todo            = { fg = p.builtin, bold = true }
h.Error           = { fg = p.error,   bg = p.error_bg }
h.Underlined      = { fg = p.tag,     underline = true }

-- Treesitter
h["@comment"]               = { link = "Comment" }
h["@keyword"]               = { link = "Keyword" }
h["@keyword.function"]      = { link = "KeywordFunction" }
h["@keyword.return"]        = { link = "KeywordReturn" }
h["@keyword.operator"]      = { link = "KeywordOperator" }
h["@string"]                = { link = "String" }
h["@string.regex"]          = { fg = p.regex }
h["@string.escape"]         = { fg = p.symbol }
h["@number"]                = { link = "Number" }
h["@float"]                 = { link = "Float" }
h["@boolean"]               = { link = "Boolean" }
h["@operator"]              = { link = "Operator" }
h["@punctuation.delimiter"] = { fg = p.fg_dark }
h["@punctuation.bracket"]   = { fg = p.fg_dark }
h["@function"]              = { link = "Function" }
h["@function.builtin"]      = { fg = p.builtin }
h["@method"]                = { link = "Method" }
h["@type"]                  = { link = "Type" }
h["@type.builtin"]          = { fg = p.type, italic = true }
h["@variable"]              = { fg = p.variable }
h["@variable.builtin"]      = { fg = p.builtin, italic = true }
h["@constant"]              = { link = "Constant" }
h["@constant.builtin"]      = { fg = p.constant, bold = true }
h["@namespace"]             = { fg = p.namespace }
h["@attribute"]             = { fg = p.variable }
h["@tag"]                   = { fg = p.tag }
h["@tag.attribute"]         = { fg = p.variable }
h["@tag.delimiter"]         = { fg = p.fg_dark }
h["@constructor"]           = { fg = p.type }
h["@parameter"]             = { fg = p.fg }
h["@field"]                 = { fg = p.variable }
h["@property"]              = { fg = p.variable }
h["@symbol"]                = { fg = p.symbol }
h["@text.literal"]          = { fg = p.string }
h["@text.uri"]              = { fg = p.builtin, underline = true }
h["@text.title"]            = { fg = p.type,    bold = true }
h["@text.emphasis"]         = { italic = true }
h["@text.strong"]           = { bold = true }

-- LSP diagnostics
h.DiagnosticError            = { fg = p.error }
h.DiagnosticWarn             = { fg = p.warning }
h.DiagnosticInfo             = { fg = p.builtin }
h.DiagnosticHint             = { fg = p.variable }
h.DiagnosticUnderlineError   = { underline = true, sp = p.error }
h.DiagnosticUnderlineWarn    = { underline = true, sp = p.warning }
h.DiagnosticUnderlineInfo    = { underline = true, sp = p.builtin }
h.DiagnosticUnderlineHint    = { underline = true, sp = p.variable }
h.DiagnosticVirtualTextError = { fg = p.error,    bg = p.error_bg }
h.DiagnosticVirtualTextWarn  = { fg = p.warning,  bg = p.bg_dark }
h.DiagnosticVirtualTextInfo  = { fg = p.builtin,  bg = p.bg_dark }
h.DiagnosticVirtualTextHint  = { fg = p.variable, bg = p.bg_dark }
h.LspReferenceText           = { bg = p.bg_visual }
h.LspReferenceRead           = { bg = p.bg_visual }
h.LspReferenceWrite          = { bg = p.bg_visual, bold = true }

-- Git / Diff
h.DiffAdd          = { bg = p.diff_add }
h.DiffDelete       = { bg = p.diff_delete }
h.DiffChange       = { bg = p.bg_dark }
h.DiffText         = { bg = p.bg_highlight }
h.GitSignsAdd      = { fg = p.diff_add_fg }
h.GitSignsChange   = { fg = p.builtin }
h.GitSignsDelete   = { fg = p.diff_delete_fg }
h.GitSignsAddNr    = { fg = p.diff_add_fg }
h.GitSignsChangeNr = { fg = p.builtin }
h.GitSignsDeleteNr = { fg = p.diff_delete_fg }

-- Section 3: Application (populated in Task 6)
