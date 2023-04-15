local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local map = require("howarddo.utils").map

map("n", "<leader>h", mark.add_file, { desc = "add file to harpoon" })
map("n", "<C-e>", ui.toggle_quick_menu, { desc = "toggle harpoon quick menu" })

map("n", "<C-n>", function() ui.nav_file(1) end, { desc = "navigate to harpoon 1" })
map("n", "<C-m>", function() ui.nav_file(2) end, { desc = "navigate to harpoon 2" })
map("n", "<C-,>", function() ui.nav_file(3) end, { desc = "navigate to harpoon 3" })
map("n", "<C-.>", function() ui.nav_file(4) end, { desc = "navigate to harpoon 4" })
