if not pcall(require, "barbar") then
  return
end

local map = require('howarddo.utils').map
-- Move to previous/next
map('n', '<A-h>', ':BufferPrevious<CR>', { desc = 'Move to previous buffer' })
map('n', '<A-l>', ':BufferNext<CR>', { desc = 'Move to next buffer' })

-- Re-order to previous/next
map('n', '<A-H>', ':BufferMovePrevious<CR>', { desc = 'Re-order buffer to previous' })
map('n', '<A-L>', ':BufferMoveNext<CR>', { desc = 'Re-order buffer to next' })

-- Goto buffer in position...
map('n', '<A-1>', ':BufferGoto 1<CR>', { desc = 'Go to buffer 1' })
map('n', '<A-2>', ':BufferGoto 2<CR>', { desc = 'Go to buffer 2' })
map('n', '<A-3>', ':BufferGoto 3<CR>', { desc = 'Go to buffer 3' })
map('n', '<A-4>', ':BufferGoto 4<CR>', { desc = 'Go to buffer 4' })
map('n', '<A-5>', ':BufferGoto 5<CR>', { desc = 'Go to buffer 5' })
map('n', '<A-6>', ':BufferGoto 6<CR>', { desc = 'Go to buffer 6' })
map('n', '<A-7>', ':BufferGoto 7<CR>', { desc = 'Go to buffer 7' })
map('n', '<A-8>', ':BufferGoto 8<CR>', { desc = 'Go to buffer 8' })
map('n', '<A-9>', ':BufferGoto 9<CR>', { desc = 'Go to buffer 9' })
map('n', '<A-0>', ':BufferLast<CR>', { desc = 'Go to last buffer' })

-- Pin/unpin buffer
map('n', '<leader>bp', ':BufferPin<CR>', { desc = 'Pin/unpin buffer' })

-- Close buffer
map('n', '<leader>c', ':BufferClose<CR>', { desc = 'Close current buffer' })
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight

-- Magic buffer-picking mode
map('n', '<C-p>', ':BufferPick<CR>', { desc = 'Open fuffer picker' })

-- Sort automatically by...
map('n', '<leader>bb', ':BufferOrderByBufferNumber<CR>', { desc = 'Sort buffers by buffer number' })
map('n', '<leader>bd', ':BufferOrderByDirectory<CR>', { desc = 'Sort buffers by directory' })
map('n', '<leader>bl', ':BufferOrderByLanguage<CR>', { desc = 'Sort buffers by language' })
map('n', '<leader>bw', ':BufferOrderByWindowNumber<CR>', { desc = 'Sort buffers by window number' })
