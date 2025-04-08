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

			view_options = {
				show_hidden = true,
			},
		})

		vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Open parent directory in Oil" })
	end,
}
