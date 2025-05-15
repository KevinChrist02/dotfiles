return {
	"Mofiqul/dracula.nvim",
	config = function()
		vim.cmd("colorscheme dracula-soft")
		require("dracula").setup({
			transparent_bg = true,
		})
	end,
}
