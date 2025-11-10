return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",
	opts = {
		keymap = { preset = "default" },

		appearance = { nerd_font_variant = "mono" },

		completion = { documentation = { auto_show = false } },

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
			per_filetype = {
				sql = { "dadbod", "buffer" },
			},
		},

		providers = {
			dadbod = { module = "vim_dadbod_completion.blink" },
		},

		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	opts_extend = { "sources.default" },
}
