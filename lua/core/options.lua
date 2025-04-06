local opt = vim.opt

-- Line number
opt.relativenumber = true
opt.number = true

-- Tabs / Indentation 
opt.tabstop = 2 -- 2 spaces for tab
opt.shiftwidth = 2 -- 2 spaces for indentation
opt.expandtab = true -- Tab -> Space
opt.autoindent = true -- keep same indentation on next line
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true

opt.cursorline = true -- Highlight current line

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.clipboard = "unnamedplus"

opt.splitright = true
opt.splitbelow = true

opt.swapfile = false

opt.undofile = true

opt.list = true

opt.scrolloff = 8

