vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

--vim.opt.guicursor = ""
opt.cursorline = true  -- highlight current line
opt.clipboard:append("unnamedplus") --use system clipboard as default register
opt.showtabline = 2
opt.scrolloff = 10 
opt.sidescrolloff = 8 

opt.nu = true
opt.relativenumber = true
opt.numberwidth = 4

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

opt.smartindent = true

opt.wrap = false

opt.iskeyword:append("-")

-- backspace
opt.backspace = "indent,eol,start" -- allow bspc on indent, end of line or inser mode start position

-- split windows
opt.splitright = true
opt.splitbelow = true

-- autocommands --
-- autocmd BufNewFile,BufRead *.ini setfiletype dosini
local api = vim.api
api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
    pattern = {"*.podspec", "*Podfile", "*fastfile"},
    command = "setfiletype ruby"
})



