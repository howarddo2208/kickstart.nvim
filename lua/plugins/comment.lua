-- "gc" to comment visual regions/lines
return {
  'numToStr/Comment.nvim',
  -- comment based on context for react, vue, etc
  dependencies = { 'JoosepAlviste/nvim-ts-context-commentstring' },
  config = function()
    require('Comment').setup()
  end,
}
