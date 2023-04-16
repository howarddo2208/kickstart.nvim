if not pcall(require, 'nvim-tree') then
  return
end

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- empty setup using defaults
require('nvim-tree').setup { -- BEGIN_DEFAULT_OPTS
  update_focused_file = {
    enable = true,
    update_root = false,
    ignore_list = {},
  },
} -- END_DEFAULT_OPTS

vim.keymap.set('n', '\\', ':NvimTreeToggle<CR>', { desc = 'Toggle Explorer' })
