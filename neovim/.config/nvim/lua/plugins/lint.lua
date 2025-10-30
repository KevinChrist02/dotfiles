return {
	"mfussenegger/nvim-lint",
	config = function()
		require("lint").linters_by_ft = {
			markdown = { "markdownlint" },
			html = { "htmlhint" },
			css = { "stylelint" },
			go = { "golangci-lint" },
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
		}
	end,
}
