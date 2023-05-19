local map = require('howarddo.utils').map

map('n', '<leader>ps', ':SessionManager load_session<CR>', { desc = 'Switch project sessions' })
map('n', '<leader>pa', ':SessionManager save_current_session<CR>', { desc = 'Add current project session' })
map('n', '<leader>pd', ':SessionManager delete_session<CR>', { desc = 'Delete project sessions' })
