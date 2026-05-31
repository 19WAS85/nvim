return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    opts.indent = vim.tbl_deep_extend("force", opts.indent or {}, {
      indent = { enabled = false },
      scope = { enabled = true },
    })
  end,
}
