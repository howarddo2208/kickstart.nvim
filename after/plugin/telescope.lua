-- [[ Configure Telescope ]]
local telescope = require("telescope")
local telescopeConfig = require("telescope.config")
local map = require("howarddo.utils").map

-- Clone the default Telescope configuration
local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }

-- I want to search in hidden/dot files.
table.insert(vimgrep_arguments, "--hidden")
-- I don't want to search in the `.git` directory.
table.insert(vimgrep_arguments, "--glob")
table.insert(vimgrep_arguments, "!**/.git/*")

-- See `:help telescope` and `:help telescope.setup()`
telescope.setup({
  defaults = {
    -- `hidden = true` is not supported in text grep commands.
    vimgrep_arguments = vimgrep_arguments,
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
  },
  pickers = {
    find_files = {
      -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
      find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
    },
  },
})


-- Enable telescope fzf native, if installed
pcall(telescope.load_extension, 'fzf')

-- See `:help telescope.builtin`
map('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
map('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
map('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

map('n', '<leader>f', require('telescope.builtin').find_files, { desc = 'Search Files' })
map('n', '<leader>sg', require('telescope.builtin').git_files, { desc = 'Search Git Files' })
map('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = 'Search Help' })
map('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = 'Search current Word' })
map('n', '<leader>st', require('telescope.builtin').live_grep, { desc = 'Search Text' })
map('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = 'Search Diagnostics' })
map('n', '<leader>sk', require('telescope.builtin').keymaps, { desc = 'Search Keymaps' })
map('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = 'Search Hel docsp' })
map('n', '<leader>sb', require('telescope.builtin').builtin, { desc = 'Search builtin method' })
