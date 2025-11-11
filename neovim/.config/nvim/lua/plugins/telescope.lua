return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
		require("telescope").setup({
			defaults = {
				preview = {
					treesitter = false,
				},
			},
			pickers = {
				find_files = {
					theme = "dropdown",
				},
				help_tags = {
					theme = "dropdown",
				},
				live_grep = {
					theme = "dropdown",
				},
				diagnostics = {
					theme = "cursor",
				},
			},
		})

		require("telescope").load_extension("fzf")

		vim.keymap.set("n", "<space>pf", require("telescope.builtin").find_files)
		vim.keymap.set("n", "<space>pc", function()
			require("telescope.builtin").find_files({
				cwd = vim.fn.stdpath("config"),
			})
		end)
		vim.keymap.set("n", "<space>ph", require("telescope.builtin").help_tags)
		vim.keymap.set("n", "<space>pg", require("telescope.builtin").live_grep)
		vim.keymap.set("n", "<space>sd", require("telescope.builtin").diagnostics)
	end,
}
