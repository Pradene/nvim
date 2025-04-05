vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap.set

-- Exit
keymap("i", ";;", "<ESC>", { desc = "Exit insertion mode with ;;" })
keymap("v", ";;", "<ESC>", { desc = "Exit visual mode with ;;" })

-- Move selected lines
keymap("v", "<A-k>", ":m '>-2<CR>gv=gv", { desc = "Move selected text down in visual mode" })
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selected text up in visual mode" })

-- File explorer
keymap("n", "<leader>ep", vim.cmd.Ex, { desc = "Explore files" })

-- Autopair
keymap("i", "(", "()<Left>", { noremap = true, silent = true})
keymap("i", "{", "{}<Left>", { noremap = true, silent = true})
