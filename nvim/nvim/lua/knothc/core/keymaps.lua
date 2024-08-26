vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })


-- number manipulation
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- window splits
keymap.set("n", "<leader>sv", "<C-w>v", opts)  -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", opts)  -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", opts)  -- make split windows equal width 
keymap.set("n", "<leader>sx", ":close<CR>", opts)  -- close current split window
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts)  -- maximise split

-- Tabs
keymap.set("n", "<leader>to", ":tabnew<CR>", opts)  -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>", opts)  -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>", opts)  -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>", opts)  -- got to previous tab
keymap.set("n", "<leader>tf", ":tabnew %<CR>", opts)  -- open current buffer in new tab

-- Hop
require("hop").setup()
keymap.set("n", "<leader>jw", ":HopWord<cr>", { desc = "Hop Word" })
keymap.set("n", "<leader>jl", ":HopLineStart<cr>", { desc = "Hop Line Start" })
keymap.set("n", "<leader>jf", ":HopChar2<cr>", { desc = "Hop to 2 chars" })
vim.cmd("hi HopNextKey guifg=#ff9900")
vim.cmd("hi HopNextKey1 guifg=#ff9900")
vim.cmd("hi HopNextKey2 guifg=#ff9900")

-- Resize with arrows
keymap.set("n", "<C-Up>", ":resize +2<CR>", opts)
keymap.set("n", "<C-Down>", ":resize -2<CR>", opts)
keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap.set("n", "<Tab>", ":bnext<CR>", opts)
keymap.set("n", "<S-Tab>", ":bprevious<CR>", opts)
keymap.set("n", "<A-u>", ":bprevious<CR>", opts)
keymap.set("n", "<A-i>", ":bnext<CR>", opts)

-- Misc
keymap.set("n", "x", '"_x"', opts) -- ???

