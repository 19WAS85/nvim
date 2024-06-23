-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- BUFFERS

map("n", "<tab>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Buffer" })
map("n", "<S-tab>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev Buffer" })

map("n", "<S-q>", LazyVim.ui.bufremove, { desc = "Delete Buffer" })

-- NEOTREE
map("n", "|", ":Neotree<cr>", { desc = "Neotree Focus" })

-- SEARCH
map("n", "<C-f>", ":%s/", { desc = "Quick Find Replace" })
