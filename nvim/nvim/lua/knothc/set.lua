local opt = vim.opt

--vim.opt.guicursor = ""
opt.cursorline = true  -- highlight current line
opt.clipboard = "unnamedplus"
opt.showtabline = 2
opt.scrolloff = 10 
opt.sidescrolloff = 8 

opt.nu = true
opt.relativenumber = true
opt.numberwidth = 4

opt.termguicolors = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

opt.smartindent = true

opt.wrap = false

opt.iskeyword:append("-")

-- autocommands --
-- autocmd BufNewFile,BufRead *.ini setfiletype dosini
local api = vim.api
api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
    pattern = {"*.podspec", "*Podfile", "*fastfile"},
    command = "setfiletype ruby"
})
