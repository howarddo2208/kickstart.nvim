if not pcall(require, 'harpoon') then
  return
end

local mark = require 'harpoon.mark'
local ui = require 'harpoon.ui'
local map = require('howarddo.utils').map

map('n', '<leader>ha', mark.add_file, { desc = 'add file to harpoon' })
map('n', '<leader>hh', ui.toggle_quick_menu, { desc = 'toggle harpoon quick menu' })

map('n', '<C-1>', function()
  ui.nav_file(1)
end, { desc = 'navigate to harpoon 1' })
map('n', '<C-2>', function()
  ui.nav_file(2)
end, { desc = 'navigate to harpoon 2' })
map('n', '<C-3>', function()
  ui.nav_file(3)
end, { desc = 'navigate to harpoon 3' })
map('n', '<C-4>', function()
  ui.nav_file(4)
end, { desc = 'navigate to harpoon 4' })
