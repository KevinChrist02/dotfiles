return {
	"mfussenegger/nvim-lint",
	config = function()
		require("lint").linters_by_ft = {
			markdown = { "markdownlint" },
			html = { "htmlhint" },
			css = { "stylelint" },
			javascript = { "eslint_d" },
		}
	end,
}
