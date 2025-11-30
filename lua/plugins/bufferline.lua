return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,

  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers",
        numbers = "none",

        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          return "(" .. count .. ")"
        end,

        offsets = {
          {
            filetype = "oil",
            text = "Oil",
            highlight = "Directory",
            separator = true,
          },
          {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            separator = true,
          },
        },

        show_buffer_close_icons = true,
        show_close_icon = false,
        always_show_bufferline = true,

        separator_style = "thin",
      },
    })

    vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", { desc = "Next Buffer" })
    vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", { desc = "Prev Buffer" })
  end,
}
