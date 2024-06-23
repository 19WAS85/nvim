return {
  -- Disable
  { "echasnovski/mini.pairs", enabled = false },

  -- completion
  { "hrsh7th/nvim-cmp", opts = { completion = { autocomplete = false } } },

  -- Colors
  { "rose-pine/neovim" },
  { "lunacookies/vim-colors-xcode" },
  { "projekt0n/github-nvim-theme" },

  -- LazyVim
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


