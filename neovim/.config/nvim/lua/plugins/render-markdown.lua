return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.icons" },
	---@module 'render-markdown'
	---@type render.md.UserConfig
	config = function()
		require("render-markdown").setup({
			completions = { blink = { enabled = true } },

			heading = {
				enabled = true,
				sign = false,
				-- Replaces '#+' of 'atx_h._marker'.
				-- Output is evaluated depending on the type.
				-- | function | `value(context)`              |
				-- | string[] | `cycle(value, context.level)` |
				icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
				-- Determines how icons fill the available space.
				-- | right   | '#'s are concealed and icon is appended to right side                      |
				-- | inline  | '#'s are concealed and icon is inlined on left side                        |
				-- | overlay | icon is left padded with spaces and inserted on left hiding additional '#' |
				position = "overlay",
				-- Added to the sign column if enabled.
				-- Output is evaluated by `cycle(value, context.level)`.
				signs = { " " },
				-- Width of the heading background.
				-- | block | width of the heading text |
				-- | full  | full width of the window  |
				-- Can also be a list of the above values evaluated by `clamp(value, context.level)`.
				width = "block",
			},

			dash = {
				enabled = true,
				render_modes = false,
				-- Replaces '---'|'***'|'___'|'* * *' of 'thematic_break'.
				-- The icon gets repeated across the window's width.
				icon = "─",
				-- Width of the generated line.
				-- | <number> | a hard coded width value |
				-- | full     | full width of the window |
				-- If a float < 1 is provided it is treated as a percentage of available window space.
				width = "80",
				-- Amount of margin to add to the left of dash.
				-- If a float < 1 is provided it is treated as a percentage of available window space.
				left_margin = 0,
				-- Highlight for the whole line generated from the icon.
				highlight = "RenderMarkdownDash",
			},

			pipe_table = {
				enabled = true,
				render_modes = false,
				-- Pre configured settings largely for setting table border easier.
				-- | heavy  | use thicker border characters     |
				-- | double | use double line border characters |
				-- | round  | use round border corners          |
				-- | none   | does nothing                      |
				preset = "round",
				-- Determines how individual cells of a table are rendered.
				-- | overlay | writes completely over the table, removing conceal behavior and highlights |
				-- | raw     | replaces only the '|' characters in each row, leaving the cells unmodified |
				-- | padded  | raw + cells are padded to maximum visual width for each column             |
				-- | trimmed | padded except empty space is subtracted from visual width calculation      |
				cell = "padded",
				padding = 1,
        -- Characters used to replace table border.
        -- Correspond to top(3), delimiter(3), bottom(3), vertical, & horizontal.
        -- stylua: ignore
        border = {
            '┌', '┬', '┐',
            '├', '┼', '┤',
            '└', '┴', '┘',
            '│', '─',
        },
				-- Turn on / off top & bottom lines.
				border_enabled = true,
				-- Always use virtual lines for table borders instead of attempting to use empty lines.
				-- Will be automatically enabled if indentation module is enabled.
				border_virtual = false,
				-- Gets placed in delimiter row for each column, position is based on alignment.
				alignment_indicator = "━",
				-- Highlight for table heading, delimiter, and the line above.
				head = "RenderMarkdownTableHead",
				-- Highlight for everything else, main table rows and the line below.
				row = "RenderMarkdownTableRow",
				-- Highlight for inline padding used to add back concealed space.
				filler = "RenderMarkdownTableFill",
				-- Determines how the table as a whole is rendered.
				-- | none   | { enabled = false }        |
				-- | normal | { border_enabled = false } |
				-- | full   | uses all default values    |
				style = "full",
			},

			link = {
				enabled = true,
				render_modes = false,
				footnote = {
					-- Turn on / off footnote rendering.
					enabled = true,
					-- Replace value with superscript equivalent.
					superscript = true,
					-- Added before link content.
					prefix = "",
					-- Added after link content.
					suffix = "",
				},
				image = "󰥶 ",
				email = "󰀓 ",
				hyperlink = "󰌹 ",
				-- Applies to the inlined icon as a fallback.
				highlight = "RenderMarkdownLink",
				-- Applies to WikiLink elements.
				wiki = {
					icon = "󱗖 ",
					body = function()
						return nil
					end,
					highlight = "RenderMarkdownWikiLink",
					scope_highlight = nil,
				},
				-- Define custom destination patterns so icons can quickly inform you of what a link
				-- contains. Applies to 'inline_link', 'uri_autolink', and wikilink nodes. When multiple
				-- patterns match a link the one with the longer pattern is used.
				-- The key is for healthcheck and to allow users to change its values, value type below.
				-- | pattern   | matched against the destination text                            |
				-- | icon      | gets inlined before the link text                               |
				-- | kind      | optional determines how pattern is checked                      |
				-- |           | pattern | @see :h lua-patterns, is the default if not set       |
				-- |           | suffix  | @see :h vim.endswith()                                |
				-- | priority  | optional used when multiple match, uses pattern length if empty |
				-- | highlight | optional highlight for 'icon', uses fallback highlight if empty |
				custom = {
					web = { pattern = "^http", icon = "󰖟 " },
					discord = { pattern = "discord%.com", icon = "󰙯 " },
					github = { pattern = "github%.com", icon = "󰊤 " },
					gitlab = { pattern = "gitlab%.com", icon = "󰮠 " },
					google = { pattern = "google%.com", icon = "󰊭 " },
					neovim = { pattern = "neovim%.io", icon = " " },
					reddit = { pattern = "reddit%.com", icon = "󰑍 " },
					stackoverflow = { pattern = "stackoverflow%.com", icon = "󰓌 " },
					wikipedia = { pattern = "wikipedia%.org", icon = "󰖬 " },
					youtube = { pattern = "youtube%.com", icon = "󰗃 " },
				},
			},
		})
	end,
}
