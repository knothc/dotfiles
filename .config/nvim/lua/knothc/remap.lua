--local nnoremap = require("knothc.keymap").nnoremap
--
--nnoremap("<leader>pv", "<cmd>Ex<CR>") -- Might need to be deleted if I get used to 
--nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")
--nnoremap("<leader>fg", "<cmd>Telescope live_grep<CR>")
--nnoremap("<leader>fb", "<cmd>Telescope buffers<CR>")
--nnoremap("<leader>fh", "<cmd>Telescope help_tags<CR>")


vim.g.mapleader = ","

local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
keymap("n", "<leader>nh", ":nohl<CR>", opts)
keymap("n", "x", '"_x', opts)


-- Better window navigation
-- keymap("n", "<C-h>", "<C-w>h", opts)
-- keymap("n", "<C-j>", "<C-w>j", opts)
-- keymap("n", "<C-k>", "<C-w>k", opts)
-- keymap("n", "<C-o>", "<C-w>l", opts) 
-- keymap("n", "<C-y>", "<C-w>w", opts)

-- Easymotion
keymap("n", "<leader><leader>.", "<Plug>(easymotion-repeat)", opts)
keymap("n", "<leader><leader>f", "<Plug>(easymotion-overwin-f)", opts)
keymap("n", "<leader><leader>j", "<Plug>(easymotion-overwin-j)", opts)
keymap("n", "<leader><leader>k", "<Plug>(easymotion-overwin-k)", opts)
keymap("n", "<leader><leader>w", "<Plug>(easymotion-overwin-w)", opts)
keymap("n", "<leader><leader>L", "<Plug>(easymotion-overwin-line)", opts)

-- Splits
keymap("n", "<leader>sv", "<C-w>v", opts)  -- split window vertically
keymap("n", "<leader>sh", "<C-w>s", opts)  -- split window horizontally
keymap("n", "<leader>se", "<C-w>=", opts)  -- make split windows equal width 
keymap("n", "<leader>sx", ":close<CR>", opts)  -- close current split window
keymap("n", "<leader>sm", ":MaximizerToggle<CR>", opts)  -- maximise split

-- Tabs
keymap("n", "<leader>to", ":tabnew<CR>", opts)  -- split window vertically
keymap("n", "<leader>tx", ":tabclose<CR>", opts)  -- split window vertically
keymap("n", "<leader>tn", ":tabn<CR>", opts)  -- split window vertically
keymap("n", "<leader>tp", ":tabp<CR>", opts)  -- split window vertically

-- nvim-tree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<C-l>", ":bnext<CR>", opts)
keymap("n", "<C-p>", ":bprevious<CR>", opts)

-- Insert --
-- Press jk fast to enter normal mode
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
--keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
--keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
--keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
--keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
