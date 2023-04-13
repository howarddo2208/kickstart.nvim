--search keymaps
vim.keymap.set('n', '<leader>tk', require('telescope.builtin').keymaps, { desc = 'Keymaps search' })

--search help
vim.keymap.set('n', '<leader>th', require('telescope.builtin').help_tags, { desc = 'Help search' })

--search builtin
vim.keymap.set('n', '<leader>tb', require('telescope.builtin').builtin, { desc = 'Builtin search' })
