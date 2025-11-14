return {
	"nvim-mini/mini.nvim",
	version = false,
	config = function()
		require("mini.pairs").setup()

		require("mini.notify").setup({
			lsp_progress = {
				duration_last = 200,
			},
			window = {
				max_width_share = 0.25,
			},
		})

		require("mini.diff").setup({
			view = {
				style = "sign",
			},
		})

		require("mini.indentscope").setup({
			draw = {
				animation = require("mini.indentscope").gen_animation.none(),
			},
		})

		require("mini.statusline").setup()
	end,
}
