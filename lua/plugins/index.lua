return {

  -- DISABLE
  { "echasnovski/mini.pairs", enabled = false },

  -- ADD
  { "mg979/vim-visual-multi" },

  -- ADD: Colors
  { "rose-pine/neovim" },
  { "lunacookies/vim-colors-xcode" },
  { "projekt0n/github-nvim-theme" },

  -- Edit
  { "hrsh7th/nvim-cmp", opts = { completion = { autocomplete = false } } },

  -- Edit: LazyVim
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
