vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap.set

keymap("i", ";;", "<ESC>", { desc = "Exit insertion mode with ;;" })
keymap("v", "S-j", ":m .-2<CR>==", { desc = "Move selected text down in visual mode" })
keymap("v", "S-k", ":m .+1<CR>==", { desc = "Move selected text up in visual mode" })
keymap("n", "<leader>ep", vim.cmd.Ex, { desc = "Explore files" })
