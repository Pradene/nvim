-- Save/Close
vim.keymap.set("n", "<leader>w", ":w<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>q", ":q<CR>", { silent = true, noremap = true })

-- Exit
vim.keymap.set("i", "jk", "<ESC>", { silent = true, noremap = true })
vim.keymap.set("t", "jk", "<C-\\><C-n>", { silent = true, noremap = true })
vim.keymap.set("t", "<Esc>", "<C-d>", { silent = true, noremap = true })

-- Move selected lines
vim.keymap.set("v", "<A-k>", ":m '>-2<CR>gv=gv", { silent = true, noremap = true })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { silent = true, noremap = true })

-- Go to start/end of line
vim.keymap.set({ "n", "o", "x", "v" }, "L", "$", { silent = true, noremap = true })
vim.keymap.set({ "n", "o", "x", "v" }, "H", "0", { silent = true, noremap = true })

-- Indent selection
vim.keymap.set("v", ">", ">gv", { silent = true, noremap = true })
vim.keymap.set("v", "<", "<gv", { silent = true, noremap = true })

-- Center cursor in middle of screen after search
vim.keymap.set("n", "n", "nzz", { silent = true, noremap = true })
vim.keymap.set("n", "N", "Nzz", { silent = true, noremap = true })

-- Delete and paste selection
vim.keymap.set("x", "<leader>p", [["_dP]], { silent = true, noremap = true })

-- Yank inside system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { silent = true, noremap = true })

-- Redo with U
vim.keymap.set("n", "U", "<C-r>", { silent = true, noremap = true })

-- Split window
vim.keymap.set("n", "<leader>h", ":split<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>v", ":vsplit<CR>", { silent = true, noremap = true })

-- Move focused split
vim.keymap.set({ "t", "n" }, "<C-h>", "<C-w>h", { silent = true, noremap = true })
vim.keymap.set({ "t", "n" }, "<C-l>", "<C-w>l", { silent = true, noremap = true })
vim.keymap.set({ "t", "n" }, "<C-j>", "<C-w>j", { silent = true, noremap = true })
vim.keymap.set({ "t", "n" }, "<C-k>", "<C-w>k", { silent = true, noremap = true })

-- Disable arrows
vim.keymap.set({ "n", "i", "v", "x", "o" }, "<Up>", "<nop>", { silent = true, noremap = true })
vim.keymap.set({ "n", "i", "v", "x", "o" }, "<Down>", "<nop>", { silent = true, noremap = true })
vim.keymap.set({ "n", "i", "v", "x", "o" }, "<Left>", "<nop>", { silent = true, noremap = true })
vim.keymap.set({ "n", "i", "v", "x", "o" }, "<Right>", "<nop>", { silent = true, noremap = true })

-- Open terminal in horizontal split and enter insert mode
vim.keymap.set("n", "<leader>t", function()
  vim.cmd("split | term")
  vim.cmd("startinsert")
end, { silent = true, noremap = true })

vim.keymap.set("n", "-", function()
  require("oil").open()
end, { noremap = true, silent = true })

vim.keymap.set("n", "<CR>", function()
  ---@diagnostic disable-next-line: undefined-field
  if vim.v.hlsearch == 1 then
    vim.cmd.nohl()
    return ""
  else
    return vim.keycode("<CR>")
  end
end, { expr = true })
