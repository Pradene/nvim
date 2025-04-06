return {
	"nvim-neo-tree/neo-tree.nvim",
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
				follow_current_file = true,
			},
			window = {
				width = 30,
			},
		})

		vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { silent = true })
	end,
}
