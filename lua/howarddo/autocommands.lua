-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- auto create folder when saving buffer incase the folder doesn't exist
-- reference: https://jdhao.github.io/2022/08/21/you-do-not-need-a-plugin-for-this/
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = "*",
  group = vim.api.nvim_create_augroup("auto_create_dir", { clear = true }),
  callback = function(ctx)
    local dir = vim.fn.fnamemodify(ctx.file, ":p:h")
    vim.fn.mkdir(dir, "p")
  end
})

-- remove auto insert comment leader on new line defaulted by neovim filetype plugin
vim.cmd([[
  augroup DisableAutoComment
    autocmd!
    autocmd FileType * setlocal formatoptions-=cro
  augroup END
]])

-- open telescope on startup
vim.api.nvim_create_autocmd({ "VimEnter" }, {
  callback = function()
    if #vim.fn.argv() == 0 then
      vim.cmd("SessionManager load_session")
    end
  end
})
