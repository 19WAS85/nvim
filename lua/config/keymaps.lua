-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- BUFFERS

map("n", "<tab>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
map("n", "<S-tab>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })

map("n", "<S-q>", function()
  require("mini.bufremove").delete(0, true)
end, { desc = "Delete Buffer" })

-- NEOTREE

map("n", "\\", ":Neotree<cr>", { desc = "Neotree Focus" })
