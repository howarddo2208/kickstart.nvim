if not pcall(require, "gitsigns") then
  return
end

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- empty setup using defaults
require("nvim-tree").setup()

vim.keymap.set('n', '\\', ':NvimTreeToggle<CR>', { desc = 'Toggle Explorer' })
