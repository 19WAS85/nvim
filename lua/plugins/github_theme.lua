local set_colors = function()
  vim.cmd("hi Operator guifg=#1f2328")
  vim.cmd("hi PreProc guifg=#1f2328")
  vim.cmd("hi Statement guifg=#1f2328")
  vim.cmd("hi @constant.builtin guifg=#1f2328 gui=bold")
  vim.cmd("hi @keyword.exception guifg=#1f2328 gui=bold")
  vim.cmd("hi @keyword.function guifg=#1f2328 gui=bold")
  vim.cmd("hi @keyword.operator guifg=#1f2328 gui=bold")
  vim.cmd("hi @markup.heading guifg=#1f2328 gui=bold")
  vim.cmd("hi @type.builtin guifg=#1f2328 gui=bold")
  vim.cmd("hi @type.qualifier guifg=#1f2328 gui=bold")
  vim.cmd("hi @variable.builtin guifg=#1f2328 gui=bold")
  vim.cmd("hi Conditional guifg=#1f2328 gui=bold")
  vim.cmd("hi Keyword guifg=#1f2328 gui=bold")
  vim.cmd("hi IncSearch guifg=#1f2328 guibg=#ffff00")
  vim.cmd("hi Search guifg=#1f2328 guibg=#ffff00")

  vim.cmd("hi @lsp.type.class.java guifg=#008080")
  vim.cmd("hi @lsp.type.class.typescript guifg=#008080")
  vim.cmd("hi @type guifg=#008080")
  vim.cmd("hi Number guifg=#008080")
  vim.cmd("hi Type guifg=#008080")
  vim.cmd("hi @type.builtin.java guifg=#008080 gui=bold")

  vim.cmd("hi @tag guifg=#445588")
  vim.cmd("hi Constant guifg=#445588")
  vim.cmd("hi jsonKeyword guifg=#445588")

  vim.cmd("hi @markup.link guifg=#999988")
  vim.cmd("hi @punctuation guifg=#999988")
  vim.cmd("hi Comment guifg=#999988")
  vim.cmd("hi LineNr guifg=#999988")
  vim.cmd("hi Special guifg=#999988")
  vim.cmd("hi @markup.list guifg=#999988 gui=bold")

  vim.cmd("hi LspReferenceRead guibg=#ffffcc")
  vim.cmd("hi LspReferenceText guibg=#ffffcc")
  vim.cmd("hi LspReferenceWrite guibg=#ffffcc")

  vim.cmd("hi @markup.link.label guifg=#990073")
  vim.cmd("hi @variable.member guifg=#990073")

  vim.cmd("hi NormalSB guibg=#ffffff")
  vim.cmd("hi Visual guifg=#ffffff guibg=#445588 gui=italic")

  vim.cmd("hi Function guifg=#990000 gui=bold")
  vim.cmd("hi LspSignatureActiveParameter guifg=#009926")
  vim.cmd("hi MatchParen guibg=#ffff00")
  vim.cmd("hi String guifg=#d01040")
end

set_colors()

vim.api.nvim_create_autocmd({ "ColorScheme" }, {
  callback = function()
    set_colors()
  end,
})

return {
  { "LazyVim/LazyVim", opts = { colorscheme = "github_light" } },
}
