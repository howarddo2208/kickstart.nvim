-- add the following to your desired colorscheme
--       config = function()
--           vim.cmd.colorscheme 'name'
--       end,

return {
    {
        -- Theme inspired by Atom
        'navarasu/onedark.nvim',
        -- priority = 1000,
        -- -- @error: if I config transparent like ThePrimeagen, lualine will fail
        -- config = function()
        --     vim.cmd.colorscheme 'onedark'
        -- end,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme 'catppuccin'
        end,
    }
}
