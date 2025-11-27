return {
  "mattn/emmet-vim",
  ft = { "html", "css", "javascriptreact", "typescriptreact" },
  config = function()
    -- Optional: Change emmet trigger key from default `<C-y>,` to `<C-e>`
    vim.g.user_emmet_leader_key = '<C-e>'
  end,
}
