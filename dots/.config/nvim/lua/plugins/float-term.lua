return {
	"voldikss/vim-floaterm",
	config = function()
		local map = vim.keymap.set
		map("n", "<C-_>", "<cmd>FloatermToggle<cr>")
		map("t", "<C-_>", "<C-\\><C-n><cmd>FloatermToggle<CR>")
		map("t", "<C-j>", "<cmd>FloatermNew<cr>")
		map("t", "<C-k>", "<cmd>FloatermKill<cr>")
		map("t", "<C-n>", "<cmd>FloatermNext<cr>")
		map("t", "<C-p>", "<cmd>FloatermPrev<cr>")
	end,
}
