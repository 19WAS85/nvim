return {
  -- Disable
  { "echasnovski/mini.pairs", enabled = false },
  { "folke/flash.nvim", opts = { modes = { search = { enabled = false } } } },

  -- Colors
  { "rose-pine/neovim" },
  { "lunacookies/vim-colors-xcode" },
  { "miikanissi/modus-themes.nvim" },
  { "dracula/vim" },

  -- Config
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "rose-pine",
      colorscheme = "rose-pine-dawn",
      -- colorscheme = "rose-pine-moon",
      -- colorscheme = "xcodelight",
      -- colorscheme = "modus",
      -- colorscheme = "dracula",
    },
  },
}
