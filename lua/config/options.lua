vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.tabstop = 2       -- 2 spaces for tab
vim.opt.shiftwidth = 2    -- 2 spaces for indentation
vim.opt.expandtab = true  -- Tab -> Space
vim.opt.autoindent = true -- keep same indentation on next line
vim.opt.smartindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes:1"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.list = true
vim.opt.scrolloff = 8

if vim.fn.has("wsl") == 1 then
  vim.g.clipboard = {
    name = "clip.exe (Copy Only)",
    copy = {
      ["+"] = "clip.exe",
      ["*"] = "clip.exe",
    },
    paste = {
      ["+"] = "clip.exe",
      ["*"] = "clip.exe",
    },
    cache_enabled = true,
  }
end
