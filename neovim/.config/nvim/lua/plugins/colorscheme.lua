return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	config = function()
		require("gruvbox").setup({
			transparent_mode = false,
		})
		vim.cmd("colorscheme gruvbox")
	end,
}
