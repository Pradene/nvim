local M = {}

function M.setup()
  require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
      width = 30,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = false,
    },
  })

  vim.keymap.set("n", "<leader>e", ":NvimTreeOpen<CR>", { silent = true })

end

return M
