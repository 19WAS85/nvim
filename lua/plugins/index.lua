return {

  -- DISABLE ------------------------------------------------------------------
  { "echasnovski/mini.pairs", enabled = false },

  -- ADD ----------------------------------------------------------------------
  { "mg979/vim-visual-multi" },

  -- ADD COLORS ---------------------------------------------------------------
  { "rose-pine/neovim" },
  { "lunacookies/vim-colors-xcode" },
  { "projekt0n/github-nvim-theme" },

  -- EDIT ---------------------------------------------------------------------
  { "hrsh7th/nvim-cmp", opts = { completion = { autocomplete = false } } },

  -- EDIT LAZYVIM -------------------------------------------------------------
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "rose-pine-dawn",
      -- colorscheme = "rose-pine-moon",
      -- colorscheme = "xcodelight"
      colorscheme = "github_light"
    },
  },
}
