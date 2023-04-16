-- autopair for tags, parentheses, quotes, etc
return {
  'windwp/nvim-autopairs',
  config = function()
    require('nvim-autopairs').setup {}
  end,
}
