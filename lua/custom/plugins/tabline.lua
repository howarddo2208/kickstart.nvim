-- Move to previous/next
vim.keymap.set('n', '<A-h>', ':BufferPrevious<CR>', { desc = 'Move to previous buffer' })
vim.keymap.set('n', '<A-l>', ':BufferNext<CR>', { desc = 'Move to next buffer' })

-- Re-order to previous/next
vim.keymap.set('n', '<A-H>', ':BufferMovePrevious<CR>', { desc = 'Re-order buffer to previous' })
vim.keymap.set('n', '<A-L>', ':BufferMoveNext<CR>', { desc = 'Re-order buffer to next' })

-- Goto buffer in position...
vim.keymap.set('n', '<A-1>', ':BufferGoto 1<CR>', { desc = 'Go to buffer 1' })
vim.keymap.set('n', '<A-2>', ':BufferGoto 2<CR>', { desc = 'Go to buffer 2' })
vim.keymap.set('n', '<A-3>', ':BufferGoto 3<CR>', { desc = 'Go to buffer 3' })
vim.keymap.set('n', '<A-4>', ':BufferGoto 4<CR>', { desc = 'Go to buffer 4' })
vim.keymap.set('n', '<A-5>', ':BufferGoto 5<CR>', { desc = 'Go to buffer 5' })
vim.keymap.set('n', '<A-6>', ':BufferGoto 6<CR>', { desc = 'Go to buffer 6' })
vim.keymap.set('n', '<A-7>', ':BufferGoto 7<CR>', { desc = 'Go to buffer 7' })
vim.keymap.set('n', '<A-8>', ':BufferGoto 8<CR>', { desc = 'Go to buffer 8' })
vim.keymap.set('n', '<A-9>', ':BufferGoto 9<CR>', { desc = 'Go to buffer 9' })
vim.keymap.set('n', '<A-0>', ':BufferLast<CR>', { desc = 'Go to last buffer' })

-- Pin/unpin buffer
vim.keymap.set('n', '<leader>bp', ':BufferPin<CR>', { desc = 'Pin/unpin buffer' })

-- Close buffer
vim.keymap.set('n', '<leader>c', ':BufferClose<CR>', { desc = 'Close current buffer' })
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight

-- Magic buffer-picking mode
vim.keymap.set('n', '<C-p>', ':BufferPick<CR>', { desc = 'Open fuffer picker' })

-- Sort automatically by...
vim.keymap.set('n', '<leader>bb', ':BufferOrderByBufferNumber<CR>', { desc = 'Sort buffers by buffer number' })
vim.keymap.set('n', '<leader>bd', ':BufferOrderByDirectory<CR>', { desc = 'Sort buffers by directory' })
vim.keymap.set('n', '<leader>bl', ':BufferOrderByLanguage<CR>', { desc = 'Sort buffers by language' })
vim.keymap.set('n', '<leader>bw', ':BufferOrderByWindowNumber<CR>', { desc = 'Sort buffers by window number' })

return {
  'romgrk/barbar.nvim',
  dependencies = 'nvim-tree/nvim-web-devicons',
  init = function() vim.g.barbar_auto_setup = false end,
  opts = {
    -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
    -- animation = true,
    -- insert_at_start = true,
    -- …etc.
  },
  -- version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
