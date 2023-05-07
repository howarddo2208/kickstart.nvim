if not pcall(require, 'toggleterm') then
  return
end

local map = require('howarddo.utils').map
local Terminal = require('toggleterm.terminal').Terminal

local on_open = function(term)
  vim.cmd 'startinsert!'
  vim.api.nvim_buf_set_keymap(term.bufnr, 'n', 'q', '<cmd>close<CR>', { noremap = true, silent = true })
end
local on_close = function(term)
  vim.cmd 'startinsert!'
end

-- LAZYGIT TOGGLE TERM
local lazygit = Terminal:new {
  cmd = 'lazygit',
  dir = 'git_dir',
  direction = 'float',
  float_opts = {
    border = 'double',
  },
  on_open = on_open,
  on_close = on_close,
}

function _lazygit_toggle()
  lazygit:toggle()
end

map('n', '<leader>gg', '<cmd>lua _lazygit_toggle()<CR>', { noremap = true, silent = true, desc = 'Lazygit' })

-- MIDNIGHT COMMANDER TERMINAL
local mc = Terminal:new {
  cmd = 'mc',
  dir = 'git_dir',
  direction = 'float',
  float_opts = {
    border = 'double',
  },
  on_open = on_open,
  on_close = on_close,
}

function _mc_toggle()
  mc:toggle()
end

map('n', '<leader>mc', '<cmd>lua _mc_toggle()<CR>', { noremap = true, silent = true, desc = 'Midnight Commander' })

-- FLOAT TOGGLE TERM
local floatterm = Terminal:new {
  cmd = vim.o.shell,
  direction = 'float',
  float_opts = {},
}

function _floatterm_toggle()
  floatterm:toggle()
end

-- Keymap for floatterm
map({ 'n', 't' }, '<C-\\>', '<cmd>lua _floatterm_toggle()<CR>',
{ noremap = true, silent = true, desc = 'Floating Terminal' })
