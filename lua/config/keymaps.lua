-- Exit
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode" })

-- Move selected lines
vim.keymap.set("v", "<A-k>", ":m '>-2<CR>gv=gv", { silent = true, desc = "Move selected text down in visual mode" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { silent = true, desc = "Move selected text up in visual mode" })

vim.keymap.set({ "n", "x", "v" }, "gl", "$", { noremap = true })
vim.keymap.set({ "n", "x", "v" }, "gh", "_", { noremap = true })

vim.keymap.set("v", ">", ">gv", { desc = "Indent doesn't escape visual mode" })
vim.keymap.set("v", "<", "<gv", { desc = "Indent doesn't escape visual mode" })

-- Remove highlight on search
vim.keymap.set("n", "<leader>/", ":noh<CR>", { silent = true, desc = "Remove highlight search" })

vim.keymap.set("x", "<leader>p", [["_dP]], { silent = true, desc = "Delete and paste selection" })
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { silent = true, desc = "Yank inside system clipboard" })

vim.keymap.set("n", "U", "<C-r>", { noremap = true, desc = "Redo with U" })

vim.keymap.set("n", "<leader>w", ":w<CR>", { silent = true, desc = "Save buffer" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { silent = true, desc = "Close buffer" })

vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", { silent = true, desc = "Open buffer inside a new tab" })
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", { silent = true, desc = "Close buffer inside a new tab" })
vim.keymap.set("n", "<leader>tt", ":tabnext<CR>", { silent = true, desc = "Move buffer inside a new tab" })
vim.keymap.set("n", "<leader>tp", ":tabprevious<CR>", { silent = true, desc = "Move buffer inside a new tab" })
vim.keymap.set("n", "<leader>h", ":split<CR>", { silent = true, desc = "Split terminal horizontaly" })
vim.keymap.set("n", "<leader>v", ":vsplit<CR>", { silent = true, desc = "Split terminal verticaly" })

vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true, desc = "Move to buffer left" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true, desc = "Move to buffer right" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true, desc = "Move to buffer down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true, desc = "Move to buffer up" })
