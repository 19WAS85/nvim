return {
  -- Disable
  { "echasnovski/mini.pairs", enabled = false },
  { "folke/flash.nvim", opts = { modes = { search = { enabled = false } } } },

  -- Colors
  { "lunacookies/vim-colors-xcode" },
  { "rose-pine/neovim" },
  { "preservim/vim-colors-pencil" },

  -- Diff
  { "rhysd/conflict-marker.vim" },

  -- Config
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "rose-pine",
      -- colorscheme = "rose-pine-dawn",
      colorscheme = "rose-pine-moon",
      -- colorscheme = "xcodelight",
    }
  },
}
