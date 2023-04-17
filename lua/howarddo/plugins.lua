return {
  -- autopair for tags, parentheses, quotes, etc
  {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup {}
    end,
  },
  {
    'windwp/nvim-ts-autotag',
    config = function()
      require('nvim-treesitter.configs').setup {
        autotag = {
          enable = true,
        },
      }
    end,
  },
  {
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    dependencies = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end,
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        transparent_background = true,
      }
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
  {
    -- "gc" to comment visual regions/lines
    'numToStr/Comment.nvim',
    -- comment based on context for react, vue, etc
    dependencies = { 'JoosepAlviste/nvim-ts-context-commentstring' },
    config = function()
      require('Comment').setup()
    end,
  },
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    config = function() end,
  },
  {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
  },
  {
    -- Adds git releated signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      -- See `:help gitsigns.txt`
      signs = {
        add = {
          text = '+',
        },
        change = {
          text = '~',
        },
        delete = {
          text = '_',
        },
        topdelete = {
          text = '‾',
        },
        changedelete = {
          text = '~',
        },
      },
    },
  },
  { 'ThePrimeagen/harpoon' },
  {
    -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help indent_blankline.txt`
    opts = {
      char = '┊',
      show_trailing_blankline_indent = false,
    },
  },
  {
    -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim', opts = {} },

      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    },
  },
  {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = false,
        -- theme = 'onedark',
        component_separators = '|',
        section_separators = '',
      },
    },
  },
  {
    'L3MON4D3/LuaSnip',
    -- follow latest release.
    version = '<CurrentMajor>.*',
    -- install jsregexp (optional!).
    -- build = "make install_jsregexp"
  },
  { 'saadparwaiz1/cmp_luasnip' },
  {
    'iamcco/markdown-preview.nvim',
    ft = 'markdown',
    build = function()
      vim.fn['mkdp#util#install']()
    end,
  },
  { 'jose-elias-alvarez/null-ls.nvim' },
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('nvim-tree').setup {}
    end,
  },
  {
    'ThePrimeagen/refactoring.nvim',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-treesitter/nvim-treesitter' },
    },
  },
  {
    'kylechui/nvim-surround',
    version = '*', -- Use for stability; omit to use `main` branch for the latest features
    event = 'VeryLazy',
    config = function()
      require('nvim-surround').setup {}
    end,
  },
  {
    'themaxmarchuk/tailwindcss-colors.nvim',
    -- load only on require("tailwindcss-colors")
    module = 'tailwindcss-colors',
    -- run the setup function after plugin is loaded
    config = function()
      -- pass config options here (or nothing to use defaults)
      require('tailwindcss-colors').setup()
    end,
  },
  {
    'nvim-telescope/telescope-file-browser.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  },
  {
    -- Fuzzy Finder Algorithm which requires local dependencies to be built.
    -- Only load if `make` is available. Make sure you have the system
    -- requirements installed.
    'nvim-telescope/telescope-fzf-native.nvim',
    -- NOTE: If you are having trouble with this installation,
    --       refer to the README for telescope-fzf-native for more instructions.
    build = 'make',
    cond = function()
      return vim.fn.executable 'make' == 1
    end,
  },
  {
    'nvim-telescope/telescope.nvim',
    version = '*',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {},
  },
  { 'nvim-treesitter/playground', event = 'VeryLazy' },
  {
    -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects' },
    build = ':TSUpdate',
  },
  {
    'folke/trouble.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('trouble').setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end,
  },
  {
    'mbbill/undotree',
    keys = {
      { '<leader>u', '<cmd>UndotreeToggle<cr>', desc = 'Toggle Undo Tree' },
    },
  },
  {
    'tpope/vim-fugitive',
  },
  {
    -- Detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth',
  },
  {
    'folke/which-key.nvim',
    opts = {},
  },
  {
    'anuvyklack/windows.nvim',
    dependencies = { 'anuvyklack/middleclass' },
    config = function()
      require('windows').setup()
    end,
  },
  {
    'folke/zen-mode.nvim',
    config = function()
      require('zen-mode').setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end,
  },
}
