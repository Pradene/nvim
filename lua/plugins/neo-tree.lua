return {
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
    config = function()
      require("nvim-web-devicons").setup({ default = true })
    end
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        filesystem = {
          filtered_items = {
            visible = true,
            hide_dotfiles = false,
          },
          follow_current_file = {
            enabled = true
          },
          renderers = {
            file = {
              { "icon" },
              {
                "name",
                use_git_status_colors = true
              },
              { "diagnostics" },
            }
          }
        },
        window = {
          width = 30,
          mappings = {
            ["g"] = "open",
          },
        },
      })

      vim.keymap.set(
        "n",
        "<leader>e",
        ":Neotree focus<CR>",
        { noremap = true, silent = true, desc = "Toggle Neo-tree sidebar" }
      )
      vim.keymap.set(
        "n",
        "<leader>x",
        ":Neotree close<CR>",
        { noremap = true, silent = true, desc = "Close Neo-tree sidebar" }
      )
    end,
  }
}
