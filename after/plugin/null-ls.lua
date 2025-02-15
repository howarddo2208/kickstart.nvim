local null_ls = require 'null-ls'
require('mason').setup()

-- primary source of truth: mason-null-ls
require('mason-null-ls').setup {
  ensure_installed = {
    -- Opt to list sources here, when available in mason.
  },
  automatic_installation = false,
  handlers = {},
}

null_ls.setup {
  sources = {
    null_ls.builtins.formatting.prettierd,
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.diagnostics.eslint_d,
    null_ls.builtins.code_actions.eslint_d,
    null_ls.builtins.formatting.rustfmt,
    null_ls.builtins.formatting.shfmt, -- shell formatter
    -- clojure
    null_ls.builtins.diagnostics.clj_kondo,
    null_ls.builtins.formatting.cljstyle,
  },
}

local map = require('utils').map
map('n', '<leader>ln', '<cmd>NullLsInfo<CR>', { desc = 'Null LS Info' })
