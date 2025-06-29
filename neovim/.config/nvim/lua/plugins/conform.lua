return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black" },
				json = { "jq" },
				html = { "prettier" },
				css = { "prettier" },
				rust = { "rustfmt" },
				ruby = { "rubocop" },
				eruby = { "erb-format" },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		})
	end,
}
