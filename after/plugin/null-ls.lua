if not pcall(require, 'null-ls') then
  return
end

local map = require 'howarddo.utils'.map

local null_ls = require 'null-ls'

null_ls.setup {
  sources = {
    null_ls.builtins.formatting.prettier_eslint,
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.diagnostics.eslint_d,
    null_ls.builtins.code_actions.eslint_d,
  },
}

map('n', '<leader>ln', '<cmd>NullLsInfo<CR>', {desc='Null LS Info'})
