local wk = require('which-key')

-- Register prefix for <leader>g
wk.register({
  g = {
    name = 'Git+',
  },
  -- l = {
  --   name = 'LSP+',
  -- },
  b = {
    name = 'Buffer Sort+',
  },
  -- s = {
  --   name = 'Search+',
  -- },
  -- w = {
  --   name = 'Workplace+'
  -- },
  -- u = {
  --   name = 'Toggle+'
  -- },
  -- t = {
  --   name = 'Telescope+'
  -- }
}, { prefix = '<leader>' })
wk.setup()
