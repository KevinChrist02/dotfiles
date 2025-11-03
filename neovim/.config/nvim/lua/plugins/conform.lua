return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				css = { "prettier" },
				html = { "prettier" },
				go = { "gofumpt" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				toml = { "taplo" },
				python = { "black" },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		})
	end,
}
