-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Do not save single character deletions to the register
vim.keymap.set("n", "x", '"_x')

-- Move to the first non-blank character of the line
vim.keymap.set("n", "0", "^")
