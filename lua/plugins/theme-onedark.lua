return {
    -- Theme inspired by Atom
    'navarasu/onedark.nvim',
    priority = 1000,
    -- @error: if I config transparent like ThePrimeagen, lualine will fail
    config = function()
        vim.cmd.colorscheme 'onedark'
    end,
}
