return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "isort", "black" },
        rust = { "rustfmt", lsp_format = "fallback" },
        javascript = { "prettierd", "prettier" },
        typescript = { "prettierd", "prettier" },
      },
      format_on_save = {
        timeout_ms = 1000,
        lsp_format = "fallback",
      },
    })

    vim.keymap.set("n", "<leader>cf", function()
      require("conform").format({ async = true, lsp_fallback = true })
    end, { desc = "Format file" })
  end,
}
