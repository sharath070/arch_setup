return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets", "L3MON4D3/LuaSnip" },

	version = "1.*",

	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = {
			preset = "default",
			["<Tab>"] = { "fallback" },
		},

		appearance = {
			nerd_font_variant = "mono",
		},

		completion = {
			documentation = {
				auto_show = true,
				window = { border = "rounded" },
			},
			menu = {
				scrollbar = false,
				border = "rounded",
			},
		},

		snippets = { preset = "luasnip" },
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},

		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	opts_extend = { "sources.default" },
	signature = {
		enabled = true,
		window = {
			border = "rounded",
		},
	},
}
