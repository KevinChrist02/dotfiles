return {
	"epwalsh/obsidian.nvim",
	lazy = false,
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("obsidian").setup({
			workspaces = {
				{
					name = "nexus",
					path = "~/Nextcloud/nexus/",
				},
			},

			daily_notes = {
				folder = "dailies",
				date_format = "%d-%m-%Y",
				alias_format = "%B %-d, %Y",
				default_tags = { "daily" },
				template = "daily.md",
			},

			templates = {
				folder = "templates",
				date_format = "%d-%m-%Y",
				time_format = "%H:%M",
				substitutions = {},
			},
		})
	end,
}
