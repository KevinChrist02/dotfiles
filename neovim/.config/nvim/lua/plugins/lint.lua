return {
	"mfussenegger/nvim-lint",
	config = function()
		require("lint").linters_by_ft = {
			python = { "ruff" },
			rust = { "bacon" },
			ruby = { "rubocop" },
			eruby = { "erb_lint" },
		}
	end,
}
