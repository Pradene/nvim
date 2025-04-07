-- Exit
vim.keymap.set({ "i", "v" }, ";;", "<ESC>", { desc = "Exit mode with ;;" })

-- Move selected lines
vim.keymap.set("v", "<A-k>", ":m '>-2<CR>gv=gv", { desc = "Move selected text down in visual mode" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selected text up in visual mode" })

-- Remove highlight on search
vim.keymap.set("n", "<leader>/", ":noh<CR>", { desc = "Remove highlight search" })

vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Delete and paste selection" })
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank inside system clipboard" })

vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save buffer" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Close buffer" })

vim.keymap.set("n", "<leader>h", ":split<CR>", { desc = "Split terminal horizontaly" })
vim.keymap.set("n", "<leader>v", ":vsplit<CR>", { desc = "Split terminal verticaly" })

vim.keymap.set("n", "<A-h>", "<C-w>h", { desc = "Move to buffer left" })
vim.keymap.set("n", "<A-l>", "<C-w>l", { desc = "Move to buffer right" })
vim.keymap.set("n", "<A-j>", "<C-w>j", { desc = "Move to buffer down" })
vim.keymap.set("n", "<A-k>", "<C-w>k", { desc = "Move to buffer up" })
