-- Install package manager
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn
        .system { 'git', 'clone', '--filter=blob:none', 'https://github.com/folke/lazy.nvim.git', '--branch=stable', -- latest stable release
            lazypath }
end
vim.opt.rtp:prepend(lazypath)

-- NOTE: Here is where you install your plugins.
--  You can configure plugins using the `config` key.
--
--  You can also configure plugins after the setup call,
--    as they will be available in your neovim runtime.
require('lazy').setup({                        -- NOTE: First, some plugins that don't require any configuration
    -- Git related plugins
    'tpope/vim-fugitive', 'tpope/vim-rhubarb', -- Detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth',                        -- Useful plugin to show you pending keybinds.
    {
        'folke/which-key.nvim',
        opts = {}
    }, {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
        -- LSP Support
        { 'neovim/nvim-lspconfig' },             -- Required
        {
            'williamboman/mason.nvim',           --Optional
        },
        { 'williamboman/mason-lspconfig.nvim' }, -- Optional

        -- Autocompletion
        { 'hrsh7th/nvim-cmp' },     -- Required
        { 'hrsh7th/cmp-nvim-lsp' }, -- Required
        { 'L3MON4D3/LuaSnip' },     -- Required
    }
}, {
    -- Adds git releated signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
        -- See `:help gitsigns.txt`
        signs = {
            add = {
                text = '+'
            },
            change = {
                text = '~'
            },
            delete = {
                text = '_'
            },
            topdelete = {
                text = '‾'
            },
            changedelete = {
                text = '~'
            }
        }
    }
}, {
    -- Theme inspired by Atom
    'navarasu/onedark.nvim',
    priority = 1000,
    -- @error: if I config transparent like ThePrimeagen, lualine will fail
    config = function()
        vim.cmd.colorscheme 'onedark'
    end,
}, {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
        options = {
            icons_enabled = false,
            theme = 'onedark',
            component_separators = '|',
            section_separators = ''
        }
    }
}, {
    -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help indent_blankline.txt`
    opts = {
        char = '┊',
        show_trailing_blankline_indent = false
    }
},
    -- "gc" to comment visual regions/lines
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    },
    -- Fuzzy Finder (files, lsp, etc)
    {
        'nvim-telescope/telescope.nvim',
        version = '*',
        dependencies = { 'nvim-lua/plenary.nvim' }
    }, -- Fuzzy Finder Algorithm which requires local dependencies to be built.
    -- Only load if `make` is available. Make sure you have the system
    -- requirements installed.
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        -- NOTE: If you are having trouble with this installation,
        --       refer to the README for telescope-fzf-native for more instructions.
        build = 'make',
        cond = function()
            return vim.fn.executable 'make' == 1
        end
    }, {
    -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects' },
    build = ":TSUpdate"
}, { 'nvim-treesitter/playground' }, { 'ThePrimeagen/harpoon' }, { 'mbbill/undotree' }, {
    "windwp/nvim-autopairs",
    config = function()
        require("nvim-autopairs").setup {}
    end
}, {
    'windwp/nvim-ts-autotag',
    config = function()
        require 'nvim-treesitter.configs'.setup {
            autotag = {
                enable = true
            }
        }
    end
}, {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
    end
}, {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    config = function()
        require('dashboard').setup {
            -- config
        }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
}, {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim" }
}, {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({})
    end
}, {
    'romgrk/barbar.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    init = function()
        vim.g.barbar_auto_setup = false
    end,
    opts = {}
}, {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {}
} }, {})
