return {
	"mfussenegger/nvim-lint",
	config = function()
		require("lint").linters_by_ft = {
			python = { "ruff" },
			go = { "golangci-lint" },
		}
	end,
}
