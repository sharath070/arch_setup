return {
	"williamboman/mason.nvim",
	lazy = false,
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"saghen/blink.cmp",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason_lspconfig.setup({
			automatic_enable = false,
			ensure_installed = {
				"lua-language-server",
				"html-lsp",
				"css-lsp",
				"tailwindcss-language-server",
				"gopls",
				"emmet-language-server",
				"marksman",
				"svelte-language-server",
			},
		})

    require('mason-tool-installer').setup {
      ensure_installed = {
				"prettierd",
				"stylua",
				"gofumpt",
				"goimports-reviser",
				"eslint_d",
			},
		}
	end,
}
