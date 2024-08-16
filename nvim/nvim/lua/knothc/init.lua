require("knothc.set")
require("knothc.remap")
require("knothc.tokyonight")
require("knothc.lualine")
require("knothc.nvim-tree")
require("knothc.comment")
require('nvim-tree').setup {}
require("knothc.toggleterm")
require("knothc.treesitter")
require("knothc.cmp")
require("knothc.telescope")

vim.api.nvim_exec('language en_US', true)


print("lua/knothc/init loaded...")
