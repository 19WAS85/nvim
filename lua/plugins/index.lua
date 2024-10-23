return {
  -- DISABLE ------------------------------------------------------------------

  { "echasnovski/mini.pairs", enabled = false },

  -- ADD ----------------------------------------------------------------------

  { "mg979/vim-visual-multi" },

  -- COLORS -------------------------------------------------------------------

  { "projekt0n/github-nvim-theme" },
  { "rose-pine/neovim" },

  -- EDIT ---------------------------------------------------------------------

  {
    "nvimdev/dashboard-nvim",
    lazy = false,
    opts = function(_, opts)
      opts.config.header = { "", "", "https://www.lazyvim.org/", "", "" }
    end,
  },

  {
    "nvim-lspconfig",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.inlay_hints.enabled = false
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.completion.autocomplete = false
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      table.remove(opts.sections.lualine_c)
    end,
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.filesystem.group_empty_dirs = true
    end,
  },
}
