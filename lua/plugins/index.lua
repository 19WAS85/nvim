return {
  -- DISABLE ------------------------------------------------------------------
  { "echasnovski/mini.pairs", enabled = false },

  -- ADD ----------------------------------------------------------------------
  { "mg979/vim-visual-multi" },

  -- COLORS -------------------------------------------------------------------
  { "projekt0n/github-nvim-theme" },
  { "rose-pine/neovim" },

  -- EDIT ---------------------------------------------------------------------
  { "hrsh7th/nvim-cmp", opts = { completion = { autocomplete = false } } },
  { "nvim-lspconfig", opts = { inlay_hints = { enabled = false } } },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      table.remove(opts.sections.lualine_c)
    end,
  }
}
