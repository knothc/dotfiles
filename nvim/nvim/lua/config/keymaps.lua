-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode with jj" })

-- Resize with arrows
keymap.set("n", "<C-Up>", ":resize +2<CR>", opts)
keymap.set("n", "<C-Down>", ":resize -2<CR>", opts)
keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- TODO: Delete bindings and add new ones (ctr-y)? 
--
-- floating terminal
-- keymap.del("n", "<c-/>")
-- keymap.del("n", "<c-_>")
-- keymap.del("n", "<c-y>")
-- keymap.del("n", "<c-Y>")
--
-- keymap.set("n", "<c-Y>", function() Snacks.terminal() end, { desc = "Terminal (cwd)" })
-- keymap.set("n", "<c-y>", function() Snacks.terminal(nil, { cwd = LazyVim.root() }) end, { desc = "Terminal (Root Dir)" })
-- keymap.set("t", "<c-y>", function() Snacks.terminal() end, { desc = "Toggle terminal?" })

-- Terminal Mappings
-- map("t", "<C-/>", "<cmd>close<cr>", { desc = "Hide Terminal" })
-- map("t", "<c-_>", "<cmd>close<cr>", { desc = "which_key_ignore" })

