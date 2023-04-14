local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>h", mark.add_file, { desc = "add file to harpoon" })
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "toggle harpoon quick menu" })

vim.keymap.set("n", "<C-n>", function() ui.nav_file(1) end, { desc = "navigate to harpoon 1" })
vim.keymap.set("n", "<C-m>", function() ui.nav_file(2) end, { desc = "navigate to harpoon 2" })
vim.keymap.set("n", "<C-,>", function() ui.nav_file(3) end, { desc = "navigate to harpoon 3" })
vim.keymap.set("n", "<C-.>", function() ui.nav_file(4) end, { desc = "navigate to harpoon 4" })
