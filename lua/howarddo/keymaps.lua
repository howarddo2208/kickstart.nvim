-- KEYMAPS
local map = require("howarddo.utils").map
-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
map({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
map('n', '[d', vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
map('n', ']d', vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
map('n', 'gl', vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
map('n', 'gL', vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

-- highlight and move lines
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "move highlighted text down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "move highlighted text up" })

map("n", "J", "mzJ`z", { desc = "group lines & keep cursor position" })

-- half page jumping and keep cursor at center of scree
map("n", "<C-d>", "<C-d>zz", { desc = "scroll down half page" })
map("n", "<C-u>", "<C-u>zz", { desc = "scroll up half page" })

-- keep search term in the middle
map("n", "n", "nzzzv", { desc = "next match" })
map("n", "N", "Nzzzv", { desc = "previous match" })

map("x", "<leader>p", [["_dP]], { desc = "paste without copying deleted text" })
map({ "n", "v" }, "<leader>d", [["_d]], { desc = "delete without copying text" })

-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

--  references: https://github.dev/LazyVim/LazyVim/blob/7ce1b1519a45f48aa4b5f35b7b7a886b42fe56d8/lua/lazyvim/config/keymaps.lua
-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- quit
map("n", "<leader>Q", "<cmd>xa<cr>", { desc = "save and quit all windows" })
map("n", "<leader>q", "<cmd>wq<cr>", { desc = "save and quit current window" })

-- saving with Ctrl+S
map({"i", "n", "s"}, "<C-s>", "<ESC>:w<CR>", { desc = 'save buffer' })
