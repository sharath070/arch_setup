return {
	enabled = true,

	sources = {
		explorer = {
			layout = { layout = { position = "right" } },
			exclude = { "node_modules", ".svelte-kit" },
		},
		buffers = {
			layout = { preset = "select" },
		},
		files = {
			exclude = { "node_modules", ".git/", ".conf*", ".misc", ".svelte-kit" },
			hidden = true,
		},
	},
	matcher = { frecency = true },
	win = {
		input = {
			keys = { ["<C-y>"] = { "confirm", mode = { "n", "i" } } },
		},
	},
}
