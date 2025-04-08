return {
  "stevearc/oil.nvim",
  opts = {},
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
  config = function()
    require("oil").setup({
      default_file_explorer = true,
      delete_to_trash = true,
      prompt_save_on_select_new_entry = true,

      columns = {
        "icons",
        "permissions",
        "size",
        "mtime",
      },

      sort = {
        { "type", "asc" },
        { "name", "asc" },
      },

      but_options = {
        buflisted = true,
        bufhidden = "hide",
      },

      keymaps = {
        ["g?"] = { "actions.show_help", mode = "n" },
        ["<CR>"] = "actions.select",
        ["<leader>v"] = { "actions.select", opts = { vertical = true } },
        ["<leader>h"] = { "actions.select", opts = { horizontal = true } },
        ["<leader>t"] = { "actions.select", opts = { tab = true } },
        ["<C-p>"] = "actions.preview",
        ["<C-l>"] = "actions.refresh",
        ["-"] = { "actions.parent", mode = "n" },
        ["_"] = { "actions.open_cwd", mode = "n" },
        ["`"] = { "actions.cd", mode = "n" },
        ["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
        ["gs"] = { "actions.change_sort", mode = "n" },
        ["g."] = { "actions.toggle_hidden", mode = "n" },
        ["g\\"] = { "actions.toggle_trash", mode = "n" },
      },

      use_default_keymaps = false,

      view_options = {
        show_hidden = true,
        is_always_hidden = function(name, _)
          return name == ".."
        end
      },
    })

    vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory in Oil" })
  end,
}
