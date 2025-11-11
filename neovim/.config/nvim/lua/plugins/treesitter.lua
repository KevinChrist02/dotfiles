return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	branch = "main",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup({
			highlight = {
				enable = true,
				disable = { "bash", "markdown" },
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = true },
			ensure_installed = {
				"lua",
				"vim",
				"vimdoc",
				"javascript",
				"typescript",
				"html",
				"css",
				"json",
				"markdown",
				"bash",
				"python",
			},
			auto_install = true,
		})
	end,
}
