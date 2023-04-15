local M = {}


M.map = function(mode, lhs, rhs, opts)
  vim.keymap.set(mode, lhs, rhs, opts)
  -- NOTE: if you want to lazyload the keymap, use this instead:
  -- local keys = require("lazy.core.handler").handlers.keys
  -- -- do not create the keymap if a lazy keys handler exists
  -- if not keys.active[keys.parse({ lhs, mode = mode }).id] then
  --   opts = opts or {}
  --   opts.silent = opts.silent ~= false
  --   vim.keymap.set(mode, lhs, rhs, opts)
  -- end
end


return M
