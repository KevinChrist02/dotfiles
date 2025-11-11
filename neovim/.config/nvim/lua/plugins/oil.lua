return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-mini/mini.icons", opts = {} },
	lazy = false,
	config = function()
		require("oil").setup({
			default_file_explorer = true,

			columns = {
				"icons",
			},

			vim.keymap.set("n", "<leader>e", require("oil").toggle_float),

			skip_confirm_for_simple_edits = true,

			-- floating window config
			float = {
				max_width = 0.6,
				max_height = 0.7,
				border = "rounded",
			},
		})
	end,
}
