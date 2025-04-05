return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local actions = require("telescope.actions")
    require("telescope").setup({
      defaults = {
        mappings = {
          i = { -- Insert mode (when typing in Telescope prompt)
            ["<C-n>"] = actions.move_selection_next, -- Next item
            ["<C-p>"] = actions.move_selection_previous, -- Previous item
          },
          n = { -- Normal mode (when navigating the list)
            ["<C-n>"] = actions.move_selection_next,
            ["<C-p>"] = actions.move_selection_previous,
          },
        },
      },
    })

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Grep" })
  end
}
