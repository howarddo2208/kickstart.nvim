return {
  'akinsho/toggleterm.nvim',
  version = "*",
  opts = { --[[ things you want to change go here]] },
  config = function()
    local Terminal = require('toggleterm.terminal').Terminal

    -- LAZYGIT TOGGLE TERM
    local lazygit  = Terminal:new({
      cmd = "lazygit",
      dir = "git_dir",
      direction = "float",
      float_opts = {
        border = "double",
      },
      -- function to run on opening the terminal
      on_open = function(term)
        vim.cmd("startinsert!")
        vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
      end,
      -- function to run on closing the terminal
      on_close = function(term)
        vim.cmd("startinsert!")
      end,
    })

    function _lazygit_toggle()
      lazygit:toggle()
    end

    vim.api.nvim_set_keymap("n", "<leader>gg", "<cmd>lua _lazygit_toggle()<CR>",
      { noremap = true, silent = true, desc = "Lazygit" })

    -- FLOAT TOGGLE TERM
    local floatterm = Terminal:new({
      cmd = vim.o.shell,
      direction = "float",
      float_opts = {
      },
    })

    function _floatterm_toggle()
      floatterm:toggle()
    end

    -- Keymap for floatterm
    vim.keymap.set({ 'n', 't' }, "<C-\\>", "<cmd>lua _floatterm_toggle()<CR>",
      { noremap = true, silent = true, desc = "Floating Terminal" })
  end,
}

-- @todo: multiple toggleterm
