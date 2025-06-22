return {
	"williamboman/mason.nvim",
	lazy = false,
	dependencies = {
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		require("mason").setup()

		require("mason-tool-installer").setup({
			ensure_installed = {
				"lua-language-server",
				"html-lsp",
				"css-lsp",
				"tailwindcss-language-server",
				"gopls",
				"emmet-language-server",
				"marksman",
				"svelte-language-server",
				"prettierd",
				"stylua",
				"gofumpt",
				"goimports-reviser",
				"eslint_d",
			},
		})
	end,
}
