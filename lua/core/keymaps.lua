-- Exit
vim.keymap.set({ "i", "v" }, ";;", "<ESC>", { desc = "Exit mode with ;;" })

-- Move selected lines
vim.keymap.set("v", "<A-k>", ":m '>-2<CR>gv=gv", { desc = "Move selected text down in visual mode" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selected text up in visual mode" })

-- Remove highlight on search
vim.keymap.set("n", "<leader>/", ":noh<CR>", { desc = "Remove highlight search" })

vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
