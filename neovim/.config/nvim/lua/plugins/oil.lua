return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	lazy = false,
	config = function()
		require("oil").setup({
			default_file_explorer = false,

			vim.keymap.set("n", "<leader>e", require("oil").toggle_float),

			skip_confirm_for_simple_edits = false,

			-- floating window config
			float = {
				max_width = 0.6,
				max_height = 0.7,
				border = "rounded",
			},
		})
	end,
}
