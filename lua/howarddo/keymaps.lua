-- KEYMAPS
local map = require('howarddo.utils').map
-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
map({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
map('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
map('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
map('n', 'gl', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
map('n', 'gL', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- highlight and move lines
map('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'move highlighted text down' })
map('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'move highlighted text up' })

map('n', 'J', 'mzJ`z', { desc = 'group lines & keep cursor position' })

-- half page jumping and keep cursor at center of scree
map('n', '<C-d>', '<C-d>zz', { desc = 'scroll down half page' })
map('n', '<C-u>', '<C-u>zz', { desc = 'scroll up half page' })

-- keep search term in the middle
map('n', 'n', 'nzzzv', { desc = 'next match' })
map('n', 'N', 'Nzzzv', { desc = 'previous match' })

map('x', '<leader>p', [["_dP]], { desc = 'paste without copying deleted text' })
map({ 'n', 'v' }, '<leader>d', [["_d]], { desc = 'delete without copying text' })

-- quit
map('n', '<leader>Q', '<cmd>qa<cr>', { desc = 'quit all windows' })
map('n', '<leader>q', '<cmd>q<cr>', { desc = 'quit current window' })

-- saving with Ctrl+S
map({ 'i', 'n', 's' }, '<C-s>', '<ESC>:w<CR>', { desc = 'save buffer' })
