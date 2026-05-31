return {
  {
    "folke/tokyonight.nvim",
    enabled = false,
  },
  {
    -- like.nvim lives in colors/like.lua — no plugin required
    name = "like",
    dir = vim.fn.stdpath("config"),
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("like")
    end,
  },
}
