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
		})
	end,
}
